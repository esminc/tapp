# ChangeLog

## 1.5.1 (2017-09-24)

* Remove warning: `*' interpreted as argument prefix. (taki3)
* Added `license="MIT"` for tapp.gemspec. (@swamp09)

## 1.5.0 (2015-02-24)

* `awesome_print` support is split into separate gem. Use [tapp-awesome_print](https://github.com/esminc/tapp-awesome_print).
* Add 'custom printer' feature. See [custom_printer.feature](https://github.com/esminc/tapp/blob/master/spec/acceptance/custom_printer.feature).
* Remove `Object#taap`.

## 1.4.0 (2012-07-08)

Some API changes for future enhancements.

* Added `Tapp.config` and `Tapp.configure`. See README.md for details.
* `Tapp.verbose` moved to `Tapp.config.report_caller`.
* `Object#taap` is deprecated. Set `Tapp.config.default_printer = :awesome_print` and use `#tapp` instead.

## 1.3.1 (2012-03-13)

* `tapp grep` finds "taputs" and "taap". (@kei-s)

## 1.3.0 (2011-11-01)

* Add `tapp` command-line tool. (@ursm)

## 1.2.0 (2011-10-27)

* Add `Tapp.verbose` option. (@moro)

## 1.1.0 (2011-07-06)

* `Object#taap` support `awesome_print`. (Thanks @ryopeko!)

## 1.0.0 (2010-07-07)

initial release
