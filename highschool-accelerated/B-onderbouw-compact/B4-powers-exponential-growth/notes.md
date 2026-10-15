# B4 Notes: Powers, roots and exponential growth

[← B4 overview](README.md)

This module starts with something you already know — $2^3 = 2 \cdot 2 \cdot 2$ — and asks a bold question: what could $2^0$, $2^{-3}$ or $2^{1/2}$ possibly mean? The answer is not "whatever the teacher says". It is forced on us by one simple wish: *the rules must keep working*. Once powers make sense for all these exponents, we use them to describe things that grow or shrink by the same factor again and again: bacteria, savings, medicine in your blood, the value of a car. We end with graphs of power functions and a first look at things that repeat, like tides and Ferris wheels.

---

## 1. Rules for powers

In $a^n$ the number $a$ is the base (*grondtal*) and $n$ is the exponent (*exponent*). For a whole number $n \geq 1$,

$$
a^n = \underbrace{a \cdot a \cdots a}_{n \text{ factors}}.
$$

Everything in this section comes from **counting factors**.

**Rule 1 (same base, multiply).** $a^p \cdot a^q = a^{p+q}$.
$a^3 \cdot a^2 = (a\cdot a\cdot a)(a \cdot a)$: three factors and then two more, five in total, so $a^5$.

**Rule 2 (same base, divide).** $\dfrac{a^p}{a^q} = a^{p-q}$ for $p > q$ and $a \neq 0$.
$\dfrac{a^5}{a^2} = \dfrac{a\cdot a\cdot a\cdot a\cdot a}{a \cdot a}$: two factors cancel, three remain, so $a^3$.

**Rule 3 (power of a power).** $(a^p)^q = a^{pq}$.
$(a^2)^3 = a^2 \cdot a^2 \cdot a^2$: three groups of two factors, six in total.

**Rule 4 (power of a product).** $(ab)^p = a^p b^p$.
$(ab)^3 = (ab)(ab)(ab) = (a a a)(b b b)$, because multiplication may be done in any order.

Together these are the *rekenregels voor machten*.

**Worked example 1.** Simplify $(2x^3)^4 \cdot 3x^2$.
By rule 4, $(2x^3)^4 = 2^4 (x^3)^4 = 16 x^{12}$ (rule 3). Then $16x^{12} \cdot 3x^2 = 48 x^{14}$ (rule 1).

**Worked example 2.** Write $8 \cdot 4^5$ as a single power of 2.
$8 = 2^3$ and $4^5 = (2^2)^5 = 2^{10}$, so $8 \cdot 4^5 = 2^{13}$.

**Common mistakes**

- $(-2)^2 = 4$ but $-2^2 = -4$. Powers are calculated before the minus sign, so $-2^2$ means $-(2^2)$. Only brackets make the minus part of the base.
- $2^3 \cdot 3^2 \neq 6^5$. The rules only combine powers with the **same base** (rules 1–3) or the **same exponent** (rule 4). Here $2^3 \cdot 3^2 = 8 \cdot 9 = 72$, while $6^5 = 7776$.
- $2^3 + 2^4 \neq 2^7$. There is no rule for sums. You can factor, though: $2^3 + 2^4 = 2^3(1 + 2) = 24$.
- $(a+b)^2 \neq a^2 + b^2$. Rule 4 is about products, not sums. You met $(a+b)^2 = a^2 + 2ab + b^2$ in B2.
- $(a^3)^2 = a^6$, not $a^9$; and $a^3 \cdot a^2 = a^5$, not $a^6$.

---

## 2. Zero and negative exponents

"$a^0$ = zero factors of $a$" means nothing. So we have a free choice — but only one choice keeps rule 2 alive. Rule 2 says $\dfrac{a^3}{a^3} = a^{3-3} = a^0$. But anything (non-zero) divided by itself is 1. So if the rule is to survive, we **must** define

$$
a^0 = 1 \quad (a \neq 0).
$$

In the same way, $\dfrac{a^2}{a^5}$ is $\dfrac{1}{a^3}$ after cancelling, and rule 2 would call it $a^{2-5} = a^{-3}$. So we **must** define

$$
a^{-n} = \frac{1}{a^n} \quad (a \neq 0).
$$

Mathematicians call this idea the *principle of permanence*: when you extend a definition to new cases, choose the extension that keeps the old rules true. It is the same reason that $(-1)\cdot(-1) = 1$.

You can also see it in a pattern. Each step to the left divides by 2:

| $n$ | 3 | 2 | 1 | 0 | $-1$ | $-2$ | $-3$ |
|---|---|---|---|---|---|---|---|
| $2^n$ | 8 | 4 | 2 | 1 | $\tfrac12$ | $\tfrac14$ | $\tfrac18$ |

Now check that all four rules really hold for every whole exponent, positive, zero or negative. For example $2^{-3} \cdot 2^5 = \tfrac18 \cdot 32 = 4 = 2^2 = 2^{-3+5}$. They do, and you will never again need the condition $p > q$ in rule 2.

**Worked example 3.** $\left(\tfrac23\right)^{-2} = \dfrac{1}{(2/3)^2} = \dfrac{1}{4/9} = \dfrac94$. A useful shortcut: $\left(\tfrac{a}{b}\right)^{-n} = \left(\tfrac{b}{a}\right)^{n}$.

**Common mistake.** $2^{-3}$ is **not** negative. It is $\tfrac18$. A negative exponent means "divide", not "make negative".

> **Going further: what is $0^0$?**
> Rule 2 cannot help, because $\tfrac{0^3}{0^3}$ is $\tfrac00$, which is undefined. Two patterns disagree: $x^0 = 1$ for every $x \neq 0$ suggests $0^0 = 1$, while $0^x = 0$ for every $x > 0$ suggests $0^0 = 0$. In algebra and counting, mathematicians usually agree that $0^0 = 1$ (for example, so that $(1+x)^n$ expands neatly). In calculus they say "$0^0$ is an indeterminate form", meaning that a limit of that shape can come out as anything. So: it is a convention, and it depends on the context.

---

## 3. Scientific notation

Very large and very small numbers are written in scientific notation (*wetenschappelijke notatie*): a number from 1 up to (not including) 10, times a power of 10.

$$
384\,400\,000 = 3.844 \cdot 10^{8}, \qquad 0.000\,0052 = 5.2 \cdot 10^{-6}.
$$

The exponent counts how many places the decimal point moves. Negative exponents (§2) are exactly what makes small numbers fit the same pattern.

**Worked example 4.** $(4 \cdot 10^{7}) \cdot (5 \cdot 10^{-3}) = 20 \cdot 10^{4} = 2.0 \cdot 10^{5}$. Multiply the front numbers, add the exponents (rule 1), then tidy up so the front number is between 1 and 10.

On a calculator, $3.2 \cdot 10^{-4}$ is entered as `3.2 E -4` or `3.2 ×10^x -4`.

---

## 4. Square roots

For $a \geq 0$, $\sqrt{a}$ is the number $\geq 0$ whose square is $a$. So $\sqrt{9} = 3$, not $\pm 3$. The equation $x^2 = 9$ has two solutions, $x = 3$ and $x = -3$, but the symbol $\sqrt9$ means only the non-negative one.

**Product rule.** For $a, b \geq 0$:

$$
\sqrt{a} \cdot \sqrt{b} = \sqrt{ab}.
$$

*Why:* both sides are $\geq 0$. Square the left side: $(\sqrt a \sqrt b)^2 = (\sqrt a)^2 (\sqrt b)^2 = ab$ (rule 4). So $\sqrt a \sqrt b$ is a non-negative number whose square is $ab$, and that is exactly the definition of $\sqrt{ab}$. In the same way $\dfrac{\sqrt a}{\sqrt b} = \sqrt{\dfrac ab}$ for $a \geq 0$, $b > 0$.

**Simplifying roots** (*wortels vereenvoudigen*). Look for the largest square factor:

$$
\sqrt{12} = \sqrt{4 \cdot 3} = \sqrt4 \cdot \sqrt3 = 2\sqrt3, \qquad \sqrt{72} = \sqrt{36 \cdot 2} = 6\sqrt2.
$$

Simplified roots can be added like "like terms": $\sqrt{18} + \sqrt{8} = 3\sqrt2 + 2\sqrt2 = 5\sqrt2$.

**There is no sum rule.** $\sqrt{a+b} \neq \sqrt a + \sqrt b$ in general. Test: $\sqrt{9 + 16} = \sqrt{25} = 5$, but $\sqrt9 + \sqrt{16} = 7$. *Why it fails:* $(\sqrt a + \sqrt b)^2 = a + 2\sqrt{ab} + b$, which is bigger than $a+b$ unless $a$ or $b$ is 0. Geometrically: walking along the two legs of a right triangle (3 and 4) is longer than walking along the hypotenuse (5).

**Rationalising the denominator** (*wortel uit de noemer halen*). Multiply top and bottom by the root, which does not change the value because you multiply by $\tfrac{\sqrt3}{\sqrt3} = 1$:

$$
\frac{6}{\sqrt3} = \frac{6\sqrt3}{\sqrt3 \cdot \sqrt3} = \frac{6\sqrt3}{3} = 2\sqrt3.
$$

Why bother? Before calculators, $\tfrac{1}{\sqrt2} = \tfrac{1}{1.41421\ldots}$ was a horrible long division, while $\tfrac{\sqrt2}{2} = 0.70710\ldots$ is easy. Today the main reason is that answers in the same form are easy to compare, and Dutch tests expect it.

**Worked example 5 (conjugate).** For $\dfrac{2}{\sqrt3 - 1}$, multiply by $\dfrac{\sqrt3+1}{\sqrt3+1}$. The denominator becomes $(\sqrt3)^2 - 1^2 = 2$ (the product $(a-b)(a+b) = a^2 - b^2$ from B2), so the fraction equals $\dfrac{2(\sqrt3+1)}{2} = \sqrt3 + 1$.

**Common mistakes**

- $\sqrt{x^2} = \lvert x \rvert$, not $x$: $\sqrt{(-5)^2} = \sqrt{25} = 5$.
- $2\sqrt3 + 3\sqrt2$ cannot be combined: the roots are different.
- $\sqrt{4 + x^2}$ does **not** simplify to $2 + x$.

---

## 5. $n$-th roots and fractional exponents

$\sqrt[3]{a}$ (the cube root) is the number whose cube is $a$: $\sqrt[3]{8} = 2$ and $\sqrt[3]{-8} = -2$. In general $\sqrt[n]{a}$ is the number whose $n$-th power is $a$. For even $n$ we need $a \geq 0$ and take the non-negative answer; for odd $n$ every real $a$ is allowed.

Now the permanence idea again. What should $a^{1/2}$ mean? Rule 3 demands

$$
\left(a^{1/2}\right)^2 = a^{\frac12 \cdot 2} = a^1 = a.
$$

So $a^{1/2}$ must be a number whose square is $a$: we define $a^{1/2} = \sqrt a$. Likewise $\left(a^{1/n}\right)^n = a$ forces

$$
a^{1/n} = \sqrt[n]{a}, \qquad a^{p/q} = \left(\sqrt[q]{a}\right)^p = \sqrt[q]{a^p} \quad (a > 0).
$$

**Worked example 6.**

- $27^{2/3} = \left(\sqrt[3]{27}\right)^2 = 3^2 = 9$. Take the root first; the numbers stay small.
- $16^{-3/4} = \dfrac{1}{16^{3/4}} = \dfrac{1}{(\sqrt[4]{16})^3} = \dfrac{1}{2^3} = \dfrac18$.
- $\sqrt{x} \cdot x^3 = x^{1/2} \cdot x^{3} = x^{7/2}$ for $x > 0$.

All four rules from §1 keep holding for fractional exponents as long as the base is **positive**. With a negative base things break: $(-8)^{1/3} = -2$ looks fine, but $(-8)^{2/6}$ would be $\sqrt[6]{(-8)^2} = \sqrt[6]{64} = 2$, even though $\tfrac26 = \tfrac13$. That is why the rules for fractional exponents are only used with $a > 0$.

**Simplifying cube roots:** $\sqrt[3]{54} = \sqrt[3]{27 \cdot 2} = 3\sqrt[3]{2}$. Simplifying works the same way, now with cube factors.

---

## 6. $\sqrt{2}$ is irrational

A rational number (*rationaal getal*) is a fraction $\tfrac pq$ of whole numbers with $q \neq 0$. The Greeks of Pythagoras's school believed every length was rational. The diagonal of a unit square, length $\sqrt2$, proved them wrong. Here is the proof. It is a **proof by contradiction**: assume the opposite, and show that leads to nonsense.

**Theorem.** $\sqrt2$ is not rational.

**Proof.** Suppose $\sqrt2 = \tfrac pq$ with $p, q$ positive whole numbers, and the fraction **in lowest terms** (every fraction can be simplified until $p$ and $q$ have no common factor). Square both sides: $2 = \tfrac{p^2}{q^2}$, so

$$
p^2 = 2q^2.
$$

So $p^2$ is even. Then $p$ itself is even, because the square of an odd number is odd: $(2k+1)^2 = 4k^2 + 4k + 1$. Write $p = 2k$. Then $4k^2 = 2q^2$, so $q^2 = 2k^2$, which is even, so $q$ is even too. Now $p$ and $q$ are both even, so the fraction was **not** in lowest terms. Contradiction. So $\sqrt2$ is not rational. $\blacksquare$

Consequence: the decimal expansion $1.41421356\ldots$ never ends and never repeats. In problem 24 you will prove the same for $\sqrt3$ and see exactly where the argument would break for $\sqrt4$.

---

## 7. Exponential growth and decay

**Repeated percentages multiply.** If an amount grows by 5%, the new amount is $100\% + 5\% = 105\%$ of the old one: you **multiply by 1.05**. After a second year you multiply by 1.05 again, because the 5% is now taken of the bigger amount. So after $t$ years you have multiplied by $1.05^t$. This is exponential growth (*exponentiële groei*):

$$
N = b \cdot g^t
$$

- $b$ = start value (*beginwaarde*), the value at $t = 0$;
- $g$ = growth factor (*groeifactor*) per time unit;
- $t$ = number of time units.

If $g > 1$ the quantity grows; if $0 < g < 1$ it decays (*exponentiële afname*).

| Change per period | Growth factor $g$ |
|---|---|
| increase of 7% | $1 + 0.07 = 1.07$ |
| decrease of 12% | $1 - 0.12 = 0.88$ |
| doubles | 2 |
| increase of 150% | 2.5 |
| halves | 0.5 |

And back: $g = 1.035$ means +3.5% per period; $g = 0.94$ means $-6\%$ per period.

**Worked example 7.** A savings account starts at €5000 with 4% interest per year. Then $N = 5000 \cdot 1.04^t$. After 3 years: $5000 \cdot 1.04^3 = 5624.32$, so €5624.32.

**Common mistakes**

- **Adding percentages.** "5% per year for 10 years is 50%" is wrong. Over 10 years the factor is $1.05^{10} \approx 1.6289$, an increase of about 62.9%. Interest is earned on interest.
- **Undoing a percentage.** A 20% decrease followed by a 20% increase gives $0.8 \cdot 1.2 = 0.96$: you lost 4%. The increase is taken of a smaller amount.
- **Wrong start value.** $b$ is the value at $t = 0$, not after the first period.

> **Going further: compound interest and the number $e$**
> Suppose a bank gives 100% interest per year on €1. Paid once a year you get $(1+1)^1 = 2$. Paid twice a year (50% each half year): $(1 + \tfrac12)^2 = 2.25$. Monthly: $(1 + \tfrac1{12})^{12} \approx 2.6130$. Daily: $(1 + \tfrac1{365})^{365} \approx 2.7146$. Every second? The values creep up but never pass a certain number, $e = 2.71828\ldots$, the limit of $\left(1 + \tfrac1n\right)^n$. This number $e$ is as important as $\pi$; you will meet it properly in stage C.

---

## 8. Changing the time unit

If the growth factor per day is $g_{\text{day}}$, then a week is 7 days of multiplying, so

$$
g_{\text{week}} = g_{\text{day}}^7.
$$

The other way: an hour is $\tfrac1{24}$ of a day, and 24 hours must multiply up to one day: $g_{\text{hour}}^{24} = g_{\text{day}}$. Fractional exponents (§5) give the answer:

$$
g_{\text{hour}} = g_{\text{day}}^{1/24}.
$$

**Worked example 8.** A plant grows 10% per day, so $g_{\text{day}} = 1.1$.

- $g_{\text{week}} = 1.1^7 \approx 1.9487$, about $+94.9\%$ per week (not 70%).
- $g_{\text{hour}} = 1.1^{1/24} \approx 1.003979$, about $+0.398\%$ per hour (not $10/24 \approx 0.417\%$).

Keep at least four decimals in a growth factor; rounding $1.003979$ to $1.00$ throws away all the growth.

**General rule.** If $g$ is the growth factor per time unit, then for a period of $k$ time units the growth factor is $g^k$, for every positive $k$, whole or fractional.

---

## 9. Doubling time and half-life

The doubling time (*verdubbelingstijd*) is the time it takes for an exponentially growing quantity to double. The half-life (*halveringstijd*) is the time it takes for a decaying quantity to halve.

**The doubling time does not depend on the start value or on when you start.** Starting at any moment $t_0$, the amount multiplies by $g^T$ in the next $T$ time units. It doubles exactly when $g^T = 2$, and that equation does not contain $b$ or $t_0$.

So to find a doubling time, solve $g^T = 2$; for a half-life, solve $g^T = \tfrac12$. Without logarithms we do this by **trial and improvement** with a table, or by reading the graph.

**Worked example 9.** Growth of 15% per year: solve $1.15^T = 2$.

| $T$ | 4 | 4.9 | 5.0 |
|---|---|---|---|
| $1.15^T$ | 1.7490 | 1.9834 | 2.0114 |

So $T$ lies between 4.9 and 5.0. Since 2.0114 is closer to 2 than 1.9834, $T \approx 5.0$ years. (In whole years: after 5 years the amount has more than doubled.)

**Using a known half-life.** If a medicine has a half-life of 6 hours, then after $t$ hours the fraction left is $\left(\tfrac12\right)^{t/6}$, because $t/6$ half-lives have passed. The growth factor per hour is $g = 0.5^{1/6} \approx 0.8909$.

In C2 you will learn logarithms (*logaritmen*), which solve $g^T = 2$ exactly in one step: $T = \log_g 2$.

> **Going further: the rule of 72**
> For an interest rate of $p\%$ per period, the doubling time is roughly $72 / p$ periods. At 6% per year: $72/6 = 12$ years, and indeed $1.06^{12} \approx 2.012$. At 8%: $72/8 = 9$ years, and $1.08^9 \approx 1.999$. Why 72? The exact answer needs logarithms (the true constant is near $100 \cdot 0.693 = 69.3$ for small $p$), but 72 has many divisors (2, 3, 4, 6, 8, 9, 12) and happens to work best for rates between about 4% and 12%. Problem 28 lets you test it.

---

## 10. Linear or exponential?

| Linear | Exponential |
|---|---|
| $y = a x + b$ | $N = b \cdot g^t$ |
| equal steps in $x$ give a constant **difference** in $y$ | equal steps in $t$ give a constant **ratio** in $N$ |
| graph: straight line | graph: curve, gets steeper and steeper (or flattens towards 0) |
| adds the same amount each step | multiplies by the same factor each step |

*Why a constant ratio means exponential:* if each step multiplies by the same number $g$, then after $t$ steps you have multiplied by $g$ exactly $t$ times, so $N = b \cdot g^t$. Conversely, for $N = b g^t$ the ratio of consecutive values is $\dfrac{b g^{t+1}}{b g^t} = g$, the same every time. So "constant ratio" and "exponential" are two descriptions of the same thing (for equally spaced $t$).

**Worked example 10.**

| $t$ | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| $N$ | 80 | 120 | 180 | 270 |

Differences: 40, 60, 90, not constant. Ratios: $\tfrac{120}{80} = 1.5$, $\tfrac{180}{120} = 1.5$, $\tfrac{270}{180} = 1.5$, constant. So $N = 80 \cdot 1.5^t$.

Real data are rarely exact: if the ratios are all close to the same number, the relation is *approximately* exponential and you use the average ratio.

**Exponential always wins.** However steep a linear function is, and however small $g > 1$ is, $b \cdot g^t$ eventually overtakes it. That is why exponential growth in nature (bacteria, viruses) never lasts long: something runs out.

---

## 11. Power functions

A power function (*machtsfunctie*) has the form $y = a \cdot x^n$. Do not confuse it with an exponential function: in $x^3$ the **variable is the base**; in $3^x$ the **variable is the exponent**.

**Even powers, $y = x^2$ and $y = x^4$.** Because $(-x)^2 = x^2$, the points $(x, y)$ and $(-x, y)$ are both on the graph: the graph is **symmetric in the $y$-axis** (*lijnsymmetrisch in de $y$-as*). Both are U-shaped with minimum $(0,0)$ and go through $(-1, 1)$ and $(1,1)$. $y = x^4$ is flatter near 0 (because $0.5^4 = 0.0625 < 0.25 = 0.5^2$) and steeper beyond $x = 1$.

**Odd powers, $y = x^3$.** Because $(-x)^3 = -x^3$, if $(x, y)$ is on the graph then so is $(-x, -y)$: the graph is **point-symmetric in the origin** (*puntsymmetrisch in de oorsprong*). It rises everywhere and goes through $(-1,-1)$, $(0,0)$, $(1,1)$.

**Negative powers, $y = x^{-1} = \tfrac1x$.** This graph is a hyperbola (*hyperbool*). It has two branches, in the first and third quadrants, and it is point-symmetric in the origin (odd power). Why does it have asymptotes (*asymptoten*)?

- As $x$ gets very large, $\tfrac1x$ gets very close to 0 but never reaches it: $\tfrac1{1000} = 0.001$, $\tfrac1{10^6} = 10^{-6}$. The graph approaches the line $y = 0$: a **horizontal asymptote**.
- As $x$ gets close to 0 (from the positive side), $\tfrac1x$ gets huge: $\tfrac1{0.001} = 1000$. And $x = 0$ itself is not allowed (you cannot divide by 0). The graph approaches the line $x = 0$: a **vertical asymptote**.

An asymptote is a line that the graph approaches more and more closely, without end. (The precise definition comes with limits in stage C.)

**$y = x^{-2} = \tfrac{1}{x^2}$** has the same two asymptotes, but both branches lie above the $x$-axis (the values are squares, so positive), and the graph is symmetric in the $y$-axis (even power).

**$y = x^{1/2} = \sqrt x$** exists only for $x \geq 0$. It starts at $(0,0)$ and rises ever more slowly. It is the top half of the parabola $y = x^2$ reflected in the line $y = x$, because squaring and taking roots undo each other.

| Function | Domain | Symmetry | Asymptotes |
|---|---|---|---|
| $y = x^2$, $y = x^4$ | all $x$ | $y$-axis | none |
| $y = x^3$ | all $x$ | origin | none |
| $y = x^{-1}$ | $x \neq 0$ | origin | $x = 0$ and $y = 0$ |
| $y = x^{-2}$ | $x \neq 0$ | $y$-axis | $x = 0$ and $y = 0$ |
| $y = \sqrt{x}$ | $x \geq 0$ | none | none |

The factor $a$ in $y = a x^n$ stretches the graph vertically; a negative $a$ reflects it in the $x$-axis.

**Inverse proportionality** (*omgekeerd evenredig*). Two quantities are inversely proportional when their **product** is constant: $x \cdot y = c$, so $y = \tfrac{c}{x}$. Doubling $x$ halves $y$. Example: 12 workers need 10 days, so the job is $12 \cdot 10 = 120$ worker-days; 15 workers need $120/15 = 8$ days. Compare **directly proportional** (*recht evenredig*): $y = c x$, the quotient $y/x$ is constant.

**Worked example 11.** The intensity of light from a lamp is $I = \dfrac{400}{d^2}$ ($d$ in metres). At $d = 2$: $I = 100$. Doubling the distance to $d = 4$ gives $I = 25$: a quarter. In general multiplying $d$ by $k$ divides $I$ by $k^2$, because $(kd)^2 = k^2 d^2$ (rule 4).

---

## 12. Periodic phenomena

A relation is periodic (*periodiek*) when the graph repeats itself after a fixed time. Examples: the height of the water at the coast (tides, *eb en vloed*), the height of a seat on a Ferris wheel (*reuzenrad*), the pressure in a heartbeat on an ECG, the temperature over a year.

For a periodic graph that goes up and down between a fixed maximum and minimum:

- **period** (*periode*): the length of one full repeat, for example from one top to the next;
- **equilibrium line** (*evenwichtsstand*): the horizontal line halfway between the maximum and the minimum, $\dfrac{\max + \min}{2}$;
- **amplitude** (*amplitude*): the distance from the equilibrium line to the maximum, $\dfrac{\max - \min}{2}$.

**Worked example 12 (Ferris wheel).** A Ferris wheel has diameter 50 m, its lowest point is 3 m above the ground, and one turn takes 6 minutes. The seat height goes between 3 m and 53 m. Equilibrium line: $\tfrac{53 + 3}{2} = 28$ m (the height of the axle). Amplitude: $\tfrac{53 - 3}{2} = 25$ m (the radius). Period: 6 minutes. If the seat is at the bottom at $t = 0$, it is at the top at $t = 3$, back at the bottom at $t = 6$, and after 20 minutes it is in the same place as after $20 - 3 \cdot 6 = 2$ minutes.

**Using the period.** To find the value at a late time, subtract whole periods. To find the next maximum, add one period to a known maximum.

**Heartbeat.** An ECG graph is periodic but not a smooth wave: a sharp spike, then small bumps. The period is the time between spikes; with a period of 0.8 s the heart beats $60 / 0.8 = 75$ times per minute. Period and frequency (repeats per time unit) are each other's reciprocal: an example of inverse proportionality from §11.

The smooth, wave-shaped periodic graphs of tides and Ferris wheels are all stretched and shifted versions of one graph, the sine graph (*sinusoïde*). You will study it, with formulas like $h = 28 - 25\cos\left(\tfrac{2\pi}{6} t\right)$, in C4 (trigonometric functions).

---

## Summary

- Rules: $a^p a^q = a^{p+q}$, $a^p/a^q = a^{p-q}$, $(a^p)^q = a^{pq}$, $(ab)^p = a^p b^p$.
- Forced by the rules: $a^0 = 1$, $a^{-n} = 1/a^n$, $a^{1/n} = \sqrt[n]{a}$, $a^{p/q} = (\sqrt[q]{a})^p$.
- $\sqrt a \sqrt b = \sqrt{ab}$ for $a,b \geq 0$; there is no rule for $\sqrt{a+b}$.
- $\sqrt2$ is irrational (proof by contradiction).
- $N = b \cdot g^t$; percentage $p$ per period gives $g = 1 \pm p/100$; percentages multiply, they do not add.
- Change time unit with powers: $g_{\text{week}} = g_{\text{day}}^7$, $g_{\text{hour}} = g_{\text{day}}^{1/24}$.
- Doubling time: solve $g^T = 2$; half-life: solve $g^T = \tfrac12$ (by table now, by logarithms in C2).
- Linear: constant difference. Exponential: constant ratio.
- Even powers: symmetric in the $y$-axis. Odd powers: symmetric in the origin. $x^{-1}$ and $x^{-2}$ have asymptotes $x = 0$ and $y = 0$.
- Periodic: period, amplitude $= \tfrac{\max - \min}{2}$, equilibrium line $= \tfrac{\max+\min}{2}$.
