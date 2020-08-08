# rbdym: Did You Mean...?

The `rbdym` gem is used to add the ability to calculate the
[Damerau-Levenshtein distance](https://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance)
between two strings and to use this to do fuzzy string matching. It wraps the
[dym](https://github.com/dwjackson/dym) C library in order to provide this
functionality.

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
