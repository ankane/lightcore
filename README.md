# Lightcore

Lightweight Ruby core extensions

- count_by
- hash_map
- mapk, mapk!
- mapv, mapv!
- to_b

Plays nicely with the Ruby core and [ActiveSupport](http://guides.rubyonrails.org/active_support_core_extensions.html).

## Get Started

Add this line to your application’s Gemfile:

```ruby
gem 'lightcore'
```

## Methods

#### count_by

Groups and counts an array

```ruby
users.count_by(&:country_code)
# {
#   "US" => 5,
#   "DE" => 2
# }
```

#### hash_map

Converts an array of key-value pairs to a hash

```ruby
users.hash_map{|u| [u.id, u.name] }
# {
#   1 => "Nick",
#   2 => "Andrew"
# }
```

#### mapk

Updates the keys of a hash

```ruby
hash.mapk{|k| k.to_sym }
```

`mapk!` updates the original hash

#### mapv

Updates the values of a hash

```ruby
hash.mapv{|v| v[0] }
```

`mapv!` updates the original hash

#### to_b

Converts an object to a boolean - works great with strings

```ruby
"true".to_b   # true
"hi".to_b     # true
"false".to_b  # false
"f".to_b      # false
nil.to_b      # false
```

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/lightcore/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/lightcore/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
