# Ruby Optional

Ruby Gem to Allow Safe Accessing a la Java Optionals.

In Ruby 2.3+, the safe access operator `&.` prevents `NilClass::NoMethodError`, but no such feature exists in prior versions. This gem aims to provide a cross-version compatible solution.

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
