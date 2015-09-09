# rakuna-content-json

JSON mixins for Rakuna and Webmachine



# Description

`rakuna-content-json` adds mixins for parsing and generating JSON. It leverages [`multi_json`](https://github.com/intridea/multi_json) to support a wide range of JSON engines. It will select the fastest available from any that are loaded. Improving performance is as simple as `require 'oj'` if your Ruby supports it (sorry JRuby!).



# Installation
`gem install rakuna-content-json`

# Usage
```ruby
require 'rakuna/content/json'  # Includes everything.

# Alternatively, selectively include the bits you need.
require 'rakuna/accepts/json'  # Only adds Rakuna::Accepts::JSON
require 'rakuna/provides/json'  # Only adds Rakuna::Provides::JSON
```

## Examples

### A resource that accept JSON input
```ruby
class ExampleResource < Rakuna::Resource::Basic
  include Rakuna::Accepts::JSON
end
```

### A resource that provides JSON output
```ruby
class ExampleResource < Rakuna::Resource::Basic
  include Rakuna::Provides::JSON
end
```

### A resource that accepts JSON input, and provides JSON output.
```ruby
class ExampleResource < Rakuna::Resource::Basic
  include Rakuna::Content::JSON
end
```



# Contributing
  * Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
  * Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
  * Fork the project.
  * Start a feature/bugfix branch.
  * Commit and push until you are happy with your contribution.
  * Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
  * Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# License
[MIT](https://tldrlegal.com/license/mit-license)

# Contributors
  * [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
