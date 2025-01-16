```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20
puts my_object.value # Output: 20

my_object.value = 30
puts my_object.value # Output: 30

my_object.value = 40
puts my_object.value # Output: 40

my_object.value = 50
puts my_object.value # Output: 50
```