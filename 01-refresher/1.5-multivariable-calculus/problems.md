# 1.5 Multivariable Calculus: Problems

Solutions are in [solutions.md](solutions.md). Most problems are computational. A few (7, 8, 20–23) ask for short proofs.

## Warm-up

**1.** Let $f(x,y,z)=x^2y+e^{yz}$. Compute $\nabla f$, and find the directional derivative of $f$ at $(1,1,0)$ in the direction of $(1,2,2)$.

**2.** Let $F(r,\theta)=(r\cos\theta,\ r\sin\theta)$. Compute the Jacobian matrix $JF$ and $\det JF$. Where is $DF$ invertible?

**3.** Find the tangent plane to the surface $z=x^2+y^2$ at $(1,2,5)$. Find a normal vector to the surface $x^2+y^2-z=0$ at the same point and check that the two answers agree.

**4.** Let $z=f(x,y)$ with $x=r\cos\theta$ and $y=r\sin\theta$. Use the chain rule to express $z_r$ and $z_\theta$ in terms of $z_x$ and $z_y$, and show that
$$
z_x^2+z_y^2=z_r^2+\frac{1}{r^2}z_\theta^2.
$$

**5.** Evaluate $\iint_R(x+y)\,dA$, where $R=[0,1]\times[0,2]$.

**6.** Evaluate $\displaystyle\int_0^1\int_x^1e^{y^2}\,dy\,dx$ by reversing the order of integration.

## Core

**7.** (a) Let $f(x,y)=\dfrac{xy}{x^2+y^2}$ for $(x,y)\neq0$ and $f(0,0)=0$. Show that $f_x(0,0)$ and $f_y(0,0)$ exist, but $f$ is not continuous at $0$.
(b) Let $g(x,y)=\dfrac{x^2y}{x^2+y^2}$ for $(x,y)\neq0$ and $g(0,0)=0$. Show that $D_ug(0)$ exists for every unit vector $u$, but $g$ is not differentiable at $0$.

**8.** Let $f:\mathbb{R}^2\to\mathbb{R}$ have partial derivatives $f_x,f_y$ that exist near $a$ and are continuous at $a$. Prove that $f$ is differentiable at $a$.

**9.** Find and classify all critical points of $f(x,y)=x^3+y^3-3xy$.

**10.** Find the maximum and minimum of $f(x,y,z)=x+2y+2z$ on the sphere $x^2+y^2+z^2=9$, using Lagrange multipliers. Check your answer with Cauchy–Schwarz.

**11.** The cylinder $x^2+y^2=1$ meets the plane $x+y+z=1$ in an ellipse. Find the highest and lowest points on this ellipse (the extreme values of $z$), using Lagrange multipliers with two constraints.

**12.** Compute $\iint_{\mathbb{R}^2}e^{-(x^2+y^2)}\,dA$ in polar coordinates, and deduce $\int_{-\infty}^\infty e^{-x^2}dx$.

**13.** Find the volume of the "ice-cream cone" region that lies inside the sphere $x^2+y^2+z^2=4$ and above the cone $z=\sqrt{x^2+y^2}$.

**14.** Let $D$ be the parallelogram bounded by the lines $x+y=0$, $x+y=1$, $x-y=0$ and $x-y=2$. Evaluate $\iint_D(x+y)e^{x-y}\,dA$.

**15.** (a) Show that $F=(y,\,x)$ is conservative, find a potential, and compute $\int_CF\cdot dr$ for any curve $C$ from $(0,0)$ to $(1,2)$.
(b) Let $G=\dfrac{(-y,\ x)}{x^2+y^2}$ on $\mathbb{R}^2\setminus\lbrace0\rbrace$. Show that $Q_x=P_y$, but $\oint G\cdot dr=2\pi$ around the unit circle (counter-clockwise). Explain why there is no contradiction.

**16.** Use Green's theorem to show that the area enclosed by the ellipse $x^2/a^2+y^2/b^2=1$ is $\pi ab$.

**17.** Compute the outward flux of $F(x,y,z)=(x,y,z)$ through the sphere of radius $R$ centred at $0$, (a) directly and (b) using the divergence theorem.

**18.** Verify Stokes' theorem for $F=(-y,\,x,\,0)$ on the upper hemisphere $S=\lbrace x^2+y^2+z^2=1,\ z\ge0\rbrace$ with upward normal. Compute both sides.

**19.** Compute the outward flux of $F=(x^3,\,y^3,\,z^3)$ through the unit sphere.

## Challenge

**20.** (a) Prove that if $f$ is $C^2$ on an open set in $\mathbb{R}^2$, then $f_{xy}=f_{yx}$. (Hint: consider $\Delta(h)=f(a+h,b+h)-f(a+h,b)-f(a,b+h)+f(a,b)$ and apply the mean value theorem twice.)
(b) Let $f(x,y)=\dfrac{xy(x^2-y^2)}{x^2+y^2}$ for $(x,y)\ne0$ and $f(0,0)=0$. Compute $\frac{\partial}{\partial y}\frac{\partial f}{\partial x}(0,0)$ and $\frac{\partial}{\partial x}\frac{\partial f}{\partial y}(0,0)$, and show that they differ.

**21.** Show that $\det:M_n(\mathbb{R})\to\mathbb{R}$ is differentiable at $I$ with $D\det(I)(H)=\operatorname{tr}H$. Deduce that for invertible $A$, $D\det(A)(H)=\det A\cdot\operatorname{tr}(A^{-1}H)$.

**22.** Let $A$ be a real symmetric $n\times n$ matrix and $q(x)=x^tAx$.
(a) Show that $\nabla q(x)=2Ax$.
(b) Use Lagrange multipliers on the unit sphere to show that $A$ has a real eigenvalue, and that $\max_{|x|=1}q(x)$ is the largest eigenvalue of $A$.

**23.** Let $F(x)=x/|x|^3$ on $\mathbb{R}^3\setminus\lbrace0\rbrace$.
(a) Show that $\operatorname{div}F=0$.
(b) Show that the outward flux of $F$ through the sphere $|x|=R$ is $4\pi$, for every $R>0$.
(c) Explain why (a) and (b) do not contradict the divergence theorem. Show that the flux through *any* closed surface $S$ that bounds a nice region containing $0$ in its interior is $4\pi$.
