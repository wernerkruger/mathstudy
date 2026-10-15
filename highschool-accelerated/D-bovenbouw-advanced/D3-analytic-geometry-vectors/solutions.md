# D3 Analytic geometry, vectors and motion: solutions

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

Try each problem seriously before reading the solution. When your answer differs, find the exact step where your work and this solution part ways. All answers below were checked with computer algebra (SymPy).

---

## Practice

**1.**
a. $\vec{AB} = \begin{pmatrix}3\\6\end{pmatrix}$, so the rc is $m = \tfrac63 = 2$. Then $y = 2x + b$ with $-1 = 4 + b$, so $b = -5$: $\;y = 2x - 5$.
b. $2x - y = 5$, with normal vector $\begin{pmatrix}2\\-1\end{pmatrix}$ (any nonzero multiple is also correct).
c. $\begin{pmatrix}x\\y\end{pmatrix} = \begin{pmatrix}2\\-1\end{pmatrix} + t\begin{pmatrix}1\\2\end{pmatrix}$. Other support points and direction vectors are equally correct, e.g. $\begin{pmatrix}5\\5\end{pmatrix} + t\begin{pmatrix}3\\6\end{pmatrix}$.

**2.**
a. Substitute $x = 1 + 2t$, $y = 7 - t$ into $3x + 4y = 12$: $3 + 6t + 28 - 4t = 12$, so $2t = -19$ and $t = -\tfrac{19}{2}$. Then $x = 1 - 19 = -18$ and $y = 7 + \tfrac{19}{2} = 16\tfrac12$. Intersection point $(-18, 16\tfrac12)$. Check: $3\cdot(-18) + 4\cdot 16\tfrac12 = -54 + 66 = 12$.
b. Direction vector of $k$: $\begin{pmatrix}4\\-3\end{pmatrix}$ (perpendicular to the normal $\begin{pmatrix}3\\4\end{pmatrix}$). Direction vector of $l$: $\begin{pmatrix}2\\-1\end{pmatrix}$.
$$
\cos\varphi = \frac{\lvert 8 + 3\rvert}{5\cdot\sqrt5} = \frac{11}{5\sqrt5} \approx 0.9839, \qquad \varphi \approx 10.3^\circ.
$$

**3.**
a. $\lVert\vec a\rVert = \sqrt{9 + 16} = 5$, $\lVert\vec b\rVert = \sqrt{4 + 25} = \sqrt{29}$. Unit vector: $\begin{pmatrix}3/5\\4/5\end{pmatrix}$. $\vec a + 2\vec b = \begin{pmatrix}3 - 4\\4 + 10\end{pmatrix} = \begin{pmatrix}-1\\14\end{pmatrix}$.
b. $\vec a\cdot\vec b = -6 + 20 = 14$. $\cos\varphi = \dfrac{14}{5\sqrt{29}} \approx 0.520$, so $\varphi \approx 58.7^\circ$. (Between vectors, no absolute value: the dot product is positive here anyway.)
c. $\begin{pmatrix}p\\2\end{pmatrix}\cdot\begin{pmatrix}3\\4\end{pmatrix} = 3p + 8 = 0$, so $p = -\tfrac83$.

**4.** $d = \dfrac{\lvert 2\cdot4 - 3 - 1\rvert}{\sqrt{4 + 1}} = \dfrac{4}{\sqrt5} = \tfrac45\sqrt5$.

**5.** First make the coefficients equal: $6x + 8y = -1$ is the same line as $3x + 4y = -\tfrac12$. Distance:
$$
\frac{\lvert 7 - (-\tfrac12)\rvert}{\sqrt{9 + 16}} = \frac{7.5}{5} = 1.5.
$$
Check: $(1, 1)$ lies on the first line; its distance to $6x + 8y = -1$ is $\dfrac{\lvert 6 + 8 + 1\rvert}{10} = 1.5$.

**6.**
a. $(x - 3)^2 - 9 + (y + 2)^2 - 4 - 12 = 0$, so $(x - 3)^2 + (y + 2)^2 = 25$. Centre $M(3, -2)$, radius 5.
b. $(6 - 3)^2 + (2 + 2)^2 = 9 + 16 = 25$, so $T$ lies on $c$.
c. The tangent is perpendicular to $\vec{MT} = \begin{pmatrix}3\\4\end{pmatrix}$, so it is $3x + 4y = c$. Through $T$: $c = 18 + 8 = 26$. Tangent: $3x + 4y = 26$.

**7.** $r^2 = \lvert MA\rvert^2 = 3^2 + 4^2 = 25$. So $(x - 1)^2 + (y - 2)^2 = 25$, which expands to $x^2 + y^2 - 2x - 4y - 20 = 0$.

**8.** Substitute: $x^2 + (x + 1)^2 = 13$, so $2x^2 + 2x - 12 = 0$, i.e. $x^2 + x - 6 = (x + 3)(x - 2) = 0$. Then $x = 2$, $y = 3$ or $x = -3$, $y = -2$. Points $(2, 3)$ and $(-3, -2)$.

**9.** $x'(t) = 2t$, $y'(t) = 3t^2 - 3$.
a. $\vec v(2) = \begin{pmatrix}4\\9\end{pmatrix}$, speed $\sqrt{16 + 81} = \sqrt{97}$.
b. $x(t) = 3$ gives $t^2 = 4$, so $t = 2$ or $t = -2$. Now $y(2) = 8 - 6 = 2$. So at $t = 2$ the point is $(3, 2)$.
c. Horizontal: $y' = 0 \Leftrightarrow t = \pm1$; there $x' = \pm2 \neq 0$. Points: $t = 1$ gives $(0, -2)$, $t = -1$ gives $(0, 2)$.
Vertical: $x' = 0 \Leftrightarrow t = 0$; there $y' = -3 \neq 0$. Point $(-1, 0)$.
d. Since $x(-t) = x(t)$, two different parameter values with the same $x$ must be $t$ and $-t$ (because $t^2 = s^2$ with $s \neq t$ forces $s = -t$). Then also $y(-t) = y(t)$, and since $y(-t) = -y(t)$ this means $y(t) = 0$: $t(t^2 - 3) = 0$, and with $t \neq 0$ we get $t = \pm\sqrt3$. The double point is $(3 - 1, 0) = (2, 0)$.
Velocities: $\vec v(\pm\sqrt3) = \begin{pmatrix}\pm2\sqrt3\\6\end{pmatrix}$, each of length $\sqrt{12 + 36} = \sqrt{48}$.
$$
\cos\varphi = \frac{\lvert -12 + 36\rvert}{48} = \frac12, \qquad \varphi = 60^\circ.
$$

**10.**
a. $(x - 1)^2 + (y + 2)^2 = 9\cos^2 2t + 9\sin^2 2t = 9$. So the point lies on the circle with centre $(1, -2)$ and radius 3. As $t$ runs through an interval of length $\pi$, the angle $2t$ runs through $2\pi$, so the whole circle is traced.
b. $\vec v = \begin{pmatrix}-6\sin 2t\\6\cos 2t\end{pmatrix}$, so $v = \sqrt{36\sin^2 2t + 36\cos^2 2t} = 6$.
c. $\vec a = \begin{pmatrix}-12\cos 2t\\-12\sin 2t\end{pmatrix}$. Then $\vec v\cdot\vec a = 72\sin 2t\cos 2t - 72\cos 2t\sin 2t = 0$, so they are perpendicular. Moreover $\vec a = -4\begin{pmatrix}3\cos 2t\\3\sin 2t\end{pmatrix} = -4\begin{pmatrix}x - 1\\y + 2\end{pmatrix} = 4\,\vec{PM}$, where $M = (1, -2)$: a positive multiple of the vector from the point to the centre.

**11.**
a. $2x^2 - 1 = 2\cos^2 t - 1 = \cos 2t = y$.
b. $x = \cos t$ takes all values in $[-1, 1]$, so the arc of $y = 2x^2 - 1$ with $-1 \le x \le 1$, from $(1, 1)$ through $(0, -1)$ to $(-1, 1)$. It is traced back and forth: from $(1, 1)$ to $(-1, 1)$ for $0 \le t \le \pi$ and back for $\pi \le t \le 2\pi$.
c. $\cos t = \tfrac12$ gives $t = \tfrac13\pi$ or $t = \tfrac53\pi$. For both, $\cos 2t = -\tfrac12$ (check: $\cos\tfrac23\pi = -\tfrac12$ and $\cos\tfrac{10}{3}\pi = \cos\tfrac43\pi = -\tfrac12$). So $t = \tfrac13\pi$ and $t = \tfrac53\pi$.

---

## CE level

**12.**
a. $\vec{AB} = \begin{pmatrix}6\\2\end{pmatrix}$, $\vec{AC} = \begin{pmatrix}2\\6\end{pmatrix}$, $\vec{AB}\cdot\vec{AC} = 24$, $\lVert\vec{AB}\rVert = \lVert\vec{AC}\rVert = \sqrt{40}$. So $\cos\angle A = \tfrac{24}{40} = \tfrac35$ and $\angle A \approx 53.1^\circ$.
b. A normal vector of $AB$ is $\begin{pmatrix}1\\-3\end{pmatrix}$, so $AB: x - 3y = c$ with $c = 1 - 3 = -2$. Distance from $C$:
$$
\frac{\lvert 3 - 21 + 2\rvert}{\sqrt{10}} = \frac{16}{\sqrt{10}} = \tfrac85\sqrt{10}.
$$
Area $= \tfrac12\cdot\lvert AB\rvert\cdot d = \tfrac12\cdot\sqrt{40}\cdot\dfrac{16}{\sqrt{10}} = \tfrac12\cdot 2\cdot 16 = 16$.
c. The perpendicular bisector of $BC$: midpoint $(5, 5)$, and $\vec{BC} = \begin{pmatrix}-4\\4\end{pmatrix}$ is a normal vector, so $-4x + 4y = 0$, i.e. $y = x$. The perpendicular bisector of $AB$: midpoint $(4, 2)$, normal $\begin{pmatrix}3\\1\end{pmatrix}$, so $3x + y = 14$. Intersecting with $y = x$: $x = y = \tfrac72$. Radius squared: $\lvert MA\rvert^2 = (\tfrac52)^2 + (\tfrac52)^2 = \tfrac{25}{2}$.
$$
\left(x - \tfrac72\right)^2 + \left(y - \tfrac72\right)^2 = \tfrac{25}{2}, \quad\text{or}\quad x^2 + y^2 - 7x - 7y + 12 = 0.
$$
Check: $B$: $49 + 9 - 49 - 21 + 12 = 0$; $C$: $9 + 49 - 21 - 49 + 12 = 0$.
d. In parallelogram $ABDC$ we need $\vec{AD} = \vec{AB} + \vec{AC}$, so $D = A + \begin{pmatrix}8\\8\end{pmatrix} = (9, 9)$. Diagonals: $\vec{AD} = \begin{pmatrix}8\\8\end{pmatrix}$ and $\vec{BC} = \begin{pmatrix}-4\\4\end{pmatrix}$, with dot product $-32 + 32 = 0$. (This is no accident: $\lvert AB\rvert = \lvert AC\rvert$, so $ABDC$ is a rhombus; see problem 22.)

**13.**
a. Direction $\begin{pmatrix}2\\1\end{pmatrix}$, so normal $\begin{pmatrix}1\\-2\end{pmatrix}$: $x - 2y = c$ with $c = 0 - 2 = -2$. So $l: x - 2y = -2$.
b. Let $S = (0, 1)$ and $\vec r = \begin{pmatrix}2\\1\end{pmatrix}$. Then $\vec{SP} = \begin{pmatrix}1\\4\end{pmatrix}$ and the foot is $F = S + \lambda\vec r$ with
$$
\lambda = \frac{\vec{SP}\cdot\vec r}{\vec r\cdot\vec r} = \frac{2 + 4}{5} = \frac65, \qquad F = \left(\tfrac{12}{5}, \tfrac{11}{5}\right).
$$
Check: $\vec{FP} = \begin{pmatrix}-7/5\\14/5\end{pmatrix}$ and $\vec{FP}\cdot\vec r = -\tfrac{14}{5} + \tfrac{14}{5} = 0$. Alternative: intersect $l$ with the line through $P$ in direction $\begin{pmatrix}1\\-2\end{pmatrix}$.
c. $F$ is the midpoint of $PP'$, so $P' = 2F - P = \left(\tfrac{24}{5} - 1, \tfrac{22}{5} - 5\right) = \left(\tfrac{19}{5}, -\tfrac35\right)$.
d. Method 1: $\lvert PF\rvert = \sqrt{\tfrac{49}{25} + \tfrac{196}{25}} = \dfrac{\sqrt{245}}{5} = \dfrac{7\sqrt5}{5}$. Method 2: $\dfrac{\lvert 1 - 10 + 2\rvert}{\sqrt5} = \dfrac{7}{\sqrt5} = \tfrac75\sqrt5$. The two agree.

**14.**
a. Substituting $(3, 1)$ into the left side gives $p\cdot 3 - 1 = 3p - 1$, which equals the right side for every $p$.
b. Write $l_p$ as $px - y - (3p - 1) = 0$, normal $\begin{pmatrix}p\\-1\end{pmatrix}$. Distance from $O$:
$$
\frac{\lvert 3p - 1\rvert}{\sqrt{p^2 + 1}} = \sqrt5 \;\Longleftrightarrow\; 9p^2 - 6p + 1 = 5p^2 + 5 \;\Longleftrightarrow\; 4p^2 - 6p - 4 = 0 \;\Longleftrightarrow\; 2p^2 - 3p - 2 = 0.
$$
So $(2p + 1)(p - 2) = 0$: $p = 2$ or $p = -\tfrac12$. (Squaring was allowed because both sides are nonnegative.)
c. $l_p$ is $y = px - 3p + 1$, with rc $p$. The product of the rc's is $2\cdot(-\tfrac12) = -1$, so the lines are perpendicular.
d. Every $l_p$ passes through $Q$. The distance from $O$ to a line through $Q$ is the length of the perpendicular from $O$, which is at most the hypotenuse $\lvert OQ\rvert = \sqrt{10}$, with equality exactly when the line is perpendicular to $OQ$. $\vec{OQ} = \begin{pmatrix}3\\1\end{pmatrix}$ has rc $\tfrac13$, so the perpendicular line has rc $-3$: $p = -3$. Check: $\dfrac{\lvert -9 - 1\rvert}{\sqrt{10}} = \sqrt{10}$. Maximum distance $\sqrt{10}$, at $p = -3$.
The line through $Q$ that is missing is the vertical line $x = 3$: every $l_p$ has rc $p$, so none is vertical.

**15.**
a. $\lvert MP\rvert = \sqrt{7^2 + 1^2} = \sqrt{50} = 5\sqrt2 > 5$.
b. Write the line as $ax - y - 9a + 2 = 0$. It touches $c$ exactly when its distance to $M(2, 1)$ is 5:
$$
\frac{\lvert 2a - 1 - 9a + 2\rvert}{\sqrt{a^2 + 1}} = 5 \;\Longleftrightarrow\; (1 - 7a)^2 = 25(a^2 + 1) \;\Longleftrightarrow\; 24a^2 - 14a - 24 = 0 \;\Longleftrightarrow\; 12a^2 - 7a - 12 = 0.
$$
Discriminant $49 + 576 = 625$, so $a = \dfrac{7 \pm 25}{24}$: $a = \tfrac43$ or $a = -\tfrac34$.
c. For $a = \tfrac43$: $y = \tfrac43 x - 10$, i.e. $4x - 3y = 30$. The touching point is the foot of the perpendicular from $M$: $M + \lambda\begin{pmatrix}4\\-3\end{pmatrix}$ with $4(2 + 4\lambda) - 3(1 - 3\lambda) = 30$, so $25\lambda = 25$, $\lambda = 1$: $T_1 = (6, -2)$.
For $a = -\tfrac34$: $3x + 4y = 35$. Then $M + \lambda\begin{pmatrix}3\\4\end{pmatrix}$ with $3(2 + 3\lambda) + 4(1 + 4\lambda) = 35$, so $\lambda = 1$: $T_2 = (5, 5)$.
d. $\vec{MT_1} = \begin{pmatrix}4\\-3\end{pmatrix}$ and $\vec{T_2P} = \begin{pmatrix}4\\-3\end{pmatrix}$ are equal, so $MT_1PT_2$ is a parallelogram. $\vec{T_1P} = \begin{pmatrix}3\\4\end{pmatrix}$; both side vectors have length 5 and $\begin{pmatrix}4\\-3\end{pmatrix}\cdot\begin{pmatrix}3\\4\end{pmatrix} = 0$. A parallelogram with equal adjacent sides and a right angle is a square.

**16.**
a. Expand $c_2$: $x^2 + y^2 - 14x - 2y + 25 = 0$. Subtracting from $x^2 + y^2 - 25 = 0$ gives $14x + 2y - 50 = 0$, so $y = 25 - 7x$. Substitute into $c_1$: $x^2 + (25 - 7x)^2 = 25$, so $50x^2 - 350x + 600 = 0$, i.e. $x^2 - 7x + 12 = 0$, so $x = 3$ or $x = 4$. Points $S_1(3, 4)$ and $S_2(4, -3)$.
b. $\lvert S_1S_2\rvert = \sqrt{1 + 49} = \sqrt{50} = 5\sqrt2$.
c. At $S_1$ the radii are $\vec{OS_1} = \begin{pmatrix}3\\4\end{pmatrix}$ and $\vec{M_2S_1} = \begin{pmatrix}-4\\3\end{pmatrix}$, with dot product $-12 + 12 = 0$. Each tangent is perpendicular to its radius, so the tangents are perpendicular too. At $S_2$: $\begin{pmatrix}4\\-3\end{pmatrix}\cdot\begin{pmatrix}-3\\-4\end{pmatrix} = 0$. (Or: the distance between centres is $\sqrt{50}$ and $50 = 25 + 25 = r_1^2 + r_2^2$, so by the converse of Pythagoras the radii to an intersection point are perpendicular.)

**17.**
a. Eliminate $t$. For $P$: $t = y - 1$, so $x = -3 + 2(y - 1)$, i.e. $x - 2y = -5$. For $Q$: $t = 5 - x$, so $y = -2 + 3(5 - x)$, i.e. $3x + y = 13$. Solving: $x = 2y - 5$ gives $6y - 15 + y = 13$, so $y = 4$, $x = 3$. Intersection $(3, 4)$.
b. $P$ is at $(3, 4)$ when $-3 + 2t = 3$, so $t = 3$. $Q$ is at $(3, 4)$ when $5 - t = 3$, so $t = 2$. Different times, so no collision. (They can meet nowhere else, since the paths share only this point.)
c. Directions $\begin{pmatrix}2\\1\end{pmatrix}$ and $\begin{pmatrix}-1\\3\end{pmatrix}$: $\cos\varphi = \dfrac{\lvert -2 + 3\rvert}{\sqrt5\sqrt{10}} = \dfrac{1}{\sqrt{50}}$, so $\varphi \approx 81.9^\circ$.
d. $\vec{PQ} = \begin{pmatrix}8 - 3t\\-3 + 2t\end{pmatrix}$, so
$$
d(t)^2 = (8 - 3t)^2 + (2t - 3)^2 = 13t^2 - 60t + 73.
$$
This parabola has its minimum at $t = \tfrac{60}{26} = \tfrac{30}{13}$ (which is $\ge 0$). There $d^2 = 13\cdot\tfrac{900}{169} - \tfrac{1800}{13} + 73 = \tfrac{900 - 1800 + 949}{13} = \tfrac{49}{13}$, so the smallest distance is $\dfrac{7}{\sqrt{13}} = \tfrac{7}{13}\sqrt{13}$.
Positions: $P = \left(\tfrac{21}{13}, \tfrac{43}{13}\right)$, $Q = \left(\tfrac{35}{13}, \tfrac{64}{13}\right)$. Check: $\vec{PQ} = \tfrac{7}{13}\begin{pmatrix}2\\3\end{pmatrix}$ has length $\tfrac{7}{13}\sqrt{13}$, and it is perpendicular to the relative velocity $\vec v_Q - \vec v_P = \begin{pmatrix}-3\\2\end{pmatrix}$.

**18.** $x'(t) = \cos t$, $y'(t) = 2\cos 2t$.
a. $x = 0$ and $y = 0$ need $\sin t = 0$, so $t = 0, \pi, 2\pi$ ($t = 0$ and $t = 2\pi$ give the same passage). $\vec v(0) = \begin{pmatrix}1\\2\end{pmatrix}$, $\vec v(\pi) = \begin{pmatrix}-1\\2\end{pmatrix}$. $\cos\varphi = \dfrac{\lvert -1 + 4\rvert}{5} = \dfrac35$, so $\varphi \approx 53.1^\circ$.
b. Horizontal: $\cos 2t = 0$ gives $t = \tfrac14\pi, \tfrac34\pi, \tfrac54\pi, \tfrac74\pi$; there $\cos t \neq 0$. Points $(\tfrac12\sqrt2, 1)$, $(\tfrac12\sqrt2, -1)$, $(-\tfrac12\sqrt2, 1)$, $(-\tfrac12\sqrt2, -1)$.
Vertical: $\cos t = 0$ gives $t = \tfrac12\pi, \tfrac32\pi$; there $y' = 2\cos\pi = -2$ and $2\cos 3\pi = -2$, both nonzero. Points $(1, 0)$ and $(-1, 0)$.
c. $y^2 = (2\sin t\cos t)^2 = 4\sin^2 t(1 - \sin^2 t) = 4x^2(1 - x^2)$.
d. $\sin 2t = \sin t \Leftrightarrow \sin t(2\cos t - 1) = 0 \Leftrightarrow \sin t = 0$ or $\cos t = \tfrac12$. So $t \in \lbrace 0, \tfrac13\pi, \pi, \tfrac53\pi, 2\pi\rbrace$, giving the points $(0, 0)$, $(\tfrac12\sqrt3, \tfrac12\sqrt3)$ and $(-\tfrac12\sqrt3, -\tfrac12\sqrt3)$.
e. $v^2 = \cos^2 t + 4\cos^2 2t \le 1 + 4 = 5$, and at $t = 0$ both terms reach their maximum at the same time: $v(0)^2 = 5$. So the maximum speed is $\sqrt5$ (at the origin, at $t = 0$ and $t = \pi$).

**19.** $\vec v = \begin{pmatrix}1 - \cos t\\\sin t\end{pmatrix}$, $\vec a = \begin{pmatrix}\sin t\\\cos t\end{pmatrix}$.
a. $v^2 = 1 - 2\cos t + \cos^2 t + \sin^2 t = 2 - 2\cos t = 4\sin^2\tfrac12 t$ (since $\cos t = 1 - 2\sin^2\tfrac12 t$). For $0 \le t \le 2\pi$ we have $0 \le \tfrac12 t \le \pi$, so $\sin\tfrac12 t \ge 0$ and $v = 2\sin\tfrac12 t$. Maximum 2 at $t = \pi$, at the point $(\pi, 2)$: the top of the arch.
b. $\lVert\vec a\rVert = \sqrt{\sin^2 t + \cos^2 t} = 1$.
c. At $t = \tfrac12\pi$: point $(\tfrac12\pi - 1, 1)$, velocity $\begin{pmatrix}1\\1\end{pmatrix}$, so rc 1. Tangent: $y - 1 = x - \tfrac12\pi + 1$, i.e. $y = x + 2 - \tfrac12\pi$.
d. $\vec v(0) = \vec v(2\pi) = \vec 0$: the point is momentarily at rest (the rim point touches the ground). The curve has a cusp (*keerpunt*) there: near $t = 0$ the direction $\dfrac{y'}{x'} = \dfrac{\sin t}{1 - \cos t} = \dfrac{1}{\tan\frac12 t}$ tends to $\pm\infty$, so the curve arrives and leaves vertically.

**20.** $\vec v = \begin{pmatrix}-4\sin t\\2\cos t\end{pmatrix}$, $\vec a = \begin{pmatrix}-4\cos t\\-2\sin t\end{pmatrix}$.
a. $\dfrac{16\cos^2 t}{16} + \dfrac{4\sin^2 t}{4} = 1$.
b. $v^2 = 16\sin^2 t + 4\cos^2 t = 4 + 12\sin^2 t$. Since $0 \le \sin^2 t \le 1$: maximum speed $\sqrt{16} = 4$ when $\sin^2 t = 1$ ($t = \tfrac12\pi, \tfrac32\pi$), at $(0, 2)$ and $(0, -2)$; minimum speed $\sqrt4 = 2$ when $\sin t = 0$ ($t = 0, \pi$), at $(4, 0)$ and $(-4, 0)$.
c. $\vec a = -\begin{pmatrix}4\cos t\\2\sin t\end{pmatrix} = -\vec{OP} = \vec{PO}$.
d. $\vec{OP}\cdot\vec v = -16\sin t\cos t + 4\sin t\cos t = -12\sin t\cos t = -6\sin 2t$. This is zero for $t = 0, \tfrac12\pi, \pi, \tfrac32\pi$: the points $(4, 0)$, $(0, 2)$, $(-4, 0)$, $(0, -2)$.
e. At $t = \tfrac13\pi$: point $(2, \sqrt3)$, $\vec v = \begin{pmatrix}-2\sqrt3\\1\end{pmatrix}$, so a normal vector is $\begin{pmatrix}1\\2\sqrt3\end{pmatrix}$. Tangent: $x + 2\sqrt3\,y = 2 + 6 = 8$.

---

## Challenge

**21.**
a. A point $(x, y)$ is equally far from $k$ and $l$ exactly when
$$
\frac{\lvert 3x + 4y - 12\rvert}{5} = \frac{\lvert 5x - 12y - 4\rvert}{13} \;\Longleftrightarrow\; 13(3x + 4y - 12) = \pm 5(5x - 12y - 4).
$$
With $+$: $14x + 112y = 136$, i.e. $7x + 56y = 68$. With $-$: $64x - 8y = 176$, i.e. $8x - y = 22$.
b. Normals $\begin{pmatrix}7\\56\end{pmatrix}$ and $\begin{pmatrix}8\\-1\end{pmatrix}$: dot product $56 - 56 = 0$.
c. Write the lines as $\vec u\cdot X = c_1$ and $\vec w\cdot X = c_2$ with unit normals $\vec u$, $\vec w$ (divide each equation by the length of its normal). The distance formula becomes $\lvert\vec u\cdot X - c_1\rvert = \lvert\vec w\cdot X - c_2\rvert$, so the bisectors are $(\vec u - \vec w)\cdot X = c_1 - c_2$ and $(\vec u + \vec w)\cdot X = c_1 + c_2$. Since the lines intersect, $\vec u \neq \pm\vec w$, so both normals $\vec u \pm \vec w$ are nonzero and these are genuine lines. Finally $(\vec u + \vec w)\cdot(\vec u - \vec w) = \vec u\cdot\vec u - \vec w\cdot\vec w = 1 - 1 = 0$. $\blacksquare$

**22.**
a. Let the rhombus be $O$, $A$, $C$, $B$ with $\vec{OA} = \vec a$, $\vec{OB} = \vec b$, $\vec{OC} = \vec a + \vec b$, and $\lVert\vec a\rVert = \lVert\vec b\rVert$. The diagonals are $\vec a + \vec b$ and $\vec b - \vec a$, and $(\vec a + \vec b)\cdot(\vec b - \vec a) = \lVert\vec b\rVert^2 - \lVert\vec a\rVert^2 = 0$. $\blacksquare$
b. Let $O$ be the centre, $\vec{OA} = \vec a$, $\vec{OB} = -\vec a$, $\vec{OC} = \vec c$, with $\lVert\vec a\rVert = \lVert\vec c\rVert = r$. Then $\vec{CA}\cdot\vec{CB} = (\vec a - \vec c)\cdot(-\vec a - \vec c) = \lVert\vec c\rVert^2 - \lVert\vec a\rVert^2 = 0$. Since $C \neq A, B$, both vectors are nonzero, so $\angle ACB = 90^\circ$. $\blacksquare$
c. In a parallelogram with sides $\vec a$, $\vec b$ the diagonals are $\vec a + \vec b$ and $\vec b - \vec a$. If they are perpendicular, the computation in a gives $\lVert\vec b\rVert^2 - \lVert\vec a\rVert^2 = 0$, so adjacent sides are equal and it is a rhombus. $\blacksquare$

**23.**
a. Expanding:
$$
(u_1^2 + u_2^2)(v_1^2 + v_2^2) - (u_1v_1 + u_2v_2)^2 = u_1^2v_2^2 + u_2^2v_1^2 - 2u_1v_1u_2v_2 = (u_1v_2 - u_2v_1)^2 \ge 0.
$$
Equality holds exactly when $u_1v_2 = u_2v_1$, i.e. when $\vec u$ and $\vec v$ are parallel (one is a multiple of the other, or one is $\vec 0$).
b. $\lVert\vec u + \vec v\rVert^2 = \lVert\vec u\rVert^2 + 2\,\vec u\cdot\vec v + \lVert\vec v\rVert^2 \le \lVert\vec u\rVert^2 + 2\lVert\vec u\rVert\lVert\vec v\rVert + \lVert\vec v\rVert^2 = (\lVert\vec u\rVert + \lVert\vec v\rVert)^2$, using a in the form $\vec u\cdot\vec v \le \lvert\vec u\cdot\vec v\rvert \le \lVert\vec u\rVert\lVert\vec v\rVert$. Both sides are nonnegative, so take square roots. $\blacksquare$

**24.** Both sides are nonnegative, so $\lvert PA\rvert = 2\lvert PB\rvert \Leftrightarrow \lvert PA\rvert^2 = 4\lvert PB\rvert^2$:
$$
x^2 + y^2 = 4\big((x - 3)^2 + y^2\big) \;\Longleftrightarrow\; 3x^2 + 3y^2 - 24x + 36 = 0 \;\Longleftrightarrow\; x^2 + y^2 - 8x + 12 = 0 \;\Longleftrightarrow\; (x - 4)^2 + y^2 = 4.
$$
Every step is an equivalence, so the set of possible positions is exactly the circle with centre $(4, 0)$ and radius 2. (Check: $(2, 0)$ has $\lvert PA\rvert = 2$, $\lvert PB\rvert = 1$; $(6, 0)$ has $6$ and $3$.)

**25.**
a. The midpoint is $\left(\cos t, \sin t\right)$, and $\cos^2 t + \sin^2 t = 1$: it moves on the unit circle (the quarter in the first quadrant).
b. $R = (2\cos t, 0) + \tfrac13\big((0, 2\sin t) - (2\cos t, 0)\big) = \left(\tfrac43\cos t, \tfrac23\sin t\right)$. Then $\dfrac{9x^2}{16} + \dfrac{9y^2}{4} = \cos^2 t + \sin^2 t = 1$.

**26.** The loop runs from $(2, 0)$ at $t = -\sqrt3$ back to $(2, 0)$ at $t = \sqrt3$, so it is one round trip.
$$
\int_{-\sqrt3}^{\sqrt3} (t^3 - 3t)\cdot 2t\,dt = \int_{-\sqrt3}^{\sqrt3} (2t^4 - 6t^2)\,dt = 2\left[\tfrac25 t^5 - 2t^3\right]_0^{\sqrt3} = 2\left(\tfrac{18}{5}\sqrt3 - 6\sqrt3\right) = -\tfrac{24}{5}\sqrt3.
$$
(We used that the integrand is even, and $(\sqrt3)^5 = 9\sqrt3$, $(\sqrt3)^3 = 3\sqrt3$.) The area is $\tfrac{24}{5}\sqrt3 \approx 8.31$. The minus sign only says that the loop is traversed clockwise. A numerical check with the shoelace formula on 200 000 points of the curve gives $8.3138$.

**27.** From problem 19, $v(t) = 2\sin\tfrac12 t$ on $[0, 2\pi]$, so
$$
L = \int_0^{2\pi} 2\sin\tfrac12 t\,dt = \left[-4\cos\tfrac12 t\right]_0^{2\pi} = 4 + 4 = 8.
$$

**28.**
a. $\vec a\cdot\vec b = 2 - 2 + 4 = 4$, $\lVert\vec a\rVert = \sqrt{1 + 4 + 4} = 3$, $\lVert\vec b\rVert = \sqrt{4 + 1 + 4} = 3$. $\cos\varphi = \tfrac49$, $\varphi \approx 63.6^\circ$.
b. We need $\vec n = \begin{pmatrix}p\\q\\r\end{pmatrix}$ with $p + 2q + 2r = 0$ and $2p - q + 2r = 0$. Subtracting: $-p + 3q = 0$, so $p = 3q$; then $5q + 2r = 0$. Take $q = 2$: $p = 6$, $r = -5$. So $\vec n = \begin{pmatrix}6\\2\\-5\end{pmatrix}$ (or any nonzero multiple). Check: $6 + 4 - 10 = 0$ and $12 - 2 - 10 = 0$. This is the cross product $\vec a\times\vec b$ you will meet in Wiskunde D.
c. $\dfrac{\lvert 0 + 0 + 0 - 9\rvert}{\sqrt{1 + 4 + 4}} = \dfrac93 = 3$.
Proof of the formula: let $Q(x_1, y_1, z_1)$ be any point of the plane $ax + by + cz = d$ and $\vec n = \begin{pmatrix}a\\b\\c\end{pmatrix}$. Exactly as in two dimensions, $\vec n$ is perpendicular to every vector in the plane (subtract the equations for two points of the plane), so the distance from $P(x_0, y_0, z_0)$ to the plane is the length of the projection of $\vec{QP}$ onto $\vec n$:
$$
d = \frac{\lvert\vec{QP}\cdot\vec n\rvert}{\lVert\vec n\rVert} = \frac{\lvert a(x_0 - x_1) + b(y_0 - y_1) + c(z_0 - z_1)\rvert}{\sqrt{a^2 + b^2 + c^2}} = \frac{\lvert ax_0 + by_0 + cz_0 - d\rvert}{\sqrt{a^2 + b^2 + c^2}}. \qquad\blacksquare
$$
