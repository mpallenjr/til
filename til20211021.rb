#.create vs new/ .save

#.new makes the process of creating a person a two step process, could be beneficial when running validations.
person = Person.new()
person.save

#Create has the save feature built into the name
person = Person.create()

