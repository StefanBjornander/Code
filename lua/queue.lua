Class = {}
Class.new = function(self, object)
  object = object or {}
  setmetatable(object, self)
  self.__index = self
  return object
end

Cell = {}
Cell.construct = function(self, value, next)
  return Class.new(self, {m_value = value, m_next = next})
end

Cell.value = function(self)
  return self.m_value
end

Cell.next = function(self)
  return self.m_next
end

Cell.setNext = function(self, next)
  self.m_next = next
end

Cell.__tostring = function(self)
  return tostring(self.m_value)
end

Queue = {}
Queue.construct = function(self)
  return Class.new(self, {m_first = nil, m_last = nil, m_size = 0})
end

Queue.add = function(self, value)
  if self.m_last ~= nil then
    self.m_last:setNext(Cell:construct(value, nil))
    self.m_last = self.m_last:next()
  else
    self.m_first = Cell:construct(value, nil)
    self.m_last = self.m_first
  end
  self.m_size = self.m_size + 1
end

Queue.first = function(self)
  assert(self.m_first ~= nil, "First: Queue Empty.")
  return self.m_first:value()
end

Queue.remove = function(self)
  assert(self.m_first ~= nil, "Remove: Queue Empty.")
  first_value = self.m_first:value()
  self.m_first = self.m_first:next()
  self.m_size = self.m_size - 1
  return first_value
end

Queue.size = function(self)
  return self.m_size
end

Queue.__tostring = function(self)
  return "[" .. Queue.__tostringX(self.m_first, true) .. "]"
end

Queue.__tostringX = function(current, first)
  if current ~= nil then
    return ((first and "") or ",") .. current:value()
           .. Queue.__tostringX(current:next(), false)
  else
    return ""
  end
end

s = Queue:construct()
print(s)
print("Size: " .. s:size())
print()

s:add(1)
print(s)
print("First: " .. s:first())
print("Size: " .. s:size())
print()

s:add(2)
print(s)
print("First: " .. s:first())
print("Size: " .. s:size())
print()

s:add(3)
print(s)
print("First: " .. s:first())
print("Size: " .. s:size())
print()

print("Remove: " .. s:remove())
print(s)
print("First: " .. s:first())
print("Size: " .. s:size())
print()

print("Remove: " .. s:remove())
print(s)
print("First: " .. s:first())
print("Size: " .. s:size())
print()

print("Remove: " .. s:remove())
print(s)
print("Size: " .. s:size())
--print("First: " .. s:first())
--print("Remove: " .. s:remove())
