# First Review

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

# Second Review

Dear Editor in chief,

I want to thank you and the reviewers for the efforts in reading my work and for the constructive suggestions and comments that I received. I am presenting you a revised and improved version of the paper.

## Editor

Dear Editor,

thank you for your time and consideration in reading this work.
The paper has been corrected and all unclear phrases have been revised.

> You use a bold-font quite frequently in the text where it is probably not warranted.  
> I would use it for sub-headings and maybe names of functions.  Otherwise make it a
> regular font.   For example, CAS in the abstract should be a regular font.

I've limited the use of bold style as you suggested. I will not reply to other points that refer to the same issue: they have been made a regular font.

> Also instead of "- e.g"  use ", for example, ".

I've dropped the "e.g." in accordance to your suggestion

> Figure 1 - do not use "red" (not a good colour for people who are colour-blind)

Red elements are now in dark green. I hope it fulfill your requirements.

> Listings - the comments are in a "light gray" and difficult to read.
> I would make them black

Comments in listings are now black.

> Abstract
> - drop "complete" in the first line
> - drop "even with a good software"

I dropped both expressions.

> 6 - replace "has been" by "was"

Done.

> 8 - PC is a bit ambiguous (also should be PCs)

PC is now expanded to Personal Computers.

> 8 - space between [3].
> (check that all references have spaces between the preceding word)

Done and checked.

> 18 - drop "though"

Dropped.

> 18 - "intriguing" is probably not the right word

"intriguing" is now "interesting"

> 19 - "the scientific and technical fields."

"and" inserted.

> 23-34 I should be able to read each bullet point as a complete sentence starting with
> "The library aims at:", but the bullet points are do not fit.  They need to be rewritten.

The paragraph has been revised, dropping the itemize environment. (Lines 23-31)

> 35 - "yet at early stage"  does not seem to fit into this sentence (missing "an")

"an" inserted.

> 40-42 - this sentence is poorly written

The sentence has been rewritten. (Lines 38-39)

> 73 - "The terminal"

"The" inserted.

> 77 - "As for now" - not sure what you mean (consider a different phrase)

The sentence has been revised. "As for now" dropped. (Lines 74-76)

> 80 - I would spell out SD
> 80 - not sure what "crosses the graph" means

SD has been speeled.
"crosses the graph" is now "explores the graph".

> 95 - maybe add "argument, as shown in Listing 1."
> (and do the same for all text leading into a Listing)

The correction you suggest has been implemented in Line 92, and all text
leading into a Listing now contains the number of the listing itself, instead of "positional" reference.

> 106 - "see [12] for further details."

"further" inserted

> 195 - "The c-opt .. "

"The" inserted

> 197 - "where the expression, g(x), .."

The whole phrase has been revised (Line 195)

> 222 - "The user"

"The" inserted

> 259 - this sentence is poorly written

The whole paragraph has been revised (Line 258-262)

> 264 - "The result of Listing 10"  
> Listing 10 is above this sentence.

"Positional" references are removed. Listing number is directly cited.

> 268 - "for the trapeziodal .."

The sentence has been reviewed (Line 268-269)

> 277 - "The following listing  .."

Instead of following, I've directly reported the listing numbers.

> Drop the acknowledgements as you are not acknowledging anyone.

I've dropped the acknowledgments.

> 364 - "April"

"april" is now "April"

> 391 - "Python"

"python" is now "Python"


# Third Review

Dear Editor,

thank you for your time and consideration in reading this work.
The paper has been corrected and all unclear phrases have been revised.

> I suggest replacing the dashes "-" with commas ",".  I believe that is the proper grammar.
> See the abstract, line 10 and a quite a few other places.

I reviewed all the em-dashes used, and removed in some paragraphs. But I kept the em-dashes
where I wanted a clean separation between the main sentence and the "parenthetical" content.

> 38 - "At the best .."
> I would verify that you statement is true or remove it.

The statement has been verified against the instructions in the wiki
of the project, and even if the installation succeeded the gem does not
work (always returns nil). I searched a way to fix it, but I never
found a workaround. At best of my knowledge, this gem does not work.
Also, the SciRuby project reports the gem a broken (http://gems.sciruby.com/).

By the way, removing "At the best [...]" will make the sentence to much
un-polite, and I really prefer to keep it.

> 46 - drop "some"

Fixed.

> 64 - "Figure 1 shows a graphical representation of an expression."

Fixed.

> 85 - "through the"

Fixed.

> 86 - something wrong with the sentence starting "Functionalities .."

Paragraph reviewed.

> 102 - "as a plugin"  and "exploits the properties"

Fixed.

> 105 - replace "when" with "where"

Fixed.

> 105 - "that is platform dependent"
> it is not clear what you are referring to with the "this"

Removed, paragraph reviewed.

> 107 - problems with the sentence starting "Each .."

Paragraph reviewed.

> 109 - replace "an" with "a"

Fixed.

> 119 - "when the independent"

Fixed.

> 162 - problems with the sentence "This .."  (reads poorly)

Paragraph reviewed.

> 170 - replace "drafted" with "shown"

Fixed.

> 216 - a one sentence paragraph - merge into previous paragraph

Paragraphs merged.

> 219 - "when the x value"

Fixed.

> 222 - problems with the sentence "Without .."

Paragraph reviewed.

> 276 - no italic

I've always used Italic for Ruby and names for gems. I kept
italic for consistency.

> 283 - drop "obviously" (and the commas)
> (maybe the text in 283-284 could be a new sentence)
> (period at the end of equation 11)

Fixed, but the paragraph has been reviewed.

> 318 - a one sentence paragraph - merge into previous paragraph

Paragraphs merged.

> 319 - I suggest using "(a)" rather than "a."  Seems to look better.

Fixed.

> 326 - "allows one"

Fixed.
