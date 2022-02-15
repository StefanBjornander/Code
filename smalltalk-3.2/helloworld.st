Object subclass: #Person
  instanceVariableNames: 'name'
  classVariableNames: ''
  poolDictionaries: ''
  category: nil !

!Person class methodsFor: 'instance creation'!
  new
  | r |
  r := super new.
  "r init."
  ^r
  !!

'Hello, Smalltalk!' printNl !

Person new !
