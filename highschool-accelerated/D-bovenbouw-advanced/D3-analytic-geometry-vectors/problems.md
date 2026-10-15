# D3 Analytic geometry, vectors and motion: problems

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

Three sections: **Practice** (one skill at a time), **CE level** (*centraal-examenniveau*: multi-part questions in the style of the Wiskunde B central exam, with points per part as a rough guide to how much work is expected) and **Challenge** (proofs and extensions).

"Bereken exact" (calculate exactly) means: no calculator values, answer with fractions, roots and $\pi$. "Toon aan" (show that) means: the answer is given; the points are for the argument. Unless stated otherwise, a graphing calculator is allowed, as in the CE.

---

## Practice

**1.** Line $l$ passes through $A(2, -1)$ and $B(5, 5)$.
a. Give the direction coefficient (*richtingscoëfficiënt*) of $l$ and an equation of the form $y = mx + b$.
b. Give an equation of the form $ax + by = c$ and a normal vector (*normaalvector*) of $l$.
c. Give a vector form (*vectorvoorstelling*) of $l$.

**2.** Given are $k: 3x + 4y = 12$ and $l: \begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}1\\7\end{pmatrix} + t\begin{pmatrix}2\\-1\end{pmatrix}$.
a. Calculate the coordinates of the intersection point of $k$ and $l$.
b. Calculate the angle between $k$ and $l$ in degrees, rounded to one decimal.

**3.** Given are $\vec a = \begin{pmatrix}3\\4\end{pmatrix}$ and $\vec b = \begin{pmatrix}-2\\5\end{pmatrix}$.
a. Calculate $\lVert\vec a\rVert$, $\lVert\vec b\rVert$, the unit vector in the direction of $\vec a$, and $\vec a + 2\vec b$.
b. Calculate $\vec a\cdot\vec b$ and the angle between $\vec a$ and $\vec b$ (one decimal).
c. Calculate exactly the value of $p$ for which $\begin{pmatrix}p\\2\end{pmatrix}$ is perpendicular to $\vec a$.

**4.** Calculate exactly the distance from $P(4, 3)$ to the line $2x - y = 1$.

**5.** Calculate the distance between the parallel lines $3x + 4y = 7$ and $6x + 8y = -1$.

**6.** Circle $c$ has equation $x^2 + y^2 - 6x + 4y - 12 = 0$.
a. Find the centre and radius of $c$ by completing the square (*kwadraatafsplitsen*).
b. Show that $T(6, 2)$ lies on $c$.
c. Find an equation of the tangent (*raaklijn*) to $c$ at $T$.

**7.** Find an equation of the circle with centre $M(1, 2)$ that passes through $A(4, 6)$. Give it both in the form $(x - p)^2 + (y - q)^2 = r^2$ and in expanded form.

**8.** Calculate the intersection points of the line $y = x + 1$ and the circle $x^2 + y^2 = 13$.

**9.** A point moves according to $x(t) = t^2 - 1$, $y(t) = t^3 - 3t$, $t \in \mathbb{R}$.
a. Give the velocity vector (*snelheidsvector*) at $t = 2$ and calculate exactly the speed (*baansnelheid*) at that moment.
b. Show that the curve passes through $(3, 2)$.
c. Find the points where the curve has a horizontal tangent and the points where it has a vertical tangent.
d. Find the double point (*dubbelpunt*) of the curve and calculate the angle at which the curve crosses itself there.

**10.** A point moves according to $x(t) = 1 + 3\cos 2t$, $y(t) = -2 + 3\sin 2t$.
a. Show that the path is a circle, and give its centre and radius.
b. Show that the speed is constant.
c. Show that the acceleration vector (*versnellingsvector*) is always perpendicular to the velocity vector and points towards the centre of the circle.

**11.** A point moves according to $x(t) = \cos t$, $y(t) = \cos 2t$, $0 \le t \le 2\pi$.
a. Show that every point of the path lies on the parabola $y = 2x^2 - 1$.
b. Which part of the parabola is traced out?
c. At which values of $t$ is the point at $(\tfrac12, -\tfrac12)$?

---

## CE level

**12.** Given are $A(1, 1)$, $B(7, 3)$ and $C(3, 7)$.
a. (3p) Calculate exactly $\cos\angle A$ of triangle $ABC$, and give $\angle A$ in degrees (one decimal).
b. (4p) Calculate exactly the distance from $C$ to line $AB$, and use it to calculate the area of triangle $ABC$.
c. (4p) Find an equation of the circumcircle (*omgeschreven cirkel*) of triangle $ABC$.
d. (3p) Point $D$ is chosen so that $ABDC$ is a parallelogram. Give the coordinates of $D$ and show that the diagonals of $ABDC$ are perpendicular.

**13.** Given are point $P(1, 5)$ and line $l: \begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}0\\1\end{pmatrix} + t\begin{pmatrix}2\\1\end{pmatrix}$.
a. (2p) Find an equation of $l$ of the form $ax + by = c$.
b. (4p) Calculate exactly the coordinates of the foot $F$ of the perpendicular from $P$ to $l$ (*de loodrechte projectie van $P$ op $l$*).
c. (2p) Calculate the coordinates of the mirror image $P'$ of $P$ in $l$.
d. (3p) Calculate exactly the distance from $P$ to $l$ in two different ways.

**14.** For every real number $p$ the line $l_p$ is given by $px - y = 3p - 1$.
a. (2p) Show that all lines $l_p$ pass through the point $Q(3, 1)$.
b. (4p) Calculate exactly the values of $p$ for which the distance from $O(0, 0)$ to $l_p$ equals $\sqrt5$.
c. (2p) Show that the two lines found in b are perpendicular.
d. (4p) Calculate exactly the largest possible distance from $O$ to $l_p$, and the value of $p$ for which it occurs. There is one line through $Q$ that is not of the form $l_p$. Which one?

**15.** Circle $c$ has centre $M(2, 1)$ and radius 5. Point $P$ is $(9, 2)$.
a. (2p) Show that $P$ lies outside $c$.
b. (5p) The lines through $P$ with direction coefficient $a$ have equation $y = a(x - 9) + 2$. Calculate exactly the values of $a$ for which such a line touches $c$.
c. (4p) Calculate the points $T_1$ and $T_2$ where these tangent lines touch $c$.
d. (3p) Show that the quadrilateral $MT_1PT_2$ is a square.

**16.** Given are the circles $c_1: x^2 + y^2 = 25$ and $c_2: (x - 7)^2 + (y - 1)^2 = 25$.
a. (4p) Calculate the intersection points of $c_1$ and $c_2$.
b. (2p) Calculate exactly the length of the common chord.
c. (3p) Show that the circles intersect at right angles (*elkaar loodrecht snijden*), that is: at each intersection point the tangents to the two circles are perpendicular.

**17.** Two points move in the plane, for $t \ge 0$:
$$
P:\ \begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}-3 + 2t\\1 + t\end{pmatrix}, \qquad Q:\ \begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}5 - t\\-2 + 3t\end{pmatrix}.
$$
a. (3p) The paths of $P$ and $Q$ intersect. Calculate the intersection point.
b. (2p) Investigate whether $P$ and $Q$ collide.
c. (3p) Calculate the angle between the paths (one decimal).
d. (5p) Calculate exactly the smallest distance between $P$ and $Q$, and the positions of $P$ and $Q$ at that moment.

**18.** A point moves according to $x(t) = \sin t$, $y(t) = \sin 2t$, $0 \le t \le 2\pi$ (a Lissajous figure, *lissajousfiguur*).
a. (4p) The curve passes through the origin twice. Calculate the angle (one decimal) at which the curve crosses itself there.
b. (4p) Calculate exactly the points where the tangent is horizontal and the points where it is vertical.
c. (3p) Show that every point of the curve satisfies $y^2 = 4x^2(1 - x^2)$.
d. (4p) Calculate exactly the points of the curve on the line $y = x$.
e. (4p) Calculate exactly the maximum speed of the point.

**19.** A point on the rim of a rolling wheel describes the cycloid (*cycloïde*) $x(t) = t - \sin t$, $y(t) = 1 - \cos t$, $0 \le t \le 2\pi$.
a. (4p) Show that the speed is $v(t) = 2\sin\tfrac12 t$ for $0 \le t \le 2\pi$, and give the maximum speed and the point where it occurs.
b. (3p) Show that the acceleration vector always has length 1.
c. (3p) Find an equation of the tangent to the cycloid at $t = \tfrac12\pi$.
d. (2p) What happens to the velocity at $t = 0$ and $t = 2\pi$? What does the curve look like there?

**20.** A point moves according to $x(t) = 4\cos t$, $y(t) = 2\sin t$, $0 \le t \le 2\pi$.
a. (2p) Show that the path satisfies $\dfrac{x^2}{16} + \dfrac{y^2}{4} = 1$.
b. (5p) Show that $v(t)^2 = 4 + 12\sin^2 t$, and give the maximum and minimum speed and the points where they occur.
c. (3p) Show that the acceleration vector always points from the moving point to the origin.
d. (3p) Calculate exactly at which points the velocity vector is perpendicular to the position vector $\vec{OP}$.
e. (4p) Find an exact equation of the tangent at $t = \tfrac13\pi$.

---

## Challenge

**21.** (Angle bisectors) Given $k: 3x + 4y = 12$ and $l: 5x - 12y = 4$.
a. Find equations of the two angle bisectors (*bissectrices*) of $k$ and $l$, using the fact that they consist of the points at equal distance from $k$ and $l$.
b. Show that these bisectors are perpendicular.
c. Prove that for *any* two intersecting lines the two angle bisectors are perpendicular. Hint: use unit normal vectors $\vec u$ and $\vec w$ and compute $(\vec u + \vec w)\cdot(\vec u - \vec w)$.

**22.** (Vector proofs)
a. Prove with the dot product that the diagonals of a rhombus (*ruit*) are perpendicular. Hint: put the rhombus at $O$ with sides $\vec a$ and $\vec b$, $\lVert\vec a\rVert = \lVert\vec b\rVert$.
b. Prove Thales' theorem: if $AB$ is a diameter of a circle and $C$ is another point of the circle, then $\angle ACB = 90^\circ$. Hint: put the centre at $O$, so $\vec{OB} = -\vec{OA}$.
c. Prove the converse of a: a parallelogram with perpendicular diagonals is a rhombus.

**23.** (Cauchy–Schwarz without angles)
a. Prove that for all real numbers $(u_1v_1 + u_2v_2)^2 \le (u_1^2 + u_2^2)(v_1^2 + v_2^2)$ by showing that the difference of the two sides is a perfect square. When does equality hold?
b. Deduce the triangle inequality $\lVert\vec u + \vec v\rVert \le \lVert\vec u\rVert + \lVert\vec v\rVert$.

**24.** (Circle of Apollonius) Let $A = (0, 0)$ and $B = (3, 0)$. Point $P$ moves so that $\lvert PA\rvert = 2\lvert PB\rvert$ at all times. Show that $P$ moves on a circle and find its centre and radius.

**25.** (Sliding ladder) A rod of length 2 slides with one end on the positive $x$-axis and the other on the positive $y$-axis. Write the ends as $(2\cos t, 0)$ and $(0, 2\sin t)$ with $0 \le t \le \tfrac12\pi$.
a. Show that the midpoint of the rod moves on a circle.
b. Point $R$ on the rod is at one third of the way from the end on the $x$-axis. Show that $R$ moves on the curve $\dfrac{9x^2}{16} + \dfrac{9y^2}{4} = 1$ (part of an ellipse).

**26.** (Area of a loop; uses [D2](../D2-integral-calculus/)) The curve of problem 9, $x = t^2 - 1$, $y = t^3 - 3t$, has a loop for $-\sqrt3 \le t \le \sqrt3$. The area enclosed by a closed parametric curve is $\left\lvert\displaystyle\int y(t)\,x'(t)\,dt\right\rvert$ over one round trip. Calculate exactly the area of the loop.

**27.** (Arc length; uses [D2](../D2-integral-calculus/)) Using $L = \displaystyle\int_{t_1}^{t_2}\sqrt{x'(t)^2 + y'(t)^2}\,dt$, calculate exactly the length of one arch of the cycloid of problem 19.

**28.** (Preview of Wiskunde D: three dimensions) Given $\vec a = \begin{pmatrix}1\\2\\2\end{pmatrix}$ and $\vec b = \begin{pmatrix}2\\-1\\2\end{pmatrix}$.
a. Calculate $\vec a\cdot\vec b$, $\lVert\vec a\rVert$, $\lVert\vec b\rVert$ and the angle between $\vec a$ and $\vec b$ (one decimal).
b. Find a nonzero vector perpendicular to both $\vec a$ and $\vec b$.
c. The plane $V$ has equation $x + 2y + 2z = 9$. Calculate the distance from $O$ to $V$, and prove the general formula $\dfrac{\lvert ax_0 + by_0 + cz_0 - d\rvert}{\sqrt{a^2 + b^2 + c^2}}$ by adapting the proof in [notes §5](notes.md#5-distance-from-a-point-to-a-line).
