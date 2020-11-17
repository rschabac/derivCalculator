# Algebraic expression parser and derivative calculator

This program reads an algebraic expression as a command line argument, then 
parses it, computes the derivative of it with respect to x, then prints the result. Before and after
computing the derivative, an attempt is made to simplify the expression by removing redundant subexpressions
(i.e. replacing _x + 0_ with _x_, etc.). Printing the result is done in a way that minimizes redundant
parentheses in the output. When printing the output, constants that are within 0.001 of _e_ or _pi_
are printed as `e` or `pi`, respectively.

## Syntax of input

This program the following built-in functions:
- sin
- cos
- tan
- csc
- sec
- cot
- sqrt (square root)
- ln (natural log)
- log (log base 10)

The strings "pi" and "e" are interpreted as the constants _pi_ and _e_ respectively.
All other letters are interpreted as variables.

### Examples:

`./deriv 'x^2'` prints `2 * x`

`./deriv '1+x*(3-x)'` prints `x * -1 + 3 - x`

`./deriv 'sin(cos(x))*sqrt(5/x)'` prints `sin(cos(x)) * -5 / x ^ 2 / (2 * sqrt(5 / x)) + cos(cos(x)) * -1 * sin(x) * sqrt(5 / x)`

The program supports exponentiation (using the `^` operator). This can cause problems when computing the derivative.
Specifically, if the input expression contains exponentiation, either the base or the exponent must be a real number.

`./deriv 'x^x'` prints `Fatal error: exception Failure("Either the base or exponent must be a constant")`
