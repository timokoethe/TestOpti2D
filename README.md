# TestOpti2D
[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](https://opensource.org/license/mit)
[![Build](https://github.com/timokoethe/OptiMathKit/actions/workflows/build.yml/badge.svg)](https://github.com/timokoethe/OptiMathKit/actions/workflows/build.yml)
[![Test](https://github.com/timokoethe/OptiMathKit/actions/workflows/test.yml/badge.svg)](https://github.com/timokoethe/OptiMathKit/actions/workflows/test.yml)

TestOpti2D is a Swift framework for macOS that provides a comprehensive collection of target functions designed specifically for testing optimization algorithms aimed at finding global minima. These functions, often used as benchmarks in optimization research, are characterized by having one or more local minima and exactly one global minimum in given input domain. Each target function in the framework takes two inputs of type Double and produces a single output of type Double, effectively projecting from a state space to a target space. The functions are grouped according to their significant physical properties and shapes to facilitate targeted testing.

## Functions
Please note that each optimization function in this framework has a specific input domain. The global minimum can only be found within this designated domain. Make sure to consult the documentation for the precise input ranges before testing the algorithms.
### Plate-Shaped Functions
|Name               |Input Domain                                   |Function                                                                  |Global Minimum                                   |
|-------------------|-----------------------------------------------|--------------------------------------------------------------------------|-------------------------------------------------|
| Booth Function    | <sub>$x \in [-10, 10] \times [-10, 10]$</sub> | <sub>$f(x) = (x_1 + 2x_2 - 7)^2 + (2x_1 + x_2 - 5)^2$</sub>              | <sub>$f(x^* ) = 0$, at<br> $x^* = (1, 3)$</sub> |
| Matyas Function   | <sub>$x \in [-10, 10] \times [-10, 10]$</sub> | <sub>$f(x) = 0.26(x_1^2 + x_2^2) - 0.48x_1x_2$</sub>                     | <sub>$f(x^* ) = 0$, at<br> $x^* = (0, 0)$</sub> |
| McCormick Function| <sub>$x \in [-1.5, 4] \times [-3, 4]$</sub>   | <sub>$f(x) = sin(x_1 + x_2) + (x_1 - x_2)^2 - 1.5x_1 + 2.5x_2 + 1$</sub> | <sub>$f(x^* ) = -1.9133$, at<br> $x^* = (-0.54719, -1.54719)$</sub> |

### Bowl-Shaped Functions
|Name                  |Input Domain                                       |Function                                                                      |Global Minimum                                   |
|----------------------|---------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------------------|
| Bohachevsky Function | <sub>$x \in [-100, 100] \times [-100, 100]$</sub> | <sub>$f(x) = x_1^2+2x_2^2 - 0.3cos(3\pi x_1) - 0.4cos(4\pi x_2) + 0.7$</sub> | <sub>$f(x^* ) = 0$, at<br> $x^* = (0, 0)$</sub> |

## Installation
1. Please copy the following package URL to import the framework in your Xcode project:
```
https://github.com/timokoethe/TestOpti2D.git
```
2. Add the following import statement at the top of the Swift file where you want to use TestOpti2D:
```
import TestOpti2D
```
3. You’re all set! You can now use the functionality provided by TestOpti2D in your project.

## Contributing & Support
If you encounter any bugs or have feature requests, please feel free to open an issue on our GitHub repository. If you have any questions, feedback, or need assistance with TestOpti2D, please don't hesitate to contact us. We're here to help!

## License
TestOpti2D is released under the [MIT License](https://opensource.org/license/mit).

Feel free to adjust and expand upon this template to better suit your project's needs!
