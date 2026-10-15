# 2.2 Complex Analysis: Problems

Attempt each problem for at least 30 minutes before reading [solutions.md](solutions.md). Unless stated otherwise, circles are traversed once anticlockwise, $\mathbb D$ is the open unit disc and $\mathbb H$ the upper half-plane.

## Warm-up

**1.** (a) Show that $f(z) = \bar z$ is not complex differentiable at any point.
(b) Show that $g(z) = |z|^2$ is complex differentiable at $z = 0$ and nowhere else. Is $g$ holomorphic on any open set?

**2.** Find all holomorphic functions $f = u + iv$ on $\mathbb C$ with $u(x,y) = x^2 - y^2 + x$.

**3.** Find the radius of convergence of:
(a) $\sum_{n\ge0} n^3 z^n$; (b) $\sum_{n \ge 1} z^{n!}$; (c) $\sum_{n\ge0} \dfrac{(n!)^2}{(2n)!} z^n$.

**4.** Let $C$ be the unit circle. Compute $\int_C \bar z\,dz$ and $\int_C z^n\,dz$ for every integer $n$. Why does the first answer not contradict Cauchy's theorem?

**5.** Find the Laurent series of $f(z) = \dfrac{1}{z(z-1)}$ on (a) $0 < |z| < 1$ and (b) $|z| > 1$. What is $\operatorname{Res}(f,0)$?

**6.** Show that $\varphi(z) = \dfrac{z - i}{z + i}$ is a conformal bijection from $\mathbb H$ onto $\mathbb D$, and find its inverse.

## Core

**7.** Let $f$ be entire and suppose there are constants $A, B$ and an integer $n \ge 0$ with $|f(z)| \le A + B|z|^n$ for all $z$. Show that $f$ is a polynomial of degree at most $n$.

**8.** Let $f$ be entire with $\operatorname{Re} f(z) \le M$ for all $z$. Show that $f$ is constant.

**9.** Show that $\displaystyle\int_{-\infty}^{\infty} \frac{dx}{1+x^4} = \frac{\pi}{\sqrt 2}$.

**10.** For $a > 1$, show that $\displaystyle\int_0^{2\pi} \frac{d\theta}{a + \cos\theta} = \frac{2\pi}{\sqrt{a^2-1}}$.

**11.** Show that $\displaystyle\int_{-\infty}^\infty \frac{\cos x}{x^2+1}\,dx = \frac{\pi}{e}$.

**12.** Show that $\displaystyle\int_0^\infty \frac{\sin x}{x}\,dx = \frac{\pi}{2}$ (as an improper Riemann integral, $\lim_{R\to\infty}\int_0^R$).

**13.** Classify the singularity at the given point and find the residue:
(a) $\dfrac{1}{z^2 \sin z}$ at $z = 0$;
(b) $e^{1/z}$ at $z=0$;
(c) $\cot z$ at $z = k\pi$, $k \in \mathbb Z$.

**14.** Show that all five zeros of $p(z) = z^5 + 3z^3 + 7$ lie in the annulus $1 < |z| < 2$.

**15.** Let $\lambda > 1$. Show that the equation $z e^{\lambda - z} = 1$ has exactly one solution in $\mathbb D$, and that this solution is real and positive.

**16.** Show that every conformal bijection $f : \mathbb D \to \mathbb D$ with $f(0) = 0$ is a rotation $f(z) = e^{i\theta}z$.

**17.** Let $f$ be holomorphic on $\mathbb D$ and continuous on $\overline{\mathbb D}$, with $|f(z)| = 1$ for $|z| = 1$ and $f(z) \ne 0$ for $z \in \mathbb D$. Show that $f$ is constant. Show that the hypothesis $f \ne 0$ cannot be dropped.

**18.** (a) Is there a holomorphic function $f$ on $\mathbb D$ with $f(1/n) = (-1)^n/n$ for all $n \ge 2$?
(b) Find all holomorphic $f$ on $\mathbb D$ with $f(1/n) = 1/n^2$ for all $n \ge 2$.

**19.** Let $f$ be holomorphic on an open set containing $\overline{\mathbb D}$, with no zeros on $|z| = 1$. Let $a_1, \dots, a_k$ be the zeros of $f$ in $\mathbb D$, listed with multiplicity. Show that
$$
\frac{1}{2\pi i}\int_{|z|=1} \frac{z f'(z)}{f(z)}\,dz = a_1 + \dots + a_k.
$$

## Challenge

**20.** Show that every injective entire function has the form $f(z) = az + b$ with $a \ne 0$.

**21.** For $0 < a < 1$, show that
$$
\int_0^\infty \frac{x^{a-1}}{1+x}\,dx = \frac{\pi}{\sin(\pi a)}.
$$

**22.** For $|a| < 1$ let $\varphi_a(z) = \dfrac{z - a}{1 - \bar a z}$.
(a) Show that $\varphi_a$ maps $\mathbb D$ bijectively onto $\mathbb D$, with inverse $\varphi_{-a}$.
(b) Show that every conformal bijection $\mathbb D \to \mathbb D$ has the form $e^{i\theta}\varphi_a$ for some $\theta \in \mathbb R$, $|a|<1$.

**23.** Let $f_n$ be holomorphic on an open set $\Omega$ and suppose $f_n \to f$ uniformly on every compact subset of $\Omega$. Show that $f$ is holomorphic on $\Omega$ and that $f_n' \to f'$ uniformly on every compact subset of $\Omega$.
