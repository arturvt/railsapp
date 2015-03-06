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
    puts('Contains what we looking for here: ' + value)
  else
    puts('Do not matches what we looking for: ' + value)
  end
end

# Hash example
instruments_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  violin: 'string'
}

program_languages = ['cobol', 'Python', 'C++', 'Perl', 'Ruby', 'PHP']




puts say_goodnight('Artur')

puts say_goodnight_easy('non capitalized')

puts instruments_section[:cello]

for language in program_languages
  check_regex(language)
end
