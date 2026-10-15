# B1 Linear relations and equations: notes

[← Module overview](README.md)

This module is about the simplest kind of relation between two quantities: one where the output changes by the same amount every time the input goes up by one. That sounds modest, but linear relations are everywhere (prices, speeds, temperature scales), and the methods you learn here for equations, inequalities and systems are the tools you will use for the rest of secondary school. Throughout, the goal is not only to know *how* to do something but *why* it works. If you can explain the why, you will rarely forget the how.

---

## 1 Linear formulas, tables and graphs

### 1.1 Four views of one relation

Suppose a taxi charges a start fee of €3 and then €2 per kilometre. If $x$ is the number of kilometres and $y$ the price in euros, then

$$
y = 2x + 3.
$$

This is a **linear formula** (*lineaire formule*). You can show the same relation in four ways:

- **in words:** "€3 to start, plus €2 for every kilometre";
- **as a formula:** $y = 2x + 3$;
- **as a table** (*tabel*):

| $x$ (km) | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| $y$ (€) | 3 | 5 | 7 | 9 | 11 |

- **as a graph** (*grafiek*): plot the points $(0, 3), (1, 5), (2, 7), \ldots$ and you will see they lie on one straight line.

Being able to jump between these four views is one of the main skills of this module.

### 1.2 How to spot a linear relation in a table

In the table above, every time $x$ goes up by 1, $y$ goes up by 2. The differences are constant. That is the fingerprint of a linear relation: **equal steps in $x$ give equal steps in $y$**.

Be careful when the $x$-values in a table do not go up in equal steps. In the table below the $x$-steps are 2, 3 and 1:

| $x$ | 1 | 3 | 6 | 7 |
|---|---|---|---|---|
| $y$ | 4 | 10 | 19 | 22 |

Here you must compare $\dfrac{\text{change in } y}{\text{change in } x}$: $\frac{6}{2} = 3$, $\frac{9}{3} = 3$, $\frac{3}{1} = 3$. The ratio is constant, so the relation is linear (it is $y = 3x + 1$).

### 1.3 Variables and functions

In $y = 2x + 3$, you choose $x$ (the input, or **independent variable**) and the formula tells you $y$ (the output, or **dependent variable**). For every input there is exactly one output. A rule with that property is called a **function** (*functie*). The linear formulas are the first family of functions you study in detail; in Stage B you will meet several more *standaardverbanden* (standard relations), such as quadratic and exponential ones.

---

## 2 Slope and start value

### 2.1 What $a$ and $b$ mean

In $y = ax + b$:

- $b$ is the **start value** (*startgetal*): the value of $y$ when $x = 0$. On the graph, this is where the line crosses the $y$-axis, the point $(0, b)$.
- $a$ is the **slope** (*richtingscoëfficiënt*, usually shortened to *rc*): how much $y$ changes when $x$ goes up by 1.

If $a > 0$ the line goes up from left to right, if $a < 0$ it goes down, and if $a = 0$ it is horizontal ($y = b$).

**Worked example.** For $y = -\tfrac12 x + 4$: the start value is 4, so the line passes through $(0, 4)$. The slope is $-\tfrac12$: one step right means half a step down, or (easier to draw) two steps right means one step down. So $(2, 3)$ and $(4, 2)$ are also on the line.

### 2.2 Slope between any two points

Take two points $(x_1, y_1)$ and $(x_2, y_2)$ on the graph of $y = ax + b$. Then $y_1 = ax_1 + b$ and $y_2 = ax_2 + b$, so

$$
y_2 - y_1 = (ax_2 + b) - (ax_1 + b) = a(x_2 - x_1).
$$

Dividing by $x_2 - x_1$ (allowed, as long as $x_1 \neq x_2$):

$$
a = \frac{y_2 - y_1}{x_2 - x_1} = \frac{\Delta y}{\Delta x}.
$$

The symbol $\Delta$ (Greek capital delta) means "change in". So the slope is "change in $y$ divided by change in $x$", and the calculation shows that it does **not** matter which two points you pick: you always get $a$. That is exactly why a table of a linear formula has constant ratios.

### 2.3 Why the graph is a straight line

Plotting a few points and seeing a straight line is convincing, but it is not a proof. Here is one.

Take three points on the graph, $P$, $Q$ and $R$, with $x$-coordinates $x_P < x_Q < x_R$. From $P$, draw a horizontal step to the right and then a vertical step up (or down) to reach $Q$: this makes a right-angled **slope triangle** (*hellingsdriehoek*) with horizontal side $x_Q - x_P$ and vertical side $a(x_Q - x_P)$. Do the same from $P$ to $R$: horizontal side $x_R - x_P$ and vertical side $a(x_R - x_P)$.

Both triangles have a right angle and the same ratio "vertical side : horizontal side" $= a$. So the second triangle is an enlargement of the first, with factor $\frac{x_R - x_P}{x_Q - x_P}$, from the common vertex $P$: the triangles are **similar** (*gelijkvormig*). Similar triangles have equal angles, so the angle that $PQ$ makes with the horizontal equals the angle that $PR$ makes with the horizontal. Both segments start at $P$ and leave it in the same direction, so $Q$ lies on the segment $PR$.

Since this is true for *any* three points of the graph, all points lie on one straight line.

The argument also works backwards: if you take any non-vertical straight line, all its slope triangles are similar (they have the same angles, because the line has one fixed direction), so $\frac{\Delta y}{\Delta x}$ is the same constant $a$ everywhere. Calling the $y$-intercept $b$, every point $(x, y)$ on the line satisfies $\frac{y - b}{x - 0} = a$, so $y = ax + b$. Conclusion:

> **Every non-vertical straight line has a formula $y = ax + b$, and every formula $y = ax + b$ has a straight line as its graph.**

A vertical line, such as the line through $(3, 0)$ and $(3, 5)$, has no slope ($\Delta x = 0$ and you cannot divide by 0). Its equation is $x = 3$.

### 2.4 Common mistakes

- **Swapping the order in the slope formula.** $\frac{y_2 - y_1}{x_2 - x_1}$ is correct and so is $\frac{y_1 - y_2}{x_1 - x_2}$, but $\frac{y_2 - y_1}{x_1 - x_2}$ gives the wrong sign. Subtract in the same order on top and bottom.
- **Reading the start value off a table that does not include $x = 0$.** If the table starts at $x = 2$, the first $y$-value is not $b$. Work backwards with the slope.
- **Reading the slope off a graph with different scales on the axes.** Always count units, not squares.

---

## 3 Lines through two points; parallel and perpendicular lines

### 3.1 The line through two points

To find the formula of the line through $(x_1, y_1)$ and $(x_2, y_2)$:

1. Compute the slope $a = \dfrac{y_2 - y_1}{x_2 - x_1}$.
2. Substitute one of the points into $y = ax + b$ and solve for $b$.

**Worked example.** The line through $(-2, 7)$ and $(4, -2)$.

1. $a = \dfrac{-2 - 7}{4 - (-2)} = \dfrac{-9}{6} = -\dfrac32$.
2. $y = -\tfrac32 x + b$ through $(-2, 7)$: $7 = -\tfrac32 \cdot (-2) + b = 3 + b$, so $b = 4$.

Answer: $y = -\tfrac32 x + 4$. **Check** with the other point: $-\tfrac32 \cdot 4 + 4 = -6 + 4 = -2$. Correct.

There is also a one-step formula. Since every point $(x, y)$ on the line has the same slope to $(x_1, y_1)$ as the line itself,

$$
y - y_1 = a(x - x_1).
$$

This is the **point-slope form**. It is the same line, just written differently; expanding the brackets gives $y = ax + b$ again.

### 3.2 Parallel lines

Two non-vertical lines are **parallel** (*evenwijdig*) exactly when they have the same slope. Same slope means same slope triangles, so same direction.

**Worked example.** The line parallel to $y = 2x - 1$ through $(3, 8)$ has slope 2, so $8 = 2 \cdot 3 + b$, giving $b = 2$. Answer: $y = 2x + 2$.

If two lines have the same slope and also the same start value, they are not two parallel lines but the same line. Mathematicians sometimes call that "coinciding" (*samenvallend*).

### 3.3 Perpendicular lines

**Rule.** Two lines $y = a_1 x + b_1$ and $y = a_2 x + b_2$ (neither horizontal nor vertical) are **perpendicular** (*loodrecht*) exactly when

$$
a_1 \cdot a_2 = -1, \quad \text{that is, } a_2 = -\frac{1}{a_1}.
$$

For example, the lines with slopes $3$ and $-\tfrac13$ are perpendicular, and so are those with slopes $\tfrac23$ and $-\tfrac32$.

**Worked example.** The line perpendicular to $y = 3x - 2$ through $(6, 1)$ has slope $-\tfrac13$, so $1 = -\tfrac13 \cdot 6 + b = -2 + b$, giving $b = 3$. Answer: $y = -\tfrac13 x + 3$.

> **Going further: why perpendicular slopes multiply to $-1$**
>
> Moving a line up or down (changing $b$) does not change its direction, so we may assume both lines pass through the origin $O$. Take the line $\ell$ with slope $a$ (say $a > 0$; the other case is the same with signs changed). The point $P = (1, a)$ lies on $\ell$. Its slope triangle has vertices $O$, $(1, 0)$ and $P$, with a horizontal side of length 1 and a vertical side of length $a$.
>
> Now rotate the whole picture $90°$ anticlockwise about $O$. A rotation keeps lengths and angles, so the triangle stays congruent to the original. The horizontal side (1 to the right) becomes a vertical side (1 up), and the vertical side ($a$ up) becomes a horizontal side ($a$ to the left). So $P$ goes to $P' = (-a, 1)$, and the rotated line $\ell'$ is the line through $O$ and $P'$. It is perpendicular to $\ell$, because we rotated by exactly $90°$. Its slope is
>
> $$
> \frac{1 - 0}{-a - 0} = -\frac{1}{a}.
> $$
>
> So the line through $O$ perpendicular to $\ell$ has slope $-\frac1a$, and $a \cdot \left(-\frac1a\right) = -1$.
>
> For the converse: if a line $m$ has slope $a_2$ with $a \cdot a_2 = -1$, then $a_2 = -\frac1a$, which is the slope of $\ell'$. Equal slopes mean parallel lines, so $m$ is parallel to $\ell'$, and therefore also perpendicular to $\ell$. That proves the rule in both directions.
>
> Problem 24 asks you to prove the same rule a second way, using Pythagoras' theorem.

### 3.4 Common mistakes

- Taking $\frac{1}{a}$ or $-a$ instead of $-\frac{1}{a}$ for the perpendicular slope. Check: the product must be $-1$.
- Forgetting that horizontal and vertical lines are perpendicular too, even though the rule does not apply (a vertical line has no slope).
- Stopping after finding the slope. "Find the line" means: give the whole formula, including $b$.

---

## 4 Linear equations and the balance method

### 4.1 What "solving" means

An **equation** (*vergelijking*) such as $7x - 4 = 3x + 12$ is a question: *for which numbers $x$ is this statement true?* The set of all such numbers is the **solution** (*oplossing*). A **linear equation** is one in which $x$ appears only to the first power (no $x^2$, no $\frac1x$).

### 4.2 The balance method

Picture the two sides as the two pans of a balance (*balans*) that is level. It stays level if you do **the same thing to both sides**:

- add or subtract the same number or expression;
- multiply or divide by the same number, **as long as that number is not 0**.

This is the **balance method** (*balansmethode*).

**Worked example 1.**

$$
\begin{aligned}
7x - 4 &= 3x + 12 && \text{subtract } 3x \\
4x - 4 &= 12 && \text{add } 4 \\
4x &= 16 && \text{divide by } 4 \\
x &= 4
\end{aligned}
$$

**Check:** left $7 \cdot 4 - 4 = 24$, right $3 \cdot 4 + 12 = 24$. Always check by substituting into the *original* equation.

**Why it works.** Each step can be undone: subtracting $3x$ is undone by adding $3x$, dividing by 4 is undone by multiplying by 4. So a number satisfies the old equation if and only if it satisfies the new one. Equations with exactly the same solutions are called **equivalent** (*gelijkwaardig*). Each step of the balance method replaces an equation by an equivalent one, so the final line $x = 4$ has the same solutions as the first line. This is also why multiplying by 0 is forbidden: it turns any equation into $0 = 0$, and that step cannot be undone.

### 4.3 Brackets and fractions

First remove the brackets, then collect terms.

**Worked example 2.** $4(x - 3) - 2(3x + 1) = 6$

$$
\begin{aligned}
4x - 12 - 6x - 2 &= 6 \\
-2x - 14 &= 6 \\
-2x &= 20 \\
x &= -10
\end{aligned}
$$

Notice $-2(3x + 1) = -6x - 2$: the minus sign multiplies *both* terms.

With fractions, multiply both sides by a common denominator first, so the fractions disappear.

**Worked example 3.** $\dfrac{x}{2} + \dfrac{x - 1}{3} = 4$. Multiply both sides by 6:

$$
\begin{aligned}
3x + 2(x - 1) &= 24 \\
5x - 2 &= 24 \\
5x &= 26 \\
x &= \tfrac{26}{5} = 5\tfrac15
\end{aligned}
$$

### 4.4 No solution, or every number a solution

Sometimes $x$ disappears completely.

- $2(x + 3) = 2x + 5$ becomes $2x + 6 = 2x + 5$, then $6 = 5$. That is false whatever $x$ is, so there is **no solution**.
- $3(x - 2) + x = 4x - 6$ becomes $4x - 6 = 4x - 6$, then $0 = 0$. That is true for every $x$, so **every number is a solution**.

Graphically: the left side and the right side are each a linear formula. In the first case the two lines are parallel and never meet; in the second they are the same line. You will see this again with systems in §6.

### 4.5 Common mistakes

- Doing something to only one term instead of to the whole side: from $\frac{x}{2} + 3 = 5$, multiplying by 2 gives $x + 6 = 10$, not $x + 3 = 10$.
- Sign errors with brackets after a minus: $-(x - 4) = -x + 4$.
- Writing a chain of "=" signs that are not true, like $3x = 12 = x = 4$. Write each equation on its own line.

---

## 5 Linear inequalities

### 5.1 What changes

An **inequality** (*ongelijkheid*) uses $<$, $>$, $\le$ or $\ge$ instead of $=$. Its solution is usually a whole range of numbers, for example $x < 3$ (*kleiner dan*) or $x \ge -2$ (*groter dan of gelijk aan*).

You solve it almost exactly like an equation: you may add or subtract anything on both sides, and multiply or divide both sides by a **positive** number. There is just one new rule:

> **When you multiply or divide both sides by a negative number, the inequality sign flips.**

### 5.2 Why the sign flips

Start with a true statement: $2 < 5$. Multiply both sides by $-1$: you get $-2$ and $-5$. On the number line, $-2$ lies to the *right* of $-5$, so $-2 > -5$. Multiplying by $-1$ reflects the number line in 0, and a reflection reverses the order: what was on the left is now on the right.

A proof that works for any numbers: suppose $p < q$ and $c < 0$. Then $q - p > 0$ (positive) and $c$ is negative, so $c(q - p)$ is negative (positive times negative). That means $cq - cp < 0$, so $cq < cp$, which says $cp > cq$. The order is reversed.

Multiplying by a positive number $c$ keeps the order for the same reason: then $c(q - p)$ is positive, so $cp < cq$.

**Worked example.** Solve $4 - 3x > 10$.

$$
\begin{aligned}
4 - 3x &> 10 && \text{subtract } 4 \\
-3x &> 6 && \text{divide by } -3 \text{, flip the sign} \\
x &< -2
\end{aligned}
$$

**Check** with a number from the answer, say $x = -3$: $4 + 9 = 13 > 10$, true. And with one outside it, say $x = 0$: $4 > 10$, false. Good.

A way to avoid dividing by a negative number at all: move the $x$-terms to the side where they end up positive. From $4 - 3x > 10$, add $3x$ and subtract 10: $-6 > 3x$, so $-2 > x$, which is the same as $x < -2$.

### 5.3 Inequalities in contexts

In a context you often need a whole number. If you find $t > 66.67$ minutes, and only whole minutes count, the answer is "from 67 minutes". Always say clearly whether the boundary value itself is included, and why.

### 5.4 Common mistakes

- Forgetting to flip when dividing by a negative number. Always test one value from your answer in the original inequality.
- Flipping when the *answer* is negative but you did not multiply by a negative. From $2x < -6$ you get $x < -3$: no flip, because you divided by $+2$.
- Rounding the wrong way in a context. Think about which whole numbers really satisfy the inequality.

---

## 6 Systems of two linear equations

### 6.1 What a system is

A **system of equations** (*stelsel van vergelijkingen*) is two (or more) equations that must be true **at the same time**, for example

$$
\begin{cases}
2x + 3y = 12 \\
5x - 3y = 9
\end{cases}
$$

A solution is a *pair* $(x, y)$ that makes both equations true. Each equation on its own has infinitely many solutions (they form a line), so the solutions of the system are the points that lie on **both** lines: the intersection point (*snijpunt*).

### 6.2 Substitution

If one equation already says "$y = \ldots$" (or "$x = \ldots$"), put that expression into the other equation. This is **substitution** (*substitueren*).

**Worked example.** $y = 3x - 1$ and $2x + y = 14$.

Substitute: $2x + (3x - 1) = 14$, so $5x - 1 = 14$, so $x = 3$. Then $y = 3 \cdot 3 - 1 = 8$.

**Check** in both equations: $8 = 9 - 1$ and $6 + 8 = 14$. Solution: $(x, y) = (3, 8)$.

### 6.3 Elimination

In the system from §6.1, the $y$-terms are $+3y$ and $-3y$. Adding the two equations makes $y$ disappear:

$$
(2x + 3y) + (5x - 3y) = 12 + 9 \quad\Longrightarrow\quad 7x = 21 \quad\Longrightarrow\quad x = 3.
$$

Then $2 \cdot 3 + 3y = 12$, so $y = 2$. This is **elimination** (*combineren*, or *optellen en aftrekken*).

Usually you first have to multiply the equations to make the coefficients match.

**Worked example.**

$$
\begin{cases}
3x + 2y = 7 \\
4x + 5y = 14
\end{cases}
$$

Multiply the first equation by 5 and the second by 2, so both have $10y$:

$$
\begin{cases}
15x + 10y = 35 \\
8x + 10y = 28
\end{cases}
$$

Subtract: $7x = 7$, so $x = 1$. Then $3 + 2y = 7$, so $y = 2$. Check in the original second equation: $4 + 10 = 14$. Correct.

**Graphical method.** Write each equation as $y = \ldots$, draw both lines and read off the intersection. For $y = 2x - 1$ and $y = -x + 5$ the lines cross at $(2, 3)$. Check: $2 \cdot 2 - 1 = 3$ and $-2 + 5 = 3$. The graphical method shows you *what is going on*, but a drawing is not exact; when the answer is not a whole number, use algebra.

Algebraically, setting the two right-hand sides equal is just substitution: $2x - 1 = -x + 5$ gives $3x = 6$, so $x = 2$.

### 6.4 No solution or infinitely many solutions

Two straight lines in the plane can:

1. **cross** in exactly one point (different slopes): **one solution**;
2. be **parallel and different** (same slope, different start value): **no solution**;
3. be **the same line** (same slope, same start value): **infinitely many solutions**, namely every point of that line.

There is no fourth possibility. Why can two different lines not meet in exactly two points? Suppose two lines share two different points $P$ and $Q$. If $P$ and $Q$ have different $x$-coordinates, then both lines have slope $\frac{y_Q - y_P}{x_Q - x_P}$ (§2.2), and both pass through $P$, so they have the same $b$ too (§3.1): they are the same line. (If $P$ and $Q$ have the same $x$-coordinate, both lines are the vertical line through them.) So two different lines share at most one point.

**How it looks in algebra.**

- $2x - 3y = 6$ and $4x - 6y = 10$. Twice the first gives $4x - 6y = 12$. Subtracting the second gives $0 = 2$: impossible, so no solution. (Both lines have slope $\frac23$ but different start values.)
- $2x - 3y = 6$ and $4x - 6y = 12$. Twice the first minus the second gives $0 = 0$: always true. The second equation is just the first one doubled, so it is the same line, and every point on $y = \frac23 x - 2$ is a solution.

**Tell before you solve.** Write both equations as $y = ax + b$. Different slopes: exactly one solution. Same slope: compare start values.

### 6.5 Why elimination never loses or gains solutions

When you replace equations by combinations of them, how do you know the new system has *exactly* the same solutions as the old one? Call the equations $E_1$ and $E_2$.

**Claim.** For any number $k$, the system $\{E_1,\ E_2\}$ has the same solutions as the system $\{E_1,\ E_2 + k \cdot E_1\}$.

**Proof.** Write $E_1$ as $L_1 = R_1$ and $E_2$ as $L_2 = R_2$ (left and right sides).

- If $(x, y)$ satisfies both $E_1$ and $E_2$, then $L_1 = R_1$ and $L_2 = R_2$, so $L_2 + kL_1 = R_2 + kR_1$. So $(x, y)$ also satisfies the new system: **no solutions are lost**.
- If $(x, y)$ satisfies $E_1$ and $L_2 + kL_1 = R_2 + kR_1$, then subtracting $k$ times $L_1 = R_1$ gives back $L_2 = R_2$. So $(x, y)$ satisfies the old system: **no solutions are gained**.

Also, multiplying one equation by a number $m$ is safe **when $m \neq 0$**, because you can undo it by dividing by $m$. (Multiplying an equation by 0 turns it into $0 = 0$ and throws information away; see problem 27.)

So each step of elimination produces an **equivalent system**, and the final, easy system has exactly the same solutions as the original one.

> **Going further: three unknowns**
>
> With three unknowns $x, y, z$ you need (usually) three equations. The same idea works: use elimination to remove one unknown, which leaves a system of two equations in two unknowns. Geometrically each equation is now a flat plane in space, and the solution is where three planes meet. Problem 26 is an example.

### 6.6 Common mistakes

- Multiplying only the left side of an equation before eliminating: $2 \times (3x + 2y = 7)$ is $6x + 4y = 14$, not $6x + 4y = 7$.
- Subtracting when you should add (or the other way round), especially with negative coefficients. Write the subtraction out with brackets.
- Finding $x$ and forgetting $y$. A solution of a system is a pair.
- Not checking in **both** original equations.

---

## 7 Modelling with linear relations

### 7.1 The modelling cycle

To **model** (*modelleren*) a situation:

1. **Choose variables** and write down their units (for example, $m$ = number of minutes, $K$ = cost in euros).
2. **Set up formulas.** Look for a fixed part (start value) and a part per unit (slope).
3. **Translate the question** into an equation, an inequality or a system.
4. **Solve** it.
5. **Interpret**: answer in words, with units and sensible rounding, and check that the answer makes sense in the situation.

### 7.2 Comparing two plans

**Worked example.** Phone plan A costs €10 per month plus €0.20 per minute; plan B costs €25 per month plus €0.05 per minute. With $m$ minutes:

$$
K_A = 10 + 0.2m, \qquad K_B = 25 + 0.05m.
$$

When are they equal? $10 + 0.2m = 25 + 0.05m$ gives $0.15m = 15$, so $m = 100$. For fewer than 100 minutes plan A is cheaper (it has the lower start value); above 100 minutes plan B is cheaper (it has the smaller slope). On the graph: two lines crossing at $(100, 30)$.

### 7.3 Converting between scales

Temperature in degrees Fahrenheit ($F$) depends linearly on temperature in degrees Celsius ($C$). Water freezes at $0\,°\text{C} = 32\,°\text{F}$ and boils at $100\,°\text{C} = 212\,°\text{F}$. So the slope is $\frac{212 - 32}{100 - 0} = \frac{180}{100} = 1.8$, and the start value is 32:

$$
F = 1.8\,C + 32.
$$

This is the "line through two points" from §3.1, in disguise.

### 7.4 Break-even

**Worked example.** A school club makes and sells badges. Fixed costs (a badge machine) are €300; each badge costs €2.50 in materials and sells for €7. With $n$ badges sold,

$$
\text{revenue} = 7n, \qquad \text{costs} = 300 + 2.5n, \qquad \text{profit} = 7n - (300 + 2.5n) = 4.5n - 300.
$$

The **break-even point** is where profit is 0: $4.5n = 300$, so $n = 66.67$. Because badges are whole, the club must sell **at least 67 badges** to make no loss. (Check: 66 badges give $4.5 \cdot 66 - 300 = -3$ euros, a small loss; 67 give $+1.50$ euros.)

### 7.5 Common mistakes in modelling

- Mixing units, such as cents and euros, or minutes and hours, in one formula.
- Rounding in the wrong direction. "At least 66.67 badges" means 67, not 66.
- Giving a bare number without a sentence. The question was about the situation, so the answer should be too.
- Using a linear model outside the range where it makes sense (a taxi ride of $-3$ km, or a candle that is $-4$ cm long).

> **Going further: is it really linear?**
>
> Real data are rarely exactly linear. A taxi company may round to the next 10 cents; a phone plan may charge per started minute. A linear model is a simplification that is useful as long as you know where it stops being accurate. Asking "where does this model break?" is a habit that will serve you well in later modules on other kinds of relations.
