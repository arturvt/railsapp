def brakeline()
  puts ('--------')
end
def say_goodnight(name)
  result = 'Good Night, ' + name
  return result
end

def say_goodnight_easy(name)
  # using capitalize to put the name as it should.
  "Good Night, #{name.capitalize}. Your name contains: #{name.size} letters."
end

# it'll check if current value contains some chars
def check_regex(value)

  if value =~ /P(erl|ython)/
    msg = 'Contains what we looking for here: ' + value
  else
    msg = 'Do not matches what we looking for: ' + value
  end
  msg += '. Contains more than 4 letters' if value.size > 4
  puts msg
end

# Hash example
instruments_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  violin: 'string'
}

program_languages = ['cobol', 'Python', 'C++', 'Perl', 'Ruby', 'PHP']

animals = %w(cow ox cat dog elk)
# like a callback function. We can add the 'each' by |value|
animals.each {
  |animal| puts animal
}

brakeline()
puts say_goodnight('Artur')
brakeline()
puts say_goodnight_easy('non capitalized')
brakeline()
puts 'Cello value is '+instruments_section[:cello]
brakeline()
for language in program_languages
  check_regex(language)
end
brakeline()
