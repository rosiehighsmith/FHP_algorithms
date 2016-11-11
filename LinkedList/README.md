These are files that include solutions to the Linked List challenges for the Firehose Project. 

For the most basic answer to Question 1:
- q1push_only.rb

This solution does not use pop at all. It creates a new stack that is a printed reversed version of the original list. The original list remains the same after running the program.

A slightly more advanced take on Question 1, question1.rb, uses both push and pop to alter the original list. The methods are also separated in this version.

- lib/linked_list_node.rb initializes the Linked List and creates a method to print the list
- lib/stack.rb is the code to create the stack data structure
- lib/q1.rb reverses linked list using a stack for question1
- lib/q2.rb reverses linked list without a stack for question2
- lib/q3.rb detects if the linked list is infinite and a loop is found by using Floyd's cycle-finding "tortoise and the hare" algorithm

In the top-level folder, these files implement the algorithms:
- question1.rb
- question2.rb
- question3.rb

