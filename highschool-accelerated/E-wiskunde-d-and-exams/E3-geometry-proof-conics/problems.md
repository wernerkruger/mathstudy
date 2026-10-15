# E3 Problems: geometry, proof and conic sections

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

For proofs, use the layout *gegeven / te bewijzen / bewijs* and give a reason for every step. Draw a figure first.

## Practice

**1.** $AB$ is a diameter of a circle, $C$ is on the circle, $AC = 6$ and $BC = 8$. Find the radius and $\angle CAB$ (in degrees, one decimal).

**2.** $A$ and $B$ are on a circle with centre $M$, and the central angle $\angle AMB$ on the minor arc is $110°$. Find the inscribed angle $\angle ACB$ when (a) $C$ is on the major arc, (b) $C$ is on the minor arc.

**3.** $ABCD$ is a cyclic quadrilateral with $\angle A = 78°$ and $\angle B = 95°$. Find $\angle C$ and $\angle D$.

**4.** The tangent at $A$ to a circle makes an angle of $40°$ with the chord $AB$. $C$ is a point on the circle on the other side of $AB$ from that angle. Find $\angle ACB$. What is $\angle ADB$ for a point $D$ on the arc on the same side as the $40°$ angle?

**5.** Find the equation of the parabola with focus $F(0, 2)$ and directrix $y = -2$. Also give the focus and directrix of $y = \frac14x^2$.

**6.** For the ellipse $\dfrac{x^2}{25} + \dfrac{y^2}{9} = 1$, find the foci and the value of $PF_1 + PF_2$ for points $P$ on the ellipse.

**7.** For the hyperbola $\dfrac{x^2}{16} - \dfrac{y^2}{9} = 1$, find the foci and the asymptotes.

**8.** Compute $(1, 2, 3)\times(4, 5, 6)$ and check your answer with the inner product.

**9.** Find an equation of the plane through $A(1, 0, 0)$, $B(0, 2, 0)$ and $C(0, 0, 3)$.

**10.** (a) Find the distance from $P(1, 1, 1)$ to the plane $V: 2x - y + 2z = 9$.
(b) The line $\ell: \vec x = (1, 1, 1) + \lambda(1, 2, 2)$ meets $V$. Find the intersection point and the angle between $\ell$ and $V$.

## Exam-level

**11.** Prove the converse of Thales' theorem *analytically*: let $M$ be the origin, $A$ and $B$ have position vectors $-\vec a$ and $\vec a$, and $C$ have position vector $\vec c$. Show that $\angle ACB = 90°$ if and only if $\lvert\vec c\rvert = \lvert\vec a\rvert$.

**12.** In an acute triangle $ABC$ the altitudes $AD$ (with $D$ on $BC$) and $BE$ (with $E$ on $AC$) meet in $H$.
(a) Prove that $A, B, D, E$ lie on one circle.
(b) Prove that $C, D, H, E$ lie on one circle.
(c) Prove that $\angle CDE = \angle CAB$. (So triangle $CDE$ is similar to triangle $CAB$.)

**13.** Two circles meet in $P$ and $Q$. A line through $P$ meets the first circle again in $A$ and the second circle again in $B$, with $P$ between $A$ and $B$. Prove that $\angle AQB$ does not depend on the choice of the line.

**14.** Prove with vectors that the three altitudes of a triangle are concurrent. (Let $H$ be the intersection of the altitudes from $A$ and $B$ and show $\overrightarrow{CH}\perp\overrightarrow{AB}$.)

**15.** (Varignon) Prove that the midpoints of the sides of any quadrilateral form a parallelogram.

**16.** Given $A(0, 0)$ and $B(3, 0)$. Find the locus of points $P$ with $PA = 2PB$.

**17.** Find the locus of the centres of all circles that touch the $x$-axis and pass through $F(0, 2)$. Which conic is it? Give its focus and directrix.

**18.** $P(4, 4)$ lies on the parabola $y^2 = 4x$ with focus $F(1, 0)$.
(a) Find the tangent at $P$.
(b) The tangent meets the $x$-axis in $T$. Show that $FT = FP$.
(c) Deduce that the tangent makes equal angles with $PF$ and with the horizontal line through $P$ (the reflection property at this point).

**19.** An ellipse has foci $(\pm3, 0)$ and passes through $(0, 4)$.
(a) Find its equation.
(b) Check that $P(3, \frac{16}5)$ is on the ellipse and find the tangent at $P$.
(c) Verify that $PF_1 + PF_2 = 2a$.

**20.** Given the hyperbola $\dfrac{x^2}{9} - \dfrac{y^2}{16} = 1$ and the point $P(5, \frac{16}3)$.
(a) Show $P$ is on the hyperbola; find the foci and check that $\lvert PF_1 - PF_2\rvert = 2a$.
(b) Find the tangent at $P$ and its intersection $T$ with the $x$-axis.
(c) Use the angle bisector theorem (*bissectricestelling*: the internal bisector from $P$ divides $F_1F_2$ in the ratio $PF_1 : PF_2$) to show that the tangent bisects $\angle F_1PF_2$.

**21.** Find the angle between the planes $x + y = 3$ and $y + z = 1$.

**22.** Find a vector representation of the line of intersection of the planes $x + y + z = 6$ and $x - y + 2z = 3$.

**23.** (a) Find the area of the triangle with vertices $(1, 0, 0)$, $(0, 1, 0)$, $(0, 0, 1)$.
(b) Find the volume of the tetrahedron with these vertices and the origin.
(c) Use (a) and (b) to find the distance from the origin to the plane through the three points, and check with the distance formula.

## Challenge

**24.** Prove the reflection property of the ellipse in full: if $P$ is on the ellipse with foci $F_1, F_2$, then the external angle bisector of $\angle F_1PF_2$ at $P$ meets the ellipse only in $P$, and all other points of the ellipse lie on one side of it. Conclude that this bisector is the tangent.

**25.** (Ptolemy) Prove that for a cyclic quadrilateral $ABCD$:

$$AC\cdot BD = AB\cdot CD + AD\cdot BC.$$

(Hint: choose $K$ on $AC$ with $\angle ABK = \angle DBC$ and find two pairs of similar triangles.) Then apply it to a rectangle.

**26.** (a) Prove the Lagrange identity $\lvert\vec a\times\vec b\rvert^2 = \lvert\vec a\rvert^2\lvert\vec b\rvert^2 - (\vec a\cdot\vec b)^2$.
(b) Deduce that $\lvert\vec a\times\vec b\rvert = \lvert\vec a\rvert\lvert\vec b\rvert\sin\theta$, the area of the parallelogram spanned by $\vec a$ and $\vec b$.
(c) Deduce the Cauchy–Schwarz inequality $\lvert\vec a\cdot\vec b\rvert \le \lvert\vec a\rvert\lvert\vec b\rvert$ in $\mathbb{R}^3$, and say when equality holds.
