# E3 Notes: geometry, proof and conic sections

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

This module has three parts: **synthetic proof** in the plane (§1–5), **analytic methods** and loci leading to the **conic sections** (§6–9), and **vectors in space** (§10–11). Draw every figure, by hand or in GeoGebra. A good figure is half a proof, but a figure is never a proof.

---

## 1. How to write a geometric proof

Dutch exams and textbooks use a fixed layout, and it is a good one:

- **Gegeven** (given): what you may assume.
- **Te bewijzen** (to prove): the claim, precisely.
- **Bewijs** (proof): a chain of statements, each followed by its reason in brackets: a given fact, a definition, or a named theorem.

**Basic facts you may use** (proved in stage B):

- Vertical angles (*overstaande hoeken*) are equal. Angles on a straight line add to $180°$.
- With parallel lines, corresponding angles (*F-hoeken*) and alternate angles (*Z-hoeken*) are equal.
- The angles of a triangle add up to $180°$; an exterior angle (*buitenhoek*) equals the sum of the two non-adjacent interior angles.
- In an isosceles triangle (*gelijkbenige driehoek*) the base angles are equal, and conversely.
- Congruence criteria (*congruentiegevallen*) ZZZ, ZHZ, HZH, ZHH and ZZR (the Dutch names: Z = side, H = angle, R = right angle; ZZR is RHS).
- Similarity criteria (*gelijkvormigheid*): two equal angles (hh), or proportional sides with an equal included angle.
- A tangent (*raaklijn*) to a circle is perpendicular to the radius at the point of contact.

**Strategy.** Angle chasing: name one or two unknown angles $\alpha, \beta$, express every other angle in them, and see what falls out. Look for isosceles triangles hidden in radii: **two radii always make an isosceles triangle**.

---

## 2. Thales' theorem

**Theorem (Thales).** If $AB$ is a diameter of a circle and $C$ is another point on the circle, then $\angle ACB = 90°$.

*Proof.* Let $M$ be the centre. Then $MA = MB = MC$ (radii). Triangle $AMC$ is isosceles, so $\angle MAC = \angle MCA = \alpha$; triangle $BMC$ is isosceles, so $\angle MBC = \angle MCB = \beta$. The angles of triangle $ABC$ add to $180°$: $\alpha + \beta + (\alpha + \beta) = 180°$, so $\angle ACB = \alpha + \beta = 90°$. $\blacksquare$

**Converse.** If $\angle ACB = 90°$, then $C$ lies on the circle with diameter $AB$.

*Proof.* Let $M$ be the midpoint of $AB$. Reflect $C$ in $M$ to get $D$. Then $ACBD$ is a parallelogram (diagonals bisect each other) with a right angle, so it is a rectangle, and the diagonals of a rectangle are equal: $CD = AB$. Hence $MC = \frac12CD = \frac12AB = MA$, so $C$ is on the circle with centre $M$ through $A$ and $B$. $\blacksquare$

So: **the locus of points $C$ with $\angle ACB = 90°$ is the circle with diameter $AB$, without $A$ and $B$.** This "Thales circle" (*cirkel van Thales*) is constantly useful: whenever you see two right angles on the same segment, you get four points on a circle.

---

## 3. The inscribed angle theorem

Let $A$ and $B$ be points on a circle with centre $M$. The chord (*koorde*) $AB$ divides the circle into two arcs (*bogen*). For a point $C$ on the circle, not on arc $AB$ itself, $\angle ACB$ is an **inscribed angle** (*omtrekshoek*) on arc $AB$; $\angle AMB$ (measured on the side of that arc) is the **central angle** (*middelpuntshoek*).

**Theorem (inscribed angle).** The inscribed angle is half the central angle on the same arc: $\angle ACB = \frac12\angle AMB$. In particular all inscribed angles on the same arc are equal.

*Proof.* Draw the diameter $CD$ through $C$.

*Case 1: $M$ lies on a side of the angle*, say on $CB$. Triangle $AMC$ is isosceles ($MA = MC$), so $\angle MAC = \angle MCA = \alpha$. The exterior angle at $M$ is $\angle AMB = \alpha + \alpha = 2\alpha$. Done.

*Case 2: $M$ lies inside $\angle ACB$.* The diameter $CD$ splits $\angle ACB$ into $\angle ACD$ and $\angle DCB$, and $\angle AMB$ into $\angle AMD$ and $\angle DMB$. By case 1 applied twice, $\angle AMD = 2\angle ACD$ and $\angle DMB = 2\angle DCB$. Add.

*Case 3: $M$ lies outside $\angle ACB$.* Say $A$ lies between $D$ and $B$ as seen from $C$ (so ray $CA$ lies inside $\angle DCB$). Then $\angle ACB = \angle DCB - \angle DCA$ and $\angle AMB = \angle DMB - \angle DMA$. By case 1 twice, subtract. $\blacksquare$

**Consequences.**

1. Thales' theorem is the special case $\angle AMB = 180°$.
2. **Angles in the same segment are equal.** All points $C$ on one arc see $AB$ under the same angle.
3. **Locus.** The set of points $P$ on one side of line $AB$ with $\angle APB = \gamma$ is an arc of a circle through $A$ and $B$ (the *boog van constante hoek*). The converse direction ("if $\angle APB = \angle ACB$ then $P$ is on the circle") is proved by showing that points inside the circle see $AB$ under a larger angle and points outside under a smaller one (exterior angle theorem).

---

## 4. Cyclic quadrilaterals

A quadrilateral is **cyclic** (*koordenvierhoek*) if its four vertices lie on one circle.

**Theorem.** In a cyclic quadrilateral $ABCD$, opposite angles add up to $180°$: $\angle A + \angle C = \angle B + \angle D = 180°$.

*Proof.* $\angle A$ ($= \angle DAB$) is an inscribed angle on arc $BCD$, and $\angle C$ ($= \angle BCD$) is an inscribed angle on the other arc $BAD$. The two corresponding central angles add up to $360°$, so by the inscribed angle theorem $\angle A + \angle C = \frac12\cdot 360° = 180°$. $\blacksquare$

**Converse.** If a (convex) quadrilateral has $\angle A + \angle C = 180°$, it is cyclic.

*Proof.* Draw the circle through $A$, $B$, $D$. Points $P$ on the arc on the other side of $BD$ from $A$ have $\angle BPD = 180° - \angle A = \angle C$. By the locus statement in §3, the points on that side of $BD$ that see $BD$ under exactly the angle $\angle C$ are exactly those on this arc. So $C$ is on the circle. $\blacksquare$

**Two more criteria for four points to be concyclic** (both from §3):

- $\angle ACB = \angle ADB$ with $C$ and $D$ on the same side of $AB$;
- an exterior angle of the quadrilateral equals the opposite interior angle.

**Example.** In triangle $ABC$ let $AD$ and $BE$ be altitudes (*hoogtelijnen*), meeting in $H$. Then $\angle ADB = \angle AEB = 90°$, so $D$ and $E$ lie on the Thales circle of $AB$: **$A, B, D, E$ are concyclic**. Also $\angle HDC + \angle HEC = 90° + 90° = 180°$, so **$C, D, H, E$ are concyclic**. Many olympiad problems start exactly like this (problem 12).

---

## 5. Tangent and chord

**Theorem (tangent–chord angle).** Let $t$ be the tangent at $A$ to a circle and $AB$ a chord. The angle between $t$ and $AB$ equals the inscribed angle $\angle ACB$ on the arc on the *other* side of $AB$.

*Proof.* Let $M$ be the centre and $\angle ACB = \gamma$, so $\angle AMB = 2\gamma$ (inscribed angle). Triangle $AMB$ is isosceles, so $\angle MAB = 90° - \gamma$. The tangent is perpendicular to $MA$, so the angle between $t$ and $AB$ is $90° - (90° - \gamma) = \gamma$. (This is the case $\gamma < 90°$; the case $\gamma \ge 90°$ is similar.) $\blacksquare$

You can think of the tangent–chord angle as the limit of an inscribed angle $\angle ACB$ when $C$ slides to $A$: the chord $CA$ becomes the tangent.

**Power of a point** (going further, very useful). If two lines through $P$ meet a circle in $A, B$ and in $C, D$, then $PA\cdot PB = PC\cdot PD$. *Proof:* triangles $PAC$ and $PDB$ are similar (hh, using inscribed angles). If one line is tangent at $T$: $PA\cdot PB = PT^2$.

---

## 6. Analytic proof

In an **analytic proof** (*analytisch bewijs*) you put the figure in a coordinate system and compute. The art is choosing coordinates so that the computation is short.

**Guidelines.**

- Put a special point at the origin and a special line along an axis.
- Use symmetry: for an isosceles triangle put the base on the $x$-axis symmetric about the $y$-axis.
- Use letters for general positions: a general triangle is $A(0, 0)$, $B(b, 0)$, $C(c, d)$. That is fully general (any triangle can be moved and rotated into this position), so a proof with these coordinates proves the theorem for all triangles.
- Vectors are often shorter than coordinates: write $\vec a, \vec b, \vec c$ for position vectors.

**Example 1 (Thales again).** Circle $x^2 + y^2 = r^2$, $A(-r, 0)$, $B(r, 0)$, $C(p, q)$ on the circle. Then

$$\overrightarrow{CA}\cdot\overrightarrow{CB} = (-r - p)(r - p) + (-q)(-q) = p^2 - r^2 + q^2 = 0,$$

so $CA \perp CB$. Three lines.

**Example 2 (centroid).** The medians (*zwaartelijnen*) of a triangle are concurrent. With position vectors $\vec a, \vec b, \vec c$, the midpoint of $BC$ is $\frac12(\vec b + \vec c)$. The point that divides the median from $A$ in ratio $2 : 1$ is

$$\vec a + \tfrac23\left(\tfrac12(\vec b + \vec c) - \vec a\right) = \tfrac13(\vec a + \vec b + \vec c).$$

This expression is symmetric in $a, b, c$, so the same point lies on all three medians: the centroid (*zwaartepunt*) $Z = \frac13(\vec a + \vec b + \vec c)$.

**Synthetic or analytic?** Synthetic proofs explain *why*; analytic proofs are mechanical and sure to work but can get long. Wiskunde techniek asks for both. Try synthetic first; if you are stuck after ten minutes, compute.

---

## 7. Loci

A **locus** (*meetkundige plaats*, plural *meetkundige plaatsen*) is the set of all points satisfying a condition.

| Condition | Locus |
|---|---|
| $d(P, A) = r$ | circle |
| $d(P, A) = d(P, B)$ | perpendicular bisector (*middelloodlijn*) of $AB$ |
| $d(P, \ell) = d(P, m)$ for intersecting lines $\ell, m$ | the two angle bisectors (*bissectrices*) |
| $\angle APB = 90°$ | circle with diameter $AB$ (minus $A$, $B$) |
| $d(P, A) = k\cdot d(P, B)$, $k \ne 1$ | circle of Apollonius |
| $d(P, F) = d(P, \ell)$ | parabola |
| $d(P, F_1) + d(P, F_2) = 2a$ | ellipse |
| $\lvert d(P, F_1) - d(P, F_2)\rvert = 2a$ | hyperbola |

**Method for finding a locus analytically.** Call the moving point $P(x, y)$; translate the condition into an equation in $x$ and $y$; simplify; recognise the curve; check whether all points of the curve really satisfy the condition (sometimes points must be removed).

**Example.** $A(0, 0)$, $B(3, 0)$, $PA = 2PB$. Squaring (allowed, both sides $\ge 0$): $x^2 + y^2 = 4((x - 3)^2 + y^2)$, so $3x^2 + 3y^2 - 24x + 36 = 0$, i.e. $(x - 4)^2 + y^2 = 4$. A circle with centre $(4, 0)$ and radius 2.

**Distance from a point to a line.** For the line $ax + by = c$ and point $P(p, q)$:

$$d(P, \ell) = \frac{\lvert ap + bq - c\rvert}{\sqrt{a^2 + b^2}}.$$

(Proof: $(a, b)$ is a normal vector; project $\overrightarrow{QP}$ for any $Q$ on $\ell$ onto it.) The same formula in 3D gives the distance from a point to a plane (§11).

---

## 8. The parabola

The conic sections (*kegelsneden*) are the curves you get by cutting a double cone with a plane. Here we define them by distances, which is more useful.

**Definition.** Given a point $F$ (the **focus**, *brandpunt*) and a line $r$ not through $F$ (the **directrix**, *richtlijn*), the **parabola** is the set of points $P$ with $d(P, F) = d(P, r)$.

**Equation.** Take $F(0, p)$ and $r: y = -p$ (with $p > 0$). Then

$$\sqrt{x^2 + (y - p)^2} = \lvert y + p\rvert \iff x^2 + y^2 - 2py + p^2 = y^2 + 2py + p^2 \iff x^2 = 4py.$$

So $y = \frac{1}{4p}x^2$: every parabola $y = ax^2$ ($a > 0$) has focus $(0, \frac{1}{4a})$ and directrix $y = -\frac1{4a}$. The **vertex** (*top*) is midway between focus and directrix.

**Reflection property.** Let $P$ be on the parabola and $P'$ the foot of the perpendicular from $P$ to the directrix.

**Theorem.** The tangent at $P$ is the perpendicular bisector of $FP'$; equivalently, it bisects the angle $\angle FPP'$.

*Proof.* Let $t$ be the perpendicular bisector of $FP'$. Since $PF = PP'$, $P$ lies on $t$. Take any other point $Q$ on $t$ and let $Q'$ be the foot of the perpendicular from $Q$ to the directrix. Then $QF = QP'$ (since $Q$ is on the bisector) and $QP' > QQ'$ (hypotenuse versus leg, as $P' \ne Q'$). So $QF > QQ' = d(Q, r)$: $Q$ is *outside* the parabola (on the side away from the focus). So $t$ meets the parabola only in $P$ and the whole parabola lies on one side of it. Hence $t$ is the tangent at $P$. Triangle $FPP'$ is isosceles, and the perpendicular bisector of the base is the bisector of the top angle. $\blacksquare$

**Physical meaning.** A ray coming in parallel to the axis (along $P'P$ extended) hits the parabola at $P$ and reflects with equal angles to the tangent, so it passes through $F$. This is why satellite dishes, car headlights and solar furnaces are parabolic: all parallel rays meet in the focus.

Note this proof uses only the definition; no derivatives. You can also check it with calculus: for $x^2 = 4py$ the tangent at $P(x_0, y_0)$ has slope $\frac{x_0}{2p}$ and meets the $y$-axis at $(0, -y_0)$; the focus is at distance $p + y_0$ from that point, which equals $PF$, giving an isosceles triangle (problem 18).

---

## 9. The ellipse and the hyperbola

**Ellipse.** Given foci $F_1, F_2$ and a number $2a > F_1F_2$, the **ellipse** is the set of points with $PF_1 + PF_2 = 2a$. (Draw it with a loop of string and two pins.)

Take $F_{1,2} = (\mp c, 0)$ with $0 \le c < a$ and put $b^2 = a^2 - c^2$. Starting from $\sqrt{(x + c)^2 + y^2} = 2a - \sqrt{(x - c)^2 + y^2}$, square, simplify to $a\sqrt{(x - c)^2 + y^2} = a^2 - cx$, square again:

$$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1.$$

(Every step can be reversed for points with $\lvert x\rvert \le a$, which all points of the curve satisfy, so this equation describes exactly the ellipse.) The ellipse meets the axes in $(\pm a, 0)$ and $(0, \pm b)$: $a$ is the semi-major axis, $b$ the semi-minor axis, and $c^2 = a^2 - b^2$. A circle is the case $c = 0$.

**Hyperbola.** For $2a < F_1F_2 = 2c$, the set of points with $\lvert PF_1 - PF_2\rvert = 2a$ is a **hyperbola**. With $b^2 = c^2 - a^2$ the same computation gives

$$\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1,$$

with two branches and **asymptotes** $y = \pm\frac bax$. (For large $\lvert x\rvert$, $y = \pm\frac bax\sqrt{1 - a^2/x^2} \approx \pm\frac bax$.) The hyperbola $xy = 1$ is the case $a = b$ rotated by $45°$.

**Directrix circle (*richtcirkel*).** Dutch textbooks often use this equivalent definition. Let $c_2$ be the circle with centre $F_2$ and radius $2a$.

- **Ellipse:** $P$ is on the ellipse iff $d(P, F_1) = d(P, c_2)$. For $P$ inside $c_2$, the distance from $P$ to $c_2$ is $2a - PF_2$, so the condition becomes $PF_1 + PF_2 = 2a$.
- **Hyperbola:** the same condition $d(P, F_1) = d(P, c_2)$, now with $F_1$ outside $c_2$, gives $\lvert PF_1 - PF_2\rvert = 2a$, i.e. one branch for $P$ outside $c_2$ ($PF_2 - 2a = PF_1$); the other branch uses the directrix circle around $F_1$.

The parabola fits too: as $F_2$ moves to infinity, the circle $c_2$ becomes a straight line, the directrix. So all three conics are "equidistant from a point and a circle (or line)".

**Reflection properties.**

**Theorem (ellipse).** At a point $P$ of the ellipse, the tangent makes equal angles with $PF_1$ and $PF_2$. That is, the tangent is the *external* angle bisector of $\angle F_1PF_2$; the normal is the internal bisector. So light from one focus reflects into the other (whispering galleries, kidney-stone lithotripters).

*Proof.* Let $t$ be the external bisector at $P$. Reflect $F_2$ in $t$ to $F_2'$. Because $t$ bisects the angle between $PF_1$ extended and $PF_2$, the point $F_2'$ lies on the ray from $F_1$ through $P$, beyond $P$, and $PF_2' = PF_2$. So $F_1F_2' = PF_1 + PF_2 = 2a$. For any other point $Q$ on $t$: $QF_1 + QF_2 = QF_1 + QF_2' > F_1F_2' = 2a$ (triangle inequality, strict as $Q$ is not on line $F_1F_2'$). So $Q$ lies outside the ellipse. Hence $t$ touches the ellipse only at $P$ and the ellipse is on one side: $t$ is the tangent. $\blacksquare$

Look at the proof: $F_2'$ is at distance $2a$ from $F_1$, so it lies on the directrix circle around $F_1$. This is the same structure as the parabola proof: **the tangent at $P$ is the perpendicular bisector of $F_2$ and its "mirror point" on the directrix circle.**

**Theorem (hyperbola).** The tangent at $P$ is the *internal* bisector of $\angle F_1PF_2$. (Same proof with the triangle inequality reversed; problem 24 asks for the ellipse version in detail.)

**Tangent line by formula.** Implicit differentiation of $\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$ gives the tangent at $(x_0, y_0)$:

$$\frac{x_0x}{a^2} + \frac{y_0y}{b^2} = 1,$$

and similarly $\frac{x_0x}{a^2} - \frac{y_0y}{b^2} = 1$ for the hyperbola and $x_0x = 2p(y + y_0)$ for $x^2 = 4py$. ("Replace one $x$ by $x_0$ and one $y$ by $y_0$.")

**Eccentricity (going further).** Each conic is also the set of points with $d(P, F) = e\cdot d(P, \ell)$ for a fixed line $\ell$ and number $e > 0$, the **eccentricity**: $e < 1$ ellipse, $e = 1$ parabola, $e > 1$ hyperbola. For the ellipse $e = c/a$. Planetary orbits are ellipses with the Sun at a focus (Kepler); Earth's orbit has $e \approx 0.017$.

---

## 10. Vectors in space

Points in space have three coordinates; vectors $\vec a = (a_1, a_2, a_3)$ add componentwise. The **inner product** (*inproduct*, dot product) and length are

$$\vec a\cdot\vec b = a_1b_1 + a_2b_2 + a_3b_3 = \lvert\vec a\rvert\,\lvert\vec b\rvert\cos\theta, \qquad \lvert\vec a\rvert = \sqrt{\vec a\cdot\vec a},$$

exactly as in the plane (stage D). In particular $\vec a \perp \vec b \iff \vec a\cdot\vec b = 0$.

**Cross product.** The **cross product** (*uitproduct*, *vectorproduct*) of $\vec a$ and $\vec b$ is

$$\vec a\times\vec b = (a_2b_3 - a_3b_2,\ a_3b_1 - a_1b_3,\ a_1b_2 - a_2b_1).$$

Memory aid: write $\vec a$ above $\vec b$; for the first coordinate cover the first column and take "up-left times down-right minus up-right times down-left" of the $2\times 2$ block that remains; for the second component use the cyclic order (third, first).

**Properties.**

1. $\vec a\times\vec b$ is perpendicular to both $\vec a$ and $\vec b$. *Check:* $\vec a\cdot(\vec a\times\vec b) = a_1(a_2b_3 - a_3b_2) + a_2(a_3b_1 - a_1b_3) + a_3(a_1b_2 - a_2b_1) = 0$, since all six terms cancel in pairs.
2. $\vec b\times\vec a = -\vec a\times\vec b$ and $\vec a\times\vec a = \vec 0$.
3. $\lvert\vec a\times\vec b\rvert = \lvert\vec a\rvert\lvert\vec b\rvert\sin\theta$, which is the **area of the parallelogram** spanned by $\vec a$ and $\vec b$. This follows from the Lagrange identity $\lvert\vec a\times\vec b\rvert^2 = \lvert\vec a\rvert^2\lvert\vec b\rvert^2 - (\vec a\cdot\vec b)^2$ (problem 26).
4. The direction follows the **right-hand rule**: $(1, 0, 0)\times(0, 1, 0) = (0, 0, 1)$.
5. $\vec a\times\vec b = \vec 0$ iff $\vec a$ and $\vec b$ are parallel (or one is zero).

**Example.** $(1, 2, 3)\times(4, 5, 6) = (2\cdot6 - 3\cdot5,\ 3\cdot4 - 1\cdot6,\ 1\cdot5 - 2\cdot4) = (-3, 6, -3)$. Check: $(-3, 6, -3)\cdot(1, 2, 3) = -3 + 12 - 9 = 0$. ✓

**Volume.** The parallelepiped spanned by $\vec a, \vec b, \vec c$ has volume $\lvert(\vec a\times\vec b)\cdot\vec c\rvert$ (base area times height). A tetrahedron has one sixth of that.

---

## 11. Lines and planes in space

**Line.** $\vec x = \vec p + \lambda\vec r$: a support vector (*steunvector*) $\vec p$ and a direction vector (*richtingsvector*) $\vec r$. In space a line has no single equation like $ax + by = c$; you need the vector form (or two equations).

**Plane.** A plane is determined by a point $\vec p$ and a **normal vector** (*normaalvector*) $\vec n \ne \vec 0$ perpendicular to it. Point $X$ lies in the plane iff $\overrightarrow{PX}\perp\vec n$:

$$\vec n\cdot(\vec x - \vec p) = 0 \iff n_1x + n_2y + n_3z = d \quad\text{with } d = \vec n\cdot\vec p.$$

So **the coefficients of $x, y, z$ in the equation of a plane form a normal vector**.

**Plane through three points.** $A(1, 0, 0)$, $B(0, 2, 0)$, $C(0, 0, 3)$: $\overrightarrow{AB} = (-1, 2, 0)$, $\overrightarrow{AC} = (-1, 0, 3)$, normal $\vec n = \overrightarrow{AB}\times\overrightarrow{AC} = (6, 3, 2)$. Equation $6x + 3y + 2z = 6$ (fill in $A$). Check with $B$ and $C$: $6 = 6$, $6 = 6$. ✓ (This plane has intercepts $1, 2, 3$, and indeed $\frac x1 + \frac y2 + \frac z3 = 1$.)

**Angles.**

- Between two planes: the angle between their normal vectors (take the acute one): $\cos\theta = \dfrac{\lvert\vec n_1\cdot\vec n_2\rvert}{\lvert\vec n_1\rvert\lvert\vec n_2\rvert}$.
- Between a line (direction $\vec r$) and a plane (normal $\vec n$): $\sin\theta = \dfrac{\lvert\vec r\cdot\vec n\rvert}{\lvert\vec r\rvert\lvert\vec n\rvert}$ (the complement of the angle with the normal).

**Distance from a point to a plane.** For $V: ax + by + cz = d$ and $P(p, q, s)$:

$$d(P, V) = \frac{\lvert ap + bq + cs - d\rvert}{\sqrt{a^2 + b^2 + c^2}}.$$

**Intersection of two planes** is a line with direction $\vec n_1\times\vec n_2$ (perpendicular to both normals); find one point by setting one coordinate to $0$ (problem 22).

**Intersection of a line and a plane.** Substitute $\vec x = \vec p + \lambda\vec r$ into the plane equation and solve for $\lambda$.

---

## 12. Common mistakes

1. **Proving from the figure.** "It looks perpendicular" is not a reason. Each step needs a named fact.
2. **Assuming what you want to prove.** In particular, using the converse of a theorem instead of the theorem.
3. **Forgetting the case distinction** in the inscribed angle theorem, or assuming the centre is inside the triangle.
4. **Using "opposite angles add to $180°$" for a quadrilateral not known to be cyclic.**
5. **Mixing up $c^2 = a^2 - b^2$ (ellipse) and $c^2 = a^2 + b^2$ (hyperbola).**
6. **Squaring without care** when deriving a locus: squaring can add points (check them), and $\sqrt{(\ldots)} = \lvert y + p\rvert$ needs the absolute value.
7. **Cross product sign errors**, especially in the middle component. Always check perpendicularity with the dot product afterwards.
8. **Taking the obtuse angle** between planes or lines when the acute one is asked for (use $\lvert\cdot\rvert$ in the formula).
9. **Thinking a line in space has an equation $ax + by + cz = d$.** That is a plane.

---

## 13. Going further

- **Ptolemy's theorem.** In a cyclic quadrilateral $ABCD$: $AC\cdot BD = AB\cdot CD + AD\cdot BC$ (problem 25). Applied to a rectangle it gives Pythagoras; applied to a regular pentagon it gives the golden ratio.
- **The nine-point circle.** The midpoints of the sides, the feet of the altitudes and the midpoints of $AH$, $BH$, $CH$ all lie on one circle. Prove it using Thales circles.
- **Dandelin spheres.** Why is the cross-section of a cone with a plane an ellipse with the foci defined as above? Put two spheres in the cone touching the plane: they touch it exactly in the foci. Beautiful and short; look it up after you have proved the reflection property.
- **Projective geometry.** Pascal's theorem: for six points on a conic, the three intersection points of opposite sides of the hexagon are collinear.
- **Olympiad geometry.** The [olympiad module O4](../../olympiad/O4-olympiad-geometry/) builds on everything in §1–5: power of a point, radical axes, homothety.
- **University connection.** Cross products and planes return in linear algebra (determinants, the [parent's module 1.3](../../../adult-masters/01-refresher/1.3-linear-algebra/)) and in multivariable calculus ([module 1.5](../../../adult-masters/01-refresher/1.5-multivariable-calculus/)).
