# Review

Dear editor in chief,

I want to thank you and the reviewers for the efforts in reading my work and for the constructive suggestions and comments that I received. I am presenting you a revised and improved version of the paper. Additional material and changes are highlighted with blue color, this will make easier the review process.

## Reviewer 1

### Point 1

> I would like the author to specify or give some examples on the "numerical conditioning" and/or "conditioning rules for numerical issues" and, why programming in such direction is an advantage. Working in established CAS environments, I doubt that there is truly a need for such an implementation. On this topic, I cannot see the scope of example 3.1 as a whole. The mathematical problem underlying this example is not well posed. Which is the purpose of conditioning in this example? In symbolic mathematics, the transformation of footnote 3 is usually used to estimate limits. Similar symbolic manipulations are applied in selected cases, and their use depends on the calculus methodology. I don't think that this kind of transformations should be systematically made. I don't see why rationalization should be extended to all differences of square roots.

Dear Reviewer,

thank you for your time and consideration in reading this work.

The software presented in this work is mainly intended for users that need a fast way to prototype complex numerical algorithms. As you correctly pointed out, complete CAS solutions already exist, but the purpose of this software is not to substitute them.

The goal of this software is to implement a series of tools for developing and producing complex code in target languages, starting from a mathematical model. This gives to the user the ability to redefine exportation rules, for handling particular situations as in example 3.1, alongside with some minimal CAS functionalities. For this reason I have modified the abstract and the introduction in order to make the readers more aware regarding which are the contribution of this work for the software community.

In the second part of example 3.1, a user that identifies a numerical instability can easily overload the exportation rules to fix the problem, and no broader context is given, because considered not relevant. The numerical cancellation that appears in the Eq. 4 (for x much greater than a), is stabilized through a different exportation rule that will force the C code to contain a regularization. This regularization is widely used in numerical literature. Of course this also gives to the user the freedom to choose the type of regularization, since this is a user definition and not a systematic software behavior. It is also worth to notice that the exportation rule changes only the generated code, but not the graph of the function defined in line 232. This separation implies that any other calculus manipulation will be on a graph that does not contain the regularization. I also added a check in the example. I modified example 3.1 to better explain that what is reported is a user usage scenario, and the regularization is not a systematic software behavior, but the result of a user script.
### Point 2

> I suggest the correction of some technical terms/expressions, since CAS users are the intended user community for this library:
> * in line 130, the term "piecewise functions" should be replaced by the term "maximum type functions".  In CAS software, piecewise functions are defined using "If" command.
> * in line 270, "gradients as patterns instead of matrices" possibly implies functional matrices as Hessian and Jordan matrices, where individual differential expressions form patterns.

the point at line 130 was misleading, and the associated example has been expanded with a properly defined CAS::Piecewise function. Moreover is now specified that the Max and Min operations are internally defined and inherit from the Piecewise class. As in other CAS software (i.e. Mathematica and Maple), the "if" keyword is reserved for conditional statement that rules the code flow. For this reason, since CAS is using the Ruby parser, I decided to keep the "if" keyword and the CAS::Piecewise class separate.

The mistake at line 270 is now corrected. Thank you for pointing that out.

### Point 3

> For the sake of consistency, I would suggest Figure 2 to be cited and described into the text.

Dear reviewer,

Figure 2 was cited in the text at line 69, but description and caption were probably too concise and not enough clear. Both caption and description in text have been expanded.

## Reviewer 2

> This work is interesting and relevant for the journal SoftwareX. The author has described in very clear way the proposed library starting from motivations and significance of this work. However, this reviewer thinks that the poor part of this work is the "Illustrative Examples" section. The author must complete this section with more complex examples than those proposed in order to understand the potential of the proposed software.

Dear Reviewer,

thank you for your time and consideration in reading this work.

The examples presented describe the basic principle behind the software implementation. I added an example for the solution of an ODE using the Taylor's series method. Unlucky, it is impossible to include further examples without exceeding the word limits. For this reason, more examples have been included online and they can be found at the link provided in line 47. For the interest of the review the additional examples are:
 * Taylor's series
 * Implementation of a user CAS::Op that implements the sign(x) function with the appropriate C exporting rule
 * Overloading of the exportation rule for sign(x), that is transformed in sin(atan(ax)), and exportation with symbolic substitution
 * Latex code generation plugin
 * Newton-Raphson algorithm that uses automatic differentiation plugin.
