# tapp [![Build Status](https://travis-ci.org/esminc/tapp.svg?branch=master)](https://travis-ci.org/esminc/tapp) [![Code Climate](https://codeclimate.com/github/esminc/tapp/badges/gpa.svg)](https://codeclimate.com/github/esminc/tapp)

## Install

```
$ gem install tapp
```

## Usage

``` ruby
require 'tapp'

'foo'.tapp   #=> `pp 'foo'` and return 'foo'
'foo'.taputs #=> `puts 'foo'` and return 'foo'
```

See more examples in [spec/acceptance](https://github.com/esminc/tapp/tree/master/spec/acceptance) directory.

## Configuration

``` ruby
Tapp.configure do |config|
  config.report_caller   = true
  config.default_printer = :puts
end
```

<table>
  <tr>
    <th>Key</th>
    <th>Default</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><code>report_caller</code></td>
    <td><code>false</code></td>
    <td><a href="https://github.com/esminc/tapp/blob/master/spec/acceptance/report_caller.feature">report_caller.feature</a></td>
  </tr>
  <tr>
    <td><code>default_printer</code></td>
    <td><code>:pretty_print</code></td>
    <td><a href="https://github.com/esminc/tapp/blob/master/spec/acceptance/default_printer.feature">default_printer.feature</a></td>
  </tr>
</table>

## Custom Printer
You can define a custom printer. See [custom_printer.feature](https://github.com/esminc/tapp/blob/master/spec/acceptance/custom_printer.feature).

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
