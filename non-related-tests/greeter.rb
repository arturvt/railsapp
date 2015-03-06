class Greeter
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def say_name()
    'My name is: ' + @name
  end
end

#modules are something like static classes. Helper things. We need to include it
#so it'll work.
module Helper
  def capitalize_word(string)
    string.split(' ').map {|word| word.capitalize}.join(' ')
  end
end

include Helper

g = Greeter.new('Artur')
puts g.say_name()
puts 'changing...'
g.name = 'John!'
puts g.say_name()

# puts Helper.instance_methods.capitalize_word('THis is sometHing to bE capitalized')
puts capitalize_word('this Is a noN capITALized thing')
