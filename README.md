# cpd2xcode

[![License](https://img.shields.io/github/license/warchimede/cpd2xcode)](https://github.com/warchimede/cpd2xcode)

## Summary

A Swift command line tool to convert [PMD](https://pmd.github.io/)'s [Copy/Paste Detector (CPD)](https://pmd.github.io/latest/pmd_userdocs_cpd.html) XML reports to displayable warnings in Xcode.

## Installation

1. Clone this repo
2. Execute `make` (it basically builds the executable and puts it in `/usr/local/bin`)

## Usage

Here's the command line help:
```
OVERVIEW: A Swift command-line tool to convert PMD CPD results to Xcode warnings

USAGE: cpd2xcode <xml-report>

ARGUMENTS:
  <xml-report>            The path to the CPD XML report 

OPTIONS:
  -h, --help              Show help information.
```

You should create a `Run Script` build phase for a target in your Xcode project, in which you call `cpd2xcode` on the generated CPD XML report.

## Dependencies

- [Swift Argument Parser](https://github.com/apple/swift-argument-parser) from Apple

## Author

[William Archimede](http://twitter.com/warchimede)

## License
`cpd2xcode` is available under the MIT License.

If you use it and like it, let me know: [@warchimede](http://twitter.com/warchimede)