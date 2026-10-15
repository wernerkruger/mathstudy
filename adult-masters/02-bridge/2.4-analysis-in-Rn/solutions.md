# 2.4 Analysis in $\mathbb R^n$: Solutions

## Warm-up

### 1.

For $0\le x<1$, $x^n\to0$; at $x = 1$, $x^n = 1$. So the pointwise limit is $f = 0$ on $[0,1)$, $f(1) = 1$. The convergence is not uniform on $[0,1]$: a uniform limit of continuous functions is continuous, and $f$ is not. (Directly: $\sup_{[0,1]}|x^n - f(x)| = \sup_{[0,1)}x^n = 1$.) On $[0,a]$ with $a<1$, $\sup|x^n - 0| = a^n\to0$, so the convergence is uniform.

### 2.

$f_n(0) = 0$. For $x>0$, $nxe^{-nx^2} = x\cdot\frac{n}{e^{nx^2}}\to0$ since $e^{nx^2}$ grows faster than $n$. So $f_n\to0$ pointwise. But
$$
\int_0^1nxe^{-nx^2}dx = \Big[-\tfrac12e^{-nx^2}\Big]_0^1 = \tfrac12(1 - e^{-n})\to\tfrac12\ne0 = \int_0^10.
$$
The convergence is not uniform: if it were, the integrals would converge to $0$. (Directly: $f_n(1/\sqrt n) = \sqrt n\,e^{-1}\to\infty$.)

### 3.

$\left|\frac{\sin nx}{n^2}\right|\le\frac1{n^2}$ and $\sum\frac1{n^2}<\infty$, so by the M-test the series converges uniformly on $\mathbb R$; each term is continuous, so the sum is continuous. The differentiated series $\sum\frac{\cos nx}{n}$ at $x = 0$ is $\sum\frac1n$, which diverges. So the hypothesis "the derivatives converge uniformly" fails, and the term-by-term differentiation theorem cannot be used, at least on any interval containing $0$. Uniform convergence of a series does not by itself permit term-by-term differentiation.

### 4.

(a)
$$
Df(x,y) = \begin{pmatrix}2xy & x^2\\ y\cos(xy) & x\cos(xy)\\ e^{x+y} & e^{x+y}\end{pmatrix}.
$$
(All partials are continuous, so $f$ is differentiable and this is its derivative.)

(b) By the Leibniz formula, $\det(I+H) = \sum_\sigma\mathrm{sgn}\,\sigma\prod_i(\delta_{i\sigma(i)} + h_{i\sigma(i)})$. The identity permutation contributes $\prod_i(1 + h_{ii}) = 1 + \sum_ih_{ii} + (\text{products of at least two entries of } H)$. A permutation $\sigma\ne\mathrm{id}$ moves at least two indices $i$, and for those $\delta_{i\sigma(i)} = 0$, so its term is a product containing at least two entries of $H$. Hence
$$
\det(I+H) = 1 + \mathrm{tr}\,H + R(H),
$$
where $R$ is a polynomial in the entries of $H$ with every monomial of degree at least 2. Since each entry satisfies $|h_{ij}|\le\|H\|$, for $\|H\|\le1$ we get $|R(H)|\le C\|H\|^2$ for a constant $C$ (depending only on $n$). So $\det(I+H) - \det(I) - \mathrm{tr}\,H = o(\|H\|)$, i.e. $D(\det)(I)H = \mathrm{tr}\,H$.

### 5.

$f(x,0) = 0$ for all $x$, so $\partial_xf(0,0) = 0$; similarly $\partial_yf(0,0) = 0$. But $f(t,t) = \frac12$ for $t\ne0$, so $f(t,t)\to\frac12\ne f(0,0)$: $f$ is not continuous at $0$, hence not differentiable there.

### 6.

Fix $a\in U$ and let $S = \lbrace x\in U : f(x) = f(a)\rbrace$. $S$ is non-empty and closed in $U$ (as $f$ is continuous). $S$ is open: if $x\in S$, choose a ball $B\subseteq U$ around $x$; $B$ is convex and $\|Df\| = 0$ on $B$, so the mean value inequality gives $|f(z) - f(x)|\le0\cdot|z - x| = 0$ for $z\in B$, i.e. $B\subseteq S$. Since $U$ is connected, $S = U$.

## Core

### 7.

For $f\in\mathcal F$ and $x,y\in[0,1]$, the mean value theorem gives $|f(x) - f(y)|\le|x-y|$. So $\mathcal F$ is equicontinuous (take $\delta = \varepsilon$), and $|f(x)| = |f(x) - f(0)|\le x\le1$, so $\mathcal F$ is uniformly bounded. By Arzelà–Ascoli, $\overline{\mathcal F}$ is compact.

$\mathcal F$ is not closed. Let $g(x) = |x - \frac12| - \frac12$ and
$$
g_n(x) = \sqrt{(x - \tfrac12)^2 + n^{-2}} - \sqrt{\tfrac14 + n^{-2}}.
$$
Then $g_n$ is $C^1$, $g_n(0) = 0$, and $|g_n'(x)| = \frac{|x - 1/2|}{\sqrt{(x - 1/2)^2+n^{-2}}}\le1$, so $g_n\in\mathcal F$. Since $0\le\sqrt{a^2+\varepsilon^2} - |a|\le\varepsilon$, we get $|g_n(x) - g(x)|\le\frac2n$, so $g_n\to g$ uniformly. But $g$ is not differentiable at $\frac12$, so $g\notin\mathcal F$.

### 8.

$|\sin nx|\le1$, so the sequence is bounded. For $m\ne n$,
$$
\int_0^\pi(\sin mx - \sin nx)^2dx = \int_0^\pi\sin^2mx\,dx + \int_0^\pi\sin^2nx\,dx - 2\int_0^\pi\sin mx\sin nx\,dx = \frac\pi2 + \frac\pi2 - 0 = \pi,
$$
using $2\sin mx\sin nx = \cos(m-n)x - \cos(m+n)x$, which integrates to $0$ over $[0,\pi]$ for $m\ne n$ (both $m\pm n$ are non-zero integers). If a subsequence $f_{n_k}$ converged uniformly, it would be uniformly Cauchy, and
$$
\pi = \int_0^\pi(f_{n_k} - f_{n_l})^2\le\pi\|f_{n_k} - f_{n_l}\|_\infty^2\to0,
$$
a contradiction. Arzelà–Ascoli then says the family cannot be equicontinuous, and indeed it is not: $f_n(0) = 0$ but $f_n\left(\frac{\pi}{2n}\right) = 1$, with $\frac{\pi}{2n}\to0$.

### 9.

By linearity, $\int_0^1fp = 0$ for every polynomial $p$. By the Weierstrass approximation theorem choose polynomials $p_n\to f$ uniformly on $[0,1]$. Then
$$
\int_0^1f^2 = \int_0^1f(f - p_n) + \int_0^1fp_n = \int_0^1f(f - p_n),
$$
and $\left|\int_0^1f(f - p_n)\right|\le\|f\|_\infty\|f - p_n\|_\infty\to0$. So $\int_0^1f^2 = 0$. Since $f^2$ is continuous and non-negative, $f\equiv0$.

### 10.

$\mathcal A = \lbrace p(x^2)\rbrace$ is a subalgebra of $C[0,1]$ containing the constants. It separates points of $[0,1]$: if $x\ne y$ in $[0,1]$ then $x^2\ne y^2$, so the function $x^2\in\mathcal A$ separates them. By Stone–Weierstrass, $\mathcal A$ is dense in $C[0,1]$.

On $[-1,1]$ every element of $\mathcal A$ is even. If $h_n\to h$ uniformly (even pointwise) with all $h_n$ even, then $h(-x) = \lim h_n(-x) = \lim h_n(x) = h(x)$, so $h$ is even. The function $x$ is not even, so it is not in the closure of $\mathcal A$. (Stone–Weierstrass fails because $\mathcal A$ does not separate $x$ from $-x$.)

### 11.

Let $T(x,y) = \left(\frac14\sin(x+y),\ \frac14\cos(x-y)\right)$ on $\mathbb R^2$ with the norm $\|(x,y)\|_\infty = \max(|x|,|y|)$, which makes $\mathbb R^2$ complete. Since $|\sin a - \sin b|\le|a - b|$ and $|\cos a - \cos b|\le|a - b|$,
$$
|T_1(x,y) - T_1(x',y')|\le\tfrac14(|x - x'| + |y - y'|)\le\tfrac12\|(x,y) - (x',y')\|_\infty,
$$
and the same bound holds for $T_2$. So $T$ is a contraction with constant $\frac12$, and by the contraction mapping theorem it has exactly one fixed point, which is exactly one solution of the system.

### 12.

(a) Let $X = C[0,h]$ with the sup norm (complete). A $C^1$ function $y$ solves the problem iff it is continuous and satisfies
$$
y(t) = y_0 + \int_0^tF(s,y(s))\,ds\qquad(0\le t\le h).
$$
(If $y$ solves the ODE, integrate. Conversely, if $y$ is continuous and satisfies the integral equation, the integrand $s\mapsto F(s,y(s))$ is continuous, so by the fundamental theorem of calculus $y$ is $C^1$ with $y' = F(t,y)$, and $y(0) = y_0$.) Define $T:X\to X$ by $(Ty)(t) = y_0 + \int_0^tF(s,y(s))\,ds$; $Ty$ is continuous (indeed $C^1$). For $y,z\in X$ and $t\in[0,h]$,
$$
|(Ty)(t) - (Tz)(t)|\le\int_0^t|F(s,y(s)) - F(s,z(s))|\,ds\le tL\|y - z\|_\infty\le hL\|y - z\|_\infty.
$$
Since $hL<1$, $T$ is a contraction and has exactly one fixed point: exactly one solution on $[0,h]$.

(b) $(Ty)(t) = 1 + \int_0^ty(s)\,ds$. Starting from $y_0 = 1$: $y_1 = 1 + t$, $y_2 = 1 + t + \frac{t^2}2$, and by induction $y_n(t) = \sum_{k=0}^n\frac{t^k}{k!}$. These converge uniformly on bounded intervals to $e^t$, the solution.

### 13.

(a) $(A+H)^2 - A^2 - (AH + HA) = H^2$ and $\|H^2\|\le\|H\|^2 = o(\|H\|)$. So $Df(A)H = AH + HA$.

(b) *Openness.* Let $A$ be invertible and $\|H\|<\frac1{\|A^{-1}\|}$. Then $A + H = A(I + A^{-1}H)$ with $\|A^{-1}H\|<1$, and $I + E$ with $\|E\|<1$ is invertible, with inverse given by the Neumann series $\sum_{k\ge0}(-E)^k$ and $\|(I+E)^{-1}\|\le\frac1{1-\|E\|}$. So $A + H$ is invertible: $GL_n(\mathbb R)$ is open. Moreover, if $\|H\|\le\frac1{2\|A^{-1}\|}$, then $\|(A+H)^{-1}\|\le\|(I + A^{-1}H)^{-1}\|\,\|A^{-1}\|\le2\|A^{-1}\|$.

*Derivative.* From $(A+H)^{-1} - A^{-1} = -(A+H)^{-1}HA^{-1}$ (multiply out: $(A+H)^{-1}[A - (A+H)]A^{-1}$),
$$
(A+H)^{-1} - A^{-1} + A^{-1}HA^{-1} = \big(A^{-1} - (A+H)^{-1}\big)HA^{-1} = (A+H)^{-1}HA^{-1}HA^{-1}.
$$
Its norm is at most $2\|A^{-1}\|^3\|H\|^2 = o(\|H\|)$. So $Dg(A)H = -A^{-1}HA^{-1}$.

### 14.

$f$ is $C^\infty$ with
$$
Df(x,y) = \begin{pmatrix}2x & -2y\\2y & 2x\end{pmatrix},\qquad\det Df = 4(x^2+y^2).
$$
For $p\ne0$ this is non-zero, so by the inverse function theorem $f$ restricts to a $C^1$ (indeed $C^\infty$) diffeomorphism from a neighbourhood of $p$ onto an open set. But $f(-x,-y) = f(x,y)$, so $f$ is not injective on $\mathbb R^2\setminus\lbrace0\rbrace$. (In complex notation $f(z) = z^2$.) At $0$, $Df(0) = 0$, and $f$ is not injective on any neighbourhood of $0$ (again $f(p) = f(-p)$), so there is no local inverse there.

### 15.

Let $F(x,y,z) = x^2 + 2y^2 + z^3 + xz - 5$, a $C^\infty$ function with $F(1,1,1) = 1 + 2 + 1 + 1 - 5 = 0$. Its partials are $F_x = 2x + z$, $F_y = 4y$, $F_z = 3z^2 + x$; at $(1,1,1)$ these are $3$, $4$, $4$. Since $F_z(1,1,1) = 4\ne0$, the implicit function theorem gives a $C^1$ function $g$ near $(1,1)$ with $g(1,1) = 1$ and $F(x,y,g(x,y)) = 0$, describing all solutions near $(1,1,1)$. Differentiating,
$$
\frac{\partial g}{\partial x}(1,1) = -\frac{F_x}{F_z} = -\frac34,\qquad\frac{\partial g}{\partial y}(1,1) = -\frac{F_y}{F_z} = -1.
$$

### 16.

(a) Since $\nabla g(p)\ne0$, after relabelling coordinates $\partial_ng(p)\ne0$. Write $x = (x',x_n)$. By the implicit function theorem there are a neighbourhood $V$ of $p'$ and a $C^1$ function $h$ on $V$ such that, near $p$, $M$ is the graph $x_n = h(x')$. Let $v\in\mathbb R^n$ with $\nabla g(p)\cdot v = 0$, and define $\gamma(t) = (p' + tv',\ h(p'+tv'))$ for small $t$. Then $\gamma(t)\in M$, $\gamma(0) = p$, and differentiating $g(x',h(x')) = 0$ gives $\partial_ng(p)\,Dh(p')v' = -\sum_{i<n}\partial_ig(p)v_i = \partial_ng(p)v_n$, so $\gamma'(0) = (v',Dh(p')v') = v$. Since $f\circ\gamma$ has a local maximum at $t = 0$, $0 = (f\circ\gamma)'(0) = \nabla f(p)\cdot v$.

So $\nabla f(p)$ is orthogonal to every vector orthogonal to $\nabla g(p)$, i.e. $\nabla f(p)\in(\nabla g(p)^\perp)^\perp = \mathrm{span}\,\nabla g(p)$: $\nabla f(p) = \lambda\nabla g(p)$.

(b) The ellipse $M = \lbrace g = 0\rbrace$, $g = \frac{x^2}{4} + y^2 - 1$, is compact, so $xy$ attains a maximum and a minimum on it. $\nabla g = (x/2, 2y)$ vanishes only at $0\notin M$. By (a) (applied to $f$ and $-f$), at an extremum $(y,x) = \lambda(x/2,2y)$, i.e. $y = \lambda x/2$ and $x = 2\lambda y$. Then $y = \lambda^2y$. If $y = 0$ then $x = 0$, not on $M$; so $\lambda^2 = 1$.
- $\lambda = 1$: $x = 2y$, and $\frac{4y^2}{4} + y^2 = 1$ gives $y = \pm\frac1{\sqrt2}$, $xy = 2y^2 = 1$.
- $\lambda = -1$: $x = -2y$, $y = \pm\frac1{\sqrt2}$, $xy = -1$.

So the maximum is $1$ (at $\pm(\sqrt2, \frac1{\sqrt2})$) and the minimum is $-1$ (at $\pm(\sqrt2,-\frac1{\sqrt2})$).

### 17.

For fixed $x>0$, $\frac{\partial}{\partial y}\frac{y}{x^2+y^2} = \frac{x^2+y^2 - 2y^2}{(x^2+y^2)^2} = f(x,y)$, so
$$
\int_0^1f(x,y)\,dy = \frac{1}{x^2+1},\qquad\int_0^1\frac{dx}{1+x^2} = \frac\pi4.
$$
Since $f(y,x) = -f(x,y)$, the other iterated integral is $-\frac\pi4$.

Fubini requires $f$ to be integrable on the square. $f$ is unbounded near $0$, so it is not Riemann integrable on $[0,1]^2$; even as an improper (or Lebesgue) integral it fails, because $\iint|f| = \infty$. (In polar coordinates $|f| = \frac{|\cos2\theta|}{r^2}$, and $\int_0^{\cdot}\frac{1}{r^2}r\,dr$ diverges at $0$.) So there is no contradiction.

### 18.

For $R>0$ let $I(R) = \int_{-R}^Re^{-x^2}dx$, which increases to the convergent improper integral $I = \int_{-\infty}^\infty e^{-x^2}dx$ (convergent since $e^{-x^2}\le e^{-|x|}$ for $|x|\ge1$).

*Fubini.* $e^{-(x^2+y^2)}$ is continuous on the square $S_R = [-R,R]^2$, so
$$
\iint_{S_R}e^{-(x^2+y^2)}\,dA = \int_{-R}^R\int_{-R}^Re^{-x^2}e^{-y^2}\,dy\,dx = I(R)^2.
$$
*Sandwich.* With $D_\rho$ the closed disc of radius $\rho$, $D_R\subseteq S_R\subseteq D_{R\sqrt2}$, and the integrand is positive, so
$$
\iint_{D_R}e^{-|z|^2}\le I(R)^2\le\iint_{D_{R\sqrt2}}e^{-|z|^2}.
$$
*Change of variables.* Polar coordinates $g(r,\theta) = (r\cos\theta,r\sin\theta)$ give a $C^1$ diffeomorphism from $(0,\rho)\times(0,2\pi)$ onto $D_\rho$ minus the segment $\lbrace(x,0) : 0\le x\le\rho\rbrace$ and the boundary circle, which have content zero and do not affect the integral; $|\det Dg| = r$. So
$$
\iint_{D_\rho}e^{-|z|^2}dA = \int_0^{2\pi}\int_0^\rho e^{-r^2}r\,dr\,d\theta = \pi(1 - e^{-\rho^2}).
$$
Hence $\pi(1 - e^{-R^2})\le I(R)^2\le\pi(1 - e^{-2R^2})$. Letting $R\to\infty$, $I^2 = \pi$, and $I = \sqrt\pi$ since $I>0$.

### 19.

The map $(x,y)\mapsto(u,v) = (x+y,x-y)$ is linear with inverse $x = \frac{u+v}2$, $y = \frac{u-v}2$, whose Jacobian determinant is $\det\begin{pmatrix}1/2&1/2\\1/2&-1/2\end{pmatrix} = -\frac12$, so $|\det| = \frac12$. Since $|x| + |y| = \max(|x+y|,|x - y|)$ (check the four sign cases), $D$ corresponds to the square $\lbrace|u|\le1,|v|\le1\rbrace$. Therefore
$$
\iint_D(x+y)^2e^{x-y}\,dA = \frac12\int_{-1}^1\int_{-1}^1u^2e^v\,dv\,du = \frac12\cdot\frac23\cdot(e - e^{-1}) = \frac{e - e^{-1}}{3}.
$$

## Challenge

### 20.

Write $r^2 = x^2+y^2$ and $\omega = P\,dx + Q\,dy$ with $P = -y/r^2$, $Q = x/r^2$.

(a) $d\omega = dP\wedge dx + dQ\wedge dy = (\partial_xQ - \partial_yP)\,dx\wedge dy$. Now
$$
\partial_xQ = \frac{r^2 - 2x^2}{r^4} = \frac{y^2 - x^2}{r^4},\qquad\partial_yP = -\frac{r^2 - 2y^2}{r^4} = \frac{y^2 - x^2}{r^4}.
$$
So $d\omega = 0$.

(b) $c^*\omega = \frac{-\sin t\cdot(-\sin t) + \cos t\cdot\cos t}{1}dt = dt$, so $\int_c\omega = \int_0^{2\pi}dt = 2\pi$. If $\omega = df$ on $U$ for a smooth function $f$, then $\int_c df = \int_0^{2\pi}(f\circ c)'(t)\,dt = f(c(2\pi)) - f(c(0)) = 0$, a contradiction. So $\omega$ is closed but not exact on $U$.

(c) On $U'$, every point can be written uniquely as $(r\cos\theta,r\sin\theta)$ with $r>0$, $\theta\in(-\pi,\pi)$. The function $\theta:U'\to(-\pi,\pi)$ is smooth: on $\lbrace x>0\rbrace$, $\theta = \arctan(y/x)$; on $\lbrace y>0\rbrace$, $\theta = \frac\pi2 - \arctan(x/y)$; on $\lbrace y<0\rbrace$, $\theta = -\frac\pi2 - \arctan(x/y)$; these open sets cover $U'$. On each piece,
$$
d\arctan\frac yx = \frac{1}{1+y^2/x^2}\cdot\frac{x\,dy - y\,dx}{x^2} = \frac{x\,dy - y\,dx}{r^2},\qquad d\left(-\arctan\frac xy\right) = -\frac{1}{1+x^2/y^2}\cdot\frac{y\,dx - x\,dy}{y^2} = \frac{x\,dy - y\,dx}{r^2}.
$$
So $d\theta = \omega$ on $U'$: $\omega$ is exact there.

### 21.

*Bijectivity.* Fix $y\in\mathbb R^n$ and let $\varphi(x) = x - f(x) + y$. Then $D\varphi(x) = I - Df(x)$ has norm $\le\frac12$, and $\mathbb R^n$ is convex, so by the mean value inequality $|\varphi(x) - \varphi(x')|\le\frac12|x - x'|$. Since $\mathbb R^n$ is complete, $\varphi$ has exactly one fixed point, i.e. exactly one $x$ with $f(x) = y$. So $f$ is a bijection.

*Lipschitz inverse.* Applying the same estimate to $x\mapsto x - f(x)$:
$$
|f(x) - f(x')|\ge|x - x'| - |(x - f(x)) - (x' - f(x'))|\ge\tfrac12|x - x'|.
$$
So $|f^{-1}(y) - f^{-1}(y')|\le2|y - y'|$.

*$C^1$ inverse.* For each $x$, $\|I - Df(x)\|\le\frac12<1$, so $Df(x) = I - (I - Df(x))$ is invertible (Neumann series). By the inverse function theorem, $f$ has a local $C^1$ inverse near every point, and these local inverses agree with the global inverse $f^{-1}$ (by injectivity). So $f^{-1}$ is $C^1$, with $D(f^{-1})(y) = Df(f^{-1}(y))^{-1}$.

### 22.

$K$ is continuous on the compact square, so it is bounded, $|K|\le M$, and uniformly continuous: given $\varepsilon>0$ there is $\delta>0$ with $|K(x,y) - K(x',y)|<\varepsilon$ whenever $|x - x'|<\delta$, for all $y$.

For $f\in C[0,1]$ and $|x - x'|<\delta$,
$$
|Tf(x) - Tf(x')|\le\int_0^1|K(x,y) - K(x',y)|\,|f(y)|\,dy\le\varepsilon\|f\|_\infty.
$$
So $Tf$ is (uniformly) continuous: $T$ maps $C[0,1]$ to $C[0,1]$. For $\|f\|_\infty\le1$ the same estimate, with the same $\delta$ for all such $f$, shows $\mathcal F = \lbrace Tf : \|f\|_\infty\le1\rbrace$ is equicontinuous; and $|Tf(x)|\le M$ shows it is uniformly bounded. By Arzelà–Ascoli, $\overline{\mathcal F}$ is compact. (In the language of module 3.2: $T$ is a compact operator.)

### 23.

(a) It suffices to prove $\int_{\partial R}P\,dx = -\iint_R\partial_yP\,dA$ and $\int_{\partial R}Q\,dy = \iint_R\partial_xQ\,dA$.

For the first: by Fubini (the integrand is continuous) and the fundamental theorem of calculus in $y$,
$$
-\iint_R\partial_yP\,dA = -\int_a^b\int_c^d\partial_yP(x,y)\,dy\,dx = \int_a^b\big(P(x,c) - P(x,d)\big)\,dx.
$$
On $\partial R$ (anticlockwise): along the bottom edge $y = c$, $x$ goes from $a$ to $b$, contributing $\int_a^bP(x,c)\,dx$; along the top edge $y = d$, $x$ goes from $b$ to $a$, contributing $-\int_a^bP(x,d)\,dx$; on the vertical edges $dx = 0$. The sum agrees.

For the second: $\iint_R\partial_xQ\,dA = \int_c^d\int_a^b\partial_xQ\,dx\,dy = \int_c^d\big(Q(b,y) - Q(a,y)\big)\,dy$. On $\partial R$: the right edge $x = b$ is traversed upwards, contributing $\int_c^dQ(b,y)\,dy$; the left edge $x = a$ downwards, contributing $-\int_c^dQ(a,y)\,dy$; on the horizontal edges $dy = 0$. Again these agree. Adding gives Green's theorem.

(b) Green's theorem needs $P,Q$ to be $C^1$ on an open set containing all of $R$. For $\omega$, $P = -y/r^2$ and $Q = x/r^2$ are not defined (indeed unbounded) at $0$, which lies in $R$. So (a) does not apply, and $\int_{\partial R}\omega$ need not be $0$. In fact it is $2\pi$. For example, for $R = [-1,1]^2$: on the right side $x = 1$ (traversed upwards), $\omega = \frac{dy}{1+y^2}$, contributing $\arctan1 - \arctan(-1) = \frac\pi2$; by the symmetry $(x,y)\mapsto(-y,x)$, which preserves $\omega$, each of the four sides contributes $\frac\pi2$. If $0\notin R$, then (a) applies and $\int_{\partial R}\omega = \iint_R 0 = 0$.
