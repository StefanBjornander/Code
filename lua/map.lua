_G.declared = {}
setmetatable(_G, _G)

_G.Declare = function(k, v) 
    _G.declared[k] = true
end

_G.__index = function(t, k)
  if not _G.declared[k] then
    print ("Can't read undeclared variable: " .. k)
    return nil
  end
  return rawget(t, k)
end

_G.__newindex = function(t, k, v) 
  if not _G.declared[k] then
    print ("Can't write undeclared variable: " .. k)
  else
    rawset(t, k, v)
  end
end

Declare("Class")
Class = {}

Class.new = function(self, object)
  object = object or {}
  setmetatable(object, self)
  self.__index = self
  return object
end

Declare("Pair")
Pair = {}

Pair.construct = function(self, key, value)
  return Class.new(self, {m_key = key, m_value = value})
end

Pair.key = function(self)
  return self.m_key
end

Pair.value = function(self)
  return self.m_value
end

Pair.setValue = function(self, value)
  self.m_value = value
end

Pair.__tostring = function(self)
  return "(" .. tostring(self.m_key) .. ","
         .. tostring(self.m_value) .. ")"
end

Declare("Cell")
Cell = {}

Cell.construct = function(self, pair, next)
  return Class.new(self, {m_pair = pair, m_next = next})
end

Cell.pair = function(self)
  return self.m_pair
end

Cell.next = function(self)
  return self.m_next
end

Cell.setNext = function(self, next)
  self.m_next = next
end

Cell.__tostring = function(self)
  return tostring(self.m_pair)
end

Declare("Map")
Map = {}

Map.construct = function(self)
  return Class.new(self, {m_first = nil, m_size = 0})
end

Map.put = function(self, key, value)
  return Map.putX(self, self.m_first, key, value, nil)
end

Map.putX = function(self, current, key, value, last)
  if current ~= nil then
    if key == current:pair():key() then
      Declare("previous_value")
      previous_value = current:pair():value()
      current:pair():setValue(value)
      return previous_value
    else
      return self.putX(self, current:next(), key, value, current)
    end
  else
    if last ~= nil then
      last:setNext(Cell:construct(Pair:construct(key, value), nil))
      last = last.m_next
    else
      self.m_first = Cell:construct(Pair:construct(key, value), nil)
    end

    self.m_size = self.m_size + 1
    return nil
  end
end

Map.exists = function(self, key)
  return Map.existsX(self, self.m_first, key, nil)
end

Map.existsX = function(self, current, key, last)
  if current ~= nil then
    if key == current:pair():key() then
      return true
    else
      return self.existsX(self, current:next(), key, current)
    end
  else
      return false
  end
end

Map.remove = function(self, key)
  return Map.removeX(self, self.m_first, key, nil)
end

Map.removeX = function(self, current, key, last)
  if current ~= nil then
    if key == current:pair():key() then
      previous_value = current:pair():value()

      if last ~= nil then
        last:setNext(current:next())
      else
        self.m_first = self.m_first:next()
      end

      self.m_size = self.m_size - 1
      return previous_value
    else
      return self.removeX(self, current:next(), key, current)
    end
  else
    return nil
  end
end

Map.size = function(self)
  return self.m_size
end

Map.__tostring = function(self)
  return "[" .. Map.__tostringX(self.m_first, true) .. "]"
end

Map.__tostringX = function(current, first)
  if current ~= nil then
    return ((first and "") or ",") .. tostring(current)
           .. Map.__tostringX(current:next(), false)
  else
    return ""
  end
end

Declare("s")
s = Map:construct()

print(s)
print("Size: " .. s:size())
print()

io.write("Put 1, A: ")
print(s:put(1, "A"))
print(s)
print("Size: " .. s:size())
print()

io.write("Put 2, B: ")
print(s:put(2, "B"))
print(s)
print("Size: " .. s:size())
print()

io.write("Put 3, C: ")
print(s:put(3, "C"))
print(s)
print("Size: " .. s:size())
print()

io.write("Put 2, D: ")
print(s:put(2, "D"))
print(s)
print("Size: " .. s:size())
print()

print("Exists 0: " .. tostring(s:exists(0)))
print("Exists 1: " .. tostring(s:exists(1)))
print("Exists 2: " .. tostring(s:exists(2)))
print("Exists 3: " .. tostring(s:exists(3)))
print("Exists 4: " .. tostring(s:exists(4)))
print()

io.write("Remove 1: ")
print(s:remove(1))
print(s)
print("Size: " .. s:size())
print()

io.write("Remove 3: ")
print(s:remove(3))
print(s)
print("Size: " .. s:size())
print()

io.write("Remove 2: ")
print(s:remove(2))
print(s)
print("Size: " .. s:size())
print()

io.write("Remove 0: ")
print(s:remove(0))
print(s)
print("Size: " .. s:size())
