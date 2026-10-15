# C1 Notes: functions, graphs and equations

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

This module is the grammar of upper-school mathematics. Calculus, exponentials and trigonometry are all statements about functions, so the time spent here on precise language pays off for the next four years.

---

## 1. What a function is

A **function** (*functie*) $f$ from a set $A$ to a set $B$ is a rule that gives **exactly one** output $f(x)\in B$ for every input $x \in A$.

- The set $A$ of allowed inputs is the **domain** (*domein*), written $D_f$.
- The set of outputs that actually occur, $\{f(x) : x \in D_f\}$, is the **range** (*bereik*), written $B_f$.

The key words are "exactly one". The circle $x^2+y^2=1$ is not the graph of a function of $x$, because $x=0$ gives two values of $y$. The **vertical line test** says the same thing in pictures: a curve is the graph of a function of $x$ if every vertical line meets it at most once.

In Dutch school mathematics, when only a formula is given, the domain is the **largest set of real numbers for which the formula makes sense**. Three things can go wrong:

1. dividing by zero;
2. a square root (or any even root) of a negative number;
3. a logarithm of a number that is not positive (this comes in C2).

**Example 1.** $f(x) = 1 + \sqrt{6-2x}$.
Domain: $6-2x \ge 0$, so $x \le 3$. $D_f = (-\infty, 3]$.
Range: as $x$ runs from $3$ down to $-\infty$, $6-2x$ takes every value in $[0,\infty)$, so $\sqrt{6-2x}$ takes every value in $[0,\infty)$, and $f(x)$ every value in $[1,\infty)$. So $B_f = [1, \infty)$.

Note the argument for the range. It is not enough to say "the square root is at least 0, so $f(x)\ge 1$". That only shows the range is *inside* $[1,\infty)$. You must also show every value $\ge 1$ is reached. Here that follows because $6-2x$ runs through all of $[0,\infty)$ and the square root is increasing and continuous.

**Interval notation.** $[a,b]$ includes both ends, $(a,b)$ excludes them, and $\infty$ always gets a round bracket. Dutch books often write $\langle a, b\rangle$ for $(a,b)$, so $\langle\leftarrow, 3]$ means $(-\infty,3]$.

### Even and odd functions

- $f$ is **even** if $f(-x) = f(x)$ for all $x$ in the domain. The graph is symmetric in the $y$-axis. Example: $x^2$, $x^4+x^2$, $\lvert x\rvert$.
- $f$ is **odd** if $f(-x) = -f(x)$. The graph is point-symmetric in the origin. Example: $x^3$, $\tfrac1x$, $x^3-x$.

Most functions are neither: $x^2+x$ at $x=1$ gives $2$ and at $x=-1$ gives $0$.

---

## 2. Standard functions

You should be able to sketch these instantly, with a few exact points, and state domain and range.

| Function | Domain | Range | Notes |
|---|---|---|---|
| $ax+b$ | $\mathbb{R}$ | $\mathbb{R}$ if $a\neq0$ | straight line |
| $x^2$ | $\mathbb{R}$ | $[0,\infty)$ | parabola, even |
| $x^3$ | $\mathbb{R}$ | $\mathbb{R}$ | odd, increasing |
| $x^n$, $n$ even | $\mathbb{R}$ | $[0,\infty)$ | flatter near 0, steeper beyond 1 |
| $\sqrt{x}$ | $[0,\infty)$ | $[0,\infty)$ | half a sideways parabola |
| $\sqrt[3]{x}$ | $\mathbb{R}$ | $\mathbb{R}$ | inverse of $x^3$ |
| $\tfrac1x$ | $x\neq0$ | $y\neq 0$ | hyperbola, asymptotes $x=0$, $y=0$ |
| $\tfrac{1}{x^2}$ | $x\neq0$ | $(0,\infty)$ | even |
| $\lvert x\rvert$ | $\mathbb{R}$ | $[0,\infty)$ | V-shape |

Power functions with negative and fractional exponents are linked by the power rules from stage B: $x^{-n} = \frac{1}{x^n}$ and $x^{1/n} = \sqrt[n]{x}$, $x^{p/q} = \sqrt[q]{x^p}$.

All of $x^2, x^4, x^6,\dots$ pass through $(0,0)$, $(1,1)$ and $(-1,1)$. Between $-1$ and $1$ a higher power is *closer* to zero ($0.5^4 < 0.5^2$), beyond $1$ it is larger. The same holds for odd powers through $(-1,-1)$, $(0,0)$, $(1,1)$.

---

## 3. Transformations

Start from the graph of $y=f(x)$. There are two kinds of changes: those **outside** the function (they act on $y$) and those **inside** (they act on $x$).

| New formula | Effect on the graph | Dutch phrase |
|---|---|---|
| $y = f(x) + q$ | translate $q$ up | translatie $(0, q)$ |
| $y = f(x - p)$ | translate $p$ to the **right** | translatie $(p, 0)$ |
| $y = a\,f(x)$ | stretch by factor $a$ from the $x$-axis (vertical) | vermenigvuldiging t.o.v. de $x$-as met $a$ |
| $y = f(x/b)$ | stretch by factor $b$ from the $y$-axis (horizontal) | vermenigvuldiging t.o.v. de $y$-as met $b$ |
| $y = -f(x)$ | reflect in the $x$-axis | spiegeling in de $x$-as |
| $y = f(-x)$ | reflect in the $y$-axis | spiegeling in de $y$-as |

### Why does $f(x-p)$ move the graph to the right?

The point $(a, f(a))$ lies on the old graph. On the new graph $y=f(x-p)$, which $x$ gives the same height $f(a)$? We need $x - p = a$, so $x = a + p$. Every height is now reached $p$ units further to the right. The inside changes always act "backwards": to stretch horizontally by factor $b$ you *divide* $x$ by $b$, because the new graph must reach at $x = ab$ the height the old one reached at $a$.

A good way to avoid mistakes: a transformation maps each point $(x, y)$ of the old graph to a new point. For a translation $(p,q)$ that is $(x,y)\mapsto(x+p, y+q)$. For a stretch from the $y$-axis by $b$ it is $(x,y)\mapsto(bx,y)$. Write the old point as $(u, f(u))$, apply the map, and eliminate $u$.

### Order matters

**Example 2.** Start with $y=\sqrt{x}$. Apply in this order: (1) translate $(-3, 0)$; (2) stretch from the $x$-axis by factor $-2$ (this is a stretch by $2$ plus a reflection); (3) translate $(0,5)$.

1. $y = \sqrt{x+3}$
2. $y = -2\sqrt{x+3}$
3. $y = -2\sqrt{x+3} + 5$

If you translate up by 5 *before* stretching, you get $y=-2(\sqrt{x+3}+5) = -2\sqrt{x+3}-10$, a different graph. The rule: each step acts on the whole formula you have so far. Outside steps wrap around the outside; inside steps replace every $x$.

**Example 3.** $f(x)=x^2-2x$. The graph of $g$ arises from that of $f$ by a stretch from the $y$-axis by factor 2, followed by a translation $(0,3)$. Then
$$
g(x) = f\left(\tfrac{x}{2}\right) + 3 = \tfrac{x^2}{4} - x + 3 .
$$
Check with the vertex: $f$ has vertex $(1,-1)$; stretching horizontally by 2 gives $(2,-1)$; translating gives $(2,2)$. Indeed $g(2) = 1 - 2 + 3 = 2$.

> **Going further: transformations as composition.** A transformation of the graph is a composition (*samenstelling*) of functions. $y = a\,f(x-p)+q$ is $x \mapsto x-p \mapsto f(x-p) \mapsto a f(x-p) \mapsto a f(x-p)+q$. The inside steps happen *before* $f$, the outside steps *after*. This view explains why inside changes are "backwards": to undo the order you must invert them.

---

## 4. Inverse functions

If $f$ takes $x$ to $y$, the **inverse function** (*inverse functie*) $f^{-1}$ takes $y$ back to $x$:
$$
f^{-1}(f(x)) = x \quad\text{for all } x \in D_f, \qquad f(f^{-1}(y)) = y \quad\text{for all } y\in B_f .
$$
This only works if no two inputs give the same output, that is if $f$ is **one-to-one** (*injectief*): $f(a)=f(b) \Rightarrow a=b$. Every strictly increasing or strictly decreasing function is one-to-one. Graphically: every **horizontal** line meets the graph at most once.

Then $D_{f^{-1}} = B_f$ and $B_{f^{-1}} = D_f$.

**Method.** Write $y=f(x)$, solve for $x$ in terms of $y$, then rename the variables.

**Example 4.** $f(x) = \dfrac{2x+1}{x-3}$, $x\neq 3$.
$$
y(x-3) = 2x+1 \;\Rightarrow\; yx - 2x = 3y + 1 \;\Rightarrow\; x(y-2) = 3y+1 \;\Rightarrow\; x = \frac{3y+1}{y-2}.
$$
So $f^{-1}(x) = \dfrac{3x+1}{x-2}$, with domain $x\neq 2$. This also shows that the range of $f$ is all $y \neq 2$: the value $y=2$ is the only one we cannot solve for.

**Example 5 (restricting the domain).** $f(x)=x^2-4x+1$ is not one-to-one on $\mathbb{R}$, because a parabola is symmetric. Completing the square, $f(x) = (x-2)^2 - 3$. On the domain $x\ge 2$ it is increasing, so it has an inverse there:
$$
y = (x-2)^2 - 3 \Rightarrow (x-2)^2 = y+3 \Rightarrow x - 2 = \sqrt{y+3}
$$
(the positive root, because $x \ge 2$). So $f^{-1}(x) = 2 + \sqrt{x+3}$ with domain $x\ge -3$.

### Why the graph is reflected in $y=x$

The point $(a,b)$ lies on the graph of $f$ exactly when $f(a)=b$, which is exactly when $f^{-1}(b)=a$, which is exactly when $(b,a)$ lies on the graph of $f^{-1}$. Swapping the coordinates of a point is the reflection in the line $y=x$ (the line $y = x$ is the perpendicular bisector of the segment from $(a,b)$ to $(b,a)$). So the whole graph is reflected.

> **Common mistake.** $f^{-1}(x)$ is not $\dfrac{1}{f(x)}$. The notation $f^{-1}$ means "the inverse under composition", not "one over".

> **Going further: intersections of $f$ and $f^{-1}$.** If $f$ is *increasing*, the graphs of $f$ and $f^{-1}$ can only meet on the line $y=x$. Proof: suppose they meet at $(a,b)$, so $f(a) = b$ and $f^{-1}(a) = b$, i.e. $f(b) = a$. If $a<b$ then, since $f$ is increasing, $f(a) < f(b)$, i.e. $b < a$, a contradiction. Similarly $a>b$ is impossible. So $a=b$. This is a very useful shortcut on exams: to intersect an increasing $f$ with its inverse, solve $f(x)=x$. For *decreasing* functions it fails: $f(x)=-x$ is its own inverse, so the graphs meet everywhere.

---

## 5. Equations and inequalities

### Root equations

To solve $\sqrt{A} = B$ you square both sides: $A = B^2$. But squaring is **not reversible**: $B^2 = A$ is also true when $\sqrt{A} = -B$. So squaring can introduce **false solutions** (*schijnoplossingen*). You must always check the solutions in the original equation (or require $B \ge 0$ in advance).

**Example 6.** Solve $\sqrt{x+7} = x+1$.
Squaring: $x + 7 = x^2 + 2x + 1$, so $x^2 + x - 6 = 0$, $(x+3)(x-2)=0$, $x=-3$ or $x=2$.
Check $x=-3$: left $\sqrt{4}=2$, right $-2$. False solution.
Check $x=2$: left $3$, right $3$. Correct.
**Answer:** $x=2$.

Graphically: the line $y=x+1$ meets the half-parabola $y=\sqrt{x+7}$ once; the false solution is where it meets the *lower* half $y=-\sqrt{x+7}$, which the squaring step silently included.

### Rational equations

$\dfrac{A}{B} = 0 \iff A = 0 \text{ and } B \neq 0$. And $\dfrac{A}{B} = \dfrac{C}{D}$ can be cross-multiplied to $AD = BC$, provided $B\neq0$ and $D \neq 0$: again check at the end.

### Inequalities: the method that always works

To solve $f(x) > g(x)$ (in any form):

1. Solve the **equation** $f(x)=g(x)$ exactly.
2. Find the points where $f$ or $g$ is not defined or jumps (vertical asymptotes, domain boundaries).
3. These points cut the line into intervals. On each interval the sign of $f-g$ is constant (for the functions in this module, which are continuous on each interval). Test one point per interval, or use a sketch.
4. Write the answer, taking care with endpoints.

This is the **sign diagram** (*tekenschema*) method. The exam phrase is often "los exact op" for an inequality: you solve the equation exactly and then *use the graph* (sketch or GR screen) to read off the intervals. Write both steps down.

**Example 7.** Solve $\dfrac{x+2}{x-1} \ge 3$.
Do **not** multiply by $x-1$: you don't know its sign. Instead bring everything to one side:
$$
\frac{x+2}{x-1} - 3 = \frac{x+2 - 3(x-1)}{x-1} = \frac{5 - 2x}{x-1} \ge 0 .
$$
Zero of the numerator: $x = \tfrac52$. Zero of the denominator: $x=1$.

| $x$ | $x<1$ | $1$ | $1<x<\tfrac52$ | $\tfrac52$ | $x>\tfrac52$ |
|---|---|---|---|---|---|
| $5-2x$ | $+$ | | $+$ | $0$ | $-$ |
| $x-1$ | $-$ | $0$ | $+$ | | $+$ |
| quotient | $-$ | undefined | $+$ | $0$ | $-$ |

**Answer:** $1 < x \le \tfrac52$.

**Example 8 (polynomial).** $x^3 > 4x$. Then $x(x-2)(x+2) > 0$. Zeros $-2, 0, 2$; the sign alternates (each factor appears once), and for large $x$ the expression is positive. So the solution is $-2<x<0$ or $x>2$.

> **Common mistake.** Dividing $x^3 > 4x$ by $x$ to get $x^2>4$. That loses $-2 < x < 0$ and is wrong for negative $x$, where the inequality sign must flip.

---

## 6. Asymptotes and limit behaviour

### Limit notation

$\displaystyle\lim_{x\to\infty} f(x) = L$ means: $f(x)$ gets as close to $L$ as you like when $x$ is large enough. We treat limits informally in this module and more carefully in C3.

### Vertical asymptotes

A rational function $\dfrac{P(x)}{Q(x)}$ has a **vertical asymptote** $x=a$ when $Q(a)=0$ and $P(a)\neq 0$. Near $a$ the denominator is tiny and the numerator is not, so $|f(x)|$ becomes huge.

If $P(a) = 0$ *and* $Q(a)=0$, then $x-a$ is a factor of both. Cancel it. If after cancelling the denominator is no longer zero at $a$, the graph has a **hole** (*perforatie*): a single missing point.

**Example 9.** $f(x)=\dfrac{x^2-4}{x^2-x-2} = \dfrac{(x-2)(x+2)}{(x-2)(x+1)}$.
For $x\neq 2$ this equals $\dfrac{x+2}{x+1}$. So:
- vertical asymptote $x=-1$;
- hole at $x=2$: the point $\left(2, \tfrac43\right)$ is missing from the graph;
- horizontal asymptote $y=1$ (see below).

### Horizontal asymptotes

For $x\to\pm\infty$ compare the degrees of numerator and denominator. The trick is to divide numerator and denominator by the highest power of $x$ in the denominator.

**Example 10.** $f(x)=\dfrac{3x^2-1}{x^2+4} = \dfrac{3 - \frac{1}{x^2}}{1 + \frac{4}{x^2}} \to \dfrac{3-0}{1+0} = 3$ as $x\to\pm\infty$. Horizontal asymptote $y=3$.

A cleaner way to see this, and the way to get the range: write
$$
f(x) = \frac{3(x^2+4) - 13}{x^2+4} = 3 - \frac{13}{x^2+4} .
$$
Now $x^2+4 \ge 4$, so $0 < \frac{13}{x^2+4} \le \frac{13}{4}$, with the maximum at $x=0$. Therefore $-\tfrac14 \le f(x) < 3$, and every value in between occurs. Range $\left[-\tfrac14, 3\right)$. The function never reaches its asymptote.

> **Common mistake.** "A graph never crosses its asymptote." False for horizontal asymptotes: $\dfrac{x}{x^2+1}$ has asymptote $y=0$ and crosses it at $x=0$. An asymptote describes behaviour far away, not nearby.

Summary for $\dfrac{P}{Q}$ with degrees $p$ and $q$:
- $p < q$: horizontal asymptote $y=0$;
- $p = q$: horizontal asymptote $y = \dfrac{\text{leading coefficient of } P}{\text{leading coefficient of } Q}$;
- $p = q + 1$: **oblique asymptote** (*scheve asymptoot*), found by long division;
- $p > q+1$: no straight-line asymptote.

**Example 11 (oblique asymptote).** $f(x)=\dfrac{2x^2+3x}{x-1}$. Long division (or writing $2x^2+3x = (x-1)(2x+5)+5$) gives
$$
f(x) = 2x+5 + \frac{5}{x-1}.
$$
As $x\to\pm\infty$, $\frac{5}{x-1}\to0$, so the graph approaches the line $y=2x+5$. Vertical asymptote $x=1$.

### Root functions

$\sqrt{x}$ has no horizontal asymptote ($\sqrt{x}\to\infty$, slowly). But $\sqrt{x^2+1}-x$ does: multiply by the conjugate,
$$
\sqrt{x^2+1}-x = \frac{(x^2+1)-x^2}{\sqrt{x^2+1}+x} = \frac{1}{\sqrt{x^2+1}+x} \to 0 \quad (x\to\infty).
$$
The conjugate trick will return in C3 when we differentiate $\sqrt{x}$ from the definition.

### A modelling example

**Example 12.** The number of visitors to a website after the launch of a new game is modelled by $N(t) = \dfrac{800t}{t+4}$, $t$ in days, $t \ge 0$.

*a. Which number of visitors does $N$ approach in the long run?* Dividing by $t$: $N = \dfrac{800}{1+4/t}\to 800$.

*b. Bereken exact from which day on $N > 600$.* Since $t + 4 > 0$ we may multiply: $800t > 600t + 2400$, so $t > 12$.

*c. Write $t$ as a function of $N$.* $N(t+4) = 800t \Rightarrow t(800 - N) = 4N \Rightarrow t = \dfrac{4N}{800-N}$, for $0 \le N < 800$.

---

## 7. Absolute value

$$
\lvert x\rvert = \begin{cases} x & x\ge0\\ -x & x<0\end{cases}
$$
Geometrically, $\lvert a-b\rvert$ is the distance between $a$ and $b$ on the number line. This is the most useful way to think about it:

- $\lvert x-3\rvert = 5$: the points at distance 5 from 3, so $x=-2$ or $x=8$.
- $\lvert x-3\rvert < 5$: the points closer than 5 to 3, so $-2 < x < 8$.
- $\lvert x-3\rvert > 5$: $x<-2$ or $x>8$.

For more complicated equations, **split into cases** according to the sign of what is inside the absolute value bars.

**Example 13.** Solve $\lvert x^2 - 4\rvert = 3x$.

*Case 1:* $x^2 - 4 \ge 0$ (that is $x\le -2$ or $x\ge 2$). Then $x^2-4 = 3x$, $x^2 - 3x - 4 = 0$, $x=4$ or $x=-1$. Only $x=4$ satisfies the case condition.

*Case 2:* $x^2-4<0$ ($-2<x<2$). Then $4-x^2=3x$, $x^2+3x-4=0$, $x=1$ or $x=-4$. Only $x=1$ satisfies the case condition.

Check: $\lvert 16-4\rvert = 12 = 3\cdot4$ and $\lvert 1-4\rvert = 3 = 3\cdot1$. **Answer:** $x=1$ or $x=4$.

**Graphs.** The graph of $y=\lvert f(x)\rvert$ is the graph of $f$ with every part below the $x$-axis reflected upwards. The graph of $y=f(\lvert x\rvert)$ is the right half of $f$'s graph together with its mirror image in the $y$-axis (it is always even).

> **Going further: $\sqrt{x^2} = \lvert x\rvert$.** Not $x$. For $x=-3$: $\sqrt{9} = 3 = \lvert -3\rvert$. Many errors in root equations come from "simplifying" $\sqrt{x^2}$ to $x$.

---

## 8. Writing CE answers

Dutch exam markers follow a *correctievoorschrift* that awards points for intermediate steps. Some habits that earn the points:

- **"Bereken exact"**: no decimal approximations at any stage; answers like $\tfrac{5}{2}$ or $2+\sqrt3$.
- **"Toon aan" / "Bewijs"**: start from what is given, end with exactly the statement asked, and say so ("dus …").
- **Inequalities**: write the equation you solve, its solutions, and then a sentence or sketch showing how you read off the intervals.
- **Using the GR**: name what you entered ("intersect van $y_1 = \dots$ en $y_2 = \dots$ geeft $x\approx\dots$") and round only at the end.

### A complete CE-style worked example

**Example 14.** Given is $f(x) = 2 - \sqrt{4-x}$.

*a. Give the domain and range of $f$.* $4-x\ge0$ so $D_f = (-\infty, 4]$. $\sqrt{4-x}$ takes all values in $[0,\infty)$, so $f$ takes all values in $(-\infty, 2]$. $B_f=(-\infty,2]$.

*b. Toon aan dat $f^{-1}(x) = 4 - (2-x)^2$ with $x \le 2$.* From $y = 2 - \sqrt{4-x}$: $\sqrt{4-x} = 2-y$, which requires $y\le2$. Squaring: $4-x = (2-y)^2$, so $x = 4 - (2-y)^2$. Swapping the letters gives $f^{-1}(x) = 4 - (2-x)^2$ with domain $B_f = (-\infty, 2]$.

*c. Bereken exact the coordinates of the intersection points of the graphs of $f$ and $f^{-1}$.* $f$ is increasing (as $x$ increases, $4-x$ decreases, so $\sqrt{4-x}$ decreases and $f$ increases). So intersection points lie on $y=x$ (see §4). Solve $2-\sqrt{4-x} = x$: $\sqrt{4-x} = 2-x$, square: $4 - x = 4 - 4x + x^2$, so $x^2 - 3x = 0$, $x=0$ or $x=3$. Check: $x=3$ gives $\sqrt1 = 1 \neq -1$, false. $x=0$ gives $2 = 2$. The only intersection point is $(0,0)$.

---

## Summary

- A function gives exactly one output per input; domain and range must be justified, not guessed.
- Inside changes act on $x$ "backwards"; outside changes act on $y$ directly; order matters.
- Inverse = swap $x$ and $y$; exists when one-to-one; graph reflected in $y=x$.
- Squaring can create false solutions: always check.
- Inequalities: solve the equation, then use a sign diagram or a graph.
- Asymptotes: denominator zero (vertical), degree comparison (horizontal), long division (oblique).
- Absolute value = distance; split into cases.
