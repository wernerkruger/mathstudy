# A3 Notes: First algebra

[← Module overview](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

Algebra is arithmetic with the numbers left blank. That sounds like a small step, but it is one of the biggest in all of mathematics: it lets you say something about *every* number at once, solve problems by writing down what you know and letting the rules do the work, and prove that patterns hold for ever. Everything later in this track, from calculus to complex numbers, is written in this language. So take your time and get it exactly right.

---

## 1. Letters and expressions

A **variable** (*variabele*) is a letter that stands for a number. An **expression** (*uitdrukking*) combines numbers and letters with operations, such as $3a + 5$ or $2x^2 - 7x$.

Why use letters?

- **To state general rules.** "For every number $a$: $a + 0 = a$." Without letters you'd have to list examples for ever.
- **To name an unknown.** "I think of a number; three times it plus 5 is 26." Call it $x$: $3x + 5 = 26$.
- **To describe relationships.** The cost $K$ of a taxi ride of $a$ km: $K = 3.50 + 2.20a$.

**Conventions.**

- $3a$ means $3\cdot a$; $ab$ means $a\cdot b$. The number is written first: $3a$, not $a3$.
- $1a$ is written $a$, and $-1a$ is written $-a$.
- $a^2 = a\cdot a$, and $3a^2$ means $3\cdot a^2$, **not** $(3a)^2$. The order of operations from A1 still holds: powers before multiplication.

### Substitution (*invullen*)

To evaluate an expression, replace each letter by its value, **in brackets** when the value is negative.

**Worked example.** Evaluate $2a^2 - 3ab$ for $a = -2$, $b = 3$.

$$
2\cdot(-2)^2 - 3\cdot(-2)\cdot 3 = 2\cdot 4 - (-18) = 8 + 18 = 26.
$$

> **Common mistake.** Writing $2\cdot -2^2$ without brackets leads to $2\cdot(-4) = -8$: wrong. Always put brackets around a substituted negative number.

---

## 2. Simplifying

**Simplifying** (*herleiden*) means rewriting an expression in a shorter form that is equal for every value of the letters.

### Like terms

**Like terms** (*gelijksoortige termen*) have exactly the same letter part: $3a$ and $-a$ are like terms; $a^2$ and $a$ are not; $ab$ and $ba$ are (since $ab = ba$).

You can add like terms, because of the distributive law: $3a + 5a = (3 + 5)a = 8a$. Three apples plus five apples is eight apples.

$$
3a + 5b - a + 2b = 2a + 7b, \qquad 3p^2 + 2p - p^2 + p = 2p^2 + 3p.
$$

> **Common mistake.** $2a + 7b$ is **not** $9ab$, and $2p^2 + 3p$ is **not** $5p^3$. Test with numbers: $a = b = 1$ gives $2 + 7 = 9$ for $2a + 7b$, but $9ab = 9$ too; try $a = 2, b = 1$: $2a + 7b = 11$ but $9ab = 18$. One counterexample kills a false rule. **When in doubt, substitute a number.**

### Multiplying terms

Multiplication can be done in any order, so you collect numbers and letters separately:

$$
4x \cdot 3x = 4\cdot 3\cdot x\cdot x = 12x^2, \qquad 2x\cdot(-5y) = -10xy, \qquad 3a^2\cdot 2a^3 = 6a^5.
$$

Notice the difference: $x + x = 2x$ but $x\cdot x = x^2$.

---

## 3. Expanding brackets

### One pair of brackets

The **distributive law** (*verdeelwet*) says

$$
a(b + c) = ab + ac.
$$

Why is it true? For whole numbers, $3\cdot(4 + 5)$ is three rows of $4 + 5$ dots, which is three rows of 4 plus three rows of 5. As areas: a rectangle of width $a$ and length $b + c$ is made of a rectangle $a$ by $b$ and one $a$ by $c$.

Expanding (*haakjes wegwerken*) means multiplying the factor outside by **every** term inside:

$$
3(2x - 5) = 6x - 15, \qquad x(x + 4) = x^2 + 4x, \qquad -2(4 - 3a) = -8 + 6a.
$$

**A minus sign before brackets** is a multiplication by $-1$, so it changes the sign of every term inside:

$$
5 - (2x - 3) = 5 - 2x + 3 = 8 - 2x.
$$

> **Common mistake.** $5 - (2x - 3) = 5 - 2x - 3$ is wrong: the $-3$ inside also changes sign. This is the single most common algebra mistake in Dutch schools. Check by substituting $x = 0$: $5 - (0 - 3) = 8$, and $8 - 0 = 8$ ✓, while $5 - 0 - 3 = 2$ ✗.

### Two pairs of brackets

$(a + b)(c + d)$: think of a rectangle with sides $a + b$ and $c + d$. It splits into four rectangles:

| | $c$ | $d$ |
|---|---|---|
| $a$ | $ac$ | $ad$ |
| $b$ | $bc$ | $bd$ |

So $(a + b)(c + d) = ac + ad + bc + bd$: **every term in the first bracket times every term in the second.** Using the distributive law twice gives the same: $(a + b)(c + d) = a(c + d) + b(c + d)$.

**Worked example.**

$$
(x + 3)(x + 5) = x^2 + 5x + 3x + 15 = x^2 + 8x + 15.
$$

Two special cases are worth knowing by heart (*merkwaardige producten*; you'll use them all the time in B2):

$$
(a + b)^2 = a^2 + 2ab + b^2, \qquad (a + b)(a - b) = a^2 - b^2.
$$

They make some mental arithmetic easy: $51^2 = (50 + 1)^2 = 2500 + 100 + 1 = 2601$, and $49\cdot 51 = (50 - 1)(50 + 1) = 2500 - 1 = 2499$.

---

## 4. Linear equations

An **equation** (*vergelijking*) says two expressions are equal, such as $5x - 3 = 2x + 12$. A **solution** (*oplossing*) is a value of $x$ that makes it true. To **solve** (*oplossen*) means to find **all** solutions.

A **linear** equation has only first powers of $x$ (no $x^2$, no $\tfrac1x$).

### The balance method (*balansmethode*)

Think of the equation as a balance. It stays balanced if you do **the same thing to both sides**:

- add or subtract the same number or expression;
- multiply or divide by the same number, **as long as it is not 0**.

Why "not 0"? Multiplying both sides by 0 turns any equation into $0 = 0$, which is true but tells you nothing. Dividing by 0 is meaningless.

Each step produces an equation with **exactly the same solutions** as before, because each step can be undone: subtracting 2 is undone by adding 2, multiplying by 3 by dividing by 3. That is the whole reason the method works.

**Worked example.** Solve $5x - 3 = 2x + 12$.

$$
\begin{aligned}
5x - 3 &= 2x + 12 &&\\
3x - 3 &= 12 && \text{subtract } 2x \text{ from both sides}\\
3x &= 15 && \text{add } 3\\
x &= 5 && \text{divide by } 3
\end{aligned}
$$

**Check** in the original: $5\cdot 5 - 3 = 22$ and $2\cdot 5 + 12 = 22$ ✓. Always check: it takes ten seconds and catches most mistakes.

**Strategy:** expand any brackets, collect the $x$-terms on one side (usually the side where there are more of them, to avoid negatives) and the numbers on the other side, then divide.

### Brackets and fractions

**Worked example.** Solve $3(x - 2) = x + 8$.

$$
3x - 6 = x + 8 \;\Rightarrow\; 2x = 14 \;\Rightarrow\; x = 7.
$$

Check: $3\cdot 5 = 15$ and $7 + 8 = 15$ ✓.

**With fractions:** multiply both sides by a common denominator first.

**Worked example.** Solve $\dfrac{2x + 1}{3} = \dfrac{x - 1}{2}$.

Multiply both sides by 6:

$$
2(2x + 1) = 3(x - 1) \;\Rightarrow\; 4x + 2 = 3x - 3 \;\Rightarrow\; x = -5.
$$

Check: $\tfrac{-9}{3} = -3$ and $\tfrac{-6}{2} = -3$ ✓.

> **Common mistake.** When multiplying by 6, multiply the **whole** side: $6\cdot\dfrac{2x + 1}{3} = 2(2x + 1) = 4x + 2$, not $4x + 1$. Brackets help.

### No solution, or every number

Usually a linear equation has exactly one solution. Not always:

- $2(x + 3) = 2x + 5$ becomes $2x + 6 = 2x + 5$, then $6 = 5$. That's never true, so there is **no solution**.
- $2(x + 3) = 2x + 6$ becomes $6 = 6$, true for **every** $x$. Such an equation is really an **identity**: the two sides are the same expression.

Think of balances: in the first case, both sides go up by 2 for every unit of $x$ but one side always weighs 1 more. They can never balance.

---

## 5. Formulas, tables and graphs

A **formula** (*formule*) gives one quantity in terms of another. For a taxi that charges €3.50 to start plus €2.20 per km:

$$
K = 3.50 + 2.20a \qquad (K \text{ in euros}, a \text{ in km}).
$$

**Table:**

| $a$ (km) | 0 | 1 | 2 | 5 | 10 |
|---|---|---|---|---|---|
| $K$ (€) | 3.50 | 5.70 | 7.90 | 14.50 | 25.50 |

**Graph:** plot the points $(a, K)$; they lie on a straight line.

### Linear relationships

A formula of the form

$$
y = ax + b
$$

is called **linear** (*lineair verband*). Its graph is a straight line, because $y$ increases by the same amount, $a$, every time $x$ increases by 1.

- $b$ is the **starting value** (*startgetal*): the value of $y$ when $x = 0$, where the line crosses the $y$-axis.
- $a$ is the **slope** (*hellingsgetal*, or *richtingscoëfficiënt*, rc): the change in $y$ per 1 step in $x$. If $x$ goes up by $\Delta x$, then $y$ goes up by $a\cdot\Delta x$.

So
$$
a = \frac{\text{change in } y}{\text{change in } x}.
$$

**Worked example.** A candle is 24 cm long after 2 hours of burning and 15 cm after 5 hours. Find a formula.

The slope is $\dfrac{15 - 24}{5 - 2} = \dfrac{-9}{3} = -3$ cm per hour. So $L = -3t + b$. Using $t = 2$, $L = 24$: $24 = -6 + b$, so $b = 30$. The formula is $L = 30 - 3t$: the candle started at 30 cm and burns 3 cm per hour. It is gone when $30 - 3t = 0$, after 10 hours.

### Two formulas: when are they equal?

**Worked example.** Gym A charges €8 per visit. Gym B charges a €30 monthly fee plus €3 per visit. When are they equally expensive?

$K_A = 8v$ and $K_B = 30 + 3v$. Equal when $8v = 30 + 3v$, so $5v = 30$, $v = 6$. For 6 visits a month both cost €48. For more visits B is cheaper.

You can see this three ways: in a **table** (the column where the values are equal), in a **graph** (the point of intersection, *snijpunt*, of the two lines), and with an **equation** (the exact answer). Exams often ask for the equation: it is exact and it always works.

### Rearranging formulas

A formula can be solved for another letter with the same balance method. The temperature conversion $F = 1.8C + 32$ becomes

$$
F - 32 = 1.8C \quad\Rightarrow\quad C = \frac{F - 32}{1.8}.
$$

---

## 6. Sequences and patterns

A **sequence** (*rij*) is a list of numbers: $5, 8, 11, 14, \dots$. Each number is a **term** (*term*).

### Arithmetic sequences

In $5, 8, 11, 14, \dots$ each term is 3 more than the one before. That's an **arithmetic sequence** (*rekenkundige rij*) with difference 3.

- **Recursive description** (*recursieve formule*): start at 5, add 3 each time.
- **Direct formula** (*directe formule*): term number $n$ is $u_n = 3n + 2$ (for $n = 1, 2, 3, \dots$).

Why $3n + 2$? To get from term 1 to term $n$ you add 3 exactly $n - 1$ times: $u_n = 5 + 3(n - 1) = 3n + 2$. The direct formula is much more useful: term 100 is $302$ at once, and to find which term is 182, solve $3n + 2 = 182$, $n = 60$.

An arithmetic sequence is a linear relationship between $n$ and $u_n$: the difference plays the role of the slope.

### Patterns with pictures

**Worked example.** A row of $n$ squares is made from matchsticks: 1 square needs 4 sticks, 2 squares need 7, 3 squares need 10. How many for $n$ squares?

Each new square adds 3 sticks (it shares one side with the previous square). So the number is $4 + 3(n - 1) = 3n + 1$. A neat way to *see* it: one first stick on the left, then each square adds a $\sqcap$-shape of 3 sticks: $1 + 3n$.

Finding a formula from a picture, and *explaining* it from the picture, is much more convincing than guessing from a table.

### Triangular numbers and Gauss

The **triangular numbers** $1, 3, 6, 10, 15, \dots$ count dots in triangles: $T_n = 1 + 2 + \dots + n$. Is there a direct formula?

The story goes that the young Carl Friedrich Gauss, aged about 9, was told to add the numbers 1 to 100, and answered in seconds. Write the sum twice, once backwards:

$$
\begin{array}{ccccccccc}
S &=& 1 &+& 2 &+& \dots &+& 100\\
S &=& 100 &+& 99 &+& \dots &+& 1
\end{array}
$$

Adding column by column, each column gives 101, and there are 100 columns: $2S = 100\cdot 101$, $S = 5050$. The same argument for any $n$:

$$
1 + 2 + \dots + n = \frac{n(n+1)}{2}.
$$

This is a **proof**: it works for every $n$, not just the ones we checked. In pictures: two copies of the triangle of dots fit together into an $n$ by $n + 1$ rectangle.

> **Going further.** The same idea gives the sum of **any** arithmetic sequence: (number of terms) × (first + last) ÷ 2. And there are beautiful picture proofs of other sums: problem 20 asks you to show $1 + 3 + 5 + \dots + (2n - 1) = n^2$. Later (stage B) you'll meet **proof by induction**, a general method for proving such formulas.

---

## 7. From words to equations

Many problems arrive in words. A reliable method:

1. **Choose the unknown** and write down clearly what the letter means, with units: "Let $s$ be the son's age now, in years."
2. **Express the other quantities** in terms of that letter.
3. **Find the fact that gives an equation**: what is equal to what?
4. **Solve.**
5. **Check in the story**, not just in the equation, and **answer the question asked**, in words.

**Worked example.** A father is three times as old as his son. In 12 years he will be twice as old. How old are they now?

1. Let $s$ be the son's age now.
2. The father is $3s$. In 12 years: son $s + 12$, father $3s + 12$.
3. Then the father is twice the son: $3s + 12 = 2(s + 12)$.
4. $3s + 12 = 2s + 24$, so $s = 12$.
5. Son 12, father 36. In 12 years: 24 and 48, and $48 = 2\cdot 24$ ✓.

**Answer:** the son is 12 and the father is 36.

**Worked example.** Two trains leave Amsterdam and Eindhoven, 120 km apart, at the same time, towards each other, at 70 km/h and 90 km/h. When do they meet?

Let $t$ be the time in hours. Together they cover the 120 km: $70t + 90t = 120$, so $160t = 120$, $t = 0.75$. They meet after 45 minutes, $52.5$ km from Amsterdam.

> **Tip.** If you're stuck, try a guess and *check* it: "Suppose the son is 10. Then the father is 30; in 12 years 22 and 42. Is 42 twice 22? No." Writing out the check with a number shows you exactly what equation to write with a letter.

---

## 8. Inequalities

An **inequality** (*ongelijkheid*) compares two expressions with $<$, $>$, $\le$ or $\ge$. Solving it means finding all values that make it true; usually there are infinitely many.

The balance method mostly still works:

- adding or subtracting the same thing on both sides keeps the inequality true;
- multiplying or dividing by a **positive** number keeps it true;
- multiplying or dividing by a **negative** number **reverses** it.

Why the reversal? $2 < 5$, but $-2 > -5$: multiplying by $-1$ reflects the number line in 0, which swaps the order. So $-2x < 6$ means $x > -3$.

**Worked example.** Solve $3x - 4 < 11$: $3x < 15$, $x < 5$.

**Worked example.** Solve $-2x + 1 \ge 7$: $-2x \ge 6$, then divide by $-2$ and flip: $x \le -3$.

A good habit, which avoids the flip: move the $x$-terms to the side where they are positive. $-2x + 1 \ge 7$ becomes $1 - 7 \ge 2x$, so $-6 \ge 2x$, $x \le -3$. Same answer, no flipping.

Show the solution on a **number line**: a filled dot for $\le$ or $\ge$ (the endpoint is included), an open dot for $<$ or $>$.

> **Going further: the method of the boundary.** Another way, used a lot in upper school: first solve the *equation* $-2x + 1 = 7$ (giving $x = -3$), then test one number on either side, e.g. $x = -4$: $9 \ge 7$ ✓. So the solution is $x \le -3$. This method still works for difficult inequalities where the balance rules are awkward, such as $x^2 < 4$.

**Worked example.** A gym charges either €6 per visit or €25 a month plus €2 per visit. For how many visits per month is the subscription cheaper?

$25 + 2v < 6v \Rightarrow 25 < 4v \Rightarrow v > 6.25$. Visits are whole numbers, so **7 or more** visits. In word problems, always check what kind of numbers make sense.
