# D1 Differential calculus II: notes

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

In [C3 Differential calculus I](../../C-bovenbouw-core/C3-differential-calculus-I/) you learned what a derivative (*afgeleide*) is, how to differentiate polynomials and powers, and how to use the derivative to find tangent lines and the extremes of polynomials. This module finishes the job. After it you can differentiate every function that appears on the Dutch central exam (CE = *centraal examen*), and you can use derivatives for the big exam tasks: full curve sketching, optimisation, functions with a parameter, and tangent-line proofs.

Throughout, $f'(x)$ means the derivative of $f$, and $f''(x)$ the second derivative (*tweede afgeleide*). Recall the definition:

$$
f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}.
$$

The fraction inside the limit is the difference quotient (*differentiequotiënt*): the slope of the line through two nearby points of the graph.

## 1. The toolkit so far

From C3 you should already know:

- the power rule: if $f(x) = x^n$ then $f'(x) = n x^{n-1}$ (for every real $n$, though in C3 it was only proved for whole numbers);
- the sum rule and the constant-factor rule: $(f + g)' = f' + g'$ and $(c f)' = c f'$;
- the tangent line (*raaklijn*) at $x = a$ is $y = f'(a)(x - a) + f(a)$;
- at an extreme (*extreem*, either a maximum or a minimum) of a differentiable function on an open interval, $f'(x) = 0$; the converse is false ($x^3$ at $0$).

This module adds four new rules (product, quotient, chain, inverse) and the derivatives of the standard functions (*standaardfuncties*): $\sin$, $\cos$, $\tan$, $e^x$, $\ln x$, $a^x$ and ${}^{g}\!\log x$. With those, any formula built from standard functions can be differentiated mechanically. The rest of the module is about *using* derivatives well.

## 2. Product and quotient rule

**Product rule** (*productregel*). If $p(x) = f(x) g(x)$ then

$$
p'(x) = f'(x) g(x) + f(x) g'(x).
$$

*Why.* Add and subtract $f(x+h) g(x)$ in the numerator of the difference quotient:

$$
\frac{f(x+h)g(x+h) - f(x)g(x)}{h} = f(x+h)\,\frac{g(x+h) - g(x)}{h} + g(x)\,\frac{f(x+h) - f(x)}{h}.
$$

As $h \to 0$, $f(x+h) \to f(x)$ (a differentiable function is continuous), the first quotient tends to $g'(x)$ and the second to $f'(x)$. A picture helps: if $f$ and $g$ are the sides of a rectangle, increasing both by small amounts $\Delta f$ and $\Delta g$ adds two thin strips $\Delta f \cdot g$ and $f \cdot \Delta g$, plus a tiny corner $\Delta f \cdot \Delta g$ that disappears in the limit.

**Quotient rule** (*quotiëntregel*). If $q(x) = \dfrac{t(x)}{n(x)}$ with $n(x) \neq 0$ then

$$
q'(x) = \frac{n(x)\,t'(x) - t(x)\,n'(x)}{n(x)^2}.
$$

Dutch textbooks remember this as "noemer maal afgeleide teller min teller maal afgeleide noemer, gedeeld door noemer kwadraat" (*teller* = numerator, *noemer* = denominator). It follows from the product rule: $t = q \cdot n$, so $t' = q' n + q n'$, and solving for $q'$ gives $q' = (t' - q n')/n = (n t' - t n')/n^2$. (This argument assumes $q$ is differentiable; the direct proof with difference quotients removes that assumption.)

**Tip.** Before using the quotient rule, check whether a simpler route exists. $\dfrac{x^2 + 3}{x}$ is just $x + 3x^{-1}$, with derivative $1 - 3x^{-2}$.

## 3. The chain rule

Many functions are a function *of* a function: $(x^2 + 1)^5$ is "fifth power of ($x^2 + 1$)", $\sin(3x)$ is "sine of ($3x$)". If $f(x) = g(u(x))$, call $u$ the inner function and $g$ the outer function. The **chain rule** (*kettingregel*) says

$$
f'(x) = g'(u(x)) \cdot u'(x).
$$

In Leibniz notation, with $y = g(u)$ and $u = u(x)$:

$$
\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}.
$$

*Why (the idea).* Rates of change multiply. If $u$ changes 3 times as fast as $x$, and $y$ changes 5 times as fast as $u$, then $y$ changes 15 times as fast as $x$. With difference quotients: write $\Delta u = u(x+h) - u(x)$. Then

$$
\frac{g(u(x+h)) - g(u(x))}{h} = \frac{g(u + \Delta u) - g(u)}{\Delta u} \cdot \frac{\Delta u}{h}.
$$

As $h \to 0$, also $\Delta u \to 0$, so the first factor tends to $g'(u)$ and the second to $u'(x)$.

*The catch.* We divided by $\Delta u$. If $u(x+h) = u(x)$ for some small $h$ (for example when $u$ is constant near $x$, or when $u$ wiggles like $x^2 \sin(1/x)$ near $0$), that step is division by zero. The idea is right, but the proof is incomplete.

> **Going further: a proof that always works.** Define a helper function $Q(k) = \dfrac{g(u+k) - g(u)}{k}$ for $k \neq 0$ and $Q(0) = g'(u)$. Because $g$ is differentiable at $u$, $Q$ is continuous at $0$. And for *every* $k$, including $k = 0$, we have $g(u + k) - g(u) = Q(k)\cdot k$. Put $k = \Delta u$:
> $$
> \frac{g(u(x+h)) - g(u(x))}{h} = Q(\Delta u)\cdot\frac{\Delta u}{h}.
> $$
> No division by $\Delta u$ any more. As $h \to 0$, $\Delta u \to 0$, so $Q(\Delta u) \to g'(u)$ by continuity, and $\Delta u / h \to u'(x)$. This is how the chain rule is proved in a university analysis course (see the adult track, [1.2 Real analysis I](../../../adult-masters/01-refresher/1.2-real-analysis-I/)).

**Worked example 3.1.** Differentiate $f(x) = (x^2 + 1)^5$ and $g(x) = \sqrt{(x^2+1)^3}$.

For $f$: outer function $u^5$, inner $u = x^2 + 1$. So $f'(x) = 5(x^2+1)^4 \cdot 2x = 10x(x^2+1)^4$. (Expanding the fifth power first would work, but takes ten times as long.)

For $g$: write $g(x) = (x^2+1)^{3/2}$. Then $g'(x) = \tfrac32 (x^2+1)^{1/2}\cdot 2x = 3x\sqrt{x^2+1}$.

**Linear inner function.** A special case you will use constantly: if $f(x) = g(ax + b)$ then $f'(x) = a\, g'(ax+b)$. So the derivative of $\sin(3x)$ is $3\cos(3x)$, and of $e^{-2x}$ it is $-2e^{-2x}$.

**Longer chains.** The rule can be applied repeatedly. $f(x) = \cos^3(2x)$ means $(\cos(2x))^3$: three layers. $f'(x) = 3\cos^2(2x)\cdot(-\sin(2x))\cdot 2 = -6\sin(2x)\cos^2(2x)$.

## 4. Derivatives of sine, cosine and tangent

Here $x$ is always in **radians**. That choice is exactly what makes the formulas below clean.

**The key limit.**

$$
\lim_{x \to 0}\frac{\sin x}{x} = 1.
$$

*Why.* Take $0 < x < \tfrac{\pi}{2}$ and the unit circle with centre $O$. Let $A = (1, 0)$, let $P = (\cos x, \sin x)$ be the point at angle $x$, and let $T = (1, \tan x)$ be the point where the line $OP$ meets the vertical tangent line at $A$. Compare three areas:

$$
\text{triangle } OAP \;\le\; \text{sector } OAP \;\le\; \text{triangle } OAT, \qquad\text{that is}\qquad \tfrac12\sin x \le \tfrac12 x \le \tfrac12\tan x.
$$

(The sector area is $\tfrac12 x$ because a full circle, angle $2\pi$, has area $\pi$. This is where radians matter.) Divide by $\tfrac12\sin x > 0$ and take reciprocals:

$$
\cos x \le \frac{\sin x}{x} \le 1.
$$

As $x \to 0^+$, $\cos x \to 1$, so $\dfrac{\sin x}{x}$ is squeezed to $1$. For $x < 0$ use that $\dfrac{\sin x}{x}$ is even. This argument is called the squeeze principle (*insluitstelling*).

A consequence: $\dfrac{\cos x - 1}{x} \to 0$. Indeed

$$
\frac{\cos x - 1}{x} = \frac{\cos^2 x - 1}{x(\cos x + 1)} = -\frac{\sin x}{x}\cdot\frac{\sin x}{\cos x + 1} \to -1 \cdot \frac{0}{2} = 0.
$$

**Derivative of sine.** Use the addition formula $\sin(x+h) = \sin x\cos h + \cos x \sin h$ (from [C4](../../C-bovenbouw-core/C4-trigonometric-functions/)):

$$
\frac{\sin(x+h) - \sin x}{h} = \sin x\cdot\frac{\cos h - 1}{h} + \cos x\cdot\frac{\sin h}{h} \;\to\; \sin x\cdot 0 + \cos x \cdot 1.
$$

So $(\sin x)' = \cos x$. In the same way, with $\cos(x+h) = \cos x\cos h - \sin x\sin h$, you get $(\cos x)' = -\sin x$. (Or: $\cos x = \sin(x + \tfrac{\pi}{2})$, and the chain rule gives $\cos(x + \tfrac{\pi}{2}) = -\sin x$.)

**Derivative of tangent.** By the quotient rule,

$$
(\tan x)' = \left(\frac{\sin x}{\cos x}\right)' = \frac{\cos x\cos x - \sin x\cdot(-\sin x)}{\cos^2 x} = \frac{1}{\cos^2 x} = 1 + \tan^2 x.
$$

Both forms are useful; the second shows how $\tan$ is linked to its own derivative.

**Sanity check with a picture.** The graph of $\sin$ is steepest (slope $1$) where it crosses the $x$-axis at $0$, and flat where it peaks at $\tfrac{\pi}{2}$. That matches $\cos 0 = 1$ and $\cos\tfrac{\pi}{2} = 0$. In degrees, the slope at $0$ would be $\tfrac{\pi}{180}$: an ugly constant in every formula.

**Worked example 4.1** (CE style). Given $f(x) = x + 2\sin x$ on $[0, 2\pi]$. *Bereken exact de coördinaten van de toppen* (calculate exactly the coordinates of the extremes).

$f'(x) = 1 + 2\cos x = 0$ gives $\cos x = -\tfrac12$, so $x = \tfrac{2\pi}{3}$ or $x = \tfrac{4\pi}{3}$. Since $f'$ changes from $+$ to $-$ at $\tfrac{2\pi}{3}$, there is a maximum $f(\tfrac{2\pi}{3}) = \tfrac{2\pi}{3} + \sqrt3$; at $\tfrac{4\pi}{3}$ a minimum $f(\tfrac{4\pi}{3}) = \tfrac{4\pi}{3} - \sqrt3$. (The endpoints $0$ and $2\pi$ give boundary extremes (*randextremen*) as well, if the question asks for those.)

## 5. The number e and the derivative of e^x

Look at an exponential function $f(x) = a^x$ with $a > 0$. Its difference quotient is

$$
\frac{a^{x+h} - a^x}{h} = a^x\cdot\frac{a^h - 1}{h}.
$$

So $f'(x) = a^x \cdot c_a$, where $c_a = \lim_{h\to 0}\dfrac{a^h - 1}{h}$ is the slope of the graph at $x = 0$. The derivative of any exponential function is a constant times itself. Numerically, $c_2 \approx 0.693$ and $c_3 \approx 1.099$. Somewhere between $2$ and $3$ there is a base where the constant is exactly $1$. That base is called $e$:

$$
e \text{ is the number for which } \lim_{h \to 0}\frac{e^h - 1}{h} = 1, \qquad e \approx 2.718.
$$

With this definition,

$$
(e^x)' = e^x.
$$

The function $e^x$ is its own derivative: at every point, the slope of the graph equals the height. That is why $e$ is the "natural" base, and why it dominates differential equations in [E1](../../E-wiskunde-d-and-exams/).

> **Going further: other descriptions of e.** It can be shown that $e = \lim_{n\to\infty}\left(1 + \tfrac1n\right)^n$ (compound interest: 100% interest split into $n$ ever smaller periods) and $e = 1 + \tfrac1{1!} + \tfrac1{2!} + \tfrac1{3!} + \cdots$. Try computing $\left(1 + \tfrac{1}{1000}\right)^{1000}$ and the first eight terms of the series. Proving that the three descriptions agree is a good project for after this module.

With the chain rule: $(e^{u(x)})' = e^{u(x)}\cdot u'(x)$. So $(e^{-x^2})' = -2x e^{-x^2}$.

## 6. Logarithms, a^x and other bases

**The natural logarithm** $\ln x$ is the logarithm with base $e$: $y = \ln x$ means $e^y = x$. (In Dutch notation $\ln x = {}^{e}\!\log x$.) To find its derivative, differentiate both sides of the identity $e^{\ln x} = x$ with the chain rule:

$$
e^{\ln x}\cdot(\ln x)' = 1 \quad\Longrightarrow\quad x\cdot(\ln x)' = 1 \quad\Longrightarrow\quad (\ln x)' = \frac1x \quad (x > 0).
$$

(This uses that $\ln$ is differentiable; section 7 explains why it is.) This result is remarkable: the power rule gives every power $x^n$ as a derivative except $x^{-1}$, and $\ln x$ fills exactly that gap.

**Other bases.** Since $a = e^{\ln a}$, we have $a^x = e^{x\ln a}$, so by the chain rule

$$
(a^x)' = e^{x\ln a}\cdot\ln a = a^x \ln a.
$$

So the mysterious constant from section 5 is $c_a = \ln a$ (check: $\ln 2 \approx 0.693$). For logarithms with base $g$ (Dutch notation ${}^{g}\!\log x$, in English $\log_g x$), use the change-of-base rule ${}^{g}\!\log x = \dfrac{\ln x}{\ln g}$:

$$
\left({}^{g}\!\log x\right)' = \frac{1}{x\ln g}.
$$

**Summary table.**

| $f(x)$ | $f'(x)$ |
|---|---|
| $x^n$ | $n x^{n-1}$ |
| $\sin x$ | $\cos x$ |
| $\cos x$ | $-\sin x$ |
| $\tan x$ | $\dfrac{1}{\cos^2 x} = 1 + \tan^2 x$ |
| $e^x$ | $e^x$ |
| $a^x$ | $a^x\ln a$ |
| $\ln x$ | $\dfrac1x$ |
| ${}^{g}\!\log x$ | $\dfrac{1}{x\ln g}$ |

These are on the formula sheet (*formulekaart*) of the CE, but you should be able to derive every line.

**Worked example 6.1.** Differentiate $f(x) = \ln(x^2 + 1)$, $g(x) = x\cdot 3^x$ and $h(x) = {}^{2}\!\log(4x)$.

- $f'(x) = \dfrac{1}{x^2+1}\cdot 2x = \dfrac{2x}{x^2+1}$.
- $g'(x) = 1\cdot 3^x + x\cdot 3^x\ln 3 = 3^x(1 + x\ln 3)$.
- $h(x) = {}^{2}\!\log 4 + {}^{2}\!\log x = 2 + {}^{2}\!\log x$, so $h'(x) = \dfrac{1}{x\ln 2}$. Using the chain rule directly gives $\dfrac{1}{4x\ln 2}\cdot 4$, the same thing. Simplifying first often saves work.

**Logarithmic differentiation.** For $f(x) = x^x$ ($x > 0$) neither the power rule (the exponent is not constant) nor the exponential rule (the base is not constant) applies. Write $x^x = e^{x\ln x}$; then $f'(x) = e^{x\ln x}(\ln x + 1) = x^x(\ln x + 1)$. See problem 25.

## 7. Inverse functions and their derivatives

If $f$ is one-to-one on an interval, it has an inverse function (*inverse functie*) $f^{-1}$: $y = f^{-1}(x)$ means $f(y) = x$. Geometrically, the graph of $f^{-1}$ is the mirror image of the graph of $f$ in the line $y = x$.

Mirroring in $y = x$ swaps horizontal and vertical. A tangent line with slope $m$ becomes a line with slope $\tfrac1m$. So if $f(b) = a$, then

$$
(f^{-1})'(a) = \frac{1}{f'(b)} = \frac{1}{f'(f^{-1}(a))}, \qquad \text{provided } f'(b) \neq 0.
$$

Algebraically: differentiate $f(f^{-1}(x)) = x$ with the chain rule to get $f'(f^{-1}(x))\cdot (f^{-1})'(x) = 1$. That calculation assumes $f^{-1}$ is differentiable; the mirror picture makes it believable, and a proof belongs in analysis. Where $f'(b) = 0$ the graph of $f$ has a horizontal tangent, so the mirror image has a *vertical* tangent and $f^{-1}$ is not differentiable there (think of $\sqrt[3]{x}$ at $0$, the inverse of $x^3$).

**Worked example 7.1.** $f(x) = x^3 + x + 1$ is increasing (its derivative $3x^2 + 1$ is always positive) so it has an inverse, but you cannot write a formula for it. Still, since $f(1) = 3$ and $f'(1) = 4$, we know $(f^{-1})'(3) = \tfrac14$.

**Using it for $\ln$.** $\ln$ is the inverse of $e^x$. If $y = \ln x$, then $x = e^y$ and $(\ln x)' = \dfrac{1}{e^y} = \dfrac1x$, the same as in section 6.

> **Going further: arcsin and arctan.** On $[-\tfrac\pi2, \tfrac\pi2]$ the sine is increasing, so it has an inverse $\arcsin$ on $[-1, 1]$. If $y = \arcsin x$ then $\sin y = x$ and
> $$
> (\arcsin x)' = \frac{1}{\cos y} = \frac{1}{\sqrt{1 - \sin^2 y}} = \frac{1}{\sqrt{1 - x^2}}.
> $$
> (We take the positive root because $\cos y \ge 0$ for $y$ in $[-\tfrac\pi2, \tfrac\pi2]$.) Similarly $(\arctan x)' = \dfrac{1}{1 + x^2}$. Look at what just happened: two functions built from circles have derivatives that are simple algebraic expressions. This is the reason $\arctan$ appears when you integrate $\dfrac{1}{1+x^2}$ in [D2](../D2-integral-calculus/). Problem 24 asks you to prove the arctan formula.

## 8. Implicit differentiation

Not every curve is the graph of a function. The ellipse $x^2 + xy + y^2 = 7$ has two points above most $x$-values. Yet it clearly has a tangent line at each point. **Implicit differentiation** (*impliciet differentiëren*) finds its slope without solving for $y$. This topic is new in wiskunde techniek (domain A5).

**The method.** Pretend that near the point you care about, $y$ is a function of $x$ (it is, locally, except where the tangent is vertical). Differentiate both sides of the equation with respect to $x$, using the chain rule on every term with $y$: the derivative of $y^2$ is $2y\cdot\dfrac{dy}{dx}$, not $2y$. Then solve for $\dfrac{dy}{dx}$.

**Worked example 8.1.** Curve $K$: $x^2 + xy + y^2 = 7$.

(a) *Toon aan dat het punt $A(1, 2)$ op $K$ ligt* (show that $A(1,2)$ lies on $K$): $1 + 2 + 4 = 7$. Done.

(b) Differentiate term by term. The term $xy$ needs the product rule: $(xy)' = 1\cdot y + x\cdot\dfrac{dy}{dx}$.

$$
2x + y + x\frac{dy}{dx} + 2y\frac{dy}{dx} = 0 \quad\Longrightarrow\quad \frac{dy}{dx} = -\frac{2x + y}{x + 2y}.
$$

(c) *Stel een vergelijking op van de raaklijn in $A$* (find an equation of the tangent line at $A$): the slope is $-\dfrac{2 + 2}{1 + 4} = -\dfrac45$, so $y - 2 = -\tfrac45(x - 1)$, that is $y = -\tfrac45 x + \tfrac{14}{5}$.

(d) *Bereken exact de coördinaten van de punten waar de raaklijn horizontaal is.* Horizontal means $\dfrac{dy}{dx} = 0$: the numerator is zero, $y = -2x$ (and the denominator not zero). Substitute in the equation of $K$: $x^2 - 2x^2 + 4x^2 = 3x^2 = 7$, so $x = \pm\sqrt{\tfrac73} = \pm\tfrac13\sqrt{21}$. The points are $\left(\tfrac13\sqrt{21}, -\tfrac23\sqrt{21}\right)$ and $\left(-\tfrac13\sqrt{21}, \tfrac23\sqrt{21}\right)$; check that $x + 2y \neq 0$ there.

(e) Vertical tangents: the denominator is zero, $x = -2y$, and by symmetry of the calculation $3y^2 = 7$. Points $\left(\mp\tfrac23\sqrt{21}, \pm\tfrac13\sqrt{21}\right)$.

**Why it is legitimate.** You may worry that we assumed $y$ is a function of $x$. A theorem from university analysis (the implicit function theorem) guarantees this near every point where the partial derivative in $y$ is not zero, which here means $x + 2y \neq 0$: exactly the points where our formula has a nonzero denominator. At points where both numerator and denominator are zero, the curve may have a corner or cross itself (see problem 7, the folium of Descartes, at the origin).

**A quick proof of the power rule for fractions.** Let $y = x^{p/q}$ with whole numbers $p, q$ and $x > 0$. Then $y^q = x^p$. Differentiate implicitly: $q y^{q-1} y' = p x^{p-1}$, so $y' = \dfrac{p}{q}\cdot\dfrac{x^{p-1}}{y^{q-1}}$, and simplifying gives $\dfrac pq x^{p/q - 1}$. Problem 23 asks you to fill in the algebra.

## 9. Related rates

In applications several quantities change with time $t$, linked by a formula. Differentiating that formula with respect to $t$ links their rates of change. Dutch textbooks call this *samenhangende veranderingen*. It is implicit differentiation with $t$ in the role of $x$.

**Worked example 9.1.** Oil spreads on water in a circle. The radius grows at $2$ cm/s. How fast is the area growing when $r = 10$ cm?

$A = \pi r^2$. Differentiate with respect to $t$: $\dfrac{dA}{dt} = 2\pi r\cdot\dfrac{dr}{dt}$. At $r = 10$: $\dfrac{dA}{dt} = 2\pi\cdot 10\cdot 2 = 40\pi \approx 126$ cm²/s.

Notice that the area grows faster as the circle gets bigger, even though the radius grows at a steady rate. That is the whole point: the factor $\dfrac{dA}{dr} = 2\pi r$ is the circumference, the length of the edge along which new area is added.

**Strategy.**

1. Draw a picture and name every quantity that changes with time.
2. Write the formula linking them, valid at *every* moment. Do not substitute the numbers for the special moment yet; a number has derivative zero.
3. Differentiate with respect to $t$, using the chain rule.
4. Now substitute the values at the moment asked about, and solve.

## 10. Tangent lines and "toon aan dat de lijn raakt"

A line $y = mx + c$ touches (*raakt*) the graph of $f$ at $x = a$ when two conditions hold:

$$
f(a) = ma + c \quad\text{(same height)} \qquad\text{and}\qquad f'(a) = m \quad\text{(same slope)}.
$$

To show (*toon aan*) that a line touches a graph, you must check **both**. A common exam answer that loses points checks only the slope.

**Worked example 10.1.** *Toon aan dat de lijn $y = x - 1$ de grafiek van $f(x) = \ln x$ raakt.* Try $a = 1$: $f(1) = 0 = 1 - 1$, and $f'(1) = \tfrac11 = 1$, the slope of the line. Both conditions hold, so the line touches the graph at $(1, 0)$.

How did we find $a = 1$? From the slope condition: $f'(a) = \tfrac1a = 1$ forces $a = 1$. Always start with the condition that is easiest to solve.

**Worked example 10.2** (unknown point of contact). *Voor welke $p$ raakt de lijn $y = px$ de grafiek van $f(x) = e^x$?* Let the point of contact be at $x = a$. Then

$$
e^a = pa \qquad\text{and}\qquad e^a = p.
$$

Subtracting gives $pa = p$, so $a = 1$ (since $p = e^a \neq 0$), and $p = e$. The line $y = ex$ touches $y = e^x$ at $(1, e)$. This trick (two equations in two unknowns, $a$ and $p$) is the standard method for every "for which value does it touch" question.

**Tangent through a given point.** To find the tangent line(s) from a point not on the graph, write the tangent at a general point $x = a$ as $y = f'(a)(x - a) + f(a)$ and demand that the given point satisfies it. That gives an equation in $a$. Problem 14 is an example.

## 11. Curve sketching (functieonderzoek)

A full investigation of a function (*functieonderzoek*) answers the questions: where is it defined, where does it go to infinity, where does it rise and fall, where does it bend? The second derivative is the new tool.

**The second derivative and bending.** $f''$ is the rate of change of the slope. If $f'' > 0$ on an interval, the slope is increasing: the graph bends upwards, it is convex. Dutch textbooks describe this as *toenemend stijgend* (rising ever faster) or *afnemend dalend* (falling ever more slowly). If $f'' < 0$ the graph bends downwards (concave): *afnemend stijgend* or *toenemend dalend*. A point where the bending changes direction is an inflection point (*buigpunt*). At an inflection point $f''$ changes sign, so $f''(x) = 0$ there (if $f''$ exists). Again the converse fails: $f(x) = x^4$ has $f''(0) = 0$ but no inflection point, because $f'' = 12x^2$ does not change sign.

The tangent line at an inflection point crosses the graph. At an inflection point the slope is extremal: it is the point where the graph is steepest (or least steep) nearby.

**Second-derivative test.** If $f'(a) = 0$ and $f''(a) < 0$ then $f$ has a maximum at $a$; if $f''(a) > 0$, a minimum. If $f''(a) = 0$, the test says nothing; use a sign chart.

**Sign charts.** A sign chart (*tekenschema*) of $f'$ lists the zeros and the points where $f'$ is undefined, then the sign of $f'$ on each interval in between. It is the cleanest way to justify an extreme in a CE answer. Factorise $f'$ first: each factor's sign is then easy.

**Checklist for a full investigation.**

1. Domain (*domein*): watch for division by zero, $\ln$ of a non-positive number, even roots of negative numbers.
2. Symmetry: is $f$ even or odd?
3. Zeros (*nulpunten*) and the intercept with the $y$-axis.
4. Asymptotes (*asymptoten*): vertical ones where the denominator is zero (and the numerator is not), horizontal or oblique (*scheve asymptoot*) ones from the behaviour as $x \to \pm\infty$.
5. $f'$, its sign chart, extremes.
6. $f''$, its sign chart, inflection points.
7. Range (*bereik*), then a sketch that is consistent with all of the above.

**Worked example 11.1.** $f(x) = x^2 e^{-x}$.

- Domain all of $\mathbb{R}$; $f(x) \ge 0$; the only zero is $x = 0$.
- As $x \to \infty$, $e^{-x}$ wins from $x^2$ (exponential beats any power), so $f(x) \to 0$: horizontal asymptote $y = 0$. As $x \to -\infty$, $f(x) \to \infty$.
- $f'(x) = 2x e^{-x} - x^2 e^{-x} = x(2 - x)e^{-x}$. Since $e^{-x} > 0$, the sign is that of $x(2-x)$:

| $x$ | | $0$ | | $2$ | |
|---|---|---|---|---|---|
| $f'(x)$ | $-$ | $0$ | $+$ | $0$ | $-$ |
| $f$ | falls | min | rises | max | falls |

  Minimum $f(0) = 0$, maximum $f(2) = 4e^{-2} = \dfrac{4}{e^2}$.
- $f''(x) = (2 - 2x)e^{-x} - (2x - x^2)e^{-x} = (x^2 - 4x + 2)e^{-x}$, zero at $x = 2 \pm\sqrt2$. The sign changes at both, so there are two inflection points.
- Range: $[0, \infty)$.

**Worked example 11.2** (oblique asymptote). $f(x) = \dfrac{x^2}{x - 1}$. Long division gives $f(x) = x + 1 + \dfrac{1}{x - 1}$. As $x \to \pm\infty$, the last term tends to $0$, so the graph approaches the line $y = x + 1$: an oblique asymptote. The vertical asymptote is $x = 1$. Problem 20 is a full investigation of a function like this.

## 12. Optimisation

Optimisation (*optimaliseren*) problems ask for the best value of some quantity: least material, largest area, shortest time. The mathematics is always the same:

1. Choose a variable and express the quantity to optimise as a function of **one** variable. If there are two, use the constraint (*nevenvoorwaarde*) to eliminate one.
2. State the domain that makes sense physically.
3. Differentiate, solve $f'(x) = 0$, and justify that the solution is a maximum or minimum (sign chart, second derivative, or compare with the boundary values).
4. Answer the question that was actually asked, with units.

**Worked example 12.1.** From a square sheet of 30 by 30 cm you cut equal squares of side $x$ from the corners and fold up an open box. Which $x$ gives the largest volume?

$V(x) = x(30 - 2x)^2$ with $0 < x < 15$. $V'(x) = (30 - 2x)^2 + x\cdot 2(30 - 2x)(-2) = (30 - 2x)(30 - 6x)$. Zero at $x = 15$ (outside the domain) and $x = 5$. $V'$ goes from $+$ to $-$ at $x = 5$, so the maximum volume is $V(5) = 5\cdot 20^2 = 2000$ cm³.

**Distance problems.** To minimise a distance $d$, minimise $d^2$ instead: the square root is increasing, so the same $x$ is optimal, and you avoid differentiating a square root. Problem 18 uses this.

## 13. Functions with a parameter

Many CE questions are about a whole family of functions, such as $f_p(x) = x^3 - px$, one for each value of the parameter (*parameter*) $p$. Treat $p$ as a fixed but unknown number while you differentiate with respect to $x$; afterwards ask how the answers depend on $p$.

**Worked example 13.1.** $f_p(x) = x^3 - px$.

(a) *Voor welke $p$ heeft $f_p$ twee toppen?* $f_p'(x) = 3x^2 - p$. If $p > 0$ this has two zeros $x = \pm\sqrt{p/3}$ with a sign change at each, so two extremes. If $p \le 0$, $f'_p(x) \ge 0$ everywhere (only zero at one point when $p = 0$), so $f_p$ is increasing and has no extremes. Answer: $p > 0$.

(b) *Toon aan dat alle toppen op de kromme $y = -2x^3$ liggen* (show that all extremes lie on the curve $y = -2x^3$). At an extreme, $3x^2 = p$. Substitute this $p$ into the formula for $f_p$: $y = x^3 - 3x^2\cdot x = -2x^3$. So every extreme lies on $y = -2x^3$. This curve is called the locus of extremes (*kromme van toppen*, sometimes *toppenkromme*).

The general method for a locus: write down the two equations "$y = f_p(x)$" and "$f'_p(x) = 0$", and eliminate $p$. You do not need to compute the extremes themselves.

**Counting solutions.** Questions like "for which $p$ does the equation $e^x = px$ have exactly one solution" are about intersections of a fixed graph and a moving line. The borderline cases are the values of $p$ where the line *touches* the graph (section 10). Draw the picture first. Problem 28.

## 14. Common mistakes

1. **Forgetting the inner derivative.** $(\sin 3x)' = 3\cos 3x$, not $\cos 3x$. $(e^{x^2})' = 2xe^{x^2}$, not $x^2 e^{x^2 - 1}$ (the power rule does not apply when the variable is in the exponent).
2. **Product of derivatives.** $(fg)' \neq f'g'$. Check with $f = g = x$: $(x^2)' = 2x$, but $f'g' = 1$.
3. **Degrees instead of radians.** $(\sin x)' = \cos x$ only in radians. Set the graphic calculator (*grafische rekenmachine*) to radians.
4. **$\ln$ of a sum.** $\ln(x^2 + 1) \neq \ln x^2 + \ln 1$. The logarithm turns products into sums, not sums into anything.
5. **Implicit differentiation without the chain rule.** The derivative of $y^3$ with respect to $x$ is $3y^2\dfrac{dy}{dx}$.
6. **Substituting too early in related rates.** If $r = 10$ at one moment, $r$ is still a variable; replacing it by $10$ before differentiating gives a rate of zero.
7. **"$f'(a) = 0$, so there is an extreme".** Check the sign change. $x^3$ at $0$ and problem 13 (c) are counterexamples.
8. **"$f''(a) = 0$, so there is an inflection point".** Check the sign change of $f''$. $x^4$ at $0$ is the counterexample.
9. **Tangent proofs with one condition.** Show both the same height and the same slope.
10. **Not giving an exact answer.** If the question says *bereken exact* (calculate exactly), $\tfrac{4}{e^2}$ is the answer and $0.54$ gets no points. If it says *bereken* only, the graphic calculator is allowed, and you round as instructed.
