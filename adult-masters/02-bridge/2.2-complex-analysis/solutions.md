# 2.2 Complex Analysis: Solutions

## Warm-up

### 1.

(a) $\bar z = x - iy$, so $u = x$, $v = -y$, and $u_x = 1 \ne -1 = v_y$ everywhere. Cauchy–Riemann fails at every point, so $\bar z$ is nowhere complex differentiable. (Directly: $\frac{\overline{z+h} - \bar z}{h} = \bar h/h$, which is $1$ for real $h$ and $-1$ for imaginary $h$.)

(b) At $0$: $\dfrac{g(h) - g(0)}{h} = \dfrac{h\bar h}{h} = \bar h \to 0$, so $g'(0) = 0$. At $z_0 \ne 0$, $u = x^2+y^2$, $v = 0$; CR requires $2x = 0$ and $2y = 0$, so it fails, and $g$ is not complex differentiable there. Since $g$ is differentiable only at the single point $0$, it is not holomorphic on any open set.

### 2.

$u_{xx} + u_{yy} = 2 - 2 = 0$, so a harmonic conjugate can exist. From $v_y = u_x = 2x + 1$ we get $v = 2xy + y + \varphi(x)$. Then $v_x = 2y + \varphi'(x)$, and CR requires $v_x = -u_y = 2y$, so $\varphi' = 0$ and $\varphi = c$, a real constant. Thus
$$
f = (x^2 - y^2 + x) + i(2xy + y + c) = z^2 + z + ic, \quad c \in \mathbb R.
$$
These are all holomorphic, and any holomorphic $f$ with real part $u$ is of this form (two holomorphic functions with the same real part differ by an imaginary constant, by CR).

### 3.

(a) $|n^3|^{1/n} = e^{3\ln n/n} \to 1$, so $R = 1$.

(b) The coefficient $a_k$ is $1$ if $k = n!$ for some $n \ge 1$, and $0$ otherwise. (The value $k=1$ arises from $n=1$ only, since we start at $n \ge 1$.) So $\limsup |a_k|^{1/k} = 1$ and $R = 1$.

(c) With $a_n = (n!)^2/(2n)!$,
$$
\frac{a_n}{a_{n+1}} = \frac{(2n+2)(2n+1)}{(n+1)^2} = \frac{2(2n+1)}{n+1} \to 4,
$$
so by the ratio test $R = 4$.

### 4.

Parametrise $z = e^{it}$, $0 \le t \le 2\pi$, $dz = ie^{it}dt$. Then
$$
\int_C \bar z\,dz = \int_0^{2\pi} e^{-it}\, ie^{it}\,dt = 2\pi i,
\qquad
\int_C z^n\,dz = i\int_0^{2\pi} e^{i(n+1)t}\,dt = \begin{cases} 2\pi i & n = -1,\\ 0 & n \ne -1.\end{cases}
$$
Cauchy's theorem needs a holomorphic integrand, and $\bar z$ is not holomorphic (Problem 1). In fact on $C$, $\bar z = 1/z$, which explains the value.

### 5.

$\dfrac{1}{z(z-1)} = -\dfrac{1}{z}\cdot\dfrac{1}{1-z}$.

(a) For $0<|z|<1$: $\dfrac1{1-z} = \sum_{n\ge0} z^n$, so
$$
f(z) = -\sum_{n \ge 0} z^{n-1} = -\frac1z - 1 - z - z^2 - \cdots.
$$
(b) For $|z| > 1$: $\dfrac{1}{z-1} = \dfrac{1}{z}\cdot\dfrac{1}{1 - 1/z} = \sum_{n \ge 0} z^{-n-1}$, so
$$
f(z) = \frac1z\sum_{n\ge 0} z^{-n-1} = \sum_{n\ge0} z^{-n-2} = \frac{1}{z^2} + \frac1{z^3} + \cdots.
$$
The residue at $0$ is read from the expansion valid in a punctured disc around $0$, i.e. (a): $\mathrm{Res}(f,0) = -1$. (The coefficient of $z^{-1}$ in (b) is $0$; this is not the residue at $0$. It equals the sum of the residues at $0$ and $1$, namely $-1 + 1$.)

### 6.

For $z = x+iy$,
$$
|z+i|^2 - |z-i|^2 = (x^2 + (y+1)^2) - (x^2 + (y-1)^2) = 4y.
$$
So for $z \in \mathbb H$, $|z - i| < |z+i|$ and $|\varphi(z)| < 1$; also $z + i \neq 0$, so $\varphi$ is holomorphic on $\mathbb H$. Solving $w = \frac{z-i}{z+i}$ gives $z = \psi(w) = i\frac{1+w}{1-w}$, holomorphic for $w \ne 1$. For $w \in \mathbb D$,
$$
\mathrm{Im}\,\psi(w) = \mathrm{Re}\,\frac{1+w}{1-w} = \mathrm{Re}\,\frac{(1+w)(1-\bar w)}{|1-w|^2} = \frac{1 - |w|^2}{|1-w|^2} > 0,
$$
(the cross terms $w - \bar w$ are purely imaginary). So $\psi$ maps $\mathbb D$ into $\mathbb H$, and $\varphi\circ\psi$, $\psi\circ\varphi$ are the identity where defined. Hence $\varphi : \mathbb H \to \mathbb D$ is a holomorphic bijection with holomorphic inverse $\psi$.

## Core

### 7.

Write $f(z) = \sum_{k\ge0} a_k z^k$ (valid on all of $\mathbb C$). By the Cauchy estimates on the circle $|z| = R$,
$$
|a_k| = \frac{|f^{(k)}(0)|}{k!} \le \frac{A + BR^n}{R^k}.
$$
For $k > n$ the right side tends to $0$ as $R \to \infty$, so $a_k = 0$. Hence $f$ is a polynomial of degree at most $n$.

### 8.

$g = e^{f}$ is entire and $|g| = e^{\mathrm{Re}\, f} \le e^M$. By Liouville $g$ is constant, so $0 = g' = f'e^f$. Since $e^f$ never vanishes, $f' \equiv 0$, and $f$ is constant (on the connected set $\mathbb C$).

### 9.

Let $f(z) = 1/(1+z^4)$. Its poles are the fourth roots of $-1$: $e^{i\pi/4}, e^{3i\pi/4}, e^{5i\pi/4}, e^{7i\pi/4}$, all simple. In $\mathbb H$ lie $\alpha = e^{i\pi/4}$ and $\beta = e^{3i\pi/4}$. At a simple zero $c$ of $1+z^4$, $\mathrm{Res}(f,c) = \dfrac{1}{4c^3} = \dfrac{c}{4c^4} = -\dfrac{c}{4}$. So the sum of residues in $\mathbb H$ is
$$
-\frac{\alpha+\beta}{4} = -\frac14\left(\frac{\sqrt2}{2} + i\frac{\sqrt2}{2} - \frac{\sqrt2}2 + i\frac{\sqrt2}{2}\right) = -\frac{i\sqrt2}{4}.
$$
Let $\Gamma_R$ be $[-R,R]$ followed by the upper semicircle $C_R$, with $R > 1$. Then $\int_{\Gamma_R} f = 2\pi i \cdot \left(-\frac{i\sqrt2}{4}\right) = \frac{\pi\sqrt2}{2}$. On $C_R$, $|f| \le 1/(R^4 - 1)$, so $\left|\int_{C_R} f\right| \le \pi R/(R^4-1) \to 0$. Since $\int_{-\infty}^\infty f$ converges absolutely,
$$
\int_{-\infty}^\infty \frac{dx}{1+x^4} = \frac{\pi\sqrt 2}{2} = \frac{\pi}{\sqrt2}.
$$

### 10.

Put $z = e^{i\theta}$, so $\cos\theta = \frac12(z + z^{-1})$ and $d\theta = dz/(iz)$:
$$
\int_0^{2\pi}\frac{d\theta}{a + \cos\theta} = \int_{|z|=1} \frac{1}{a + \frac12(z + z^{-1})}\cdot\frac{dz}{iz} = \int_{|z|=1}\frac{2\,dz}{i(z^2 + 2az + 1)}.
$$
The roots of $z^2 + 2az + 1$ are $z_\pm = -a \pm \sqrt{a^2-1}$, real and distinct. Their product is $1$ and $z_- < -1$, so $|z_+| < 1 < |z_-|$; only $z_+$ lies inside. The residue there is
$$
\frac{2}{i(z_+ - z_-)} = \frac{2}{i\cdot 2\sqrt{a^2-1}} = \frac{1}{i\sqrt{a^2-1}}.
$$
So the integral is $2\pi i \cdot \dfrac{1}{i\sqrt{a^2-1}} = \dfrac{2\pi}{\sqrt{a^2-1}}$.

### 11.

Let $f(z) = e^{iz}/(z^2+1)$. Its only pole in $\mathbb H$ is $z = i$ (simple), with residue $\dfrac{e^{i\cdot i}}{2i} = \dfrac{e^{-1}}{2i}$. With $\Gamma_R$ as in Problem 9 ($R>1$), $\int_{\Gamma_R} f = 2\pi i \cdot \frac{e^{-1}}{2i} = \frac{\pi}{e}$. On $C_R$, $z = x+iy$ with $y \ge 0$, so $|e^{iz}| = e^{-y} \le 1$ and $|f| \le 1/(R^2-1)$; hence $\left|\int_{C_R} f\right| \le \pi R/(R^2-1) \to 0$. Therefore $\int_{-\infty}^\infty \frac{e^{ix}}{x^2+1}dx = \frac\pi e$. Taking real parts, $\int_{-\infty}^\infty\frac{\cos x}{x^2+1}dx = \frac\pi e$ (and the imaginary part, $\int \frac{\sin x}{x^2+1}dx$, is $0$, as it must be by oddness).

### 12.

Let $f(z) = e^{iz}/z$ and $0 < \varepsilon < R$. Consider the closed contour made of: $[\varepsilon, R]$; the upper semicircle $C_R$ from $R$ to $-R$; $[-R,-\varepsilon]$; and the upper semicircle $C_\varepsilon$ from $-\varepsilon$ to $\varepsilon$ traversed clockwise. $f$ is holomorphic inside and on this contour, so the total integral is $0$.

*The two segments.* Substituting $x \mapsto -x$ on $[-R,-\varepsilon]$,
$$
\int_{-R}^{-\varepsilon}\frac{e^{ix}}{x}dx + \int_\varepsilon^R \frac{e^{ix}}{x}dx = \int_\varepsilon^R\frac{e^{ix} - e^{-ix}}{x}dx = 2i\int_\varepsilon^R \frac{\sin x}{x}dx.
$$
*The large arc.* With $z = Re^{i\theta}$, $|e^{iz}| = e^{-R\sin\theta}$ and $|dz/z| = d\theta$, so
$$
\Big|\int_{C_R} f\Big| \le \int_0^\pi e^{-R\sin\theta}d\theta = 2\int_0^{\pi/2}e^{-R\sin\theta}d\theta \le 2\int_0^{\pi/2}e^{-2R\theta/\pi}d\theta < \frac{\pi}{R},
$$
using $\sin\theta \ge 2\theta/\pi$ on $[0,\pi/2]$. This tends to $0$.

*The small arc.* $f(z) = \frac1z + E(z)$ where $E(z) = (e^{iz}-1)/z$ is bounded near $0$, say $|E| \le K$ for $|z| \le 1$. Then $\left|\int_{C_\varepsilon} E\right| \le \pi\varepsilon K \to 0$, and with $z = \varepsilon e^{i\theta}$, $\theta$ from $\pi$ to $0$, $\int_{C_\varepsilon}\frac{dz}{z} = \int_\pi^0 i\,d\theta = -i\pi$.

Letting $\varepsilon \to 0$ and $R \to \infty$: $2i\lim\int_\varepsilon^R \frac{\sin x}{x}dx - i\pi = 0$. Since $\frac{\sin x}{x}$ extends continuously to $x=0$, the limit as $\varepsilon \to 0$ is harmless, and $\lim_{R\to\infty}\int_0^R \frac{\sin x}{x}dx = \frac\pi2$.

### 13.

(a) $\sin z = z\left(1 - \frac{z^2}{6} + O(z^4)\right)$, so
$$
\frac{1}{z^2\sin z} = \frac{1}{z^3}\left(1 + \frac{z^2}{6} + O(z^4)\right) = \frac1{z^3} + \frac{1}{6z} + O(z).
$$
Pole of order 3, residue $\frac16$.

(b) $e^{1/z} = \sum_{n\ge0}\frac{1}{n!z^n}$ has infinitely many negative powers: essential singularity. Residue = coefficient of $z^{-1}$ = $1$.

(c) $\cot z = \cos z/\sin z$. At $z = k\pi$, $\sin$ has a simple zero ($\sin' (k\pi) = \cos k\pi = (-1)^k \ne 0$) and $\cos(k\pi) \ne 0$. So $\cot$ has a simple pole with residue $\dfrac{\cos k\pi}{\cos k\pi} = 1$.

### 14.

*On $|z| = 2$:* $|z^5| = 32$ and $|3z^3 + 7| \le 24 + 7 = 31 < 32$. By Rouché, $p$ and $z^5$ have the same number of zeros in $|z|<2$, namely $5$.

*On $|z| = 1$:* $|7| = 7$ and $|z^5 + 3z^3| \le 4 < 7$. By Rouché, $p$ and the constant $7$ have the same number of zeros in $|z| < 1$, namely $0$. Also $p$ has no zeros on $|z| = 1$, since there $|p| \ge 7 - 4 > 0$.

So all $5$ zeros lie in $1 < |z| < 2$.

### 15.

Let $f(z) = z e^{\lambda - z}$ and $g(z) = -1$. On $|z| = 1$, $|f(z)| = e^{\lambda - \mathrm{Re}\,z} \ge e^{\lambda - 1} > 1 = |g(z)|$. By Rouché, $f - 1$ has as many zeros in $\mathbb D$ as $f$, and $f$ has exactly one (a simple zero at $0$, as $e^{\lambda - z}\ne0$). So $ze^{\lambda-z} = 1$ has exactly one solution in $\mathbb D$.

Now $h(x) = xe^{\lambda - x} - 1$ is continuous on $[0,1]$ with $h(0) = -1 < 0$ and $h(1) = e^{\lambda-1} - 1 > 0$. By the intermediate value theorem there is a root in $(0,1)$, which lies in $\mathbb D$. By uniqueness, this is the solution.

### 16.

Both $f$ and $f^{-1}$ are holomorphic maps $\mathbb D \to \mathbb D$ fixing $0$. By the Schwarz lemma, $|f(z)| \le |z|$ and $|f^{-1}(w)| \le |w|$. Applying the second with $w = f(z)$: $|z| \le |f(z)|$. So $|f(z)| = |z|$ for all $z$, and the equality case of the Schwarz lemma gives $f(z) = e^{i\theta}z$.

### 17.

By the maximum modulus principle, $|f| \le \max_{|z|=1}|f| = 1$ on $\overline{\mathbb D}$. Since $f$ has no zeros in $\mathbb D$ and $|f| = 1$ on the circle, $f$ has no zeros on $\overline{\mathbb D}$, so $1/f$ is holomorphic on $\mathbb D$ and continuous on $\overline{\mathbb D}$, with $|1/f| = 1$ on the circle. Maximum modulus again gives $|1/f| \le 1$, i.e. $|f| \ge 1$. So $|f| \equiv 1$ on $\mathbb D$, and $|f|$ attains an interior maximum; by the maximum modulus principle $f$ is constant.

Without the hypothesis $f \ne 0$: $f(z) = z$ satisfies everything else and is not constant.

### 18.

(a) No. Suppose such $f$ exists. For even $n = 2k$, $f(1/(2k)) = 1/(2k)$. So $f(z) - z$ vanishes on $\lbrace 1/(2k)\rbrace$, which has the limit point $0 \in \mathbb D$. By the identity theorem $f(z) = z$ on $\mathbb D$. But then $f(1/3) = 1/3 \neq -1/3$. Contradiction.

(b) $f(z) = z^2$ works. If $f$ is any solution, $f(z) - z^2$ vanishes on $\lbrace 1/n : n \ge 2\rbrace$, which accumulates at $0 \in \mathbb D$, so $f(z) = z^2$. The unique answer is $f(z) = z^2$.

### 19.

The zeros of $f$ in $\overline{\mathbb D}$ are isolated (by the identity theorem, since $f \not\equiv 0$) and lie in a compact set, so there are finitely many; by hypothesis none are on the circle. Let $b_1, \dots, b_r$ be the distinct zeros in $\mathbb D$, with orders $m_1, \dots, m_r$. Near $b_j$, write $f(z) = (z-b_j)^{m_j}g(z)$ with $g$ holomorphic and $g(b_j) \ne 0$. Then
$$
\frac{f'(z)}{f(z)} = \frac{m_j}{z - b_j} + \frac{g'(z)}{g(z)},
\qquad
\frac{zf'(z)}{f(z)} = \frac{m_j z}{z - b_j} + \frac{zg'(z)}{g(z)}.
$$
The second term is holomorphic near $b_j$, and $\frac{m_j z}{z-b_j} = m_j + \frac{m_j b_j}{z - b_j}$, so $\mathrm{Res}\,\left(\frac{zf'}{f}, b_j\right) = m_jb_j$. The function $zf'/f$ is holomorphic elsewhere on a neighbourhood of $\overline{\mathbb D}$ minus the $b_j$. By the residue theorem,
$$
\frac1{2\pi i}\int_{|z|=1}\frac{zf'(z)}{f(z)}dz = \sum_j m_jb_j = a_1 + \dots + a_k.
$$

## Challenge

### 20.

Let $f$ be entire and injective; in particular non-constant. Consider $g(w) = f(1/w)$ on $\mathbb C\setminus\lbrace0\rbrace$, which has an isolated singularity at $w=0$.

*Not essential.* By the open mapping theorem, $U = f(\mathbb D)$ is a non-empty open set. If $0$ were an essential singularity of $g$, then by Casorati–Weierstrass $g(\lbrace 0 < |w| < 1\rbrace) = f(\lbrace |z| > 1\rbrace)$ would be dense in $\mathbb{C}$, so it would meet $U$: there would be $|z| > 1$ and $|z'| < 1$ with $f(z) = f(z')$, contradicting injectivity.

*Not removable.* Then $g$ would be bounded near $0$, i.e. $f$ bounded on $|z| > R$ for some $R$; $f$ is also bounded on the compact set $|z| \le R$. By Liouville $f$ would be constant: contradiction.

*So $0$ is a pole of $g$, of some order $n \ge 1$.* Write $f(z) = \sum_{k\ge0}a_kz^k$ for all $z$. Then $g(w) = \sum_{k\ge0}a_kw^{-k}$ for $w \ne 0$, which is the Laurent series of $g$ on $0 < |w| < \infty$. By uniqueness of Laurent series and the definition of a pole of order $n$, $a_k = 0$ for $k > n$ and $a_n \ne 0$. So $f$ is a polynomial of degree $n$.

*Degree 1.* Suppose $n \ge 2$. Then $f'$ is a non-zero polynomial of degree $n-1$, with finitely many roots. For each $c \in \mathbb C$, $f(z) - c$ has degree $n$ and, by injectivity, exactly one root $w_c$, so $f(z) - c = a_n(z - w_c)^n$. Differentiating, $f'(z) = na_n(z-w_c)^{n-1}$, so $f'(w_c) = 0$ (as $n - 1 \ge 1$). The points $w_c$ are distinct for distinct $c$ (since $f(w_c) = c$), so $f'$ has infinitely many roots: contradiction. Hence $n = 1$ and $f(z) = az+b$ with $a \ne 0$.

### 21.

Use the branch $z^{a-1} = e^{(a-1)\log z}$ with $\log z = \ln|z| + i\arg z$, $\arg z \in (0,2\pi)$, holomorphic on $\mathbb C \setminus [0,\infty)$. Let $f(z) = \dfrac{z^{a-1}}{1+z}$. For $0 < \varepsilon < 1 < R$, take the keyhole contour: along the upper side of the cut from $\varepsilon$ to $R$; the circle $|z| = R$ anticlockwise; along the lower side of the cut from $R$ to $\varepsilon$; the circle $|z| = \varepsilon$ clockwise. (Formally, use the limits of contours that stay a small angle $\delta$ away from the cut and let $\delta \to 0$; $f$ extends continuously to each side of the cut.)

*Values on the cut.* On the upper side, $\arg z \to 0$, so $z^{a-1} = x^{a-1}$. On the lower side, $\arg z \to 2\pi$, so $z^{a-1} = x^{a-1}e^{2\pi i(a-1)} = x^{a-1}e^{2\pi i a}$.

*Residue.* The only singularity inside is the simple pole $z = -1 = e^{i\pi}$, with residue $(-1)^{a-1} = e^{i\pi(a-1)} = -e^{i\pi a}$.

*Circles.* On $|z| = R$: $|f| \le \dfrac{R^{a-1}}{R-1}$, so the integral is at most $\dfrac{2\pi R^a}{R-1} \to 0$ as $R \to \infty$ (since $a < 1$). On $|z| = \varepsilon$: $|f| \le \dfrac{\varepsilon^{a-1}}{1-\varepsilon}$, so the integral is at most $\dfrac{2\pi\varepsilon^a}{1-\varepsilon} \to 0$ as $\varepsilon\to0$ (since $a > 0$).

*Conclusion.* With $I = \int_0^\infty \frac{x^{a-1}}{1+x}dx$ (convergent since the integrand is $O(x^{a-1})$ at $0$ and $O(x^{a-2})$ at $\infty$), letting $\varepsilon \to 0$, $R\to\infty$:
$$
I - e^{2\pi i a}I = 2\pi i\cdot(-e^{i\pi a}).
$$
Since $1 - e^{2\pi i a} = e^{i\pi a}(e^{-i\pi a} - e^{i\pi a}) = -2i\sin(\pi a)\,e^{i\pi a}$,
$$
I = \frac{-2\pi i\,e^{i\pi a}}{-2i\sin(\pi a)\,e^{i\pi a}} = \frac{\pi}{\sin(\pi a)}.
$$

### 22.

(a) For $|z| < 1/|a|$ (all $z$ if $a = 0$), $|\bar a z| < 1$, so $1 - \bar a z \neq 0$; since $1/|a| > 1$, $\varphi_a$ is holomorphic on a neighbourhood of $\overline{\mathbb D}$. Compute
$$
|1 - \bar a z|^2 - |z - a|^2 = 1 + |a|^2|z|^2 - |z|^2 - |a|^2 = (1-|a|^2)(1-|z|^2),
$$
(the cross terms $-\bar a z - a\bar z$ appear in both and cancel). For $|z|<1$ this is positive, so $|\varphi_a(z)| < 1$. Next, with $w = \varphi_a(z)$,
$$
\varphi_{-a}(w) = \frac{w + a}{1 + \bar a w} = \frac{(z - a) + a(1 - \bar a z)}{(1 - \bar a z) + \bar a(z - a)} = \frac{z(1 - |a|^2)}{1 - |a|^2} = z.
$$
By symmetry ($a \leftrightarrow -a$), $\varphi_a\circ\varphi_{-a} = \mathrm{id}$ too. So $\varphi_a$ is a bijection of $\mathbb D$ with inverse $\varphi_{-a}$.

(b) Let $f$ be a conformal bijection of $\mathbb D$, and $a = f^{-1}(0)$. Then $g = f \circ \varphi_{-a}$ is a conformal bijection of $\mathbb D$ with $g(0) = f(a) = 0$. By Problem 16, $g(z) = e^{i\theta}z$. Hence $f = g \circ \varphi_a = e^{i\theta}\varphi_a$.

### 23.

*$f$ is holomorphic.* $f$ is continuous on $\Omega$, as a locally uniform limit of continuous functions. Let $D$ be an open disc with $\overline D \subseteq \Omega$ and $T \subseteq D$ a closed triangle. By Goursat, $\int_{\partial T} f_n = 0$. Since $\partial T$ is compact, $f_n \to f$ uniformly on it, so
$$
\Big|\int_{\partial T}f\Big| = \Big|\int_{\partial T}(f - f_n)\Big| \le \mathrm{length}(\partial T)\sup_{\partial T}|f - f_n| \to 0.
$$
By Morera's theorem, $f$ is holomorphic on $D$; such discs cover $\Omega$.

*Derivatives converge.* Let $K \subseteq \Omega$ be compact. Choose $r > 0$ such that $K_r = \lbrace z : \mathrm{dist}(z,K) \le r\rbrace \subseteq \Omega$ (possible because $\mathrm{dist}(K, \mathbb{C}\setminus\Omega) > 0$ when $\Omega \neq \mathbb C$; take $r$ less than half of it, or $r = 1$ if $\Omega = \mathbb C$). $K_r$ is closed and bounded, hence compact. For $z \in K$, the circle $|\zeta - z| = r$ lies in $K_r$, and by the Cauchy integral formula for the derivative,
$$
|f_n'(z) - f'(z)| = \left|\frac1{2\pi i}\int_{|\zeta - z| = r}\frac{f_n(\zeta) - f(\zeta)}{(\zeta - z)^2}d\zeta\right| \le \frac{1}{2\pi}\cdot 2\pi r\cdot\frac{\sup_{K_r}|f_n - f|}{r^2} = \frac{\sup_{K_r}|f_n - f|}{r}.
$$
The right side is independent of $z\in K$ and tends to $0$. So $f_n' \to f'$ uniformly on $K$.
