require_relative('./ToDoItem')
require_relative('./ToDoList')

# create a new Grocery to do list
to_do_list = ToDoList.new("Grocery")

# add some tasks
to_do_list.add('Milk')
to_do_list.add('Bread')
to_do_list.add('Carrot')

# show tasks
to_do_list.tasks { |item| puts item }
puts

# change status
to_do_list.complete(1)
to_do_list.delete(3)

# show tasks again
to_do_list.tasks { |item| puts item }

# Output sample
# Grocery To Do List:
#         1. Milk         active 
#         2. Bread        active 
#         3. Carrot       active 

# Grocery To Do List:
#         1. Milk         completed 
#         2. Bread        active 
#         3. Carrot       deleted 
