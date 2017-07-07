Boxer
============
[![GitHub version](https://badge.fury.io/gh/boennemann%2Fbadges.svg)](http://badge.fury.io/gh/boennemann%2Fbadges)
[![Maintenance](https://img.shields.io/maintenance/yes/2017.svg)]()

Boxer is a small and simple package to print out text in boxes for the Nim Programming Language.
This package currently does not support multiline text.

Feel free to take the [example code](https://github.com/molnarmark/boxer/blob/master/boxer_example.nim) to test out the package!

## Usage
```nim
import boxer, colorize

echo Boxer("Thank you for checking out the demo of Boxer!", "single", 2).bold.fgGreen
echo Boxer("Printing out text in boxes has never been easier.", "double", 5).bold.fgYellow
echo Boxer("Boxer supports multiple box types.", "round").fgLightBlue
echo Boxer("You can find them all inside boxes.json", "classic", 3)
```
## Contributing

All contributions are welcome. Feel free to make this project better. :)

## Authors

* Mark Molnar

## License
* MIT