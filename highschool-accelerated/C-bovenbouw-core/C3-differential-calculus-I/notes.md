# C3 Notes: differential calculus I

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

Calculus answers one question: **how fast is something changing right now?** A speedometer shows your speed at this instant, yet speed is "distance divided by time", and in one instant no time passes and no distance is covered. Resolving that puzzle carefully gives the derivative, and the derivative turns out to find maxima, minima, tangent lines and much more.

---

## 1. Average and instantaneous rate of change

For a function $f$ and an interval $[a,b]$, the **average rate of change** (*gemiddelde verandering*) is the **difference quotient** (*differentiequotiënt*):
$$
\frac{\Delta y}{\Delta x}=\frac{f(b)-f(a)}{b-a}.
$$
Geometrically this is the slope of the **secant line** (*koorde* or *snijlijn*) through $(a,f(a))$ and $(b,f(b))$.

**Example 1.** $f(x)=x^2$ on $[1,3]$: $\dfrac{9-1}{3-1}=4$.

Now shrink the interval. On $[1, 1+h]$:
$$
\frac{(1+h)^2-1}{h}=\frac{2h+h^2}{h}=2+h \qquad (h\neq0).
$$

| $h$ | 1 | 0.1 | 0.01 | 0.001 | $-0.001$ |
|---|---|---|---|---|---|
| $\frac{\Delta y}{\Delta x}$ | 3 | 2.1 | 2.01 | 2.001 | 1.999 |

As $h$ gets closer to $0$, the difference quotient gets closer to $2$. We call $2$ the **instantaneous rate of change** or **differential quotient** (*differentiaalquotiënt*) of $f$ at $x=1$, written $f'(1)=2$ or $\left[\dfrac{dy}{dx}\right]_{x=1}=2$. It is the slope of the **tangent line** (*raaklijn*) at $(1,1)$.

Note what happened. We never put $h=0$ into the fraction (that would give $\frac00$). We first simplified for $h\neq0$, getting $2+h$, and *then* asked what $2+h$ approaches.

---

## 2. Limits, informally

$\displaystyle\lim_{h\to0}g(h)=L$ means: we can make $g(h)$ as close to $L$ as we like by taking $h$ close enough to $0$ (but $h\neq0$). The value at $h=0$ itself does not matter; $g$ need not even be defined there.

Rules you may use: limits of sums, products and quotients are the sums, products and quotients of the limits (if the denominator's limit is not 0), and $\lim\limits_{h\to0}h=0$. For a polynomial or any "nice" expression defined at $0$, the limit is just the value at $0$.

> **Going further: the precise definition.** $\lim\limits_{h\to0}g(h)=L$ means: for every $\varepsilon>0$ there is a $\delta>0$ such that $0<\lvert h\rvert<\delta$ implies $\lvert g(h)-L\rvert<\varepsilon$. You challenge me with an accuracy $\varepsilon$; I must answer with a closeness $\delta$ that guarantees it. This definition, due to Cauchy and Weierstrass in the 19th century, finally made calculus rigorous, 150 years after Newton and Leibniz. You will use it seriously in stage F.

---

## 3. The derivative

> **Definition.** The **derivative** (*afgeleide*) of $f$ at $x$ is
> $$ f'(x)=\lim_{h\to0}\frac{f(x+h)-f(x)}{h}, $$
> if this limit exists. The function $f'$ is the **derived function** (*afgeleide functie*). Finding it is called **differentiating** (*differentiëren*).

Other notations: $\dfrac{dy}{dx}$, $\dfrac{df}{dx}$, $\dfrac{d}{dx}f(x)$.

**Example 2.** $f(x)=x^2$.
$$
\frac{(x+h)^2-x^2}{h}=\frac{2xh+h^2}{h}=2x+h\ \xrightarrow{h\to0}\ 2x .
$$
So $f'(x)=2x$.

**Example 3.** $f(x)=x^3$. Using $(x+h)^3=x^3+3x^2h+3xh^2+h^3$:
$$
\frac{(x+h)^3-x^3}{h}=3x^2+3xh+h^2\ \xrightarrow{h\to0}\ 3x^2 .
$$

**Example 4.** $f(x)=\dfrac1x$ ($x\neq0$).
$$
\frac{\frac1{x+h}-\frac1x}{h}=\frac{x-(x+h)}{h\,x(x+h)}=\frac{-1}{x(x+h)}\ \xrightarrow{h\to0}\ -\frac1{x^2} .
$$
So $\left(\dfrac1x\right)'=-\dfrac1{x^2}=-x^{-2}$. The slope is always negative: $\frac1x$ decreases on each branch.

**When the derivative does not exist.** $f(x)=\lvert x\rvert$ at $x=0$: the difference quotient is $\frac{\lvert h\rvert}{h}$, which is $1$ for $h>0$ and $-1$ for $h<0$. No single limit, so $f'(0)$ does not exist. The graph has a corner there, and no tangent line.

---

## 4. The basic rules

### Constant, sum and constant multiple

- If $f(x)=c$ (constant), then $f'(x)=0$: the difference quotient is $\frac{c-c}h=0$.
- $(f+g)'=f'+g'$: the difference quotient of $f+g$ is the sum of those of $f$ and $g$, and limits add.
- $(c\cdot f)'=c\cdot f'$ for the same reason.

### The power rule

> **Power rule.** For every positive integer $n$: $\left(x^n\right)'=n\,x^{n-1}$.

**Proof.** By the binomial theorem,
$$
(x+h)^n=x^n+n x^{n-1}h+\binom n2x^{n-2}h^2+\dots+h^n .
$$
Subtract $x^n$ and divide by $h$:
$$
\frac{(x+h)^n-x^n}{h}=n x^{n-1}+\binom n2x^{n-2}h+\dots+h^{n-1}.
$$
Every term after the first contains a factor $h$, so tends to $0$. The limit is $nx^{n-1}$. $\square$

(Without the binomial theorem: use $a^n-b^n=(a-b)(a^{n-1}+a^{n-2}b+\dots+b^{n-1})$ with $a=x+h$, $b=x$. After dividing by $h=a-b$, the bracket has $n$ terms, each tending to $x^{n-1}$.)

The rule $\left(x^r\right)'=r\,x^{r-1}$ holds for **every rational $r$** (with $x>0$ where needed). We proved it for $r=-1$ in Example 4; problem 26 does $r=\frac12$; problem 21 extends it to all negative integers with the quotient rule. The general proof needs the chain rule (stage D). From now on, use it freely.

**Example 5.** Rewrite as powers first, then differentiate:
$$
f(x)=4\sqrt x-\frac{3}{x^2}+\frac{x^3}{6}=4x^{1/2}-3x^{-2}+\tfrac16x^3
\;\Rightarrow\;
f'(x)=2x^{-1/2}+6x^{-3}+\tfrac12x^2=\frac{2}{\sqrt x}+\frac6{x^3}+\frac{x^2}2 .
$$

> **Common mistake.** $\left(\dfrac{3}{x^2}\right)'\neq\dfrac{3}{2x}$. You cannot differentiate a denominator. Rewrite as $3x^{-2}$ first.

---

## 5. Product and quotient rules

The derivative of a product is **not** the product of the derivatives: $(x\cdot x)'=2x$, but $x'\cdot x'=1$.

> **Product rule.** $(f\cdot g)'=f'\cdot g+f\cdot g'$.

**Proof.** Write $p(x)=f(x)g(x)$. The trick is to add and subtract $f(x)g(x+h)$:
$$
\begin{aligned}
\frac{p(x+h)-p(x)}{h}
&=\frac{f(x+h)g(x+h)-f(x)g(x+h)+f(x)g(x+h)-f(x)g(x)}{h}\\
&=\frac{f(x+h)-f(x)}{h}\cdot g(x+h)+f(x)\cdot\frac{g(x+h)-g(x)}{h}.
\end{aligned}
$$
As $h\to0$, the first fraction tends to $f'(x)$, the second to $g'(x)$, and $g(x+h)\to g(x)$ (a differentiable function is continuous). So $p'(x)=f'(x)g(x)+f(x)g'(x)$. $\square$

**Picture.** Think of $f\cdot g$ as the area of a rectangle with sides $f$ and $g$. If the sides grow by $\Delta f$ and $\Delta g$, the area grows by $\Delta f\cdot g+f\cdot\Delta g+\Delta f\,\Delta g$. The last, tiny corner piece is what disappears in the limit.

> **Quotient rule.** If $g(x)\neq0$: $\left(\dfrac fg\right)'=\dfrac{f'\cdot g-f\cdot g'}{g^2}$.

Dutch mnemonic: *"noemer maal afgeleide teller min teller maal afgeleide noemer, gedeeld door noemer kwadraat"* (the order matters because of the minus sign).

**Proof.** Let $q=\frac fg$. Then
$$
\frac{q(x+h)-q(x)}{h}=\frac1h\left(\frac{f(x+h)}{g(x+h)}-\frac{f(x)}{g(x)}\right)=\frac{f(x+h)g(x)-f(x)g(x+h)}{h\,g(x+h)g(x)} .
$$
Add and subtract $f(x)g(x)$ in the numerator:
$$
=\frac{1}{g(x+h)g(x)}\left(\frac{f(x+h)-f(x)}{h}\,g(x)-f(x)\,\frac{g(x+h)-g(x)}{h}\right)\ \xrightarrow{h\to0}\ \frac{f'(x)g(x)-f(x)g'(x)}{g(x)^2}.\ \square
$$

Problem 22 shows a shorter route via the product rule.

**Example 6.** $f(x)=\dfrac{x}{x^2+1}$.
$$
f'(x)=\frac{1\cdot(x^2+1)-x\cdot2x}{(x^2+1)^2}=\frac{1-x^2}{(x^2+1)^2}.
$$

> **Common mistake.** Expanding the denominator $(x^2+1)^2$. Leave it as a square: it is positive, which makes the sign of $f'$ easy to read off from the numerator alone.

---

## 6. Tangent lines

The tangent line at $x=a$ goes through $(a,f(a))$ and has slope $f'(a)$:
$$
y=f'(a)(x-a)+f(a).
$$
**Method used in Dutch schools:** write the line as $y=mx+b$ with slope $m=f'(a)$ (Dutch books write $y=ax+b$ with *richtingscoëfficiënt* $a$), then find $b$ by substituting the point $(a,f(a))$.

**Example 7.** Tangent line to $f(x)=x^3-2x$ at $x=1$. $f(1)=-1$, $f'(x)=3x^2-2$, $f'(1)=1$. So $y=x+b$ through $(1,-1)$: $b=-2$. **Tangent line:** $y=x-2$.

Three kinds of exam questions:
1. **At a given point:** as above.
2. **With a given slope** (for example parallel to a given line): solve $f'(x)=m$ for $x$.
3. **Through a point not on the graph:** call the touching point $(p,f(p))$, write the tangent at $p$ in terms of $p$, and demand that it passes through the given point. This gives an equation in $p$ (see problem 13).

---

## 7. Increasing, decreasing and extreme values

If $f'(x)>0$ on an interval, then $f$ is **increasing** (*stijgend*) there; if $f'(x)<0$, **decreasing** (*dalend*). (Intuition: positive slope everywhere means the graph goes up. A full proof uses the mean value theorem, which you will meet in stage F.)

A **local maximum** (*maximum*) of $f$ at $x=a$: $f(a)\ge f(x)$ for all $x$ near $a$. Similarly **local minimum**. Together: **extreme values** (*extreme waarden*, *extremen*).

**Why $f'(a)=0$ at an extreme (inside the domain).** If $f$ has a local maximum at $a$, then for small $h>0$ the difference quotient $\frac{f(a+h)-f(a)}{h}\le0$ (numerator $\le0$, denominator $>0$), and for small $h<0$ it is $\ge0$. The limit $f'(a)$ must therefore be both $\le0$ and $\ge0$, so $f'(a)=0$. $\square$

The converse is false: $f(x)=x^3$ has $f'(0)=0$ but no extreme at $0$ (it increases on both sides). So **find candidates with $f'(x)=0$, then check with a sign diagram of $f'$**:
- $f'$ changes from $+$ to $-$: maximum;
- from $-$ to $+$: minimum;
- no change of sign: no extreme.

**Example 8.** $f(x)=x^3-3x^2-9x+5$. $f'(x)=3x^2-6x-9=3(x-3)(x+1)$.

| $x$ | | $-1$ | | $3$ | |
|---|---|---|---|---|---|
| $f'(x)$ | $+$ | $0$ | $-$ | $0$ | $+$ |
| $f$ | increasing | max | decreasing | min | increasing |

Maximum $f(-1)=-1-3+9+5=10$; minimum $f(3)=27-27-27+5=-22$.

On the CE you write: "$f'(x)=0$ geeft $x=-1$ of $x=3$; met een schets van de grafiek (of tekenschema van $f'$) volgt: max. is $f(-1)=10$, min. is $f(3)=-22$."

**Example 9 (quotient).** For $f(x)=\dfrac x{x^2+1}$ (Example 6), $f'(x)=0\iff x=\pm1$. The denominator of $f'$ is positive, so the sign of $f'$ is that of $1-x^2$: negative, positive, negative. Minimum $f(-1)=-\frac12$, maximum $f(1)=\frac12$. Combined with the horizontal asymptote $y=0$ this proves the range is $\left[-\frac12,\frac12\right]$.

**Endpoints.** On a closed interval $[a,b]$ the largest value can also be at an endpoint. Always compare the values at the critical points *and* at the endpoints.

---

## 8. Optimisation

Recipe:
1. Choose a variable and **write the quantity to optimise as a function of one variable**. Use the constraint to eliminate the other variables.
2. State the **domain** that makes sense in the context.
3. Differentiate, solve $f'=0$.
4. Check it is a maximum (or minimum) with a sign diagram, and compare with the endpoints.
5. Answer the question asked (it may ask for the dimensions, not the maximum value).

**Example 10.** A rectangle has two corners on the $x$-axis and two on the parabola $y=12-x^2$, symmetric in the $y$-axis. Find the largest possible area.

With corners at $(\pm x,0)$ and $(\pm x,12-x^2)$, for $0<x<2\sqrt3$:
$$
A(x)=2x(12-x^2)=24x-2x^3,\qquad A'(x)=24-6x^2 .
$$
$A'(x)=0\iff x^2=4\iff x=2$ (in the domain). $A'>0$ for $x<2$ and $A'<0$ for $x>2$: maximum. **Largest area:** $A(2)=4\cdot8=32$.

> **Going further: why optimal shapes are often "balanced".** In many problems the optimum makes two competing effects equal. Here, at $x=2$ the gain from widening ($24-2x^2$ per unit, from the height) equals the loss from the lower height ($4x^2$). The derivative is the tool that makes this balance precise.

---

## 9. The second derivative and inflection points

The derivative of $f'$ is the **second derivative** (*tweede afgeleide*) $f''$. It measures how the slope changes.

- $f''>0$: the slope increases; the graph bends upwards (*convex*, "dal-vorm", *toenemend stijgend* or *afnemend dalend*).
- $f''<0$: the slope decreases; the graph bends downwards (*concaaf*, "berg-vorm").

An **inflection point** (*buigpunt*) is a point where the graph changes from bending one way to the other, i.e. where $f''$ **changes sign**. At such a point $f'$ has an extreme value: the graph is steepest (or least steep) there. The tangent at an inflection point is the **buigraaklijn**; it crosses the graph.

**Example 11.** $f(x)=x^3-6x^2+9x$. $f'(x)=3x^2-12x+9$, $f''(x)=6x-12$. $f''$ changes sign at $x=2$, from $-$ to $+$. Inflection point $(2,f(2))=(2,2)$. Slope there $f'(2)=12-24+9=-3$, so the buigraaklijn is $y=-3x+8$.

> **Common mistake.** "$f''(a)=0$, so there is an inflection point." Counterexample: $f(x)=x^4$ has $f''(x)=12x^2$, which is $0$ at $x=0$ but does not change sign. The graph of $x^4$ bends upwards everywhere; $(0,0)$ is a minimum, not an inflection point.

**Second-derivative test.** If $f'(a)=0$ and $f''(a)<0$, there is a maximum at $a$; if $f''(a)>0$, a minimum. If $f''(a)=0$ the test says nothing (look at $x^3$, $x^4$, $-x^4$).

**Motion.** If $s(t)$ is position, then $v(t)=s'(t)$ is velocity and $a(t)=v'(t)=s''(t)$ is acceleration. This is where calculus started: Newton invented it for mechanics.

---

## 10. Reading graphs of $f$ and $f'$

Exams often show the graph of $f'$ (or of $f$) and ask about the other. The dictionary:

| Graph of $f$ | Graph of $f'$ |
|---|---|
| increasing | above the $x$-axis |
| decreasing | below the $x$-axis |
| maximum or minimum | crosses the $x$-axis (sign change) |
| horizontal tangent without extreme (as $x^3$ at 0) | touches the $x$-axis without crossing |
| inflection point | has a maximum or minimum |
| bends upwards (convex) | increasing |

**Example 12.** Suppose the graph of $f'$ is a downward parabola with zeros at $x=-1$ and $x=3$. Then $f'<0$ for $x<-1$, $f'>0$ between $-1$ and $3$, $f'<0$ for $x>3$. So $f$ has a minimum at $x=-1$ and a maximum at $x=3$. The top of the parabola is at $x=1$: there $f$ is steepest, and $f$ has an inflection point. One function that fits is $f(x)=-\frac13x^3+x^2+3x$, whose derivative is $-(x+1)(x-3)$. Every function $f+C$ with a constant $C$ fits as well, because constants have derivative $0$. (Finding $f$ from $f'$ is called *primitiveren*; it is the subject of stage D, module D2.)

### Units and meaning

In a context, $f'(t)$ has units "units of $f$ per unit of $t$". If $V(t)$ is the volume of water in a tank in litres and $t$ is in minutes, then $V'(5)=-3$ means: *at the moment $t=5$, the volume is decreasing at 3 litres per minute*. CE questions often ask for exactly this interpretation, with units.

### Leibniz notation

Leibniz wrote $\dfrac{dy}{dx}$ to suggest "a tiny change in $y$ divided by a tiny change in $x$". It is not a real fraction (there are no "infinitely small numbers" in standard analysis), but it behaves like one in many rules, which is why it has survived for 350 years. You will see its power with the chain rule: $\dfrac{dy}{dx}=\dfrac{dy}{du}\cdot\dfrac{du}{dx}$.

### Differentiable implies continuous

If $f'(a)$ exists, then $f(a+h)-f(a)=\dfrac{f(a+h)-f(a)}{h}\cdot h\to f'(a)\cdot0=0$ as $h\to0$. So $f(a+h)\to f(a)$: the graph has no jump at $a$. We used this in the proof of the product rule. The converse is false: $\lvert x\rvert$ is continuous at $0$ but not differentiable there.

> **Going further: a function with a parameter.** For every $p\neq0$, let $f_p(x)=x^3+px^2$. Then $f_p''(x)=6x+2p$, which changes sign at $x=-\frac p3$, so each graph has exactly one inflection point, $\left(-\frac p3,\frac{2p^3}{27}\right)$. Where do these points lie as $p$ varies? From $x=-\frac p3$ we get $p=-3x$, so $y=\frac{2(-3x)^3}{27}=-2x^3$. All inflection points lie on the curve $y=-2x^3$. Eliminating the parameter like this is a standard CE technique (*toon aan dat alle buigpunten op de kromme … liggen*).

### Common mistakes, collected

- Forgetting to check that $f'$ changes sign: $f'(a)=0$ is not enough for an extreme.
- Differentiating $\dfrac{f}{g}$ as $\dfrac{f'}{g'}$, or $f\cdot g$ as $f'\cdot g'$.
- Swapping the order in the numerator of the quotient rule (wrong sign).
- In optimisation: giving the maximum value when the question asks for the dimensions, or forgetting the domain from the context.
- Writing the tangent line as $y=f'(x)\cdot x+b$ with $x$ still in the slope. The slope is the number $f'(a)$.

---

## 11. A complete CE-style example

**Example 13.** Given $f(x)=\dfrac{x^2+4}{x}$, $x\neq0$.

*a. Give the equations of the asymptotes.* $f(x)=x+\dfrac4x$. Vertical asymptote $x=0$; as $x\to\pm\infty$, $\frac4x\to0$, so oblique asymptote $y=x$.

*b. Bereken exact the extreme values of $f$.* $f'(x)=1-\dfrac4{x^2}=\dfrac{x^2-4}{x^2}$. $f'(x)=0\iff x=\pm2$. Sign of $f'$ = sign of $x^2-4$: $+$ for $\lvert x\rvert>2$, $-$ for $0<\lvert x\rvert<2$. So maximum $f(-2)=-4$ and minimum $f(2)=4$. (Yes: the maximum is smaller than the minimum. They are *local* extremes on different branches.)

*c. Toon aan that the range of $f$ is $(-\infty,-4]\cup[4,\infty)$.* For $x>0$: $f$ decreases on $(0,2]$ from $+\infty$ to $4$ and then increases to $\infty$, so it takes exactly the values $[4,\infty)$. $f$ is odd ($f(-x)=-f(x)$), so for $x<0$ it takes exactly $(-\infty,-4]$.
(Alternative without calculus: for $x>0$, $x+\frac4x-4=\frac{(x-2)^2}{x}\ge0$. That is the AM–GM inequality, see the olympiad module O5.)

*d. Give the equation of the tangent line at $x=1$.* $f(1)=5$, $f'(1)=-3$. $y=-3x+8$.

---

## Summary

- $f'(a)=\lim\limits_{h\to0}\dfrac{f(a+h)-f(a)}{h}$: slope of the tangent, instantaneous rate of change.
- $(x^r)'=rx^{r-1}$; sums and constant multiples go through.
- $(fg)'=f'g+fg'$; $\left(\frac fg\right)'=\dfrac{f'g-fg'}{g^2}$. Know the proofs.
- Tangent: $y=f'(a)(x-a)+f(a)$.
- Extremes: $f'=0$ gives candidates; a sign change of $f'$ confirms.
- Optimisation: one variable, domain, derivative, check, answer the question.
- Inflection points: $f''$ changes sign; $f''=0$ alone is not enough.
