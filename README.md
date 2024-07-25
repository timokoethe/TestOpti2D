# TestOpti2D
[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](https://opensource.org/license/mit)
[![Build](https://github.com/timokoethe/OptiMathKit/actions/workflows/build.yml/badge.svg)](https://github.com/timokoethe/OptiMathKit/actions/workflows/build.yml)
[![Test](https://github.com/timokoethe/OptiMathKit/actions/workflows/test.yml/badge.svg)](https://github.com/timokoethe/OptiMathKit/actions/workflows/test.yml)

TestOpti2D is a Swift framework for macOS that provides a comprehensive collection of target functions designed specifically for testing optimization algorithms aimed at finding global minima. These functions, often used as benchmarks in optimization research, are characterized by having one or more local minima and exactly one global minimum in given input domain. Each target function in the framework takes two inputs of type Double and produces a single output of type Double, effectively projecting from a state space to a target space. The functions are grouped according to their significant physical properties and shapes to facilitate targeted testing.

## Functions
### Plate-Shaped Functions
|Function           |Input domain $D$ |Function |Global minimum|
|-------------------|-----------------|--------------|--------------|
| Booth Function    | $x_1 = [3, 5]$  |              | -            |
| Matyas Function   | $D = [3, 5]$    | -            | -            |
| McCormick Function| $D = [3, 5]$    | -            | -            |

### Bowl-Shaped Functions
|Function            |Input domain  |Global minimum|
|--------------------|--------------|--------------|
|Bohachevsky Function| $D = [3, 5]$ | -            |


## Contributing
If you encounter any bugs or have feature requests, please feel free to open an issue on our GitHub repository.

## Support
If you have any questions, feedback, or need assistance with OptiMathKit, please don't hesitate to contact us. We're here to help!

## License
TestOpti2D is released under the [MIT License](https://opensource.org/license/mit).

Feel free to adjust and expand upon this template to better suit your project's needs!