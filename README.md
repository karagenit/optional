# Ruby Optional

Ruby Gem to Allow Safe Accessing a la Java Optionals.

In ruby 2.2+, the safe access operator `&.` prevents `NilClass::NoMethodErrors`, but no such feature exists in prior versions.

## Installation

## Usage

Original code:

```ruby
str = getStringOrNil()

if str.nil?
    puts 0
else
    puts str.length
end
```

With `Optional`:

```ruby
str = getStringOrNil()

puts str.optional().length().else(0)
```
