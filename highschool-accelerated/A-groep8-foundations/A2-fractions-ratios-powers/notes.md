# A2 Notes: Fractions, ratios, percentages and powers

[← Module overview](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

You can already calculate with fractions and percentages. This module asks you to understand them so well that you could have invented the rules yourself. That matters, because in algebra the numbers become letters, and then the only thing that helps you is knowing *why* the rules work.

---

## 1. Fractions

A fraction (*breuk*) $\dfrac{a}{b}$ has a **numerator** (*teller*) $a$ and a **denominator** (*noemer*) $b \neq 0$. There are two ways to think about it, and you need both:

- **Parts of a whole:** cut something into $b$ equal pieces and take $a$ of them.
- **A division:** $\dfrac{a}{b} = a \div b$. Three pizzas shared by four people: each gets $\tfrac34$ of a pizza.

### Equivalent fractions and simplifying

Cutting every piece into $k$ smaller pieces doesn't change the amount: $\dfrac{a}{b} = \dfrac{ka}{kb}$. Going the other way is **simplifying** (*vereenvoudigen*): divide top and bottom by a common divisor. Dividing by the gcd simplifies in one step:

$$
\frac{84}{120} = \frac{84 \div 12}{120\div 12} = \frac{7}{10}, \qquad\text{since } \gcd(84, 120) = 12.
$$

A fraction is in **lowest terms** when $\gcd(a, b) = 1$.

### Adding and subtracting

You can only add pieces of the same size. So first give the fractions a **common denominator** (*gelijknamig maken*). The smallest one is the lcm of the denominators:

$$
\frac34 + \frac56 = \frac{9}{12} + \frac{10}{12} = \frac{19}{12} = 1\tfrac{7}{12}.
$$

> **Common mistake.** $\dfrac{1}{2} + \dfrac{1}{3} \neq \dfrac{2}{5}$. Adding tops and bottoms gives something else entirely (see problem 26, the *mediant*). Check with a picture: half a pizza plus a third of a pizza is more than half, but $\tfrac25$ is less than half.

### Multiplying: the rectangle picture

What is $\tfrac23 \cdot \tfrac45$? It means "$\tfrac23$ of $\tfrac45$". Take a unit square. Cut it vertically into 5 strips and shade 4 of them: that's $\tfrac45$. Now cut it horizontally into 3 strips and take 2 of them. The doubly shaded part is $2 \times 4 = 8$ small rectangles, out of $3 \times 5 = 15$. So

$$
\frac23 \cdot \frac45 = \frac{2\cdot 4}{3\cdot 5} = \frac{8}{15}.
$$

**Tops times tops, bottoms times bottoms.** Simplify *before* multiplying when you can. In $\dfrac{5}{8}\cdot\dfrac{12}{25}$, divide the 5 and the 25 by 5, and the 12 and the 8 by 4:

$$
\frac{5}{8}\cdot\frac{12}{25} = \frac{1}{2}\cdot\frac{3}{5} = \frac{3}{10}.
$$

### Dividing: why "multiply by the reciprocal"?

Division asks "how many times does $b$ fit into $a$?" or, equivalently, "what do I multiply $b$ by to get $a$?"

- $3 \div \tfrac12$: how many halves fit in 3? Six. And $3 \cdot 2 = 6$.
- $\tfrac34 \div \tfrac25$: what times $\tfrac25$ gives $\tfrac34$? Try $\tfrac34\cdot\tfrac52$: then $\tfrac34 \cdot \tfrac52 \cdot \tfrac25 = \tfrac34 \cdot 1 = \tfrac34$. ✓

So $\dfrac{a}{b} \div \dfrac{c}{d} = \dfrac{a}{b}\cdot\dfrac{d}{c}$, because multiplying the answer back by $\dfrac{c}{d}$ gives $\dfrac{a}{b}\cdot\dfrac{d}{c}\cdot\dfrac{c}{d} = \dfrac{a}{b}$. The reciprocal (*omgekeerde*) of $\dfrac{c}{d}$ is $\dfrac{d}{c}$: the number you multiply by to get 1.

> **Mixed numbers** (*gemengde getallen*) like $2\tfrac13$ are fine for answers but awkward for calculating. Convert first: $2\tfrac13 = \tfrac73$.

---

## 2. Decimals

A decimal (*decimaal getal*; in Dutch you write a comma: 0,375) is a fraction with denominator a power of 10: $0.375 = \dfrac{375}{1000} = \dfrac38$.

### Fraction to decimal

Divide: $\tfrac38 = 3 \div 8 = 0.375$. Some fractions stop (**terminate**), like $\tfrac38$. Others go on for ever with a repeating block (**recurring**, *repeterend*):

$$
\frac{1}{3} = 0.333\ldots = 0.\overline{3}, \qquad \frac17 = 0.\overline{142857}, \qquad \frac{7}{12} = 0.58\overline{3}.
$$

**Which fractions terminate?** A terminating decimal is $\dfrac{m}{10^k}$, and $10^k = 2^k\cdot 5^k$. So if $\dfrac{a}{b}$ (in lowest terms) terminates, $b$ can only have prime factors 2 and 5. The converse is also true: if $b = 2^i 5^j$, multiply top and bottom to make the powers of 2 and 5 equal, e.g. $\dfrac{3}{40} = \dfrac{3}{2^3\cdot 5} = \dfrac{3\cdot 5^2}{2^3\cdot 5^3} = \dfrac{75}{1000} = 0.075$.

**Rule.** A fraction in lowest terms gives a terminating decimal exactly when its denominator has no prime factors other than 2 and 5. (You'll write this proof carefully in problem 20.)

**Why must the others repeat?** In the long division $1 \div 7$, each step leaves a remainder, and the remainder is one of $0, 1, \dots, 6$. If it's ever 0, the division stops. If not, there are only 6 possible remainders, so within 7 steps some remainder appears a second time, and from then on the division repeats exactly what it did before. So the decimal of $\tfrac{a}{n}$ repeats with a period of at most $n - 1$ digits. For $\tfrac17$ the period is exactly 6: all six non-zero remainders appear.

### Recurring decimal to fraction

**Worked example.** Write $x = 0.\overline{36} = 0.363636\ldots$ as a fraction.

The block has length 2, so multiply by $10^2 = 100$:

$$
\begin{aligned}
100x &= 36.363636\ldots \\
x &= \phantom{3}0.363636\ldots
\end{aligned}
$$

Subtract: the tails cancel, so $99x = 36$ and $x = \dfrac{36}{99} = \dfrac{4}{11}$.

So **every** recurring decimal is a fraction, and every fraction is a terminating or recurring decimal. Numbers whose decimals neither stop nor repeat, like $\sqrt2 = 1.41421356\ldots$ and $\pi = 3.14159265\ldots$, are **not** fractions: they are *irrational* (§5).

> **Going further: is $0.999\ldots = 1$?** Use the same trick: $x = 0.\overline{9}$, $10x = 9.\overline{9}$, so $9x = 9$ and $x = 1$. Or: $\tfrac13 = 0.\overline{3}$, and multiply by 3. Many people find this unsettling, but it is true: $0.\overline{9}$ and $1$ are two names for the same number. (Problem 19 asks you to convince a sceptic.)

---

## 3. Ratios and the ratio table

A **ratio** (*verhouding*) compares quantities: in a class with 12 boys and 18 girls the ratio of boys to girls is $12 : 18 = 2 : 3$. Like fractions, ratios can be simplified by dividing all parts by the same number.

**Sharing in a ratio.** Share €240 between Anna and Bram in the ratio $3 : 5$. There are $3 + 5 = 8$ parts, each worth $240 \div 8 = 30$. Anna gets $3\cdot 30 = 90$, Bram $5 \cdot 30 = 150$.

### The ratio table (*verhoudingstabel*)

When two quantities are **proportional** (*evenredig*), doubling one doubles the other, and halving one halves the other. A ratio table organises this:

| people | 6 | 3 | 9 |
|---|---|---|---|
| flour (g) | 250 | 125 | 375 |

Each column is obtained from earlier ones by multiplying, dividing or adding columns: $3$ is half of $6$, and $9 = 6 + 3$. The operations that are allowed are exactly those that keep the ratio between the rows the same. Behind every ratio table is a single number, here $\tfrac{250}{6} \approx 41.7$ g per person, and a formula: flour $= 41.\overline{6} \times$ people. That's your first **linear relationship**, which you'll meet properly in A3.

### Scale

A map scale (*schaal*) of $1 : 25\,000$ means 1 cm on the map is $25\,000$ cm $= 250$ m in reality.

**Worked example.** On a $1 : 25\,000$ map a field is a rectangle of $2$ cm by $1.5$ cm. Real size: $2 \cdot 250 = 500$ m by $1.5\cdot 250 = 375$ m, so the area is $500\cdot 375 = 187\,500$ m².

Notice: the map area is $3$ cm² and the real area is $3 \cdot 25\,000^2$ cm². **Lengths scale by $k$, areas by $k^2$** (and, in A4, volumes by $k^3$). Many exam mistakes come from forgetting this.

---

## 4. Percentages

*Per cent* means "per hundred": $15\% = \tfrac{15}{100} = 0.15$.

### The growth factor (*groeifactor*)

The most powerful idea in this section: **a percentage change is a multiplication.**

- Increase by 21% (Dutch BTW, *btw*): the new amount is $100\% + 21\% = 121\%$ of the old, so multiply by $1.21$.
- Decrease by 25%: multiply by $0.75$.

This number is the **growth factor**. It makes every percentage problem a multiplication or a division:

| Question | Calculation |
|---|---|
| A €50 item plus 21% BTW costs? | $50\cdot 1.21 = 60.50$ |
| Price incl. BTW is €60.50; excl. BTW? | $60.50 \div 1.21 = 50$ |
| Price went from 40 to 46: by what %? | $46 \div 40 = 1.15$, so $+15\%$ |

> **Common mistake.** To undo a 21% increase you do **not** subtract 21%. $60.50 - 21\%$ of $60.50$ is $47.80$, not $50$. The 21% was a percentage *of the old price*, so you must divide by $1.21$.

### Repeated percentage change

A coat costs €120. The price goes up 10%, then down 10%. Is it back to €120? No:

$$
120 \cdot 1.10 \cdot 0.90 = 120 \cdot 0.99 = 118.80.
$$

The 10% decrease is 10% of a *larger* amount, so it takes off more than the increase added. In growth factors: $1.1 \cdot 0.9 = 0.99$, a 1% loss overall.

**Repeated changes multiply.** A 25% discount followed by an extra 20% off: $0.75 \cdot 0.80 = 0.60$, a total discount of 40%, not 45%.

**Compound growth.** €1000 in a savings account at 4% interest per year. After one year: $1000\cdot 1.04$. After two years: $1000\cdot 1.04\cdot 1.04 = 1000 \cdot 1.04^2$. After $n$ years:

$$
1000 \cdot 1.04^n.
$$

After 10 years that's about €1480.24 (calculator), not $1000 + 10\cdot 40 = 1400$. The interest earns interest. This is **exponential growth** (*exponentiële groei*), one of the most important ideas in the whole track; you'll study it properly in B4 and C2.

> **Going further: percentage points.** If a party's vote goes from 20% to 25%, it rose by 5 **percentage points** (*procentpunten*), but by 25% (since $25 \div 20 = 1.25$). Newspapers mix these up all the time.

---

## 5. Powers and square roots

### Powers

$a^n$ (*macht*, with base (*grondtal*) $a$ and exponent (*exponent*) $n$) means $n$ factors $a$:

$$
2^5 = 2\cdot 2\cdot 2\cdot 2\cdot 2 = 32.
$$

The rules all come from counting factors:

| Rule | Why | Example |
|---|---|---|
| $a^m \cdot a^n = a^{m+n}$ | $m$ factors and then $n$ more | $2^3\cdot 2^4 = 2^7$ |
| $\dfrac{a^m}{a^n} = a^{m-n}$ (for $m > n$) | $n$ factors cancel | $\dfrac{5^6}{5^2} = 5^4$ |
| $(a^m)^n = a^{mn}$ | $n$ blocks of $m$ factors | $(3^2)^3 = 3^6$ |
| $(ab)^n = a^n b^n$ | rearrange the factors | $(2\cdot 5)^3 = 2^3\cdot 5^3$ |

> **Common mistake.** $(a + b)^2 \neq a^2 + b^2$. Try $a = b = 1$: $4 \neq 2$. Powers spread over multiplication, not over addition.

**Why is $a^0 = 1$?** "Zero factors" doesn't obviously mean anything. But if we want the second rule to keep working when $m = n$, then $\dfrac{a^3}{a^3} = a^{3-3} = a^0$, and the left side is clearly 1. So we *define* $a^0 = 1$ (for $a \neq 0$), because it is the only choice that keeps the rules true. Look at the pattern too:

$$
2^3 = 8,\quad 2^2 = 4,\quad 2^1 = 2,\quad 2^0 = ?,\quad 2^{-1} = ?
$$

Each step down divides by 2. So $2^0 = 1$, $2^{-1} = \tfrac12$, $2^{-2} = \tfrac14$, and in general $a^{-n} = \dfrac{1}{a^n}$. In particular $10^{-3} = \dfrac{1}{1000} = 0.001$, which we need for scientific notation.

**Signs.** $(-3)^3 = -27$ and $(-3)^4 = 81$: an odd power of a negative number is negative, an even power is positive. And remember from A1: $-3^4 = -81$.

### Square roots

The **square root** (*wortel*) $\sqrt{a}$ of a number $a \ge 0$ is the number $\ge 0$ whose square is $a$. So $\sqrt{144} = 12$ and $\sqrt{0.09} = 0.3$. Note $(-12)^2 = 144$ too, but $\sqrt{144}$ means the non-negative one.

**Multiplication rule.** For $a, b \ge 0$: $\sqrt{a}\cdot\sqrt{b} = \sqrt{ab}$.

*Proof.* $\sqrt{a}\sqrt{b}$ is $\ge 0$, and its square is $(\sqrt{a}\sqrt{b})^2 = (\sqrt{a})^2 (\sqrt{b})^2 = ab$. The only non-negative number with square $ab$ is $\sqrt{ab}$. $\square$

This lets you **simplify** roots by taking out square factors:

$$
\sqrt{50} = \sqrt{25\cdot 2} = 5\sqrt2, \qquad \sqrt{50} + \sqrt{18} = 5\sqrt2 + 3\sqrt2 = 8\sqrt2.
$$

> **Common mistake.** $\sqrt{a + b} \neq \sqrt{a} + \sqrt{b}$. Check: $\sqrt{9 + 16} = \sqrt{25} = 5$, but $\sqrt9 + \sqrt{16} = 7$.

**Estimating.** $6^2 = 36$ and $7^2 = 49$, so $6 < \sqrt{40} < 7$, and since 40 is closer to 36, $\sqrt{40}$ is a bit above 6.3.

### $\sqrt2$ is irrational

$\sqrt2$ is the length of the diagonal of a unit square (by Pythagoras, A4). Is it a fraction? $\tfrac75 = 1.4$ has square $1.96$; $\tfrac{141}{100}$ has square $1.9881$; we get closer and closer, but never exactly. The Pythagoreans discovered, around 500 BC, that **no** fraction works. This was a shock to them: they had believed everything was made of whole numbers.

**Theorem.** $\sqrt2$ is not a fraction.

*Proof (by contradiction).* Suppose $\sqrt2 = \dfrac{a}{b}$ with $a, b$ positive whole numbers. Simplify the fraction until it is in lowest terms, so $a$ and $b$ are not both even.

Squaring: $2 = \dfrac{a^2}{b^2}$, so $a^2 = 2b^2$. So $a^2$ is even. Then $a$ must be even (the square of an odd number is odd: A1 problem 25). Write $a = 2c$. Then $4c^2 = 2b^2$, so $b^2 = 2c^2$, so $b^2$ is even, so $b$ is even.

So $a$ and $b$ are both even, contradicting that the fraction was in lowest terms. So our supposition was false: $\sqrt2$ is not a fraction. $\square$

This is a **proof by contradiction** (*bewijs uit het ongerijmde*): assume the opposite, and show that it leads to something impossible.

---

## 6. Scientific notation

Very large and very small numbers are written in **scientific notation** (*wetenschappelijke notatie*):

$$
a \times 10^n, \qquad 1 \le a < 10, \quad n \text{ a whole number}.
$$

| Ordinary | Scientific |
|---|---|
| $4\,560\,000$ | $4.56 \times 10^6$ |
| $0.000\,32$ | $3.2 \times 10^{-4}$ |
| distance Earth–Sun: $150\,000\,000\,000$ m | $1.5\times 10^{11}$ m |
| mass of an electron | $9.11\times 10^{-31}$ kg |

**To convert:** move the decimal point until exactly one non-zero digit is in front of it; the number of places moved is the exponent (positive if the number was large, negative if it was small).

**Calculating** uses the power rules: multiply the front numbers and add the exponents, then tidy up.

$$
(3\times 10^5)\times(4\times 10^{-2}) = 12\times 10^{3} = 1.2\times 10^4.
$$

$$
\frac{6\times 10^{8}}{2\times 10^{-3}} = 3\times 10^{8-(-3)} = 3\times 10^{11}.
$$

**Worked example.** Light travels at about $3.0\times 10^8$ m/s. How long does sunlight take to reach Earth?

$$
\frac{1.5\times 10^{11}}{3.0\times 10^{8}} = 0.5\times 10^{3} = 500 \text{ s},
$$

about 8 minutes and 20 seconds. When you see the Sun, you see it as it was 8 minutes ago.

On a calculator, $1.5\times 10^{11}$ is often typed and shown as `1.5E11`.

> **Common mistake.** $12\times 10^3$ is a correct number but not in scientific notation, because $12 \ge 10$. Write $1.2\times 10^4$. Similarly $0.5\times 10^3 = 5\times 10^2$.

> **Going further: how big is $2^{100}$?** Since $2^{10} = 1024 \approx 10^3$, we get $2^{100} = (2^{10})^{10} \approx 10^{30}$. Problem 23 asks you to pin down exactly how many digits it has, without a calculator.
