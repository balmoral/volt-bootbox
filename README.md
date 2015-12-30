# Volt::Bootbox

A Volt component wrapping the Bootbox javascript library (via opal-bootbox).

Bootbox.js is a small open source (MIT) JavaScript library which implements dialog (alert, prompt, confirm) boxes using Bootstrap modals.

To find out more about Bootbox, go to http://bootboxjs.com.

To find out more about Opal, go to http://opalrb.org

To find out more about Volt, go to http://http://voltframework.com

## Installation

Add this line to your application's Gemfile:

    gem 'volt-bootbox'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install volt-highcharts

## Usage

First include the gem in the project's Gemfile:

```gem 'volt-bootbox'```

Next add volt-bootbox to the dependencies.rb file:

```component 'bootbox'```

### Examples

```
$bootbox.alert('Hello world!') do
  puts 'hello world acknowledged'
end

$bootbox.alert(title: 'Alert dialog', message: 'Hello world!') do
  puts 'hello world acknowledged'
end

$bootbox.confirm('Are you sure?') do |result|
  puts "user is #{result ? 'sure' : 'unsure'}"
end

$bootbox.confirm(title: 'Confirmation dialog', message: Are you sure?') do |result|
  puts "user is #{result ? 'sure' : 'unsure'}"
end

$bootbox.prompt('What is your name?') do |result|
  if result 
    puts "user's name is '#{result}'"
  else
    puts "prompt dismissed"
  end  
end

$bootbox.prompt(title: 'Prompt dialog', message: 'What is your name?', value: 'default name') do |result|
  if result 
    puts "user's name is '#{result}'"
  else
    puts "prompt dismissed"
  end  
end

```

`$bootbox` is a global variable. `Volt::Bootbox` may be substituted. 

Strings (text) provided as arguments to bootbox methods may be HTML format.

## Contributing

Contributions, comments and suggestions are welcome.
 
1. Fork it ( http://github.com/balmoral/volt-highcharts/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
