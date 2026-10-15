# E3 Solutions: geometry, proof and conic sections

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

Computational answers were checked with SymPy.

## Practice

**1.** By Thales, $\angle ACB = 90°$, so $AB = \sqrt{36 + 64} = 10$ and the radius is $5$. $\tan\angle CAB = \frac{BC}{AC} = \frac86$, so $\angle CAB \approx 53.1°$.

**2.** (a) $\frac12\cdot110° = 55°$.
(b) Then $\angle ACB$ is an inscribed angle on the major arc, whose central angle is $360° - 110° = 250°$: $\angle ACB = 125°$. (Equivalently: $C$ on the minor arc and any point on the major arc form a cyclic quadrilateral with $A$ and $B$, so the angles add to $180°$.)

**3.** Opposite angles add to $180°$: $\angle C = 180° - 78° = 102°$, $\angle D = 180° - 95° = 85°$. (Check: total $360°$.)

**4.** By the tangent–chord theorem $\angle ACB = 40°$. For $D$ on the other arc, $ACBD$ is a cyclic quadrilateral, so $\angle ADB = 180° - 40° = 140°$.

**5.** $\sqrt{x^2 + (y - 2)^2} = \lvert y + 2\rvert \Rightarrow x^2 - 4y + 4 = 4y + 4 \Rightarrow x^2 = 8y$, i.e. $y = \frac18x^2$.
For $y = \frac14x^2$: $x^2 = 4y = 4py$ with $p = 1$: focus $(0, 1)$, directrix $y = -1$.

**6.** $a = 5$, $b = 3$, $c = \sqrt{25 - 9} = 4$: foci $(\pm4, 0)$, and $PF_1 + PF_2 = 2a = 10$.

**7.** $a = 4$, $b = 3$, $c = \sqrt{16 + 9} = 5$: foci $(\pm5, 0)$; asymptotes $y = \pm\frac34x$.

**8.** $(2\cdot6 - 3\cdot5,\ 3\cdot4 - 1\cdot6,\ 1\cdot5 - 2\cdot4) = (-3, 6, -3)$. Checks: $(-3, 6, -3)\cdot(1, 2, 3) = -3 + 12 - 9 = 0$ and $(-3, 6, -3)\cdot(4, 5, 6) = -12 + 30 - 18 = 0$. ✓

**9.** $\overrightarrow{AB} = (-1, 2, 0)$, $\overrightarrow{AC} = (-1, 0, 3)$, $\vec n = \overrightarrow{AB}\times\overrightarrow{AC} = (2\cdot3 - 0\cdot0,\ 0\cdot(-1) - (-1)\cdot3,\ (-1)\cdot0 - 2\cdot(-1)) = (6, 3, 2)$. Plane: $6x + 3y + 2z = d$, with $A$: $d = 6$. So $6x + 3y + 2z = 6$; $B$: $6$ ✓, $C$: $6$ ✓.

**10.** (a) $d = \dfrac{\lvert 2 - 1 + 2 - 9\rvert}{\sqrt{4 + 1 + 4}} = \dfrac63 = 2$.
(b) Substitute: $2(1 + \lambda) - (1 + 2\lambda) + 2(1 + 2\lambda) = 3 + 4\lambda = 9$, so $\lambda = \frac32$ and the point is $(\frac52, 4, 4)$. Check: $5 - 4 + 8 = 9$ ✓. Angle: $\sin\theta = \dfrac{\lvert(1, 2, 2)\cdot(2, -1, 2)\rvert}{3\cdot3} = \dfrac{4}{9}$, so $\theta \approx 26.4°$.

## Exam-level

**11.** $\overrightarrow{CA} = -\vec a - \vec c$ and $\overrightarrow{CB} = \vec a - \vec c$. Then

$$\overrightarrow{CA}\cdot\overrightarrow{CB} = (-\vec a - \vec c)\cdot(\vec a - \vec c) = -\lvert\vec a\rvert^2 + \vec a\cdot\vec c - \vec c\cdot\vec a + \lvert\vec c\rvert^2 = \lvert\vec c\rvert^2 - \lvert\vec a\rvert^2.$$

For $C \ne A, B$: $\angle ACB = 90° \iff \overrightarrow{CA}\cdot\overrightarrow{CB} = 0 \iff \lvert\vec c\rvert = \lvert\vec a\rvert \iff MC = MA$, i.e. $C$ is on the circle with diameter $AB$. This proves Thales and its converse at once.

**12.** *Gegeven:* acute triangle $ABC$, $AD\perp BC$, $BE\perp AC$, $H = AD\cap BE$.
(a) $\angle ADB = 90°$ and $\angle AEB = 90°$ (altitudes). By the converse of Thales, $D$ and $E$ both lie on the circle with diameter $AB$. So $A, B, D, E$ are concyclic.
(b) In quadrilateral $CDHE$: $\angle HDC = 90°$ and $\angle HEC = 90°$, so opposite angles add up to $180°$. By the converse of the cyclic quadrilateral theorem, $C, D, H, E$ are concyclic. (Or: both $D$ and $E$ lie on the Thales circle of $CH$.)
(c) $ABDE$ is a cyclic quadrilateral (part (a); since the triangle is acute, $D$ is between $B$ and $C$ and $E$ between $A$ and $C$, so the vertices are in the order $A, B, D, E$ around the circle). So $\angle EAB + \angle BDE = 180°$. Since $B, D, C$ are collinear, $\angle CDE = 180° - \angle BDE = \angle EAB = \angle CAB$. Together with the common angle at $C$, triangles $CDE$ and $CAB$ are similar (hh).

**13.** *Gegeven:* circles $\Gamma_1, \Gamma_2$ meeting in $P, Q$; $A \in \Gamma_1$, $B \in \Gamma_2$ on a line through $P$, $P$ between $A$ and $B$.
In $\Gamma_1$, $\angle QAP$ is an inscribed angle on the fixed chord $QP$, so it is the same for all positions of $A$ on the same arc (inscribed angle theorem). Likewise $\angle QBP$ is constant in $\Gamma_2$. Since $P$ lies on segment $AB$, $\angle QAB = \angle QAP$ and $\angle QBA = \angle QBP$. In triangle $AQB$:

$$\angle AQB = 180° - \angle QAP - \angle QBP,$$

which is constant. (In fact all triangles $AQB$ obtained this way are similar, and $Q$ is the centre of the spiral similarity taking $\Gamma_1$ to $\Gamma_2$; compare E2 §10.)

**14.** Let $\vec a, \vec b, \vec c, \vec h$ be position vectors and $H$ the intersection of the altitudes from $A$ and $B$, so

$$(\vec h - \vec a)\cdot(\vec b - \vec c) = 0, \qquad (\vec h - \vec b)\cdot(\vec c - \vec a) = 0.$$

Add the two equations and expand:

$$\vec h\cdot\vec b - \vec h\cdot\vec c - \vec a\cdot\vec b + \vec a\cdot\vec c + \vec h\cdot\vec c - \vec h\cdot\vec a - \vec b\cdot\vec c + \vec b\cdot\vec a = 0,$$

which simplifies to $\vec h\cdot(\vec b - \vec a) - \vec c\cdot(\vec b - \vec a) = 0$, i.e. $(\vec h - \vec c)\cdot(\vec b - \vec a) = 0$. So $CH\perp AB$ (or $H = C$, in a right-angled triangle): $H$ lies on the third altitude too.

**15.** Let the quadrilateral be $ABCD$ with position vectors $\vec a, \vec b, \vec c, \vec d$, and midpoints $P = \frac12(\vec a + \vec b)$, $Q = \frac12(\vec b + \vec c)$, $R = \frac12(\vec c + \vec d)$, $S = \frac12(\vec d + \vec a)$. Then

$$\overrightarrow{PQ} = \tfrac12(\vec c - \vec a) = \overrightarrow{SR}.$$

Equal vectors: $PQ$ and $SR$ are parallel and equally long, so $PQRS$ is a parallelogram. (Both sides are parallel to the diagonal $AC$ and half as long.) The proof works for non-convex and even non-planar quadrilaterals.

**16.** $x^2 + y^2 = 4((x - 3)^2 + y^2) \iff 3x^2 + 3y^2 - 24x + 36 = 0 \iff x^2 - 8x + y^2 + 12 = 0 \iff (x - 4)^2 + y^2 = 4$. All points of this circle satisfy the original condition (the squaring was between non-negative quantities). The locus is the circle with centre $(4, 0)$ and radius $2$ (circle of Apollonius). Check: $(2, 0)$: $PA = 2$, $PB = 1$ ✓; $(6, 0)$: $6 = 2\cdot3$ ✓.

**17.** A circle with centre $(x, y)$ touching the $x$-axis has radius $\lvert y\rvert$; passing through $F$ means $\sqrt{x^2 + (y - 2)^2} = \lvert y\rvert$. Squaring: $x^2 - 4y + 4 = 0$, i.e. $y = \frac14x^2 + 1$. A parabola: the centre is equidistant from the point $F(0, 2)$ and the line $y = 0$, so the focus is $F(0, 2)$ and the directrix is the $x$-axis; the vertex is $(0, 1)$.

**18.** (a) Implicit differentiation: $2yy' = 4$, so at $(4, 4)$: $y' = \frac12$. Tangent: $y = \frac12x + 2$.
(b) $y = 0$ gives $T(-4, 0)$. $FT = 1 - (-4) = 5$ and $FP = \sqrt{3^2 + 4^2} = 5$. ✓
(c) Triangle $FPT$ is isosceles with $FT = FP$, so $\angle FPT = \angle FTP$. The horizontal line $h$ through $P$ is parallel to the $x$-axis, so the angle between $h$ and the tangent equals $\angle FTP$ (corresponding angles, *F-hoeken*). Hence the tangent makes equal angles with $PF$ and with $h$: a ray along $h$ is reflected through $F$.

**19.** (a) $c = 3$, and $(0, 4)$ is an endpoint of the minor axis, so $b = 4$, $a^2 = b^2 + c^2 = 25$: $\dfrac{x^2}{25} + \dfrac{y^2}{16} = 1$.
(b) $\frac{9}{25} + \frac{256/25}{16} = \frac{9}{25} + \frac{16}{25} = 1$ ✓. Tangent: $\dfrac{3x}{25} + \dfrac{(16/5)y}{16} = 1$, i.e. $\dfrac{3x}{25} + \dfrac{y}{5} = 1$ (or $3x + 5y = 25$).
(c) $PF_2 = \frac{16}5$ (vertical distance, $F_2 = (3, 0)$); $PF_1 = \sqrt{36 + \frac{256}{25}} = \sqrt{\frac{1156}{25}} = \frac{34}5$. Sum: $\frac{50}5 = 10 = 2a$ ✓.

**20.** (a) $\frac{25}9 - \frac{256/9}{16} = \frac{25 - 16}{9} = 1$ ✓. $c^2 = 9 + 16 = 25$: $F_{1,2} = (\mp5, 0)$. $PF_2 = \frac{16}3$, $PF_1 = \sqrt{100 + \frac{256}9} = \frac{34}3$; difference $\frac{18}3 = 6 = 2a$ ✓.
(b) Tangent: $\dfrac{5x}{9} - \dfrac{(16/3)y}{16} = 1$, i.e. $\dfrac{5x}9 - \dfrac y3 = 1$. With $y = 0$: $T(\frac95, 0)$.
(c) $TF_1 = \frac95 + 5 = \frac{34}{5}$, $TF_2 = 5 - \frac95 = \frac{16}5$, so $TF_1 : TF_2 = 34 : 16 = PF_1 : PF_2$. $T$ lies between $F_1$ and $F_2$. The internal bisector of $\angle F_1PF_2$ meets $F_1F_2$ in the unique point dividing it internally in this ratio, which is $T$. So line $PT$, the tangent, is the internal bisector.

**21.** Normals $(1, 1, 0)$ and $(0, 1, 1)$: $\cos\theta = \dfrac{1}{\sqrt2\sqrt2} = \dfrac12$, $\theta = 60°$.

**22.** Direction: $(1, 1, 1)\times(1, -1, 2) = (1\cdot2 - 1\cdot(-1),\ 1\cdot1 - 1\cdot2,\ 1\cdot(-1) - 1\cdot1) = (3, -1, -2)$. A point: put $z = 0$: $x + y = 6$, $x - y = 3$, so $x = \frac92$, $y = \frac32$. Line: $\vec x = (\frac92, \frac32, 0) + \lambda(3, -1, -2)$. Check: direction is perpendicular to both normals ($3 - 1 - 2 = 0$, $3 + 1 - 4 = 0$) ✓.

**23.** (a) $\overrightarrow{AB} = (-1, 1, 0)$, $\overrightarrow{AC} = (-1, 0, 1)$, cross product $(1, 1, 1)$ with length $\sqrt3$. Area $= \frac{\sqrt3}2$.
(b) $\frac16\lvert((1, 0, 0)\times(0, 1, 0))\cdot(0, 0, 1)\rvert = \frac16$.
(c) Volume $= \frac13\cdot\text{area}\cdot h$: $\frac16 = \frac13\cdot\frac{\sqrt3}2h$, so $h = \frac{1}{\sqrt3}$. The plane is $x + y + z = 1$; distance formula: $\frac{\lvert0 - 1\rvert}{\sqrt3} = \frac1{\sqrt3}$ ✓.

## Challenge

**24.** Let $t$ be the external bisector of $\angle F_1PF_2$ at $P$, i.e. the line through $P$ bisecting the angle between ray $PF_2$ and the ray $PX$ opposite to $PF_1$. Let $F_2'$ be the reflection of $F_2$ in $t$.
- Reflection in $t$ swaps the two rays that $t$ bisects, so it maps ray $PF_2$ onto ray $PX$. Hence $F_2'$ lies on ray $PX$, i.e. on line $F_1P$ beyond $P$, with $PF_2' = PF_2$.
- Therefore $F_1F_2' = F_1P + PF_2' = PF_1 + PF_2 = 2a$.
- Let $Q \ne P$ be on $t$. Since $t$ is the perpendicular bisector of $F_2F_2'$ (or $F_2 = F_2'$ lies on $t$, which happens only in the degenerate case $P$ on line $F_1F_2$), $QF_2 = QF_2'$. Then

$$QF_1 + QF_2 = QF_1 + QF_2' \ge F_1F_2' = 2a,$$

with equality only if $Q$ is on segment $F_1F_2'$. But that segment meets $t$ only at $P$ (line $F_1F_2'$ is not $t$, since $F_1 \notin t$: $t$ is perpendicular to the internal bisector at $P$). So $QF_1 + QF_2 > 2a$: $Q$ lies outside the ellipse.
- So $t$ meets the closed region $E = \{X : XF_1 + XF_2 \le 2a\}$ only in $P$. The region $E$ is convex: if $X, Y \in E$ and $Z = (1 - s)X + sY$ with $0 \le s \le 1$, then by the triangle inequality $ZF_1 \le (1 - s)XF_1 + sYF_1$, similarly for $F_2$, and adding gives $ZF_1 + ZF_2 \le 2a$. A line through a boundary point of a convex region that does not enter the region is a supporting line, and at a point where the boundary is a smooth curve the only supporting line is the tangent.

So the tangent at $P$ is the external bisector: the angle between the tangent and $PF_1$ equals the angle between the tangent and $PF_2$. Light from $F_1$ reflects to $F_2$.

**25.** Choose $K$ on diagonal $AC$ with $\angle ABK = \angle DBC$.
- *Triangles $ABK$ and $DBC$:* $\angle ABK = \angle DBC$ (construction) and $\angle BAK = \angle BAC = \angle BDC$ (inscribed angles on arc $BC$). So they are similar (hh), and $\dfrac{AK}{AB} = \dfrac{DC}{DB}$, i.e. $AK\cdot BD = AB\cdot CD$.
- *Triangles $KBC$ and $ABD$:* adding $\angle KBD$ to both sides of $\angle ABK = \angle DBC$ gives $\angle ABD = \angle KBC$; and $\angle BCK = \angle BCA = \angle BDA$ (inscribed angles on arc $AB$). So they are similar, and $\dfrac{CK}{CB} = \dfrac{DA}{DB}$, i.e. $CK\cdot BD = AD\cdot BC$.
- Add: $(AK + KC)\cdot BD = AB\cdot CD + AD\cdot BC$, and $AK + KC = AC$. $\blacksquare$

Rectangle with sides $p, q$ and diagonal $d$: $d\cdot d = p\cdot p + q\cdot q$. Pythagoras.

**26.** (a) Write out both sides. Left:

$$(a_2b_3 - a_3b_2)^2 + (a_3b_1 - a_1b_3)^2 + (a_1b_2 - a_2b_1)^2.$$

Right: $(a_1^2 + a_2^2 + a_3^2)(b_1^2 + b_2^2 + b_3^2) - (a_1b_1 + a_2b_2 + a_3b_3)^2$. In the right side the terms $a_i^2b_i^2$ cancel, leaving $\sum_{i \ne j}a_i^2b_j^2 - 2\sum_{i<j}a_ib_ia_jb_j = \sum_{i<j}(a_i^2b_j^2 + a_j^2b_i^2 - 2a_ib_ja_jb_i) = \sum_{i<j}(a_ib_j - a_jb_i)^2$, which is the left side. (SymPy confirms the difference expands to $0$.)
(b) With $\vec a\cdot\vec b = \lvert\vec a\rvert\lvert\vec b\rvert\cos\theta$: $\lvert\vec a\times\vec b\rvert^2 = \lvert\vec a\rvert^2\lvert\vec b\rvert^2(1 - \cos^2\theta) = \lvert\vec a\rvert^2\lvert\vec b\rvert^2\sin^2\theta$, and $\sin\theta \ge 0$ for $0 \le \theta \le \pi$. The parallelogram has base $\lvert\vec a\rvert$ and height $\lvert\vec b\rvert\sin\theta$.
(c) The left side of (a) is $\ge 0$, so $(\vec a\cdot\vec b)^2 \le \lvert\vec a\rvert^2\lvert\vec b\rvert^2$. Equality iff $\vec a\times\vec b = \vec 0$, i.e. iff $\vec a$ and $\vec b$ are parallel (one is a multiple of the other). Note that this proves Cauchy–Schwarz *without* using angles, which is good: it is what justifies defining the angle by $\cos\theta = \frac{\vec a\cdot\vec b}{\lvert\vec a\rvert\lvert\vec b\rvert}$ in the first place.
