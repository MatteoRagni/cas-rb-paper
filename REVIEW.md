# Review

Dear editor in chief,

I want to thanks you and reviewers for the efforts in reading my work and for the really constructive suggestions and comments that I received. I'm presenting you a revised version of the paper. Additions and modifications are highlighted with blue color, to facilitate a second review, based upon comments.

## Reviewer 1

### Point 1

> I would like the author to specify or give some examples on the "numerical conditioning" and/or "conditioning rules for numerical issues" and, why programming in such direction is an advantage. Working in established CAS environments, I doubt that there is truly a need for such an implementation. On this topic, I cannot see the scope of example 3.1 as a whole. The mathematical problem underlying this example is not well posed. Which is the purpose of conditioning in this example? In symbolic mathematics, the transformation of footnote 3 is usually used to estimate limits. Similar symbolic manipulations are applied in selected cases, and their use depends on the calculus methodology. I don't think that this kind of transformations should be systematically made. I don't see why rationalization should be extended to all differences of square roots.

Dear Reviewer,

the presented software is mainly intended for users that need a fast way to prototype complex code for numerical algorithm, and, as stated in the abstract, complete software solutions exist and the purpose of this software is not to substitute them, as You correctly pointed out.

What really is implemented in the software are a series of instruments to make it a tool for develop and produce code in other languages, starting from a mathematical model, giving to the user the ability to redefine exportation rules for handling particular situations.

In the second part of example 3.1, those capabilities are used to intercept a numerical instability that a user identified. No broader context is given, because considered superficial for the discussion. What is pointed out, is that a user may avoid the numerical cancellation that appears in the eq.4 (for x really greater than a), through a different exportation rule that will force C code to contain a regularization. The regularization presented is well known in literature of numerical conditioning. This is a user definition, not a systematic software behavior. Also, should be noted that exportation rule changes only the generated code, not the graph of the function defined in line 208 (I've added a check in the example to prove that). And in fact, such manipulation has to be applied only in selected case, as You correctly pointed out, and the user have the ability to intercept them. At the same time the graph is left unchanged, meaning that any other calculus manipulation will be on a graph that does not contain the regularization.

I've modified abstract and introduction to make readers better understand which is the intended community for the software. I've also modified example 3.1 to explain better that what is reported is a user example, and the regularization presented is not a systematic software behavior, but the result of a user script.

### Point 2

> I suggest the correction of some technical terms/expressions, since CAS users are the intended user community for this library:
 * in line 130, the term "piecewise functions" should be replaced by the term "maximum type functions".  In CAS software, piecewise functions are defined using "If" command.
 * in line 270, "gradients as patterns instead of matrices" possibly implies functional matrices as Hessian and Jordan matrices, where individual differential expressions form patterns.

Dear Reviewer,

the line You are citing was misleading, and the associated example has been expanded with a Piecewise function. In the text it is now specified that, internally, Max and Min operations inherit from Piecewise class. As in other CAS software (i.e. Mathematica and Maple), the "if" keyword is reserved for conditional statement for code flow. Also in this case, since CAS is using Ruby parser, I decided to keep the "if" of Ruby and the CAS::Piecewise class separate.

The mistake at line 270 is now corrected. Thank you for pointing that out.

### Point 3

> For the sake of consistency, I would suggest Figure 2 to be cited and described into the text.

Dear reviewer,

Figure 2 was cited in the text at line 69, but description and caption were probably too concise and not enough clear. Both, figure caption and description in text, have been expanded.

## Reviewer 2

> This work is interesting and relevant for the journal SoftwareX. The author has described in very clear way the proposed library starting from motivations and significance of this work. However, this reviewer thinks that the poor part of this work is the "Illustrative Examples" section. The author must complete this section with more complex examples than those proposed in order to understand the potential of the proposed software.

Dear Reviewer,

the examples presented are intended for describing the basic principle behind the software implementation. I added a new example, for the solution of an ODE using the Taylor's series method. It is impossible to include further example without exceeding the editorial limits. More examples have been included at the link provided in line 47:
 * Taylor's series method
 * Implementation of a user CAS::Op that implements the sign(x) function with the appropriate C exporting rule
 * Overloading of the exportation rule for sign(x), that is transformed in sin(atan(ax)), and exportation with symbolic substitution
 * Latex code generation plugin
