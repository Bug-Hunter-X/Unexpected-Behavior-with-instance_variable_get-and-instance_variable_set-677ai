# Unexpected Behavior with instance_variable_get and instance_variable_set in Ruby

This repository demonstrates an unexpected behavior encountered when using `instance_variable_get` and `instance_variable_set` in Ruby. The issue revolves around the modification of instance variables and their impact on getter methods.

## Bug Description
The `instance_variable_set` method successfully modifies the instance variable's value. However, the getter method's behavior appears inconsistent, showing unexpected outputs after using `instance_variable_get` and `instance_variable_set` with symbols.

## Reproduction Steps
1. Clone this repository.
2. Run `bug.rb`.
3. Observe the output. The output shows inconsistencies in the return values of the getter method after using the instance variable methods.

## Solution
The solution involves avoiding direct manipulation of instance variables from outside the class using `instance_variable_get` and `instance_variable_set`.  Instead, create appropriate getter and setter methods to maintain proper encapsulation and control over instance variable access.

## Additional Notes
While the bug's effect is minor in this specific example, it highlights the importance of consistent and controlled access to instance variables in Ruby. Directly using `instance_variable_get` and `instance_variable_set` can lead to unexpected behavior and make your code harder to maintain and debug. It's recommended to follow the principle of encapsulation and always use accessor methods (getters and setters) for accessing and modifying instance variables.
