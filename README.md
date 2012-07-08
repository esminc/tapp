# tapp ![Build Status](https://secure.travis-ci.org/esminc/tapp.png?branch=master)

## Install

```
$ gem install tapp
```

## Usage

``` ruby
require 'tapp'

'foo'.tapp   #=> pp 'foo'
'foo'.taputs #=> puts 'foo'
'foo'.taap   #=> ap 'foo'
```

See more examples in [spec/acceptance](https://github.com/esminc/tapp/tree/master/spec/acceptance) directory.

## Configuration

``` ruby
Tapp.configure do |config|
  config.report_caller = true
end
```

<table>
  <tr>
    <th>Key</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td>`report_caller`</td>
    <td>[report_caller.feature](https://github.com/esminc/tapp/blob/master/spec/acceptance/report_caller.feature)</td>
    <td>`false`</td>
  </tr>
</table>

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Contributors
See https://github.com/esminc/tapp/contributors

## Copyright
Copyright &copy; 2010-2012 Keita Urashima. See LICENSE for details.
