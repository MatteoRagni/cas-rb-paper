# Mr.CAS— A Minimalistic (pure) Ruby CAS for Fast Prototyping and Code Generation

**Matteo Ragni**, University of Trento, Department of Industrial Engineering

_______

## Abstract

There are Computer Algebra System (CAS) systems on the market with complete solutions for manipulation of analytical models. But exporting a model that implements specific algorithms on specific platforms, for target languages or for particular numerical library, is often a rigid procedure that requires manual post-processing.

This work presents a Ruby library that exposes core CAS capabilities, i.e. simplification, substitution, evaluation, etc.

The library aims at programmers that need to rapidly prototype and generate numerical code for different target languages, while keeping separated mathematical expression from the code generation rules, where best practices for numerical conditioning are implemented.

The library is written in pure Ruby language and is compatible with most Ruby interpreters.
