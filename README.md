# rbdym: Did You Mean...?

The `rbdym` gem is used to add the ability to calculate the
[Damerau-Levenshtein distance](https://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance)
between two strings and to use this to do fuzzy string matching. It wraps the
[dym](https://github.com/dwjackson/dym) C library in order to provide this
functionality.

## Build and Install

To build and install `rbdym` you'll want to have [bundler](https://bundler.io/)
installed. You also need a C compiler to build the extension, and you'll need
to have the [libdym](https://github.com/dwjackson/dym) library installed
because it is used by the C extension.

Once you have all the prerequisites, run:

```sh
$ bundle install
$ rake gem
$ gem install rbdym-0.1.0.gem
``` 

## API

The `rbdym` library adds methods to Ruby's `String` class:

* `String#edit_distance(str)` to calculate the edit between two strings
* `String#closest_match(str_array)` to find the closest string match from within a list of strings

## Example

The following is an example of using the `rbdym` methods:

```rb
require 'rbdym'

s = 'test'
dist = s.edit_dist 'tsey'
puts dist

closest = s.closest_match %w[step best pest stamp]
puts closest
```

## License

rbdym is licensed under the MIT license.
