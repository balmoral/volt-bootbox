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

    $ gem install volt-bootbox

## Usage

First include the gem in the project's Gemfile:

```gem 'volt-bootbox'```

Next add volt-bootbox to the dependencies.rb file:

```component 'bootbox'```

The Opal/Ruby interface is largely consistent with the Javascript interface.
 
See http://bootboxjs.com/documentation.html for Javascript library documentation.

Where a method expects a single callback substitute a block for the JS function.
  
The value for a `callback:` keyword argument should be a Ruby proc.

Keyword arguments should preserve the JS camelcase (e.g. className:).

### Examples

```
$bootbox.alert('Hello world!') do
  puts 'hello world acknowledged'
end
```

```
$bootbox.alert(
  size: 'small', 
  title: 'Alert', 
  message: 'Hello world!', 
  callback: -> {puts 'hello world acknowledged'}
)
```

```
$bootbox.confirm('Are you sure?') do |result|
  puts "user is #{result ? 'sure' : 'unsure'}"
end
```

```
$bootbox.confirm(
  size: 'small', 
  title: 'Confirmation', 
  message: 'Are you sure?'
  callback: ->(result) {
    puts "user is #{result ? 'sure' : 'unsure'}"
  }
end
```

```
$bootbox.prompt('What is your name?') do |result|
  if result 
    puts "user's name is '#{result}'"
  else
    puts "prompt dismissed"
  end  
end
```

```
$bootbox.prompt(
  size: 'small', 
  title: 'Prompt', 
  message: 'What is your name?', 
  value: 'default name'),
  callback: ->(result) {
    if result 
      puts "user's name is '#{result}'"
    else
      puts "prompt dismissed"
  } 
)
```

```
$bootbox.dialog(
  # required
  message: "I am a custom dialog",
  
  # optional - adds a header to the dialog and places this text in an h4 
  title: "Custom title",

  # optional - allows the user to dismiss the dialog by hitting ESC
  # which will call this proc 
  onEscape: -> { puts 'user press escape' },
  
  # optional - whether the dialog should be shown immediately
  show: true,
  
  # optional - whether the dialog should be have a backdrop or not
  backdrop: true,

  # optional - whether to show a close button (default true)
  closeButton: true,
  
  # optional - whether to animate (default true)
  animate: true,
  
  # optional - an additional CSS class to apply to the Bootstrap dialog wrapper
  className: "my-modal",
  
  # optional - a hash of buttons to be shown in the dialog's footer
  buttons: {
    
    success: {
      # optional - the button label    
      label: "Success!",

      # optional - an additional CSS class to apply to the button
      className: "btn-success",
      
      # optional - call proc when button is clicked
      callback: -> { puts 'success!' }
    },
    
    "Danger!": {
      # no label is provided so the key is used as the button label

      # optional - an additional CSS class to apply to the button
      className: "btn-danger",
      
      callback: -> { puts 'danger!' }
    },

    # if the only value supplied is a callback proc, 
    # the key is used as the button label and all
    # other options are defaulted

    "Warning!": -> { puts 'warning!}
  }
)
```

`$bootbox` is a global variable. `Volt::Bootbox` may be substituted. 

Strings (text) provided as arguments to bootbox methods may be HTML format.

All methods are executed asynchronously, hence the use of callback blocks
with the result.
 
## Contributing

Contributions, comments and suggestions are welcome.
 
1. Fork it ( http://github.com/balmoral/volt-bootbox/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
