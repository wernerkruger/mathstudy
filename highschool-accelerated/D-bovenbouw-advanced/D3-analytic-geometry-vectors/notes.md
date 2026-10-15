# D3 Analytic geometry, vectors and motion: notes

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

Analytic geometry (*analytische meetkunde*, in the exam programme *meetkunde met coördinaten*) turns geometry into algebra. A point becomes a pair of numbers, a line becomes an equation, and "these two lines are perpendicular" becomes "this number is zero". The payoff is that hard geometric questions become calculations. The price is that you must always ask what each calculation *means* in the picture. Draw a sketch for every problem, even when the algebra seems to need none.

The second half of the module adds time. A point that moves is described by two functions $x(t)$ and $y(t)$, and calculus from [D1](../D1-differential-calculus-II/) tells you its velocity and acceleration. These motion problems (*bewegingsvergelijkingen*) are a regular part of the Wiskunde B central exam (CE, *centraal examen*), and parametric curves (*parameterkrommen*) are named explicitly in the new wiskunde techniek programme.

---

## 1. Lines in the plane

### 1.1 Three ways to write a line

You already know the form $y = mx + b$ from [C1](../../C-bovenbouw-core/C1-functions-graphs/). The number $m$ is the direction coefficient (*richtingscoëfficiënt*, often abbreviated rc): when $x$ increases by 1, $y$ increases by $m$. The number $b$ is where the line crosses the $y$-axis.

This form has a blind spot: vertical lines such as $x = 3$ cannot be written as $y = mx + b$. The general form fixes this:

$$
ax + by = c, \qquad (a, b) \neq (0, 0).
$$

Every line in the plane can be written this way, and every such equation describes a line. If $b \neq 0$ you can solve for $y$ and get $m = -a/b$. If $b = 0$ the line is vertical.

The third form is the vector form (*vectorvoorstelling*, often abbreviated vv):

$$
\begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}p_1\\p_2\end{pmatrix} + t\begin{pmatrix}r_1\\r_2\end{pmatrix}, \qquad t \in \mathbb{R}.
$$

Here $(p_1, p_2)$ is a support point (*steunpunt*) on the line and $\vec r = \begin{pmatrix}r_1\\r_2\end{pmatrix} \neq \vec 0$ is a direction vector (*richtingsvector*). As $t$ runs through all real numbers, the point runs along the whole line. You can read $t$ as time: at $t = 0$ you are at the support point, and every unit of time you take one step $\vec r$.

### 1.2 Direction vectors and normal vectors

A line with direction coefficient $m$ has direction vector $\begin{pmatrix}1\\m\end{pmatrix}$, because one step right means $m$ steps up. Any nonzero multiple also works, so you are free to clear fractions: for $m = \tfrac{2}{3}$ use $\begin{pmatrix}3\\2\end{pmatrix}$.

A normal vector (*normaalvector*) is a nonzero vector perpendicular to the line. The key fact is:

> **The line $ax + by = c$ has normal vector $\vec n = \begin{pmatrix}a\\b\end{pmatrix}$.**

**Why.** Take two points $P = (x_1, y_1)$ and $Q = (x_2, y_2)$ on the line. Subtracting $ax_1 + by_1 = c$ from $ax_2 + by_2 = c$ gives

$$
a(x_2 - x_1) + b(y_2 - y_1) = 0.
$$

The left side is the dot product (section 3) of $\begin{pmatrix}a\\b\end{pmatrix}$ with $\vec{PQ}$. A dot product of zero means "perpendicular", so $\begin{pmatrix}a\\b\end{pmatrix}$ is perpendicular to every segment lying on the line.

In two dimensions, if $\vec r = \begin{pmatrix}r_1\\r_2\end{pmatrix}$ is a direction vector, then $\begin{pmatrix}r_2\\-r_1\end{pmatrix}$ ("swap and change one sign") is a normal vector, and the other way round.

### 1.3 Converting between forms

**Worked example.** Line $l$ passes through $A(2, -1)$ and $B(5, 5)$.

- Direction vector: $\vec{AB} = \begin{pmatrix}3\\6\end{pmatrix}$, or more simply $\begin{pmatrix}1\\2\end{pmatrix}$. So the rc is $2$.
- Vector form: $\begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}2\\-1\end{pmatrix} + t\begin{pmatrix}1\\2\end{pmatrix}$.
- Normal vector: $\begin{pmatrix}2\\-1\end{pmatrix}$, so the equation is $2x - y = c$. Substituting $A$: $c = 4 + 1 = 5$. So $l: 2x - y = 5$, or $y = 2x - 5$.

From vector form to equation you can also eliminate $t$: from $x = 2 + t$ you get $t = x - 2$, and then $y = -1 + 2(x - 2) = 2x - 5$.

**Common mistake.** Writing the normal vector of $y = 2x - 5$ as $\begin{pmatrix}2\\-5\end{pmatrix}$. First bring the equation into the form $ax + by = c$: $2x - y = 5$, so $\vec n = \begin{pmatrix}2\\-1\end{pmatrix}$.

---

## 2. Vectors

A vector (*vector*) is an arrow with a length and a direction, but no fixed starting point. In coordinates, $\vec v = \begin{pmatrix}v_1\\v_2\end{pmatrix}$ means "move $v_1$ to the right and $v_2$ up". The vector from $A$ to $B$ is $\vec{AB} = B - A$ (coordinates of the end point minus those of the start point). The position vector (*plaatsvector*) of a point $P$ is $\vec{OP}$, from the origin $O$.

**Operations.**

- Addition: $\vec u + \vec v = \begin{pmatrix}u_1 + v_1\\u_2 + v_2\end{pmatrix}$. Geometrically: put the arrows head to tail. This is why $\vec{AB} + \vec{BC} = \vec{AC}$.
- Scalar multiplication (*vermenigvuldigen met een getal*): $\lambda\vec v = \begin{pmatrix}\lambda v_1\\\lambda v_2\end{pmatrix}$ stretches the arrow by factor $\lvert\lambda\rvert$ and reverses it if $\lambda < 0$.
- Length (*lengte*): by Pythagoras, $\lVert\vec v\rVert = \sqrt{v_1^2 + v_2^2}$. Many Dutch books write $\lvert\vec v\rvert$.
- Unit vector (*eenheidsvector*): a vector of length 1. For $\vec v \neq \vec 0$, the vector $\dfrac{\vec v}{\lVert\vec v\rVert}$ is the unit vector in the direction of $\vec v$.

**Midpoints and division points.** The midpoint $M$ of $AB$ has position vector $\tfrac12(\vec{OA} + \vec{OB})$. More generally, the point $P$ with $\vec{AP} = \lambda\vec{AB}$ is $P = A + \lambda(B - A)$. This is exactly the vector form of the line $AB$, with $0 \le \lambda \le 1$ giving the segment.

**Example: a vector proof.** In any quadrilateral $ABCD$, the midpoints of the four sides form a parallelogram. Let $P, Q$ be the midpoints of $AB$ and $BC$. Then $\vec{PQ} = \tfrac12(B + C) - \tfrac12(A + B) = \tfrac12(C - A)$. In the same way, if $R, S$ are the midpoints of $CD$ and $DA$, then $\vec{SR} = \tfrac12(C - A)$. So $\vec{PQ} = \vec{SR}$: the opposite sides $PQ$ and $SR$ are parallel and equally long. Notice that no picture-specific argument was needed. Vectors do the bookkeeping for you.

---

## 3. The dot product

### 3.1 Two definitions

The dot product (*inproduct*) of two vectors has an algebraic definition and a geometric one.

**Algebraic:**

$$
\vec u \cdot \vec v = u_1 v_1 + u_2 v_2.
$$

**Geometric:** if $\varphi$ is the angle between $\vec u$ and $\vec v$ (with $0^\circ \le \varphi \le 180^\circ$), then

$$
\vec u \cdot \vec v = \lVert\vec u\rVert \cdot \lVert\vec v\rVert \cdot \cos\varphi.
$$

The algebraic form is easy to compute. The geometric form tells you what the number means. That the two always agree is a theorem, and a beautiful one.

### 3.2 Proof that the two definitions agree

Let $\vec u$ and $\vec v$ be nonzero, drawn from a common point $O$ to points $U$ and $V$, with angle $\varphi$ between them. The third side of triangle $OUV$ is $\vec{UV} = \vec v - \vec u$.

The cosine rule (*cosinusregel*) from [B3](../../B-onderbouw-compact/B3-geometry-trigonometry/) and [C4](../../C-bovenbouw-core/C4-trigonometric-functions/) says

$$
\lVert\vec v - \vec u\rVert^2 = \lVert\vec u\rVert^2 + \lVert\vec v\rVert^2 - 2\lVert\vec u\rVert\lVert\vec v\rVert\cos\varphi.
$$

Now compute the left side with coordinates:

$$
\lVert\vec v - \vec u\rVert^2 = (v_1 - u_1)^2 + (v_2 - u_2)^2 = (u_1^2 + u_2^2) + (v_1^2 + v_2^2) - 2(u_1v_1 + u_2v_2).
$$

The first two brackets are $\lVert\vec u\rVert^2$ and $\lVert\vec v\rVert^2$. Comparing the two expressions, those terms cancel and we are left with

$$
u_1 v_1 + u_2 v_2 = \lVert\vec u\rVert\lVert\vec v\rVert\cos\varphi.
$$

This works also when the triangle is degenerate ($\varphi = 0^\circ$ or $180^\circ$), because the cosine rule still holds there (check it). $\blacksquare$

### 3.3 Consequences

**Angle between vectors.** For nonzero $\vec u, \vec v$:

$$
\cos\varphi = \frac{\vec u \cdot \vec v}{\lVert\vec u\rVert\lVert\vec v\rVert}.
$$

**Perpendicularity.** $\vec u \perp \vec v$ exactly when $\vec u \cdot \vec v = 0$ (for nonzero vectors). This is the single most used fact in the module.

**Sign.** The dot product is positive for an acute angle, zero for a right angle and negative for an obtuse angle.

**Rules.** From the algebraic definition you can check directly: $\vec u \cdot \vec v = \vec v \cdot \vec u$, $\vec u \cdot (\vec v + \vec w) = \vec u \cdot \vec v + \vec u \cdot \vec w$, $(\lambda\vec u)\cdot\vec v = \lambda(\vec u\cdot\vec v)$, and $\vec v \cdot \vec v = \lVert\vec v\rVert^2$. These let you expand dot products like ordinary brackets, which is the engine of vector proofs.

**Worked example (CE style).** *Gegeven zijn $A(1, 1)$, $B(7, 3)$ en $C(3, 7)$. Bereken exact de cosinus van hoek $A$ van driehoek $ABC$* ("Calculate exactly the cosine of angle $A$").

$\vec{AB} = \begin{pmatrix}6\\2\end{pmatrix}$, $\vec{AC} = \begin{pmatrix}2\\6\end{pmatrix}$, $\vec{AB}\cdot\vec{AC} = 12 + 12 = 24$, and both lengths are $\sqrt{40}$. So $\cos\angle A = \dfrac{24}{40} = \dfrac35$, and $\angle A \approx 53.1^\circ$.

### 3.4 Projection

The (scalar) projection of $\vec u$ onto the direction of $\vec v$ is $\lVert\vec u\rVert\cos\varphi = \dfrac{\vec u\cdot\vec v}{\lVert\vec v\rVert}$: the signed length of the shadow of $\vec u$ on a line in direction $\vec v$. The projection vector is

$$
\frac{\vec u \cdot \vec v}{\vec v \cdot \vec v}\,\vec v.
$$

This is how you find the foot of a perpendicular (*voetpunt van de loodlijn*): see problem 13.

> **Going further: Cauchy–Schwarz.** Since $\lvert\cos\varphi\rvert \le 1$, we get $\lvert\vec u\cdot\vec v\rvert \le \lVert\vec u\rVert\lVert\vec v\rVert$. In coordinates this says $(u_1v_1 + u_2v_2)^2 \le (u_1^2 + u_2^2)(v_1^2 + v_2^2)$. This is the Cauchy–Schwarz inequality, one of the most useful inequalities in all of mathematics (and in the [olympiad track](../../olympiad/O5-algebra-inequalities/)). Problem 23 asks you to prove it without any angles.

---

## 4. Intersections and angles between lines

### 4.1 Intersecting two lines

Two lines either intersect in one point, are parallel (*evenwijdig*) and distinct, or coincide. With two equations $a_1x + b_1y = c_1$ and $a_2x + b_2y = c_2$ you solve a system of two linear equations. With one line in vector form and one as an equation, substitute the vector form into the equation and solve for $t$. That is usually fastest.

**Worked example.** $k: 3x + 4y = 12$ and $l: \begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}1\\7\end{pmatrix} + t\begin{pmatrix}2\\-1\end{pmatrix}$. Substitute $x = 1 + 2t$, $y = 7 - t$: $3 + 6t + 28 - 4t = 12$, so $t = -\tfrac{19}{2}$ and the intersection is $(-18, 16\tfrac12)$.

If both lines are in vector form, you need **two different parameters**, say $t$ and $s$. Using the same letter for both is a classic mistake: it asks whether two moving points are at the same place *at the same time*, which is a different question (section 12).

### 4.2 The angle between two lines

Two intersecting lines make two angles, $\varphi$ and $180^\circ - \varphi$. By convention the angle between lines (*hoek tussen lijnen*) is the one that is at most $90^\circ$. So use absolute values:

$$
\cos\varphi = \frac{\lvert\vec r_1 \cdot \vec r_2\rvert}{\lVert\vec r_1\rVert\lVert\vec r_2\rVert},
$$

with direction vectors $\vec r_1, \vec r_2$. Normal vectors work equally well: the angle between the normals equals the angle between the lines (both are turned through $90^\circ$).

In the example above, $k$ has direction vector $\begin{pmatrix}4\\-3\end{pmatrix}$ and $l$ has $\begin{pmatrix}2\\-1\end{pmatrix}$. Then $\cos\varphi = \dfrac{\lvert 8 + 3\rvert}{5\sqrt5} = \dfrac{11}{5\sqrt5}$, so $\varphi \approx 10.3^\circ$.

**Perpendicular lines.** Lines with rc $m_1$ and $m_2$ are perpendicular exactly when $m_1 m_2 = -1$. Proof: direction vectors $\begin{pmatrix}1\\m_1\end{pmatrix}$ and $\begin{pmatrix}1\\m_2\end{pmatrix}$ have dot product $1 + m_1m_2$.

**Common mistake.** Forgetting the absolute value and answering $169.7^\circ$ instead of $10.3^\circ$. The angle between *vectors* can be obtuse; the angle between *lines* cannot.

---

## 5. Distance from a point to a line

### 5.1 The formula

> **Theorem.** The distance (*afstand*) from point $P(x_0, y_0)$ to the line $l: ax + by = c$ is
> $$
> d(P, l) = \frac{\lvert ax_0 + by_0 - c\rvert}{\sqrt{a^2 + b^2}}.
> $$

The distance from a point to a line means the *shortest* distance, which is measured along the perpendicular from $P$ to $l$. (Why is the perpendicular shortest? For any other point $Q$ on $l$, the segment $PQ$ is the hypotenuse of a right triangle whose leg is the perpendicular, and a hypotenuse is longer than a leg.)

**Proof.** Let $Q(x_1, y_1)$ be any point on $l$, so $ax_1 + by_1 = c$. Let $\vec n = \begin{pmatrix}a\\b\end{pmatrix}$ be the normal vector. The distance from $P$ to $l$ is the length of the projection of $\vec{QP}$ onto the direction of $\vec n$, because $\vec n$ points along the perpendicular. By section 3.4 this is

$$
d = \frac{\lvert\vec{QP}\cdot\vec n\rvert}{\lVert\vec n\rVert} = \frac{\lvert a(x_0 - x_1) + b(y_0 - y_1)\rvert}{\sqrt{a^2 + b^2}} = \frac{\lvert ax_0 + by_0 - (ax_1 + by_1)\rvert}{\sqrt{a^2 + b^2}} = \frac{\lvert ax_0 + by_0 - c\rvert}{\sqrt{a^2 + b^2}}. \qquad\blacksquare
$$

Notice what the proof shows: the choice of $Q$ does not matter, and the numerator $ax_0 + by_0 - c$ measures how far $P$ is "off" the equation. Its *sign* tells you on which side of the line $P$ lies.

**Worked example.** *Bereken exact de afstand van $P(4, 3)$ tot de lijn $2x - y = 1$.*

$d = \dfrac{\lvert 8 - 3 - 1\rvert}{\sqrt{5}} = \dfrac{4}{\sqrt5} = \tfrac45\sqrt5$.

The CE expects exact answers to be simplified, so write $\tfrac45\sqrt5$ rather than $\tfrac{4}{\sqrt5}$ (both are accepted in most correction schemes (*correctievoorschrift*), but the simplified one is safer).

### 5.2 Distance between parallel lines

The lines $ax + by = c_1$ and $ax + by = c_2$ (same $a$ and $b$) are parallel, and the distance between them is

$$
\frac{\lvert c_1 - c_2\rvert}{\sqrt{a^2 + b^2}}.
$$

Proof: pick a point on the first line and apply the formula. **Make sure the coefficients really are equal first.** For $3x + 4y = 7$ and $6x + 8y = -1$, divide the second by 2: $3x + 4y = -\tfrac12$. The distance is $\dfrac{7.5}{5} = 1.5$, not $\dfrac{8}{5}$.

### 5.3 The other method: foot of the perpendicular

The formula only gives the distance. If a question also asks for the closest point (*het punt van $l$ dat het dichtst bij $P$ ligt*), use the perpendicular: write the line through $P$ with direction vector $\vec n$, and intersect it with $l$. Or use the projection formula. Reflecting $P$ in $l$ (*spiegelen in een lijn*) is then easy: the image is $P' = 2F - P$ where $F$ is the foot.

> **Going further: angle bisectors.** The set of points at equal distance from two intersecting lines consists of the two angle bisectors (*bissectrices*). Setting the two distance formulas equal and removing the absolute values gives both bisectors at once. Problem 21 shows they are always perpendicular.

---

## 6. Circles

### 6.1 The equation of a circle

A circle (*cirkel*) with centre (*middelpunt*) $M(p, q)$ and radius (*straal*) $r$ is the set of points at distance $r$ from $M$. By Pythagoras that gives the circle equation (*cirkelvergelijking*):

$$
(x - p)^2 + (y - q)^2 = r^2.
$$

Expanding gives the form $x^2 + y^2 + Dx + Ey + F = 0$. Recognise it by two features: the coefficients of $x^2$ and $y^2$ are equal, and there is no $xy$ term.

### 6.2 Completing the square

To go back from the expanded form to centre and radius, complete the square (*kwadraatafsplitsen*), as you did for parabolas in [C1](../../C-bovenbouw-core/C1-functions-graphs/).

**Worked example.** $x^2 + y^2 - 6x + 4y - 12 = 0$.

$$
(x - 3)^2 - 9 + (y + 2)^2 - 4 - 12 = 0 \quad\Longrightarrow\quad (x - 3)^2 + (y + 2)^2 = 25.
$$

Centre $(3, -2)$, radius $5$.

**Watch the right-hand side.** If it comes out zero, the "circle" is a single point; if negative, there are no points at all. For example $x^2 + y^2 + 2x + 10 = 0$ gives $(x + 1)^2 + y^2 = -9$: the empty set.

### 6.3 A circle through three points

The centre of the circle through $A$, $B$, $C$ (the circumcircle, *omgeschreven cirkel*) lies on each perpendicular bisector (*middelloodlijn*) of the sides, because it is equidistant from the endpoints. Intersect two of them. Alternatively, substitute the three points into $x^2 + y^2 + Dx + Ey + F = 0$ and solve the linear system for $D, E, F$. Use symmetry when you see it: in problem 12 the triangle is isosceles and the centre must lie on $y = x$.

---

## 7. Tangent lines and intersections with circles

### 7.1 The tangent at a point of the circle

> **Theorem.** The tangent (*raaklijn*) to a circle at point $T$ is perpendicular to the radius $MT$.

So $\vec{MT}$ is a normal vector of the tangent. That gives the tangent in one line.

**Worked example (CE style).** *Toon aan dat $T(6, 2)$ op de cirkel $x^2 + y^2 - 6x + 4y - 12 = 0$ ligt en stel een vergelijking op van de raaklijn in $T$* ("Show that $T$ lies on the circle and find an equation of the tangent at $T$").

Check: $(6-3)^2 + (2+2)^2 = 9 + 16 = 25$. ✓ Then $\vec{MT} = \begin{pmatrix}3\\4\end{pmatrix}$, so the tangent is $3x + 4y = c$ with $c = 18 + 8 = 26$.

### 7.2 Line and circle: three methods

To intersect a line with a circle, substitute the line into the circle equation. You get a quadratic equation. Its discriminant (*discriminant*) $D$ decides: $D > 0$ two intersection points, $D = 0$ the line touches (*raakt*), $D < 0$ no intersection.

There is a faster test when you only need to know *how many* points: compare the distance from the centre to the line with the radius. Distance less than $r$: two points. Equal: tangent. Greater: none. This is often the cleanest way to answer "for which values of $a$ is the line a tangent?" Example: tangent lines from the point $P(9, 2)$ to the circle with centre $(2, 1)$ and radius 5 are $y = a(x - 9) + 2$ with

$$
\frac{\lvert 1 - 7a\rvert}{\sqrt{a^2 + 1}} = 5,
$$

which gives $12a^2 - 7a - 12 = 0$, so $a = \tfrac43$ or $a = -\tfrac34$. (Problem 15 develops this example fully.)

### 7.3 Circle and circle

Two circles intersect in at most two points. Subtract the two equations (in expanded form): the $x^2$ and $y^2$ terms cancel and you get a **linear** equation. That line is the line through both intersection points (the radical axis, *machtlijn*, if you want the name). Then intersect that line with either circle.

Whether the circles meet depends on the distance $d$ between centres: two points if $\lvert r_1 - r_2\rvert < d < r_1 + r_2$, touching if $d$ equals one of the bounds, none otherwise. Draw the cases to see why.

The angle at which two circles intersect is the angle between their tangents at an intersection point, which equals the angle between the radii to that point. When the radii are perpendicular the circles are called orthogonal (*snijden elkaar loodrecht*); this happens exactly when $d^2 = r_1^2 + r_2^2$ (Pythagoras in the triangle of the two centres and the intersection point).

---

## 8. Parametric curves

### 8.1 Equations of motion

A moving point $P$ has coordinates that depend on time $t$:

$$
x = x(t), \qquad y = y(t).
$$

These are the equations of motion (*bewegingsvergelijkingen*). The path traced out is a parametric curve (*parameterkromme*, also *baan*). Dutch CE questions typically give, for example, *"Het punt $P$ beweegt volgens $x(t) = \sin t$, $y(t) = \sin 2t$ met $0 \le t \le 2\pi$."*

The curve and the motion are different things. The motions $(\cos t, \sin t)$ and $(\cos 2t, \sin 2t)$ trace the same unit circle, the second twice as fast. The motion $(t^2, t^2)$ traces only half of the line $y = x$, and passes through each point of it other than the origin twice when $t$ runs over all real numbers.

### 8.2 Does the curve pass through a given point?

To check whether the curve passes through $(a, b)$, solve $x(t) = a$, then substitute **each** solution into $y(t)$ and see whether any gives $b$. Both coordinates must match **for the same $t$**.

**Worked example.** $x(t) = t^2 - 1$, $y(t) = t^3 - 3t$. Does the curve pass through $(3, 2)$? From $t^2 - 1 = 3$ we get $t = 2$ or $t = -2$. Then $y(2) = 8 - 6 = 2$. ✓ (And $y(-2) = -2$, so $(3, -2)$ is on the curve too.)

### 8.3 "Toon aan dat de baan een cirkel is"

To show that a curve is (part of) a known curve, eliminate $t$. The most common tool is $\cos^2 u + \sin^2 u = 1$.

**Worked example.** $x(t) = 1 + 3\cos 2t$, $y(t) = -2 + 3\sin 2t$. Then

$$
(x - 1)^2 + (y + 2)^2 = 9\cos^2 2t + 9\sin^2 2t = 9,
$$

so every point lies on the circle with centre $(1, -2)$ and radius 3. For a complete answer also say that every point of the circle is reached (as $2t$ runs through a full period, the angle covers the whole circle).

Other identities that appear: $\cos 2t = 2\cos^2 t - 1$ (so $x = \cos t$, $y = \cos 2t$ lies on the parabola $y = 2x^2 - 1$, but only the part with $-1 \le x \le 1$), and $\sin 2t = 2\sin t\cos t$.

---

## 9. Velocity, acceleration and speed

### 9.1 Definitions

Differentiate each coordinate.

- **Velocity vector** (*snelheidsvector*): $\vec v(t) = \begin{pmatrix}x'(t)\\y'(t)\end{pmatrix}$.
- **Speed** (*baansnelheid*, the magnitude of velocity): $v(t) = \lVert\vec v(t)\rVert = \sqrt{x'(t)^2 + y'(t)^2}$.
- **Acceleration vector** (*versnellingsvector*): $\vec a(t) = \begin{pmatrix}x''(t)\\y''(t)\end{pmatrix}$.

**Why the velocity vector is tangent to the curve.** Between times $t$ and $t + h$ the point moves by $\begin{pmatrix}x(t+h) - x(t)\\y(t+h) - y(t)\end{pmatrix}$. Dividing by $h$ gives an average velocity vector, which points along a chord of the curve. As $h \to 0$ the chord turns into the tangent, and the average velocity becomes $\begin{pmatrix}x'(t)\\y'(t)\end{pmatrix}$. So, as long as $\vec v(t) \neq \vec 0$, it is a direction vector of the tangent line.

The slope of the tangent is therefore

$$
\frac{dy}{dx} = \frac{y'(t)}{x'(t)} \qquad (x'(t) \neq 0).
$$

### 9.2 Tangent line at a point

**Worked example.** For the cycloid $x = t - \sin t$, $y = 1 - \cos t$, find the tangent at $t = \tfrac{\pi}{2}$. The point is $(\tfrac{\pi}{2} - 1, 1)$, and $\vec v = \begin{pmatrix}1 - \cos t\\\sin t\end{pmatrix} = \begin{pmatrix}1\\1\end{pmatrix}$. So the tangent has rc 1: $y = x + 2 - \tfrac{\pi}{2}$.

### 9.3 Speed and its maximum

Speed is a function of $t$, so maximise it with the methods of [C3](../../C-bovenbouw-core/C3-differential-calculus-I/) and [D1](../D1-differential-calculus-II/). A useful trick: maximise $v(t)^2 = x'(t)^2 + y'(t)^2$ instead, which has the same maximum points and no square root. Often a trig identity makes it immediate.

**Worked example (CE style).** *Toon aan dat voor de baansnelheid van de cycloïde geldt $v(t) = 2\lvert\sin\tfrac12 t\rvert$.*

$$
v^2 = (1 - \cos t)^2 + \sin^2 t = 1 - 2\cos t + \cos^2 t + \sin^2 t = 2 - 2\cos t = 4\sin^2\tfrac12 t,
$$

using $\cos t = 1 - 2\sin^2\tfrac12 t$. Taking the square root gives the claim. The maximum speed is 2, at $t = \pi$, at the top of the arch.

### 9.4 Uniform circular motion

For $x = 1 + 3\cos 2t$, $y = -2 + 3\sin 2t$:

$$
\vec v = \begin{pmatrix}-6\sin 2t\\6\cos 2t\end{pmatrix}, \qquad \vec a = \begin{pmatrix}-12\cos 2t\\-12\sin 2t\end{pmatrix} = -4\begin{pmatrix}x - 1\\y + 2\end{pmatrix}.
$$

The speed is the constant 6, yet the acceleration is not zero: it points from the point to the centre. Acceleration measures change of the velocity *vector*, and a change of direction counts. Also $\vec v \cdot \vec a = 0$. In general, $\dfrac{d}{dt}\big(v^2\big) = 2\,\vec v\cdot\vec a$, so **the speed is constant exactly when velocity and acceleration are always perpendicular.** (Prove this by differentiating $x'^2 + y'^2$.)

---

## 10. Horizontal and vertical tangents, self-intersections

### 10.1 Horizontal and vertical tangents

- **Horizontal tangent** (*horizontale raaklijn*): $y'(t) = 0$ and $x'(t) \neq 0$.
- **Vertical tangent** (*verticale raaklijn*): $x'(t) = 0$ and $y'(t) \neq 0$.

If both are zero the point stands still for a moment and anything can happen: often a cusp (*keerpunt*), as with the cycloid at $t = 0$. The CE then asks you to investigate more carefully; never conclude a tangent direction from $\vec v = \vec 0$.

**Worked example.** $x = t^2 - 1$, $y = t^3 - 3t$. Here $x' = 2t$, $y' = 3t^2 - 3$.

- Horizontal: $y' = 0$ gives $t = \pm1$, and there $x' = \pm 2 \neq 0$. Points $(0, -2)$ (at $t = 1$) and $(0, 2)$ (at $t = -1$).
- Vertical: $x' = 0$ gives $t = 0$, and $y'(0) = -3 \neq 0$. Point $(-1, 0)$.

### 10.2 Self-intersections

A self-intersection or double point (*dubbelpunt*) is a point the curve passes through at two different parameter values $t_1 \neq t_2$:

$$
x(t_1) = x(t_2) \quad\text{and}\quad y(t_1) = y(t_2).
$$

Look for symmetry first. In the example above $x(-t) = x(t)$ and $y(-t) = -y(t)$, so the curve is symmetric in the $x$-axis, and $t$ and $-t$ give the same point exactly when $y(t) = 0$: $t^3 - 3t = 0$, so $t = \pm\sqrt3$ (the value $t = 0$ does not count, since then $t_1 = t_2$). The double point is $(2, 0)$.

**The angle at a double point.** The curve passes the double point twice, with two tangent directions $\vec v(t_1)$ and $\vec v(t_2)$. The angle between the two branches is the angle between those lines. Here $\vec v(\pm\sqrt3) = \begin{pmatrix}\pm 2\sqrt3\\6\end{pmatrix}$, and

$$
\cos\varphi = \frac{\lvert -12 + 36\rvert}{48} = \frac12, \qquad \varphi = 60^\circ.
$$

---

## 11. Lissajous figures

A Lissajous figure (*lissajousfiguur*) is the path of

$$
x = \sin(at + b), \qquad y = \sin(ct + d),
$$

or a variation with cosines and amplitudes. You see them on an oscilloscope when two vibrations are combined at right angles. When $a/c$ is rational the curve closes up; the period is the least common multiple of the two periods.

**The figure eight $x = \sin t$, $y = \sin 2t$, $0 \le t \le 2\pi$.**

- Symmetry: replacing $t$ by $\pi - t$ maps $(x, y)$ to $(x, -y)$, and replacing $t$ by $t + \pi$ maps it to $(-x, y)$. So the curve is symmetric in both axes, and therefore also in the origin.
- Double point: $(0, 0)$ is reached at $t = 0$ and $t = \pi$, with velocities $\begin{pmatrix}1\\2\end{pmatrix}$ and $\begin{pmatrix}-1\\2\end{pmatrix}$. The branches cross at angle $\varphi$ with $\cos\varphi = \tfrac35$, so about $53.1^\circ$.
- Horizontal tangents where $\cos 2t = 0$: four points $(\pm\tfrac12\sqrt2, \pm1)$. Vertical tangents where $\cos t = 0$: $(\pm1, 0)$.
- Cartesian equation: $y^2 = 4\sin^2 t\cos^2 t = 4x^2(1 - x^2)$.

Problem 18 is a full CE-style question on this curve. Plot it with GeoGebra or Desmos first: in the CE you may use a graphing calculator, and sketching what the question describes is half the solution.

> **Going further: why closed?** If $a/c = m/n$ in lowest terms, then after time $T = 2\pi m/a = 2\pi n/c$ both $at$ and $ct$ have advanced by whole multiples of $2\pi$, so the motion repeats. If $a/c$ is irrational the curve never closes and in fact fills a rectangle densely. Proving that last claim is a real piece of number theory (it follows from the fact that the multiples of an irrational number are dense modulo 1).

---

## 12. Motion problems in CE style

### 12.1 Two moving points

When two points $P(t)$ and $Q(t)$ move at the same time, three different questions can be asked. Keep them apart.

1. **Do the paths cross?** Use two parameters, $P(t) = Q(s)$, or intersect the paths as curves.
2. **Do the points collide?** Use one parameter: $P(t) = Q(t)$. Paths that cross do not imply a collision; the points may pass the crossing at different times.
3. **When are they closest?** Minimise the distance $d(t) = \lVert\vec{PQ}(t)\rVert$, or, simpler, $d(t)^2$.

**Worked example.** $P$: $\begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}-3 + 2t\\1 + t\end{pmatrix}$ and $Q$: $\begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}5 - t\\-2 + 3t\end{pmatrix}$, $t \ge 0$.

- Paths: $P$ moves on $x - 2y = -5$, $Q$ on $3x + y = 13$. They cross at $(3, 4)$.
- $P$ reaches $(3, 4)$ at $t = 3$, $Q$ at $t = 2$. No collision.
- $\vec{PQ} = \begin{pmatrix}8 - 3t\\-3 + 2t\end{pmatrix}$, so $d^2 = 13t^2 - 60t + 73$. This parabola is minimal at $t = \tfrac{30}{13}$, where $d^2 = \tfrac{49}{13}$ and $d = \tfrac{7}{13}\sqrt{13}$.

Geometric check: at the moment of minimal distance, $\vec{PQ}$ is perpendicular to the *relative* velocity $\vec v_Q - \vec v_P$. (Why? Differentiate $d^2 = \vec{PQ}\cdot\vec{PQ}$.)

### 12.2 Typical CE wording

| Dutch | English | What to do |
|---|---|---|
| *Toon aan dat ...* | Show that ... | Give a complete argument; the result is given, the reasoning earns the points. |
| *Bereken exact* | Calculate exactly | Algebra only, answer with roots, $\pi$, fractions. No rounded calculator values. |
| *Bereken* | Calculate | Calculator allowed; round as asked (often to 1 decimal). Write down what you entered. |
| *Bereken de maximale baansnelheid* | Calculate the maximum speed | Maximise $\sqrt{x'^2 + y'^2}$, often via its square. |
| *Onderzoek of ...* | Investigate whether ... | Decide yes or no **and** justify. |
| *Stel een vergelijking op van ...* | Find an equation of ... | Any correct form is fine unless a form is asked. |

---

## 13. Going further

### 13.1 Arc length of a parametric curve

This needs integrals from [D2](../D2-integral-calculus/). Over a tiny time step $\Delta t$ the point moves approximately $\sqrt{(x'\Delta t)^2 + (y'\Delta t)^2} = v(t)\,\Delta t$. Adding these up and letting $\Delta t \to 0$ gives the arc length (*booglengte*):

$$
L = \int_{t_1}^{t_2} \sqrt{x'(t)^2 + y'(t)^2}\,dt.
$$

In words: distance travelled is the integral of speed. For one arch of the cycloid, $L = \displaystyle\int_0^{2\pi} 2\sin\tfrac12 t\,dt = 8$. Remarkably, a wheel of radius 1 (circumference $2\pi$) makes a point on its rim travel exactly 8 per turn. Arc-length integrals are usually impossible to do by hand (even for the ellipse), so in the CE you use the calculator's numerical integration.

### 13.2 Vectors in three dimensions

Everything about vectors carries over to three dimensions with a third coordinate: $\vec u\cdot\vec v = u_1v_1 + u_2v_2 + u_3v_3$, $\lVert\vec v\rVert = \sqrt{v_1^2 + v_2^2 + v_3^2}$, and the cosine-rule proof is word for word the same. What changes is the role of the equation $ax + by + cz = d$: in space it describes a **plane** (*vlak*) with normal vector $\begin{pmatrix}a\\b\\c\end{pmatrix}$, and the distance from a point to a plane is

$$
\frac{\lvert ax_0 + by_0 + cz_0 - d\rvert}{\sqrt{a^2 + b^2 + c^2}},
$$

with the same proof. A line in space can only be given by a vector form (or by two plane equations). Wiskunde D adds the cross product (*uitproduct*), which produces a vector perpendicular to two given vectors. This returns in [E3](../../E-wiskunde-d-and-exams/); problem 28 is a preview.

---

## 14. Summary of common mistakes

1. Reading the normal vector off $y = mx + b$ without first rewriting as $ax + by = c$.
2. Forgetting the absolute value in the angle between lines (answer must be at most $90^\circ$).
3. Applying the parallel-lines distance formula when the coefficients are not yet equal.
4. Using the same parameter for two different lines in vector form.
5. Checking only $x(t) = a$ when asked whether a curve passes through $(a, b)$.
6. Declaring a horizontal tangent where $y' = 0$ without checking $x' \neq 0$.
7. Saying "constant speed, so zero acceleration". Direction changes count.
8. Concluding "the paths cross, so the points collide".
9. In "toon aan" questions, starting from the conclusion and working backwards without saying that every step is reversible. Work forwards, or write $\Leftrightarrow$ and make sure it is true.
10. Giving a rounded decimal when *bereken exact* was asked.
