```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value # Output: 20

# Unexpected behavior when using instance_variable_get and instance_variable_set
my_object.instance_variable_set(:@value, 30) 
puts my_object.value # Output: 30

puts my_object.instance_variable_get(:@value) #Output: 30 

my_object.instance_variable_set('@value', 40)
puts my_object.value # Output: 40

# Unexpected behavior when using instance_variable_get and instance_variable_set with a symbol
my_object.instance_variable_set(:@value, 50) 
puts my_object.value # Output: 50

puts my_object.instance_variable_get(:@value) #Output: 50
```