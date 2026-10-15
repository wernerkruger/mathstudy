# B2 Algebra and quadratics: notes

[← Module overview](README.md)

In B1 you worked with linear formulas: straight lines, one solution per equation, nothing surprising. This module is the first time $x$ gets multiplied by itself. That one change gives curved graphs, equations with two solutions (or none), and some of the most useful tricks in all of school mathematics. Almost everything here comes from one rule, the distributive law, used forwards (expanding) and backwards (factorising).

---

## 1. Expanding brackets and the distributive law

The **distributive law** (*distributieve eigenschap*) says that for all numbers $a$, $b$, $c$:

$$
a(b+c) = ab + ac
$$

Think of a rectangle of height $a$ and width $b+c$. You can compute its area in one go, $a(b+c)$, or cut it into two rectangles, $ab$ and $ac$. Same rectangle, same area.

Using this rule to remove brackets is called **expanding brackets** (*haakjes wegwerken*). For two brackets, use the law twice: every term in the first bracket multiplies every term in the second.

$$
(a+b)(c+d) = ac + ad + bc + bd
$$

The area picture is a rectangle with sides $a+b$ and $c+d$, cut into four pieces.

**Worked example.** Expand $(x+3)(x-5)$.

$$
(x+3)(x-5) = x\cdot x + x\cdot(-5) + 3\cdot x + 3\cdot(-5) = x^2 - 5x + 3x - 15 = x^2 - 2x - 15
$$

Notice the pattern for $(x+p)(x+q)$: the middle coefficient is $p+q$ and the constant is $pq$.

$$
(x+p)(x+q) = x^2 + (p+q)x + pq
$$

Keep this in mind. It is the key to factorising in §3.

**Common mistakes**

- Forgetting a term: $(x+3)(x-5)$ has four products, not two. Check by counting: 2 terms times 2 terms gives 4 products before you combine like terms.
- Sign errors with a minus in front: $-(x-4) = -x + 4$, not $-x - 4$. The minus multiplies every term.
- Multiplying only the first term: $3(x+2) = 3x+6$, not $3x+2$.
- Distributing over a product: $2\cdot(3x\cdot 4) = 24x$, not $6x\cdot 8$. The distributive law only works over a **sum** inside the brackets.

---

## 2. Special products (*merkwaardige producten*)

Three products appear so often that they have their own name. Learn them so well that you can use them in both directions.

$$
(a+b)^2 = a^2 + 2ab + b^2
$$

$$
(a-b)^2 = a^2 - 2ab + b^2
$$

$$
(a+b)(a-b) = a^2 - b^2
$$

### Why they are true: area pictures

**$(a+b)^2$.** Draw a square with side $a+b$. Split each side into a part $a$ and a part $b$. The square falls apart into four pieces: a square $a^2$, a square $b^2$, and **two** rectangles $a\times b$. So the total is $a^2+2ab+b^2$. The two rectangles are the bit people forget.

**$(a-b)^2$** (with $a>b>0$). Start with a big square $a\times a$. You want the square with side $a-b$ in one corner. Cut off a strip $a\times b$ along the top and a strip $a\times b$ along the side. You have now removed the little $b\times b$ corner square twice, so you must add it back once:

$$
(a-b)^2 = a^2 - ab - ab + b^2 = a^2 - 2ab + b^2
$$

**$(a+b)(a-b)$.** Take a square $a\times a$ and cut out a small square $b\times b$ from one corner. The area left is $a^2-b^2$. Now cut the remaining L-shape into two rectangles and slide one of them around: they fit together into one rectangle of size $(a+b)\times(a-b)$. Same area, so $a^2-b^2=(a+b)(a-b)$.

Of course you can also just expand: $(a+b)(a-b) = a^2 - ab + ab - b^2 = a^2-b^2$. The middle terms cancel, and that cancellation is the whole trick.

### Mental arithmetic with special products

$$
41^2 = (40+1)^2 = 1600 + 80 + 1 = 1681
$$

$$
38\cdot 42 = (40-2)(40+2) = 1600 - 4 = 1596
$$

**Common mistakes**

- $(a+b)^2 = a^2+b^2$ is **false**. Test with $a=b=1$: the left side is $4$, the right side is $2$. Squaring is not "distributive over addition". The area picture shows exactly what is missing: the two rectangles $2ab$.
- $(x-3)^2 = x^2 - 9$ is false for the same reason; it should be $x^2-6x+9$.
- $(2x+5)^2 = 4x^2+20x+25$: the "$a$" here is $2x$, so $a^2 = 4x^2$ (not $2x^2$) and $2ab = 2\cdot 2x\cdot 5 = 20x$.

> **Going further: AM–GM from a square**
>
> A square of a real number is never negative, so $(a-b)^2 \geq 0$ for all $a$, $b$. Expanding gives $a^2 - 2ab + b^2 \geq 0$, so $a^2+b^2 \geq 2ab$. Now let $a=\sqrt{p}$ and $b=\sqrt{q}$ for positive numbers $p$, $q$:
>
> $$
> \frac{p+q}{2} \geq \sqrt{pq}
> $$
>
> The arithmetic mean is always at least the geometric mean (the AM–GM inequality), with equality exactly when $p=q$. This tiny proof is behind many "maximum" and "minimum" problems; see §11.

---

## 3. Factorising I: common factor and the product-sum method

**Factorising** (*ontbinden in factoren*) means writing a sum as a product. It is expanding in reverse. Why bother? Because products are much easier to reason about: if a product is zero, you know something about its factors (§5).

### Common factor (*buiten haakjes brengen*)

Look for a factor that appears in every term and put it in front of brackets:

$$
6x^2 + 15x = 3x(2x+5)
$$

$$
x(x-2) + 7(x-2) = (x-2)(x+7)
$$

In the second example the common factor is the whole bracket $(x-2)$. Always check by expanding again.

### Product-sum method for $x^2+bx+c$

From §1 we know $(x+p)(x+q) = x^2 + (p+q)x + pq$. So to factorise $x^2+bx+c$, look for two numbers $p$ and $q$ with

$$
p\cdot q = c \quad\text{and}\quad p+q = b
$$

**Worked example.** Factorise $x^2 - 6x + 8$. We need product $8$ and sum $-6$. Both numbers must be negative (positive product, negative sum). Try $-2$ and $-4$: product $8$, sum $-6$. So

$$
x^2 - 6x + 8 = (x-2)(x-4)
$$

**Strategy.** Start with the **product**, because there are only a few factor pairs of $c$. Then check which pair has the right sum. Signs:

| $c$ | $b$ | signs of $p$, $q$ |
|---|---|---|
| positive | positive | both positive |
| positive | negative | both negative |
| negative | either | one positive, one negative |

Not every quadratic can be factorised with whole numbers. For $x^2+x+1$ no integers work, and in §7 we will see why.

---

## 4. Factorising II: difference of squares and $ax^2+bx+c$

### Difference of squares

Read the third special product backwards:

$$
a^2 - b^2 = (a+b)(a-b)
$$

$$
x^2 - 49 = (x+7)(x-7), \qquad 9x^2 - 4y^2 = (3x+2y)(3x-2y)
$$

Always take out a common factor first: $5x^2 - 20 = 5(x^2-4) = 5(x+2)(x-2)$.

A **sum** of squares $x^2+4$ cannot be factorised this way (and not at all with real numbers: a factor $x-r$ would mean $r^2+4=0$, and §5 shows that is impossible).

### Factorising $ax^2+bx+c$ with $a\neq 1$: splitting the middle term

**Worked example.** Factorise $2x^2 + 5x - 3$.

1. Multiply $a\cdot c = 2\cdot(-3) = -6$.
2. Find two numbers with product $-6$ and sum $b=5$: these are $6$ and $-1$.
3. Split the middle term: $2x^2 + 6x - x - 3$.
4. Group in pairs and take out common factors: $2x(x+3) - 1(x+3) = (2x-1)(x+3)$.

**Why it works.** If $(px+q)(rx+s) = ax^2+bx+c$, then $a=pr$, $c=qs$ and $b = ps+qr$. The two numbers $ps$ and $qr$ add up to $b$ and multiply to $ps\cdot qr = pr\cdot qs = ac$. So the numbers you are looking for always exist when the factorisation exists, and splitting the middle term just rebuilds the four products of the expansion.

**Common mistakes**

- Stopping too early: $2x^3 - 8x = 2x(x^2-4)$ is not finished; it is $2x(x+2)(x-2)$. "Factorise" means *completely*.
- Writing $x^2-4x = x(x-4x)$. Check by expanding: you would get $x^2-4x^2$.

---

## 5. Quadratic equations: product-is-zero and $x^2 = c$

A **quadratic equation** (*kwadratische vergelijking*) is one that can be written as $ax^2+bx+c=0$ with $a\neq 0$.

### The product-is-zero rule (*product-is-nul*)

$$
A\cdot B = 0 \iff A = 0 \text{ or } B = 0
$$

**Why it holds.** Suppose $AB=0$ and $A\neq 0$. Then you may divide by $A$: $B = \frac{0}{A} = 0$. So at least one factor must be zero. Mathematicians say the real numbers have **no zero divisors**: two non-zero numbers never multiply to zero. (There are number systems where this fails. In "clock arithmetic" modulo 6, $2\cdot 3 = 6 \equiv 0$ while neither factor is $0$. In those systems, the method below would break.)

**Why it fails for $AB=6$.** If $AB=6$, then $A$ could be $1$ and $B$ could be $6$, or $A=2$ and $B=3$, or $A=12$ and $B=\frac12$, or infinitely many other pairs. Knowing the product is 6 tells you nothing about the individual factors. Zero is special: it is the only number that forces one of the factors.

So to solve $(x-1)(x-2) = 6$ you must **not** write "$x-1=6$ or $x-2=6$". Check: $x=7$ gives $6\cdot 5=30$. Instead, expand and move everything to one side:

$$
x^2 - 3x + 2 = 6 \implies x^2 - 3x - 4 = 0 \implies (x-4)(x+1) = 0 \implies x = 4 \text{ or } x = -1
$$

**Method.** (1) Bring everything to one side so the other side is $0$. (2) Factorise. (3) Set each factor to zero.

**Worked example.** Solve $x^2 = 5x$.

$$
x^2 - 5x = 0 \implies x(x-5) = 0 \implies x = 0 \text{ or } x = 5
$$

**Common mistake: dividing by $x$.** Many people "simplify" $x^2 = 5x$ by dividing both sides by $x$ and get $x=5$ only. The solution $x=0$ is lost, because dividing by $x$ is only allowed when $x\neq 0$. Rule: never divide both sides by an expression that could be zero; factorise instead.

### Equations of the form $x^2 = c$

- If $c>0$: $x = \sqrt{c}$ or $x = -\sqrt{c}$. Both work, because $(-\sqrt{c})^2 = c$ too.
- If $c=0$: only $x=0$.
- If $c<0$: no solutions, because a square of a real number is never negative.

You can see this with product-is-zero as well: $x^2 - c = (x-\sqrt c)(x+\sqrt c) = 0$.

The same idea works for $(x-3)^2 = 10$: $x-3 = \pm\sqrt{10}$, so $x = 3\pm\sqrt{10}$. Leave answers as exact roots (*exacte waarde*) unless a decimal is asked for.

---

## 6. Completing the square (*kwadraat afsplitsen*)

Not every quadratic factorises nicely. Try $x^2 + 10x + 21 = 0$ another way. The first two terms $x^2+10x$ look like the start of $(x+5)^2 = x^2+10x+25$. So

$$
x^2 + 10x + 21 = (x+5)^2 - 25 + 21 = (x+5)^2 - 4
$$

Now the equation becomes $(x+5)^2 = 4$, so $x+5 = \pm 2$, giving $x=-3$ or $x=-7$.

**The rule.** For $x^2 + bx$: take half of $b$, square it, and correct.

$$
x^2 + bx = \left(x + \frac{b}{2}\right)^2 - \frac{b^2}{4}
$$

The area picture: $x^2+bx$ is a square $x\times x$ plus a strip $x\times b$. Cut the strip in half and glue one half to the right and one half to the bottom of the square. You now have an almost-square with side $x+\frac b2$, missing only a little corner square $\frac b2\times\frac b2$. Adding that corner "completes the square", and that is where the name comes from.

**Worked example.** Solve $x^2 - 8x + 5 = 0$.

$$
(x-4)^2 - 16 + 5 = 0 \implies (x-4)^2 = 11 \implies x = 4 \pm \sqrt{11}
$$

**When $a\neq 1$**, first take $a$ out of the $x$-terms:

$$
2x^2 + 12x + 7 = 2(x^2 + 6x) + 7 = 2\big((x+3)^2 - 9\big) + 7 = 2(x+3)^2 - 11
$$

Completing the square is the most important technique of this module. It solves every quadratic equation, it gives the vertex of every parabola (§8), and it produces the abc-formula (§7).

---

## 7. The abc-formula and the discriminant

### Derivation

We complete the square for the general equation $ax^2 + bx + c = 0$ with $a \neq 0$.

Step 1. Divide by $a$ (allowed, because $a\neq 0$):

$$
x^2 + \frac{b}{a}x + \frac{c}{a} = 0
$$

Step 2. Complete the square. Half of $\frac ba$ is $\frac{b}{2a}$:

$$
\left(x + \frac{b}{2a}\right)^2 - \frac{b^2}{4a^2} + \frac{c}{a} = 0
$$

Step 3. Move the constants to the right and write them over the common denominator $4a^2$:

$$
\left(x + \frac{b}{2a}\right)^2 = \frac{b^2}{4a^2} - \frac{4ac}{4a^2} = \frac{b^2 - 4ac}{4a^2}
$$

Step 4. The left side is a square, so it is $\geq 0$. The denominator $4a^2$ is positive. So everything depends on the sign of $D = b^2 - 4ac$. If $D \geq 0$ we can take square roots, using $\sqrt{4a^2} = 2\lvert a\rvert$ (and the $\pm$ absorbs the sign of $a$):

$$
x + \frac{b}{2a} = \pm\frac{\sqrt{b^2-4ac}}{2a}
$$

Step 5. Subtract $\frac{b}{2a}$:

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

This is the **abc-formula** (*abc-formule*). In Dutch schools it is usually written in two steps:

$$
D = b^2 - 4ac, \qquad x = \frac{-b - \sqrt D}{2a} \;\text{ or }\; x = \frac{-b + \sqrt D}{2a}
$$

### The discriminant (*discriminant*) decides the number of solutions

Look again at Step 3: (a square) $= \frac{D}{4a^2}$.

| $D$ | Right side | Number of solutions |
|---|---|---|
| $D>0$ | positive | 2 (two different square roots, $\pm$) |
| $D=0$ | zero | 1, namely $x=-\frac{b}{2a}$ |
| $D<0$ | negative | 0, a square cannot be negative |

This is exactly the $x^2=c$ story from §5, now for every quadratic. "Discriminant" comes from the Latin for "to tell apart": it tells the three cases apart.

**Worked example.** Solve $3x^2 - 5x - 2 = 0$. Here $a=3$, $b=-5$, $c=-2$, so $D = 25 + 24 = 49$ and

$$
x = \frac{5 \pm 7}{6} \implies x = 2 \text{ or } x = -\tfrac13
$$

Since $D=49$ is a perfect square, the equation could also have been factorised: $(x-2)(3x+1)=0$. In general, $ax^2+bx+c$ with whole-number coefficients splits into two linear factors with whole-number coefficients exactly when $D$ is a perfect square.

**Common mistakes**

- With $b=-5$, $-b = +5$ and $b^2 = 25$ (not $-25$). Write the values of $a$, $b$, $c$ down first, with their signs.
- The fraction bar covers $-b \pm \sqrt D$, not only the square root.
- Use the abc-formula only after the equation is in the form $\ldots = 0$.
- If the equation factorises easily, factorising is faster and less error-prone. The abc-formula is the tool that always works, not the first tool to try.

> **Going further: sum and product of the roots (Vieta)**
>
> If $x_1$ and $x_2$ are the roots of $x^2 + bx + c = 0$, then $x^2 + bx + c = (x - x_1)(x - x_2) = x^2 - (x_1+x_2)x + x_1x_2$. Comparing coefficients:
>
> $$
> x_1 + x_2 = -b, \qquad x_1 x_2 = c
> $$
>
> For $ax^2+bx+c=0$, divide by $a$ first: $x_1+x_2 = -\frac ba$ and $x_1x_2 = \frac ca$. You can also see this from the abc-formula: adding the two roots cancels the square roots.
>
> Example: the roots of $x^2 - 7x + 10 = 0$ add up to $7$ and multiply to $10$ (they are $2$ and $5$). This is the product-sum method in disguise. The power of Vieta is that you can compute expressions like $x_1^2 + x_2^2 = (x_1+x_2)^2 - 2x_1x_2$ without ever finding the roots. These formulas are named after François Viète (1540–1603).

> **Going further: the golden ratio**
>
> Divide a line segment into a long part $x$ and a short part $1$ so that whole : long = long : short, that is $\frac{x+1}{x} = \frac{x}{1}$. Then $x^2 = x + 1$, or $x^2 - x - 1 = 0$. The abc-formula gives
>
> $$
> x = \frac{1 \pm \sqrt 5}{2}
> $$
>
> The positive root $\varphi = \frac{1+\sqrt5}{2} \approx 1.618$ is the golden ratio. Because $\varphi^2 = \varphi + 1$, you can compute $\varphi^3 = \varphi\cdot\varphi^2 = \varphi^2 + \varphi = 2\varphi + 1$ without a calculator. Vieta also says the other root is $1 - \varphi = -\frac{1}{\varphi}$.

---

## 8. Parabolas (*parabool*)

The graph of $y = ax^2 + bx + c$ with $a\neq 0$ is a **parabola**.

- If $a > 0$ it opens upwards, like a valley: a *dalparabool*. It has a lowest point.
- If $a < 0$ it opens downwards, like a mountain: a *bergparabool*. It has a highest point.
- The larger $\lvert a\rvert$, the narrower the parabola.

The lowest or highest point is the **vertex** (*top*). The vertical line through the vertex is the **axis of symmetry** (*symmetrieas*).

### Vertex by completing the square

**Worked example.** $y = x^2 - 6x + 5 = (x-3)^2 - 4$.

The term $(x-3)^2$ is never negative, and it is $0$ only when $x=3$. So $y \geq -4$ for every $x$, with $y=-4$ exactly at $x=3$. The vertex is $(3, -4)$ and the axis of symmetry is $x=3$.

**Why it is symmetric.** Go a distance $d$ to the right of $x=3$ and the same distance to the left: $(3+d-3)^2 = d^2$ and $(3-d-3)^2 = (-d)^2 = d^2$. Same $y$-value. Every parabola in the form $y = a(x-p)^2 + q$ is symmetric about $x=p$ and has vertex $(p,q)$. This is called the **vertex form** (*topformule*).

### Vertex with $x = -\frac{b}{2a}$

Completing the square in general gives

$$
y = a\left(x + \frac{b}{2a}\right)^2 + c - \frac{b^2}{4a}
$$

so the vertex is at $x_{\text{top}} = -\frac{b}{2a}$. There is a second way to see this, using symmetry. The points where $y=c$ satisfy $ax^2 + bx = 0$, so $x(ax+b)=0$, giving $x=0$ and $x=-\frac ba$. Two points at the same height must lie symmetrically around the axis, so the axis is exactly halfway between them: $x = -\frac{b}{2a}$.

**Worked example.** $y = 2x^2 - 8x + 3$. Then $x_{\text{top}} = -\frac{-8}{2\cdot 2} = 2$ and $y_{\text{top}} = 2\cdot 4 - 16 + 3 = -5$. Vertex $(2,-5)$, *dalparabool*.

### Intersections with the axes

- With the $y$-axis: put $x=0$, so the point is $(0, c)$.
- With the $x$-axis: solve $ax^2 + bx + c = 0$. The discriminant tells you whether the parabola crosses the $x$-axis twice ($D>0$), touches it at the vertex ($D=0$), or misses it entirely ($D<0$). This is the picture behind the table in §7.

Notice that when there are two $x$-intercepts, the vertex lies exactly halfway between them. You can see it in the abc-formula: the two roots are $-\frac{b}{2a} \pm \frac{\sqrt D}{2a}$, a fixed distance either side of $-\frac{b}{2a}$.

**Sketching.** A good sketch (*schets*) shows: up or down, vertex, $y$-intercept, $x$-intercepts if any, and the symmetry.

---

## 9. Intersections with lines and quadratic inequalities

### Parabola and line

To find where $y = x^2$ and $y = x + 2$ meet, set the right-hand sides equal:

$$
x^2 = x + 2 \implies x^2 - x - 2 = 0 \implies (x-2)(x+1) = 0
$$

So $x=2$ or $x=-1$, and the points are $(2,4)$ and $(-1,1)$. Always compute the $y$-values too: an intersection point has two coordinates.

The discriminant of the resulting equation tells you whether the line crosses the parabola twice, **touches** it once (*raakt*; the line is a tangent, *raaklijn*), or misses it.

### Quadratic inequalities (*kwadratische ongelijkheden*)

**Worked example.** Solve $x^2 - 4x - 5 \leq 0$.

1. Solve the equation $x^2 - 4x - 5 = 0$: $(x-5)(x+1)=0$, so $x=-1$ or $x=5$.
2. Sketch: a *dalparabool* through $(-1,0)$ and $(5,0)$.
3. Read off: the graph is on or below the $x$-axis between the roots.

$$
-1 \leq x \leq 5
$$

For $x^2-4x-5 > 0$ you would read off the outside parts: $x<-1$ or $x>5$. Never try to "solve" an inequality like an equation by just writing the roots; the sketch tells you which side you need. Also be careful: multiplying an inequality by a negative number flips the sign, so it is easiest to keep everything as "expression compared with $0$" and use the sketch.

If $D<0$ and the parabola is a *dalparabool*, the expression is positive for every $x$: for example $x^2+2x+5 > 0$ always holds, and $x^2+2x+5<0$ has no solutions.

---

## 10. Rational equations (*gebroken vergelijkingen*)

A **rational equation** has the unknown in a denominator, such as $\frac{x+2}{x-1} = 4$.

### Rule 1: $\frac AB = C$ means $A = BC$ (with $B\neq0$)

$$
\frac{x+2}{x-1} = 4 \implies x+2 = 4(x-1) \implies x = 2
$$

Check: $x-1 = 1 \neq 0$, so $x=2$ is a solution.

### Rule 2: cross-multiplying (*kruislings vermenigvuldigen*)

$\frac AB = \frac CD$ means $AD = BC$, provided $B\neq 0$ and $D\neq0$.

$$
\frac{3}{x+1} = \frac{x}{2} \implies x(x+1) = 6 \implies x^2 + x - 6 = 0 \implies x = 2 \text{ or } x = -3
$$

Neither makes a denominator zero, so both are solutions.

### Rule 3: $\frac AB = \frac AC$ means $A = 0$ or $B = C$ (with $B\neq0$, $C\neq0$)

$$
\frac{x-3}{x+1} = \frac{x-3}{2x} \implies x - 3 = 0 \text{ or } x + 1 = 2x \implies x = 3 \text{ or } x = 1
$$

Both pass the denominator check. Do not cancel the $A$'s: if you do, you lose $x=3$, just like dividing by $x$ lost $x=0$ in §5.

### Why extraneous roots appear

Solve $\frac{x^2}{x+2} = \frac{4}{x+2}$. Multiplying by $x+2$ gives $x^2 = 4$, so $x = 2$ or $x=-2$. But $x=-2$ makes the denominator zero, and the original equation is then meaningless. So the only solution is $x = 2$.

What went wrong? Multiplying both sides by $x+2$ is a safe step only when $x+2\neq 0$. When $x+2=0$, multiplying turns *any* two sides into $0 = 0$, so it can create a "solution" that was never there. Such a fake solution is called an **extraneous root**. The steps $A=B \Rightarrow A\cdot E = B\cdot E$ always go forwards, but they only go **backwards** when $E\neq 0$. That is why the check at the end is not optional: it is part of the solution.

**Common mistakes**

- Forgetting the check, or doing the check only on the final simplified equation (where nothing is wrong).
- Cross-multiplying when one side is a sum of fractions, such as $\frac1x + \frac1{x+1} = 1$. First combine the left side into one fraction, or multiply every term by $x(x+1)$.

---

## 11. Optimisation problems

Many real problems ask for the largest or smallest value of something. If the quantity is a quadratic formula, the answer sits at the vertex.

**Worked example.** You have $40$ m of fence for a rectangular pen. What is the largest possible area?

1. Choose a variable. Let the width be $x$ m. The two widths and two lengths use $40$ m, so the length is $20 - x$ m, with $0 < x < 20$.
2. Write the formula: $A = x(20 - x) = -x^2 + 20x$. This is a *bergparabool*, so it has a maximum.
3. Find the vertex: $x_{\text{top}} = -\frac{20}{2\cdot(-1)} = 10$, and $A = 10\cdot 10 = 100$.

The largest area is $100\ \text{m}^2$, for a $10\times10$ square.

You could also complete the square: $A = 100 - (x-10)^2$. Since $(x-10)^2 \geq 0$, the area is at most $100$, with equality only when $x=10$. That argument is a proof, not just a calculation, and it is the AM–GM idea from §2: for fixed sum $x + (20-x) = 20$, the product is largest when the two numbers are equal.

**General recipe.**

1. Name the variable and write down its allowed range (*domein*).
2. Express the quantity to optimise as a formula in that one variable.
3. Find the vertex (by $-\frac{b}{2a}$ or completing the square).
4. Check that the vertex lies in the allowed range, and answer the question in words with units.

**Common mistakes**

- Giving the $x$-value of the vertex when the question asks for the maximum area, or the other way round. Read the question again at the end.
- Using two variables and never connecting them. The perimeter condition is what turns two unknowns into one.

---

## Summary

| Idea | Key fact |
|---|---|
| Distributive law | $a(b+c) = ab+ac$ |
| Special products | $(a\pm b)^2 = a^2\pm 2ab + b^2$, $(a+b)(a-b) = a^2-b^2$ |
| Product-sum | $x^2+bx+c = (x+p)(x+q)$ with $pq=c$, $p+q=b$ |
| Product-is-zero | $AB=0 \iff A=0$ or $B=0$ |
| Completing the square | $x^2+bx = (x+\frac b2)^2 - \frac{b^2}{4}$ |
| abc-formula | $x = \frac{-b\pm\sqrt{D}}{2a}$ with $D = b^2-4ac$ |
| Vertex | $x_{\text{top}} = -\frac{b}{2a}$ |
| Rational equations | Always check that no denominator is $0$ |
