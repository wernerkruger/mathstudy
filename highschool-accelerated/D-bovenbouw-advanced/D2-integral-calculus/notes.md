# D2 Integral calculus: notes

[← Module overview](README.md) · [Problems](problems.md) · [Solutions](solutions.md) · [Glossary](../../GLOSSARY.md)

Differentiation takes a function and tells you how fast it changes. Integration goes the other way: given how fast something changes, how much has built up? The same question measures areas, volumes, distances and averages. The key fact of this module, the fundamental theorem of calculus, says that these two operations undo each other. Once you understand why, most of the module is technique.

Throughout, "CE" means the central exam (*centraal examen*) and "GR" means the graphing calculator (*grafische rekenmachine*).

## 1. Antiderivatives (primitieven)

### 1.1 Definition and the constant

A function $F$ is an **antiderivative** (*primitieve*) of $f$ on an interval if $F'(x) = f(x)$ for every $x$ in that interval. Finding one is called *primitiveren*.

For example, $F(x) = x^3$ is an antiderivative of $f(x) = 3x^2$. So is $x^3 + 7$, and so is $x^3 - \pi$. Adding a constant changes nothing, because the derivative of a constant is $0$.

The important claim is the converse: **on an interval, any two antiderivatives of $f$ differ by a constant.** Why? If $F' = f$ and $G' = f$, then $H = F - G$ has $H'(x) = 0$ everywhere on the interval. A function whose derivative is zero everywhere on an interval is constant. (This is a consequence of the mean value theorem: for any two points $p < q$ in the interval there is a point $c$ between them with $H(q) - H(p) = H'(c)(q-p) = 0$.) So we write

$$
\int f(x)\,dx = F(x) + c,
$$

meaning "all antiderivatives of $f$", and call $c$ the constant of integration. In the CE you usually just need *one* antiderivative, so you may leave out the $c$ unless the question asks for "all antiderivatives" or gives a condition such as $F(1) = 5$ that fixes $c$.

The word "interval" matters. The function $\frac{1}{x}$ is defined on $(-\infty, 0)$ and on $(0, \infty)$, which are two separate intervals, so you could use one constant on the left and a different one on the right.

### 1.2 The table of standard antiderivatives

Every entry below comes from reading a derivative rule backwards. You should be able to check each one in your head by differentiating.

| $f(x)$ | an antiderivative $F(x)$ | condition |
|---|---|---|
| $x^r$ | $\dfrac{1}{r+1}x^{r+1}$ | $r \neq -1$ |
| $\dfrac{1}{x}$ | $\ln\lvert x\rvert$ | $x \neq 0$ |
| $e^x$ | $e^x$ | |
| $a^x$ | $\dfrac{a^x}{\ln a}$ | $a > 0$, $a \neq 1$ |
| $\ln x$ | $x\ln x - x$ | $x > 0$ |
| $\sin x$ | $-\cos x$ | |
| $\cos x$ | $\sin x$ | |

Three of these deserve a comment.

**Why $\ln\lvert x\rvert$ and not $\ln x$.** For $x > 0$ the derivative of $\ln x$ is $\frac1x$. For $x < 0$, $\ln x$ is not even defined. But $\ln(-x)$ is, and by the chain rule $\frac{d}{dx}\ln(-x) = \frac{1}{-x}\cdot(-1) = \frac1x$. Both cases together give $\frac{d}{dx}\ln\lvert x\rvert = \frac1x$ for all $x \neq 0$. This is exactly the gap in the power rule: $r = -1$ would give $\frac{1}{0}x^0$, which is meaningless, and the logarithm fills that gap.

**Why $\frac{a^x}{\ln a}$.** Write $a^x = e^{x\ln a}$. Then $\frac{d}{dx}a^x = \ln a\cdot a^x$, so to get $a^x$ back you divide by $\ln a$.

**Why $x\ln x - x$.** It is not obvious how to *find* this (see §11, integration by parts), but checking it is easy: by the product rule $\frac{d}{dx}(x\ln x - x) = \ln x + x\cdot\frac1x - 1 = \ln x$.

Sums and constant multiples work as you would hope, because they work for derivatives: an antiderivative of $3f + 5g$ is $3F + 5G$. **Products and quotients do not.** There is no "product rule for antiderivatives" that you can apply blindly; that is what makes integration harder than differentiation.

Before you integrate, rewrite roots and fractions as powers: $\sqrt{x} = x^{1/2}$, $\dfrac{1}{x^3} = x^{-3}$, $\dfrac{1}{\sqrt x} = x^{-1/2}$, $\dfrac{x^2 + 1}{x} = x + x^{-1}$.

### 1.3 Linear substitution

If $F$ is an antiderivative of $f$, then

$$
\int f(ax + b)\,dx = \frac{1}{a}F(ax+b) + c \qquad (a \neq 0).
$$

Why: by the chain rule, $\frac{d}{dx}F(ax+b) = F'(ax+b)\cdot a = a\,f(ax+b)$. Differentiating produces an extra factor $a$, so to undo it you divide by $a$.

**Worked example 1.** Find an antiderivative of each function.

- $f(x) = (3x - 1)^5$. Here the outer function is $u^5$ with antiderivative $\frac16 u^6$, and $a = 3$. So $F(x) = \frac{1}{18}(3x-1)^6$.
- $g(x) = e^{1-2x}$. Here $a = -2$, so $G(x) = -\frac12 e^{1-2x}$.
- $h(x) = \sin(2x + \frac{\pi}{3})$. So $H(x) = -\frac12\cos(2x + \frac\pi3)$.
- $k(x) = \dfrac{1}{2x+1}$. So $K(x) = \frac12\ln\lvert 2x+1\rvert$.

Check each by differentiating. This takes ten seconds and catches nearly every sign error.

The rule only works when the inside is *linear*. $\int e^{x^2}\,dx$ is **not** $\frac{1}{2x}e^{x^2}$: differentiate that and you will see it fails (the quotient rule produces an extra term). In fact $e^{x^2}$ has no antiderivative that can be written with standard functions.

### 1.4 Show that F is an antiderivative of f

A very common CE question reads: *Toon aan dat $F$ een primitieve is van $f$* ("show that $F$ is an antiderivative of $f$"). The method is always the same: **differentiate $F$ and simplify until you get exactly $f$.** You never need to integrate $f$.

**Worked example 2 (CE style).** Gegeven is $f(x) = x^2e^x$ en $F(x) = (x^2 - 2x + 2)e^x$. Toon aan dat $F$ een primitieve is van $f$.

*Solution.* By the product rule,

$$
F'(x) = (2x - 2)e^x + (x^2 - 2x + 2)e^x = (x^2 - 2x + 2 + 2x - 2)e^x = x^2e^x = f(x).
$$

So $F' = f$, hence $F$ is an antiderivative of $f$. $\square$

In the marking scheme (*correctievoorschrift*) the points are for: a correct derivative (product rule visible), and a correct simplification that ends in $f(x)$. Write every step; "this is clearly equal" earns nothing.

## 2. The area problem and Riemann sums

### 2.1 The problem

Let $f$ be a continuous function with $f(x) \ge 0$ on $[a, b]$. What is the area of the region between the graph, the $x$-axis and the vertical lines $x = a$ and $x = b$? For rectangles and triangles we know the answer. For a curved boundary we need a new idea: **approximate the region by rectangles, and take a limit.**

### 2.2 Lower and upper sums

Divide $[a, b]$ into $n$ equal pieces of width $\Delta x = \frac{b-a}{n}$, with dividing points $x_k = a + k\,\Delta x$ for $k = 0, 1, \dots, n$. On each piece $[x_{k-1}, x_k]$ draw a rectangle of width $\Delta x$.

- If you use the **lowest** value of $f$ on the piece as the height, all rectangles lie inside the region. Their total area is the **lower sum** (*ondersom*) $L_n$.
- If you use the **highest** value as the height, the rectangles cover the region. Their total is the **upper sum** (*bovensom*) $U_n$.

So $L_n \le \text{area} \le U_n$ for every $n$. If $L_n$ and $U_n$ approach the same number as $n \to \infty$, the area must be that number: it is trapped between them.

More generally, a **Riemann sum** (*Riemann-som*) uses any point $\xi_k$ in each piece:

$$
S_n = \sum_{k=1}^{n} f(\xi_k)\,\Delta x.
$$

For an increasing function, the left endpoints give the lower sum and the right endpoints give the upper sum.

### 2.3 An exact computation: the area under x squared

Let $f(x) = x^2$ on $[0, 1]$. Take $n$ pieces of width $\frac1n$, with $x_k = \frac kn$. Because $f$ is increasing on $[0,1]$, the upper sum uses right endpoints:

$$
U_n = \sum_{k=1}^{n}\left(\frac{k}{n}\right)^2\cdot\frac1n = \frac{1}{n^3}\sum_{k=1}^{n}k^2.
$$

We need the sum of squares, $1^2 + 2^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}$. (Prove it by induction, or see problem 23 for a related trick.) So

$$
U_n = \frac{n(n+1)(2n+1)}{6n^3} = \frac{(n+1)(2n+1)}{6n^2} = \frac{1}{6}\left(1 + \frac1n\right)\left(2 + \frac1n\right).
$$

The lower sum uses left endpoints, $k = 0, \dots, n-1$, and the same calculation with $n-1$ in place of $n$ in the sum gives

$$
L_n = \frac{(n-1)n(2n-1)}{6n^3} = \frac{1}{6}\left(1 - \frac1n\right)\left(2 - \frac1n\right).
$$

As $n \to \infty$, both tend to $\frac16 \cdot 1 \cdot 2 = \frac13$. Notice also that $U_n - L_n = \frac1n$: the difference is exactly one thin strip of width $\frac1n$ and height $f(1) - f(0) = 1$. So the area under $y = x^2$ from $0$ to $1$ is exactly $\frac13$.

This is how Archimedes found the area of a parabolic segment around 250 BC, using a different method but the same idea of trapping an area between two approximations.

> **Going further: why the method needs continuity.** For a continuous function on a closed interval, $U_n - L_n \to 0$ always. The reason is a property called *uniform continuity*, which you will meet in university analysis (see the adult track, [1.2 Real analysis I](../../../adult-masters/01-refresher/1.2-real-analysis-I/)). For wild functions it can fail: if $f(x) = 1$ for rational $x$ and $f(x) = 0$ for irrational $x$, every upper sum on $[0,1]$ is $1$ and every lower sum is $0$, so no area can be assigned this way.

## 3. The definite integral and its properties

### 3.1 Definition

For a continuous function $f$ on $[a, b]$, the **definite integral** (*bepaalde integraal*) is the common limit of the Riemann sums:

$$
\int_a^b f(x)\,dx = \lim_{n\to\infty}\sum_{k=1}^{n}f(\xi_k)\,\Delta x.
$$

The notation tells the story. The long S is a stretched "S" for *summa*, and $f(x)\,dx$ is "height times a very small width". The $x$ is a dummy variable: $\int_0^1 x^2\,dx$ and $\int_0^1 t^2\,dt$ are the same number.

This definition does **not** require $f \ge 0$. Where $f$ is negative, the terms $f(\xi_k)\Delta x$ are negative, so regions below the axis count negatively. This is called **signed area** (§5).

### 3.2 Properties

All of these follow from the corresponding properties of finite sums, and all are used constantly.

1. **Linearity:** $\displaystyle\int_a^b \big(p\,f(x) + q\,g(x)\big)\,dx = p\int_a^b f(x)\,dx + q\int_a^b g(x)\,dx$.
2. **Splitting the interval:** $\displaystyle\int_a^b f(x)\,dx + \int_b^c f(x)\,dx = \int_a^c f(x)\,dx$.
3. **Orientation:** $\displaystyle\int_b^a f(x)\,dx = -\int_a^b f(x)\,dx$, and $\displaystyle\int_a^a f(x)\,dx = 0$. (These are definitions that make rule 2 hold for any order of $a, b, c$.)
4. **Comparison:** if $f(x) \le g(x)$ on $[a,b]$ with $a < b$, then $\displaystyle\int_a^b f(x)\,dx \le \int_a^b g(x)\,dx$.
5. **Bounds:** if $m \le f(x) \le M$ on $[a,b]$, then $m(b-a) \le \displaystyle\int_a^b f(x)\,dx \le M(b-a)$.

Property 5 is the "squeeze" that drives the proof in the next section.

## 4. The fundamental theorem of calculus

### 4.1 The area function

Fix a starting point $a$ and define, for $x \ge a$,

$$
A(x) = \int_a^x f(t)\,dt.
$$

$A(x)$ is the (signed) area from $a$ up to the moving right edge $x$. (We write $t$ inside because $x$ is now used for the upper limit.)

### 4.2 The theorem

**Fundamental theorem of calculus** (*hoofdstelling van de integraalrekening*). Let $f$ be continuous on an interval containing $a$.

- **Part 1.** The area function $A(x) = \int_a^x f(t)\,dt$ is differentiable, and $A'(x) = f(x)$. In words: $A$ is an antiderivative of $f$.
- **Part 2.** If $F$ is any antiderivative of $f$, then
$$
\int_a^b f(x)\,dx = F(b) - F(a).
$$

We write $F(b) - F(a)$ as $\big[F(x)\big]_a^b$.

### 4.3 Why it is true (proof sketch)

**Part 1.** Take $h > 0$ small. Then

$$
A(x+h) - A(x) = \int_x^{x+h} f(t)\,dt,
$$

the area of a thin strip of width $h$. Let $m_h$ and $M_h$ be the smallest and largest values of $f$ on $[x, x+h]$. By property 5,

$$
m_h\cdot h \;\le\; A(x+h) - A(x) \;\le\; M_h\cdot h, \qquad\text{so}\qquad m_h \;\le\; \frac{A(x+h) - A(x)}{h} \;\le\; M_h.
$$

Now let $h \to 0$. Because $f$ is continuous, both $m_h$ and $M_h$ tend to $f(x)$: on a tiny interval around $x$ all values of $f$ are close to $f(x)$. The difference quotient is squeezed between them, so it also tends to $f(x)$. (For $h < 0$ the argument is the same with the strip on the left.) Hence $A'(x) = f(x)$.

The picture to remember: when the right edge moves by $h$, the area grows by a strip that is almost a rectangle of height $f(x)$ and width $h$. So the *rate* at which area grows is the *height* of the graph.

**Part 2.** By part 1, $A$ is an antiderivative of $f$. If $F$ is any other one, then by §1.1 $F(x) = A(x) + c$ for some constant $c$. Then

$$
F(b) - F(a) = \big(A(b) + c\big) - \big(A(a) + c\big) = A(b) - A(a) = \int_a^b f(t)\,dt - 0.
$$

The constant cancels, which is why you never need $+c$ in a definite integral. $\square$

### 4.4 Using it

**Worked example 3.** Bereken exact $\displaystyle\int_0^2 (x^3 - x)\,dx$ ("calculate exactly").

$$
\int_0^2 (x^3 - x)\,dx = \Big[\tfrac14x^4 - \tfrac12x^2\Big]_0^2 = (4 - 2) - 0 = 2.
$$

Compare with §2.3: $\int_0^1 x^2\,dx = \big[\tfrac13x^3\big]_0^1 = \frac13$, in one line instead of a page. That contrast is the whole point of the theorem.

"Bereken exact" means: no decimals, no GR integral function, keep $\pi$, $e$, $\ln 2$ and $\sqrt3$ as symbols. "Bereken" alone means you may use the GR, and you should round as the question says.

> **Going further: differentiating an integral with a variable limit.** Part 1 combined with the chain rule gives $\dfrac{d}{dx}\displaystyle\int_a^{g(x)} f(t)\,dt = f(g(x))\cdot g'(x)$. For example, $\dfrac{d}{dx}\displaystyle\int_0^{x^2} e^{t^2}\,dt = 2x\,e^{x^4}$, even though $e^{t^2}$ has no standard antiderivative. Problem 28 uses this idea to prove $\ln(ab) = \ln a + \ln b$ from the definition $\ln x = \int_1^x \frac1t\,dt$.

## 5. Signed area and area between graphs

### 5.1 Signed area versus area

The integral counts area below the $x$-axis as negative. An area is always positive. So when a question asks for an **area** (*oppervlakte*), you must:

1. find where $f$ changes sign (its zeros);
2. integrate separately over each piece;
3. add the absolute values.

**Worked example 4.** Let $f(x) = x^3 - 4x$. Bereken exact de oppervlakte van het vlakdeel ingesloten door de grafiek van $f$ en de $x$-as ("the area of the region enclosed by the graph of $f$ and the $x$-axis").

*Solution.* $x^3 - 4x = x(x-2)(x+2) = 0$ gives $x = -2, 0, 2$. On $(-2, 0)$, $f > 0$ (try $x = -1$: $f(-1) = 3$), and on $(0,2)$, $f < 0$.

$$
\int_{-2}^{0}(x^3 - 4x)\,dx = \Big[\tfrac14x^4 - 2x^2\Big]_{-2}^{0} = 0 - (4 - 8) = 4, \qquad \int_{0}^{2}(x^3 - 4x)\,dx = (4 - 8) - 0 = -4.
$$

The area is $4 + 4 = 8$. Note that $\int_{-2}^2 f(x)\,dx = 0$: the signed areas cancel because $f$ is odd (problem 26).

### 5.2 Area between two graphs

If $f(x) \ge g(x)$ on $[a,b]$, the area of the region between the graphs is

$$
\int_a^b \big(f(x) - g(x)\big)\,dx.
$$

Why: a vertical strip at $x$ has height $f(x) - g(x)$, whatever the position of the $x$-axis. Shifting both graphs up by the same amount does not change the difference, so it does not matter whether the graphs are above or below the axis. The rule is **top minus bottom**.

Most CE questions do not give you the boundaries. You find them by solving $f(x) = g(x)$ (the intersection points, *snijpunten*). If the graphs cross inside the interval, the top and bottom swap, and you must split.

**Worked example 5.** Gegeven zijn $f(x) = x^2 - 2x$ en $g(x) = x$. Bereken exact de oppervlakte van het vlakdeel ingesloten door de grafieken van $f$ en $g$.

*Solution.* $x^2 - 2x = x \iff x^2 - 3x = 0 \iff x = 0 \lor x = 3$. At $x = 1$: $g(1) = 1 > f(1) = -1$, so $g$ is on top on $(0,3)$.

$$
\int_0^3 \big(x - (x^2 - 2x)\big)\,dx = \int_0^3 (3x - x^2)\,dx = \Big[\tfrac32x^2 - \tfrac13x^3\Big]_0^3 = \tfrac{27}{2} - 9 = \tfrac92.
$$

Notice that part of this region lies below the $x$-axis. Top minus bottom handles that automatically.

## 6. The reverse chain rule (substitution)

### 6.1 The pattern

The chain rule says $\frac{d}{dx}F(g(x)) = f(g(x))\cdot g'(x)$ when $F' = f$. Read backwards:

$$
\int f(g(x))\cdot g'(x)\,dx = F(g(x)) + c.
$$

So look for **a function inside another function, multiplied by (a constant times) the derivative of the inside**. The CE only uses cases where you can spot this pattern; you are not expected to perform formal substitutions with $du$, though that notation is a useful bookkeeping device (§6.3).

**Worked example 6.**

- $\displaystyle\int 2x\,e^{x^2}\,dx$. The inside is $x^2$, its derivative $2x$ is right there. So the answer is $e^{x^2} + c$.
- $\displaystyle\int \sin x\cos^2x\,dx$. The inside is $\cos x$, with derivative $-\sin x$. Guess $(\cos x)^3$: its derivative is $3\cos^2 x\cdot(-\sin x)$. That is $-3$ times what we want, so the answer is $-\frac13\cos^3x + c$.
- $\displaystyle\int \frac{x}{x^2+4}\,dx$. The derivative of $x^2 + 4$ is $2x$, and we have $x$, so the answer is $\frac12\ln(x^2+4) + c$. (No absolute value needed since $x^2 + 4 > 0$.)

The method in every case: **guess the outer function, differentiate your guess, and fix the constant.** You can only fix a *constant* factor. If a power of $x$ is missing, the pattern does not apply.

### 6.2 The special case f'/f

Taking $F = \ln\lvert\cdot\rvert$ gives a pattern worth memorising:

$$
\int \frac{f'(x)}{f(x)}\,dx = \ln\lvert f(x)\rvert + c.
$$

For example, $\int \tan x\,dx = \int\frac{\sin x}{\cos x}\,dx = -\ln\lvert\cos x\rvert + c$, because the numerator is minus the derivative of the denominator.

**Worked example 7 (CE style).** Bereken exact $\displaystyle\int_0^{\pi/2}\sin x\cos^2x\,dx$.

$$
\int_0^{\pi/2}\sin x\cos^2x\,dx = \Big[-\tfrac13\cos^3x\Big]_0^{\pi/2} = 0 - \left(-\tfrac13\right) = \tfrac13.
$$

### 6.3 The substitution notation

If you set $u = g(x)$ then $\frac{du}{dx} = g'(x)$, and people write $du = g'(x)\,dx$. Then $\int f(g(x))\,g'(x)\,dx$ becomes $\int f(u)\,du$. For a definite integral, change the limits too: $x = a$ becomes $u = g(a)$. For example, with $u = x^2 + 1$,

$$
\int_0^1\frac{x}{x^2+1}\,dx = \int_1^2\frac{1}{2u}\,du = \tfrac12\ln 2.
$$

This is a shorthand for the chain rule, not a new theorem. Many Dutch textbooks avoid it; use it if it helps you, but always check by differentiating.

## 7. Volumes of revolution

### 7.1 The disc method about the x-axis

Rotate the region under the graph of $f \ge 0$ on $[a,b]$ around the $x$-axis. You get a solid of revolution (*omwentelingslichaam*). Its volume (*inhoud*) is

$$
V = \pi\int_a^b \big(f(x)\big)^2\,dx.
$$

**Why.** Slice the solid perpendicular to the $x$-axis into thin slices of thickness $\Delta x$. The slice at position $x$ is almost a flat cylinder (a disc) with radius $f(x)$, so its volume is about $\pi f(x)^2\,\Delta x$. Adding the discs gives a Riemann sum for $\pi f(x)^2$, and in the limit you get the integral. This is the same idea as area: **chop, approximate each piece by something simple, add, take the limit.**

**Worked example 8.** Let $f(x) = x^2$ on $[0,1]$. The volume when the region under the graph rotates about the $x$-axis is

$$
V = \pi\int_0^1 (x^2)^2\,dx = \pi\Big[\tfrac15x^5\Big]_0^1 = \tfrac{\pi}{5}.
$$

A common error is to write $\pi\left(\int_0^1 x^2\,dx\right)^2 = \frac{\pi}{9}$. Square first, then integrate.

**The cone.** The line $y = \frac{r}{h}x$ on $[0,h]$ rotates to a cone with radius $r$ and height $h$. Its volume is $\pi\int_0^h\frac{r^2}{h^2}x^2\,dx = \frac{\pi r^2}{h^2}\cdot\frac{h^3}{3} = \frac13\pi r^2h$. This is where the "one third" in the cone formula comes from. The sphere is problem 27.

If the region lies between two graphs $f \ge g \ge 0$, the slices are washers (rings), and $V = \pi\int_a^b\big(f(x)^2 - g(x)^2\big)\,dx$. Not $\pi\int(f - g)^2$.

### 7.2 About the y-axis

Rotate a region around the $y$-axis. Now slice perpendicular to the $y$-axis: the slice at height $y$ is a disc whose radius is the horizontal distance $x$ from the $y$-axis to the curve. So

$$
V = \pi\int_c^d x^2\,dy,
$$

where you must write $x^2$ as a function of $y$ and use $y$-limits.

**Worked example 9.** The region $V$ is bounded by the graph of $y = x^2$ (with $x \ge 0$), the $y$-axis and the line $y = 4$. Bereken exact de inhoud van het lichaam dat ontstaat als $V$ wentelt om de $y$-as.

*Solution.* From $y = x^2$ we get $x^2 = y$. The $y$-limits are $0$ and $4$. So

$$
\text{inhoud} = \pi\int_0^4 y\,dy = \pi\Big[\tfrac12y^2\Big]_0^4 = 8\pi.
$$

Make a sketch every time. Most mistakes with the $y$-axis come from using the wrong region: the region "between the curve and the $y$-axis" is not the same as the region "between the curve and the $x$-axis".

## 8. Arc length

### 8.1 The formula

The length of the graph of $f$ from $x = a$ to $x = b$ (the arc length, *booglengte*) is

$$
L = \int_a^b\sqrt{1 + \big(f'(x)\big)^2}\,dx.
$$

**Derivation.** Chop the curve into small pieces and replace each piece by a straight segment. Over a step $\Delta x$ the function changes by $\Delta y \approx f'(x)\,\Delta x$. By Pythagoras the segment has length

$$
\sqrt{(\Delta x)^2 + (\Delta y)^2} \approx \sqrt{(\Delta x)^2 + f'(x)^2(\Delta x)^2} = \sqrt{1 + f'(x)^2}\;\Delta x.
$$

Adding the segments gives a Riemann sum for $\sqrt{1 + f'(x)^2}$, and the limit is the formula. (Making the "$\approx$" rigorous uses the mean value theorem, the same tool as in §1.1.)

### 8.2 When the square root simplifies

The square root makes almost every arc length impossible to do exactly. CE questions that say "bereken exact" are designed so that $1 + f'^2$ is a perfect square. Look for that.

**Worked example 10 (CE style).** Gegeven is $f(x) = \tfrac14x^2 - \tfrac12\ln x$ op $[1, e]$.

a. Toon aan dat $1 + \big(f'(x)\big)^2 = \left(\tfrac12x + \dfrac{1}{2x}\right)^2$.

b. Bereken exact de lengte van de grafiek van $f$ op $[1, e]$.

*Solution.* a. $f'(x) = \frac12x - \frac{1}{2x}$, so

$$
1 + f'(x)^2 = 1 + \tfrac14x^2 - 2\cdot\tfrac12x\cdot\tfrac{1}{2x} + \tfrac{1}{4x^2} = \tfrac14x^2 + \tfrac12 + \tfrac{1}{4x^2} = \left(\tfrac12x + \tfrac{1}{2x}\right)^2.
$$

The trick: $f'$ is a *difference* $p - q$ with $pq = \frac14$, so $1 + (p-q)^2 = (p+q)^2$.

b. On $[1, e]$ the bracket is positive, so the square root is simply $\frac12x + \frac{1}{2x}$:

$$
L = \int_1^e\left(\tfrac12x + \tfrac{1}{2x}\right)dx = \Big[\tfrac14x^2 + \tfrac12\ln x\Big]_1^e = \tfrac14e^2 + \tfrac12 - \tfrac14 = \tfrac14\big(e^2 + 1\big).
$$

Another exact case: $f(x) = x^{3/2}$, where $1 + f'^2 = 1 + \frac94x$ is linear, so the linear substitution rule handles $\sqrt{1 + \frac94x}$.

### 8.3 With the GR

If the question says "bereken" (not "exact"), type the integrand into the GR and use its numerical integral function (on a TI-84: `fnInt`, under MATH; on a Casio: the $\int dx$ function). Write down in your answer *which* integral you computed, for example "$L = \int_0^1\sqrt{1 + 4x^2}\,dx \approx 1.479$". The integral itself earns points; the number alone does not.

## 9. Applications: average value, distance, accumulation

### 9.1 Average value

The **average value** (*gemiddelde waarde*) of $f$ on $[a,b]$ is

$$
\bar f = \frac{1}{b-a}\int_a^b f(x)\,dx.
$$

**Why.** The average of $n$ sample values $f(\xi_1), \dots, f(\xi_n)$ is $\frac1n\sum f(\xi_k)$. Since $\frac1n = \frac{\Delta x}{b-a}$, this equals $\frac{1}{b-a}\sum f(\xi_k)\,\Delta x$, a Riemann sum divided by $b-a$. Geometrically: $\bar f$ is the height of the rectangle on $[a,b]$ with the same area as the region under the graph.

**Worked example 11.** The temperature in degrees Celsius $t$ hours after 06:00 is $T(t) = 15 + 5\sin\left(\frac{\pi t}{12}\right)$. Bereken exact de gemiddelde temperatuur tussen 06:00 en 18:00.

$$
\bar T = \frac{1}{12}\int_0^{12}\left(15 + 5\sin\tfrac{\pi t}{12}\right)dt = \frac1{12}\Big[15t - \tfrac{60}{\pi}\cos\tfrac{\pi t}{12}\Big]_0^{12} = \frac{1}{12}\left(180 + \tfrac{60}{\pi} + \tfrac{60}{\pi}\right) = 15 + \frac{10}{\pi}.
$$

That is about $18.2$ °C.

### 9.2 Distance from velocity

If an object moves along a line with velocity $v(t)$, its position $s$ satisfies $s'(t) = v(t)$. By the fundamental theorem,

$$
s(t_2) - s(t_1) = \int_{t_1}^{t_2}v(t)\,dt.
$$

This is the **displacement** (change of position), which can be negative. The **distance travelled** is $\int_{t_1}^{t_2}\lvert v(t)\rvert\,dt$: split at the times where $v$ changes sign, exactly as for area. Problem 11 shows that the two can be very different.

### 9.3 Accumulated quantities

The same idea works for any rate. If water flows into a tank at $q(t)$ litres per minute, the amount added between $t = 0$ and $t = T$ is $\int_0^T q(t)\,dt$ litres. If a population grows at $r(t)$ animals per year, the increase is $\int r(t)\,dt$. **The integral of a rate is a total change.** Check units: (litres per minute) times (minutes) is litres.

## 10. Common mistakes

1. **Forgetting $\frac1a$ in linear substitution**, or multiplying by $a$ instead of dividing. Always check by differentiating.
2. **Using the "linear substitution" rule on a non-linear inside**, such as $\int e^{x^2}dx = \frac{1}{2x}e^{x^2}$. Wrong.
3. **Integrating a product factor by factor.** $\int x\,e^x\,dx \neq \frac12x^2e^x$.
4. **$\int\frac1{x^2}dx = \ln(x^2)$.** No: $\frac{1}{x^2} = x^{-2}$, power rule, $-x^{-1}$. The logarithm is only for $x^{-1}$.
5. **Sign errors with sine and cosine.** $\int\sin x\,dx = -\cos x$, $\int\cos x\,dx = \sin x$. The minus sign sits with the *antiderivative of sine*.
6. **Reporting a signed integral as an area** when the graph crosses the axis.
7. **Bottom minus top** between graphs, giving a negative "area". If you get a negative area, you swapped them.
8. **Squaring the integral instead of the function** in volumes: $\pi\left(\int f\right)^2$ instead of $\pi\int f^2$; or $\pi\int(f-g)^2$ instead of $\pi\int(f^2 - g^2)$.
9. **Mixing $x$ and $y$** in a volume about the $y$-axis: the integrand and the limits must both be in $y$.
10. **Decimals in "bereken exact".** An answer like $8.38$ for $\frac83\pi$ scores zero for the final point.
11. **Using $\ln x$ where $\ln\lvert x\rvert$ is needed**, for example $\int_{-3}^{-1}\frac1x\,dx = \ln 1 - \ln 3 = -\ln 3$, not "undefined".
12. **Integrating across a point where the function is not defined**, such as $\int_{-1}^1\frac{1}{x^2}\,dx$. The fundamental theorem needs $f$ continuous on the whole interval; this integral is not $-2$ (it does not exist as a finite number).

## 11. Going further: integration by parts and improper integrals

> **Integration by parts (*partieel integreren*).** This is not in the Wiskunde B CE, but it is in many SE programmes, in Wiskunde D, and in every university course. It is the product rule read backwards. From $(uv)' = u'v + uv'$ we get $uv' = (uv)' - u'v$, and integrating,
>
> $$
> \int u(x)\,v'(x)\,dx = u(x)\,v(x) - \int u'(x)\,v(x)\,dx.
> $$
>
> Use it when the integrand is a product where one factor gets simpler when you differentiate it (a polynomial, or $\ln x$) and the other is easy to integrate. Example: for $\int x\,e^x\,dx$ take $u = x$, $v' = e^x$, so $v = e^x$, and
>
> $$
> \int x\,e^x\,dx = x\,e^x - \int e^x\,dx = (x - 1)e^x + c.
> $$
>
> For $\int\ln x\,dx$, write it as $\int\ln x\cdot 1\,dx$ with $u = \ln x$, $v' = 1$: you get $x\ln x - \int x\cdot\frac1x\,dx = x\ln x - x + c$. That is where the entry in the table in §1.2 comes from. Problem 24 has more.

> **Improper integrals.** What does $\int_1^\infty\frac{1}{x^2}\,dx$ mean? Define it as a limit: $\int_1^\infty f(x)\,dx = \lim_{p\to\infty}\int_1^p f(x)\,dx$, if that limit exists. Here $\int_1^p x^{-2}\,dx = 1 - \frac1p \to 1$. So an infinitely long region can have a finite area. But $\int_1^p\frac1x\,dx = \ln p \to \infty$, so the region under $\frac1x$ has infinite area, even though $\frac1x \to 0$. The difference is *how fast* the function goes to zero. Problem 25 (Gabriel's horn) has a solid with finite volume but infinite surface area.

> **Numerical integration.** How does the GR compute an integral? Not with Riemann sums of rectangles, which converge slowly. Better methods use trapezia (trapezium rule) or parabolas (Simpson's rule), and the error shrinks much faster as $n$ grows. Try it: compute the left Riemann sum, the trapezium sum and the Simpson sum for $\int_0^1 e^x\,dx$ with $n = 10$ and compare with the exact $e - 1$. You will meet this again in numerical analysis at university.
