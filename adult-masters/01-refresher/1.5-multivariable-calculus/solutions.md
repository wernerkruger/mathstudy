# 1.5 Multivariable Calculus: Solutions

These are solutions to [problems.md](problems.md). The numerical answers (Problems 1, 6, 9, 13, 14, 19, 20b) were checked with a computer algebra system.

## Warm-up

**1.** $\nabla f=\big(2xy,\ x^2+ze^{yz},\ ye^{yz}\big)$, so $\nabla f(1,1,0)=(2,1,1)$.

The unit vector in the given direction is $u=(1,2,2)/3$, since $|(1,2,2)|=3$. So
$$
D_uf(1,1,0)=(2,1,1)\cdot\tfrac13(1,2,2)=\tfrac{2+2+2}{3}=2.
$$

**2.**
$$
JF=\begin{pmatrix}\cos\theta&-r\sin\theta\\ \sin\theta&r\cos\theta\end{pmatrix},\qquad\det JF=r\cos^2\theta+r\sin^2\theta=r.
$$
$DF(r,\theta)$ is invertible iff $r\neq0$. At $r=0$, every $\theta$ maps to the origin, so polar coordinates degenerate there.

**3.** $f_x=2x=2$ and $f_y=2y=4$ at $(1,2)$. The tangent plane is
$$
z=5+2(x-1)+4(y-2),\quad\text{i.e.}\quad 2x+4y-z=5.
$$
For $G=x^2+y^2-z$, $\nabla G=(2x,2y,-1)=(2,4,-1)$ at $(1,2,5)$. This is the normal of the plane $2x+4y-z=5$, so the two answers agree. The point lies on the plane: $2+8-5=5$.

**4.** By the chain rule, with $\partial x/\partial r=\cos\theta$, $\partial y/\partial r=\sin\theta$, $\partial x/\partial\theta=-r\sin\theta$ and $\partial y/\partial\theta=r\cos\theta$:
$$
z_r=z_x\cos\theta+z_y\sin\theta,\qquad z_\theta=-z_xr\sin\theta+z_yr\cos\theta.
$$
Write $c=\cos\theta$ and $s=\sin\theta$. Then
$$
z_r^2+\tfrac1{r^2}z_\theta^2=(cz_x+sz_y)^2+(-sz_x+cz_y)^2=(c^2+s^2)z_x^2+(s^2+c^2)z_y^2+(2cs-2cs)z_xz_y=z_x^2+z_y^2.
$$
(Geometrically, $(z_r,\ z_\theta/r)$ is $\nabla z$ written in the rotated orthonormal frame $(\hat r,\hat\theta)$, so it has the same length.)

**5.**
$$
\int_0^1\int_0^2(x+y)\,dy\,dx=\int_0^1\left[xy+\tfrac{y^2}2\right]_0^2dx=\int_0^1(2x+2)\,dx=1+2=3.
$$

**6.** The region is $\lbrace0\le x\le1,\ x\le y\le1\rbrace=\lbrace0\le y\le1,\ 0\le x\le y\rbrace$, a triangle. In the reversed order:
$$
\int_0^1\int_0^ye^{y^2}\,dx\,dy=\int_0^1ye^{y^2}\,dy=\left[\tfrac12e^{y^2}\right]_0^1=\frac{e-1}{2}.
$$
The original order cannot be done directly, because $e^{y^2}$ has no elementary antiderivative.

## Core

**7.** (a) $f(x,0)=0$ for all $x$, so $f_x(0,0)=\lim_{t\to0}\frac{f(t,0)-0}{t}=0$. Similarly $f_y(0,0)=0$. But on the line $y=x$, $f(t,t)=\frac{t^2}{2t^2}=\frac12$ for $t\neq0$. So $f(t,t)\to\frac12\neq0=f(0,0)$, and $f$ is not continuous at $0$, let alone differentiable.

(b) For a unit vector $u=(u_1,u_2)$ and $t\neq0$:
$$
\frac{g(tu)-g(0)}{t}=\frac{t^3u_1^2u_2}{t^2(u_1^2+u_2^2)\,t}=u_1^2u_2,
$$
so $D_ug(0)=u_1^2u_2$ exists for every $u$.

If $g$ were differentiable at $0$, we would have $D_ug(0)=\nabla g(0)\cdot u$. Now $\nabla g(0)=(D_{e_1}g(0),D_{e_2}g(0))=(0,0)$, so every directional derivative would be $0$. But $u=(1,1)/\sqrt2$ gives $D_ug(0)=\frac12\cdot\frac1{\sqrt2}\neq0$. So $g$ is not differentiable at $0$. (In fact $g$ is continuous: $|g|\le|y|$.)

**8.** Let $a=(a_1,a_2)$ and $h=(h_1,h_2)$, small enough that the partials exist on the rectangle spanned. Split the increment into two one-variable steps:
$$
f(a+h)-f(a)=\big[f(a_1+h_1,a_2+h_2)-f(a_1,a_2+h_2)\big]+\big[f(a_1,a_2+h_2)-f(a_1,a_2)\big].
$$
Apply the one-variable mean value theorem to each bracket. The first is a function of $x$ alone, and $f_x$ exists near $a$; the second is a function of $y$ alone. This gives
$$
f(a+h)-f(a)=f_x(\xi)h_1+f_y(\eta)h_2,
$$
with $\xi=(a_1+\theta_1h_1,\ a_2+h_2)$ and $\eta=(a_1,\ a_2+\theta_2h_2)$ for some $\theta_i\in(0,1)$. Hence
$$
\frac{|f(a+h)-f(a)-f_x(a)h_1-f_y(a)h_2|}{|h|}\le|f_x(\xi)-f_x(a)|+|f_y(\eta)-f_y(a)|,
$$
using $|h_i|\le|h|$. As $h\to0$, both $\xi\to a$ and $\eta\to a$. By continuity of the partials at $a$, the right side tends to $0$. So $f$ is differentiable at $a$, with $Df(a)=(f_x(a),f_y(a))$.

**9.** $\nabla f=(3x^2-3y,\ 3y^2-3x)=0$ gives $y=x^2$ and $x=y^2$. So $x=x^4$, i.e. $x(x^3-1)=0$, and $x=0$ or $x=1$ (the only real roots). The critical points are $(0,0)$ and $(1,1)$.

The Hessian is $Hf=\begin{pmatrix}6x&-3\\-3&6y\end{pmatrix}$.
- At $(0,0)$: $D=\det Hf=0-9=-9<0$, so it is a **saddle**.
- At $(1,1)$: $D=36-9=27>0$ and $f_{xx}=6>0$, so it is a **local minimum**, with $f(1,1)=-1$.

Neither is a global extremum, because $f(x,0)=x^3$ is unbounded in both directions.

**10.** Let $g=x^2+y^2+z^2$. Then $\nabla g=2(x,y,z)\neq0$ on the sphere, and the sphere is compact, so a maximum and minimum exist and occur at Lagrange points.

$\nabla f=(1,2,2)=\lambda\cdot2(x,y,z)$ forces $\lambda\neq0$ and $(x,y,z)=\frac1{2\lambda}(1,2,2)$. Then $|(x,y,z)|=3$ gives $\frac{3}{2|\lambda|}=3$, so $\lambda=\pm\frac12$ and $(x,y,z)=\pm(1,2,2)$.
- $f(1,2,2)=9$ is the **maximum**.
- $f(-1,-2,-2)=-9$ is the **minimum**.

*Check:* by Cauchy–Schwarz, $|f|=|(1,2,2)\cdot(x,y,z)|\le3\cdot3=9$, with equality iff $(x,y,z)$ is parallel to $(1,2,2)$.

**11.** We extremise $f=z$ subject to $g=x^2+y^2=1$ and $h=x+y+z=1$. On the curve, $\nabla g=(2x,2y,0)\neq0$ and $\nabla h=(1,1,1)$, and these are independent because $\nabla g$ is nonzero with zero $z$-component. The curve is compact (an ellipse).

$\nabla f=\lambda\nabla g+\mu\nabla h$ reads
$$
(0,0,1)=\lambda(2x,2y,0)+\mu(1,1,1).
$$
- The third component gives $\mu=1$.
- Then $2\lambda x=-1$ and $2\lambda y=-1$. So $\lambda\neq0$ and $x=y=-\frac1{2\lambda}$.
- From $x^2+y^2=1$: $x=y=\pm\frac1{\sqrt2}$, and $z=1-x-y=1\mp\sqrt2$.

So the **highest point** is $\left(-\tfrac1{\sqrt2},-\tfrac1{\sqrt2},1+\sqrt2\right)$ and the **lowest point** is $\left(\tfrac1{\sqrt2},\tfrac1{\sqrt2},1-\sqrt2\right)$.

*Check:* on the circle, $x+y=\sqrt2\cos(t-\pi/4)$ ranges over $[-\sqrt2,\sqrt2]$.

**12.** The integrand is positive, so the improper integral may be computed in any coordinates as a limit over discs (Tonelli; made rigorous in 3.1):
$$
\iint_{\mathbb{R}^2}e^{-(x^2+y^2)}dA=\int_0^{2\pi}\int_0^\infty e^{-r^2}r\,dr\,d\theta=2\pi\left[-\tfrac12e^{-r^2}\right]_0^\infty=\pi.
$$
By Fubini, the same integral equals $\left(\int_{\mathbb{R}}e^{-x^2}dx\right)^2$. The integral is positive, so $\int_{-\infty}^\infty e^{-x^2}dx=\sqrt\pi$.

**13.** In spherical coordinates, the cone $z=\sqrt{x^2+y^2}$ is $\varphi=\pi/4$ and the sphere is $\rho=2$. The region is $0\le\rho\le2$, $0\le\varphi\le\pi/4$, $0\le\theta\le2\pi$. So
$$
V=\int_0^{2\pi}\int_0^{\pi/4}\int_0^2\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta=2\pi\cdot\left(1-\tfrac{\sqrt2}2\right)\cdot\tfrac83=\frac{8\pi(2-\sqrt2)}{3}\approx4.91.
$$

**14.** Let $u=x+y$ and $v=x-y$. Then $D$ becomes the rectangle $0\le u\le1$, $0\le v\le2$, and
$$
\frac{\partial(u,v)}{\partial(x,y)}=\det\begin{pmatrix}1&1\\1&-1\end{pmatrix}=-2,\quad\text{so}\quad dA_{xy}=\tfrac12\,du\,dv.
$$
Hence
$$
\iint_D(x+y)e^{x-y}dA=\int_0^1\int_0^2ue^v\cdot\tfrac12\,dv\,du=\tfrac12\cdot\tfrac12\cdot(e^2-1)=\frac{e^2-1}{4}.
$$

**15.** (a) $P=y$ and $Q=x$, so $Q_x=1=P_y$ on all of $\mathbb{R}^2$, which is simply connected. Hence $F$ is conservative. A potential is $\varphi=xy$: $\varphi_x=y$ and $\varphi_y=x$. For any curve $C$ from $(0,0)$ to $(1,2)$, $\int_CF\cdot dr=\varphi(1,2)-\varphi(0,0)=2$.

(b) With $P=\frac{-y}{x^2+y^2}$ and $Q=\frac{x}{x^2+y^2}$:
$$
P_y=\frac{-(x^2+y^2)+2y^2}{(x^2+y^2)^2}=\frac{y^2-x^2}{(x^2+y^2)^2},\qquad Q_x=\frac{(x^2+y^2)-2x^2}{(x^2+y^2)^2}=\frac{y^2-x^2}{(x^2+y^2)^2}.
$$
So $Q_x=P_y$.

On the unit circle $r(t)=(\cos t,\sin t)$, $G(r(t))=(-\sin t,\cos t)=r'(t)$. So $G\cdot r'=1$ and $\oint G\cdot dr=\int_0^{2\pi}1\,dt=2\pi$.

*No contradiction:* "curl-free ⇒ conservative" requires a simply connected domain, and $\mathbb{R}^2\setminus\lbrace0\rbrace$ is not simply connected. Equivalently, Green's theorem cannot be applied to the unit disc, because $G$ is not defined (let alone $C^1$) at $0$. Locally $G=\nabla\theta$, but $\theta$ has no continuous single-valued branch around the origin.

**16.** Parametrise the ellipse by $x=a\cos t$, $y=b\sin t$, $0\le t\le2\pi$ (counter-clockwise). Then
$$
\text{Area}=\frac12\oint x\,dy-y\,dx=\frac12\int_0^{2\pi}\big(a\cos t\cdot b\cos t+b\sin t\cdot a\sin t\big)dt=\frac12\cdot ab\cdot2\pi=\pi ab.
$$

**17.** (a) On $|x|=R$, the outward unit normal is $n=x/R$, so $F\cdot n=x\cdot x/R=R^2/R=R$ is constant. The flux is $R\cdot\text{Area}=R\cdot4\pi R^2=4\pi R^3$.

(b) $\operatorname{div}F=1+1+1=3$. The flux is $\iiint_{|x|\le R}3\,dV=3\cdot\frac43\pi R^3=4\pi R^3$. The two answers agree.

**18.** *Line integral.* With the upward normal, the right-hand rule orients $\partial S$ (the unit circle in $z=0$) counter-clockwise when viewed from above: $r(t)=(\cos t,\sin t,0)$. Then $F(r(t))=(-\sin t,\cos t,0)$ and $F\cdot r'=\sin^2t+\cos^2t=1$. So $\oint_{\partial S}F\cdot dr=2\pi$.

*Surface integral.* $\operatorname{curl}F=(0-0,\ 0-0,\ 1-(-1))=(0,0,2)$. On the unit sphere, $n=(x,y,z)$, so $\operatorname{curl}F\cdot n=2z=2\cos\varphi$. With $dS=\sin\varphi\,d\varphi\,d\theta$:
$$
\iint_S2\cos\varphi\,dS=\int_0^{2\pi}\int_0^{\pi/2}2\cos\varphi\sin\varphi\,d\varphi\,d\theta=2\pi\cdot2\cdot\tfrac12=2\pi.
$$
Both sides equal $2\pi$. (Shortcut: the flux of $(0,0,2)$ through any surface with this boundary equals its flux through the flat unit disc, which is $2\cdot\pi$.)

**19.** $\operatorname{div}F=3(x^2+y^2+z^2)=3\rho^2$. By the divergence theorem:
$$
\iiint_{\rho\le1}3\rho^2\,dV=\int_0^{2\pi}\int_0^\pi\int_0^13\rho^4\sin\varphi\,d\rho\,d\varphi\,d\theta=3\cdot\tfrac15\cdot2\cdot2\pi=\frac{12\pi}{5}.
$$

## Challenge

**20.** (a) Fix $(a,b)$ and small $h\neq0$, and set
$$
\Delta(h)=f(a+h,b+h)-f(a+h,b)-f(a,b+h)+f(a,b).
$$

*First grouping.* Let $\varphi(x)=f(x,b+h)-f(x,b)$, so $\Delta=\varphi(a+h)-\varphi(a)$. By the MVT, $\Delta=h\varphi'(\xi_1)=h\big[f_x(\xi_1,b+h)-f_x(\xi_1,b)\big]$ for some $\xi_1$ between $a$ and $a+h$. Applying the MVT again to $y\mapsto f_x(\xi_1,y)$ gives $\Delta=h^2(f_x)_y(\xi_1,\eta_1)$, with $\eta_1$ between $b$ and $b+h$.

*Second grouping.* Let $\psi(y)=f(a+h,y)-f(a,y)$, so $\Delta=\psi(b+h)-\psi(b)$. The same two steps give $\Delta=h^2(f_y)_x(\xi_2,\eta_2)$.

So $(f_x)_y(\xi_1,\eta_1)=(f_y)_x(\xi_2,\eta_2)$, where both points lie in the square of side $|h|$ at $(a,b)$. Let $h\to0$. By continuity of the second partials, $(f_x)_y(a,b)=(f_y)_x(a,b)$.

(b) *Compute $f_x(0,y)$.* For $y\neq0$:
$$
f_x(0,y)=\lim_{t\to0}\frac{f(t,y)-f(0,y)}{t}=\lim_{t\to0}\frac{y(t^2-y^2)}{t^2+y^2}=\frac{y(-y^2)}{y^2}=-y.
$$
Also $f_x(0,0)=0$, since $f(t,0)=0$. So $f_x(0,y)=-y$ for all $y$, and $\frac{\partial}{\partial y}f_x(0,0)=-1$.

*Compute $f_y(x,0)$.* For $x\neq0$:
$$
f_y(x,0)=\lim_{t\to0}\frac{f(x,t)}{t}=\frac{x\cdot x^2}{x^2}=x.
$$
Also $f_y(0,0)=0$. So $\frac{\partial}{\partial x}f_y(0,0)=1$.

The mixed partials are $-1\neq1$. This is consistent with (a), because the second partials of $f$ are not continuous at $0$.

**21.** *At $I$.* By the Leibniz formula, $\det(I+H)=\sum_\sigma\operatorname{sgn}\sigma\prod_i(\delta_{\sigma(i)i}+H_{\sigma(i)i})$.
- The identity permutation contributes $\prod_i(1+H_{ii})=1+\sum_iH_{ii}+(\text{terms of degree}\ge2\text{ in the entries of }H)$.
- Every other $\sigma$ moves at least two indices, so its product contains at least two off-diagonal entries of $H$. Its degree is at least 2.

So $\det(I+H)=1+\operatorname{tr}H+R(H)$, where $R$ is a polynomial whose terms all have degree $\ge2$. Hence $|R(H)|\le C|H|^2$ for $|H|\le1$, and $|R(H)|/|H|\to0$. So $D\det(I)(H)=\operatorname{tr}H$.

*At invertible $A$.* $\det(A+H)=\det A\cdot\det(I+A^{-1}H)=\det A\,\big(1+\operatorname{tr}(A^{-1}H)+R(A^{-1}H)\big)$. Since $|A^{-1}H|\le\|A^{-1}\|\,|H|$, the remainder is $O(|H|^2)$. So
$$
D\det(A)(H)=\det A\cdot\operatorname{tr}(A^{-1}H).
$$
(Equivalently, $\operatorname{tr}(\operatorname{adj}(A)H)$, which extends to all $A$.)

**22.** (a) $q(x)=\sum_{i,j}a_{ij}x_ix_j$, so
$$
\partial_kq=\sum_ja_{kj}x_j+\sum_ia_{ik}x_i=2(Ax)_k,
$$
using $a_{ik}=a_{ki}$. So $\nabla q=2Ax$.

(b) The unit sphere $S=\lbrace g(x)=|x|^2=1\rbrace$ is compact and $q$ is continuous, so $q$ attains its maximum on $S$ at some $x_0$. Since $\nabla g=2x\neq0$ on $S$, Lagrange gives $2Ax_0=\lambda\cdot2x_0$. So $x_0\neq0$ is an eigenvector with **real** eigenvalue $\lambda$, and $q(x_0)=x_0^tAx_0=\lambda|x_0|^2=\lambda$.

If $\mu$ is any real eigenvalue with unit eigenvector $v$, then $\mu=q(v)\le q(x_0)=\lambda$. Combined with the spectral theorem, under which all eigenvalues are real, $\max_{|x|=1}q=\lambda_{\max}$.

(This gives the base case of an induction proof of the real spectral theorem: restrict to $x_0^\perp$ and repeat.)

**23.** (a) Let $r=|x|$, so $\partial_ir=x_i/r$. Then
$$
\partial_i\left(\frac{x_i}{r^3}\right)=\frac1{r^3}-\frac{3x_i^2}{r^5},\qquad\operatorname{div}F=\frac3{r^3}-\frac{3r^2}{r^5}=0\quad(x\neq0).
$$

(b) On $|x|=R$, $n=x/R$, so $F\cdot n=\frac{x\cdot x}{R^3\cdot R}=\frac1{R^2}$. The flux is $\frac1{R^2}\cdot4\pi R^2=4\pi$, independent of $R$.

(c) The divergence theorem on the ball $|x|\le R$ needs $F$ to be $C^1$ on the whole ball. $F$ is undefined at $0$, so the theorem does not apply, and there is no contradiction.

Now let $S=\partial E$, where $E$ is a nice solid with $0$ in its interior. Choose $\varepsilon>0$ with $\overline{B_\varepsilon(0)}\subset\operatorname{int}E$. Let $E_\varepsilon=E\setminus B_\varepsilon(0)$. $F$ is $C^1$ on $E_\varepsilon$, whose boundary is $S$ (outward normal) together with the small sphere $|x|=\varepsilon$, whose outward normal for $E_\varepsilon$ points *towards* $0$. The divergence theorem on $E_\varepsilon$ gives
$$
0=\iiint_{E_\varepsilon}\operatorname{div}F\,dV=\iint_SF\cdot n\,dS-\iint_{|x|=\varepsilon}F\cdot\frac{x}{\varepsilon}\,dS=\iint_SF\cdot n\,dS-4\pi.
$$
So the flux through $S$ is $4\pi$. If instead $0\notin\overline E$, the flux is $0$. This is Gauss's law: up to constants, the flux counts the enclosed charge.
