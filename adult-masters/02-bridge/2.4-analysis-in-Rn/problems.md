# 2.4 Analysis in $\mathbb R^n$: Problems

Attempt each problem for at least 30 minutes before reading [solutions.md](solutions.md). $C[a,b]$ carries the sup norm unless stated otherwise.

## Warm-up

**1.** Let $f_n(x) = x^n$ on $[0,1]$. Find the pointwise limit, show the convergence is not uniform on $[0,1]$, and show it is uniform on $[0,a]$ for every $a<1$.

**2.** Let $f_n(x) = nxe^{-nx^2}$ on $[0,1]$. Show that $f_n\to0$ pointwise, but $\int_0^1f_n\to\frac12$. Is the convergence uniform?

**3.** Show that $f(x) = \sum_{n\ge1}\frac{\sin(nx)}{n^2}$ converges uniformly on $\mathbb R$ to a continuous function. Does the term-by-term differentiated series converge at $x = 0$? What does this say about applying the term-by-term differentiation theorem?

**4.** (a) Compute the Jacobian matrix of $f(x,y) = (x^2y,\ \sin(xy),\ e^{x+y})$.
(b) Show that $\det: M_n(\mathbb R)\to\mathbb R$ is differentiable at $I$ with $D(\det)(I)H = \mathrm{tr}\,H$.

**5.** Let $f(x,y) = \dfrac{xy}{x^2+y^2}$ for $(x,y)\ne(0,0)$ and $f(0,0) = 0$. Show that both partial derivatives of $f$ exist at $(0,0)$, but $f$ is not differentiable there.

**6.** Let $U\subseteq\mathbb R^n$ be open and connected and $f:U\to\mathbb R^m$ differentiable with $Df(x) = 0$ for all $x\in U$. Show that $f$ is constant.

## Core

**7.** Let $\mathcal F = \lbrace f\in C^1[0,1] : f(0) = 0,\ |f'(x)|\le1\text{ for all }x\rbrace$. Show that $\mathcal F$ has compact closure in $C[0,1]$, but that $\mathcal F$ itself is not closed.

**8.** Show that the sequence $f_n(x) = \sin(nx)$ in $C[0,\pi]$ is bounded but has no uniformly convergent subsequence. Which hypothesis of Arzelà–Ascoli fails?

**9.** Let $f\in C[0,1]$ satisfy $\int_0^1f(x)x^n\,dx = 0$ for all $n\ge0$. Show that $f = 0$.

**10.** Show that polynomials in $x^2$ (that is, $\lbrace p(x^2) : p\text{ a polynomial}\rbrace$) are dense in $C[0,1]$ but not in $C[-1,1]$.

**11.** Show that the system
$$
x = \tfrac14\sin(x+y),\qquad y = \tfrac14\cos(x - y)
$$
has exactly one solution $(x,y)\in\mathbb R^2$.

**12.** Let $F:[0,1]\times\mathbb R\to\mathbb R$ be continuous with $|F(t,y) - F(t,z)|\le L|y - z|$ for all $t,y,z$ (some $L>0$).
(a) Show that for $0<h<\min(1, 1/L)$ the problem $y' = F(t,y)$, $y(0) = y_0$ has exactly one $C^1$ solution on $[0,h]$.
(b) For $y' = y$, $y(0) = 1$, compute the Picard iterates starting from the constant function $1$ and identify their limit.

**13.** Work in $M_n(\mathbb R)$ with the operator norm.
(a) Show that $f(A) = A^2$ is differentiable with $Df(A)H = AH + HA$.
(b) Show that $GL_n(\mathbb R)$ is open and that $g(A) = A^{-1}$ is differentiable on it with $Dg(A)H = -A^{-1}HA^{-1}$.

**14.** Let $f:\mathbb R^2\to\mathbb R^2$, $f(x,y) = (x^2 - y^2,\ 2xy)$. Show that every point $p\ne0$ has a neighbourhood on which $f$ is a $C^1$ diffeomorphism onto an open set, but $f$ is not injective on $\mathbb R^2\setminus\lbrace0\rbrace$. What happens at $0$?

**15.** Show that the equation $x^2 + 2y^2 + z^3 + xz = 5$ defines $z$ as a $C^1$ function $z = g(x,y)$ near $(x,y,z) = (1,1,1)$, and compute $\partial g/\partial x$ and $\partial g/\partial y$ at $(1,1)$.

**16.** (a) Let $f,g:U\to\mathbb R$ be $C^1$ on open $U\subseteq\mathbb R^n$, $M = \lbrace g = 0\rbrace$, and $p\in M$ with $\nabla g(p)\ne0$. Using the implicit function theorem, show that if $f|_M$ has a local maximum at $p$, then $\nabla f(p) = \lambda\nabla g(p)$ for some $\lambda\in\mathbb R$.
(b) Find the maximum and minimum of $xy$ on the ellipse $\frac{x^2}4 + y^2 = 1$.

**17.** Let $f(x,y) = \dfrac{x^2 - y^2}{(x^2+y^2)^2}$ on $(0,1]^2$. Show that
$$
\int_0^1\!\!\int_0^1f(x,y)\,dy\,dx = \frac\pi4,\qquad\int_0^1\!\!\int_0^1f(x,y)\,dx\,dy = -\frac\pi4.
$$
Why does this not contradict Fubini's theorem?

**18.** Prove that $\displaystyle\int_{-\infty}^\infty e^{-x^2}dx = \sqrt\pi$, justifying each use of Fubini and change of variables.

**19.** Let $D = \lbrace(x,y) : |x| + |y|\le1\rbrace$. Using the substitution $u = x+y$, $v = x - y$, compute $\displaystyle\iint_D(x+y)^2e^{x-y}\,dA$.

## Challenge

**20.** On $U = \mathbb R^2\setminus\lbrace0\rbrace$ let $\omega = \dfrac{-y\,dx + x\,dy}{x^2+y^2}$.
(a) Show that $d\omega = 0$.
(b) Compute $\int_c\omega$ for $c(t) = (\cos t,\sin t)$, $t\in[0,2\pi]$, and deduce that $\omega$ is not exact on $U$.
(c) Show that $\omega$ is exact on $U' = \mathbb R^2\setminus\lbrace(x,0) : x\le0\rbrace$.

**21.** Let $f:\mathbb R^n\to\mathbb R^n$ be $C^1$ with $\|Df(x) - I\|\le\frac12$ for all $x$. Show that $f$ is a bijection of $\mathbb R^n$ and that its inverse is $C^1$ and Lipschitz.

**22.** Let $K:[0,1]^2\to\mathbb R$ be continuous and define $(Tf)(x) = \int_0^1K(x,y)f(y)\,dy$ for $f\in C[0,1]$. Show that $T$ maps $C[0,1]$ into $C[0,1]$ and that the image of the closed unit ball, $\lbrace Tf : \|f\|_\infty\le1\rbrace$, has compact closure in $C[0,1]$.

**23.** (a) Let $R = [a,b]\times[c,d]$ and let $P,Q$ be $C^1$ on an open set containing $R$. Using only Fubini's theorem and the fundamental theorem of calculus, prove Green's theorem
$$
\int_{\partial R}P\,dx + Q\,dy = \iint_R\left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right)dA,
$$
where $\partial R$ is traversed anticlockwise.
(b) Explain why (a) and Problem 20(a) do not force $\int_{\partial R}\omega = 0$ for the form $\omega$ of Problem 20 when $0$ lies in the interior of $R$.
