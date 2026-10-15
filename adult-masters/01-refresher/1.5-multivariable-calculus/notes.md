# 1.5 Multivariable Calculus: Study Notes

These notes are a computational refresher with the key ideas made precise. Proofs are sketched only where they are short or illuminating. The full rigorous treatment is in [2.4 Analysis in $\mathbb{R}^n$](../../02-bridge/2.4-analysis-in-Rn/README.md).

Notation: $|x|$ is the Euclidean norm on $\mathbb{R}^n$; $U\subseteq\mathbb{R}^n$ is open; $f:U\to\mathbb{R}^m$.

---

## 1. The derivative as a linear map

**Partial and directional derivatives.** For $f:U\to\mathbb{R}$, $a\in U$ and a unit vector $u$:

$$
D_uf(a)=\lim_{t\to0}\frac{f(a+tu)-f(a)}{t},\qquad \frac{\partial f}{\partial x_i}(a)=D_{e_i}f(a).
$$

**Total derivative.** $f:U\to\mathbb{R}^m$ is *differentiable at $a$* if there is a linear map $L:\mathbb{R}^n\to\mathbb{R}^m$ with

$$
\lim_{h\to0}\frac{|f(a+h)-f(a)-Lh|}{|h|}=0.
$$

$L$ is unique and is written $Df(a)$. Its matrix in the standard bases is the **Jacobian**

$$
Jf(a)=\left(\frac{\partial f_i}{\partial x_j}(a)\right)_{i,j}\in\mathbb{R}^{m\times n}.
$$

In words: $f(a+h)\approx f(a)+Df(a)h$, with an error that is small *compared with* $|h|$. For a scalar function ($m=1$), $Df(a)h=\nabla f(a)\cdot h$, where $\nabla f=(\partial_1f,\dots,\partial_nf)$ is the gradient.

**Facts.**
1. Differentiable ⇒ continuous, and all directional derivatives exist with $D_uf(a)=Df(a)u$. For scalar $f$, $D_uf(a)=\nabla f(a)\cdot u$.
2. Hence $\nabla f(a)$ points in the direction of steepest increase, with rate $|\nabla f(a)|$. It is orthogonal to the level set $\lbrace f=f(a)\rbrace$: if $\gamma(t)$ is a curve in the level set, then $\frac{d}{dt}f(\gamma(t))=\nabla f\cdot\gamma'=0$.
3. **$C^1$ ⇒ differentiable.** If all partial derivatives exist near $a$ and are continuous at $a$, then $f$ is differentiable at $a$. *Sketch for $n=2$:* write $f(a+h)-f(a)$ as a change in $x_1$ followed by a change in $x_2$. Apply the one-variable mean value theorem to each, then use continuity of the partials (Problem 8).

**The hierarchy and its counterexamples.**

$$
C^1\ \Rightarrow\ \text{differentiable}\ \Rightarrow\ \text{all directional derivatives exist}\ \Rightarrow\ \text{partials exist}.
$$

None of the arrows reverses.
- $f(x,y)=\dfrac{xy}{x^2+y^2}$, $f(0,0)=0$: both partials exist at $0$ (they are $0$), but $f$ is not even continuous at $0$. On the line $y=x$, $f=1/2$.
- $g(x,y)=\dfrac{x^2y}{x^2+y^2}$, $g(0,0)=0$: every directional derivative exists at $0$, with $D_ug(0)=u_1^2u_2$. This is not linear in $u$, so $g$ is not differentiable at $0$.
- $h(x)=x^2\sin(1/x)$ (one variable) is differentiable but not $C^1$.

**Tangent plane.** For $z=f(x,y)$ at $(a,b)$:

$$
z=f(a,b)+f_x(a,b)(x-a)+f_y(a,b)(y-b).
$$

For a level surface $F(x,y,z)=c$, the normal vector is $\nabla F$.

---

## 2. The chain rule

**Chain rule.** If $f$ is differentiable at $a$ and $g$ is differentiable at $f(a)$, then

$$
D(g\circ f)(a)=Dg(f(a))\circ Df(a),\qquad J(g\circ f)(a)=Jg(f(a))\,Jf(a).
$$

The derivative of a composition is the composition of the derivatives, and matrix multiplication is exactly composition of linear maps. All the "tree diagrams" of a first calculus course are this one formula written entry by entry:

$$
\frac{\partial (g\circ f)_i}{\partial x_j}=\sum_k\frac{\partial g_i}{\partial y_k}\frac{\partial f_k}{\partial x_j}.
$$

**Example (polar coordinates).** Let $z=f(x,y)$ with $x=r\cos\theta$ and $y=r\sin\theta$. Then

$$
\begin{pmatrix}z_r & z_\theta\end{pmatrix}=\begin{pmatrix}z_x & z_y\end{pmatrix}\begin{pmatrix}\cos\theta & -r\sin\theta\\ \sin\theta & r\cos\theta\end{pmatrix}.
$$

**Useful special cases.**
- Along a curve: $\frac{d}{dt}f(\gamma(t))=\nabla f(\gamma(t))\cdot\gamma'(t)$.
- Product rule for bilinear maps: $D(B(f,g))(a)h=B(Df(a)h,g(a))+B(f(a),Dg(a)h)$.
- Derivative of matrix inversion: $D(X\mapsto X^{-1})(A)H=-A^{-1}HA^{-1}$.
- Derivative of the determinant: $D\det(A)H=\det(A)\operatorname{tr}(A^{-1}H)$ (Problem 21).

---

## 3. Higher derivatives, Taylor and extrema

**Mixed partials (Schwarz/Clairaut).** If $f$ is $C^2$, then $\partial_i\partial_jf=\partial_j\partial_if$. For the counterexample $f(x,y)=\dfrac{xy(x^2-y^2)}{x^2+y^2}$, the two mixed partials at $0$ are $-1$ and $1$ (Problem 20). That function is twice differentiable in each variable, but its second partials are not continuous at $0$.

**Hessian.** For $f\in C^2$, $Hf(a)=\big(\partial_i\partial_jf(a)\big)$ is a **symmetric** matrix. Second-order Taylor expansion:

$$
f(a+h)=f(a)+\nabla f(a)\cdot h+\tfrac12h^tHf(a)h+o(|h|^2).
$$

**Critical points.** If $f$ has a local extremum at an interior point $a$ and is differentiable there, then $\nabla f(a)=0$. 

**Second-derivative test.** At a critical point, diagonalise the symmetric matrix $Hf(a)$ by the spectral theorem ([1.3 notes §10](../1.3-linear-algebra/notes.md#10-the-spectral-theorem-and-its-relatives)):
- all eigenvalues $>0$ ⇒ strict local minimum;
- all eigenvalues $<0$ ⇒ strict local maximum;
- eigenvalues of both signs ⇒ saddle;
- some eigenvalue $=0$ (and no two of opposite sign) ⇒ the test is inconclusive. For example, $x^4+y^4$ and $x^4-y^4$ both have Hessian $0$ at the origin.

In two variables, with $D=f_{xx}f_{yy}-f_{xy}^2=\det Hf$: if $D>0$ and $f_{xx}>0$, it is a local minimum; if $D>0$ and $f_{xx}<0$, a local maximum; if $D<0$, a saddle; if $D=0$, no conclusion.

**Inverse and implicit function theorems (statements only; proved in 2.4).**
- *Inverse function theorem.* If $f:U\to\mathbb{R}^n$ is $C^1$ and $Df(a)$ is invertible, then $f$ is a $C^1$ bijection from a neighbourhood of $a$ onto a neighbourhood of $f(a)$, with $C^1$ inverse and $D(f^{-1})(f(a))=Df(a)^{-1}$. Polar coordinates are locally invertible exactly where $r\neq0$ (Problem 2).
- *Implicit function theorem.* Let $F:\mathbb{R}^{n}\times\mathbb{R}^{k}\to\mathbb{R}^k$ be $C^1$ with $F(a,b)=0$, and suppose the $k\times k$ block $D_yF(a,b)$ is invertible. Then near $(a,b)$ the equation $F(x,y)=0$ defines $y=g(x)$ with $g$ $C^1$, and $Dg(a)=-D_yF(a,b)^{-1}D_xF(a,b)$.
- For one equation, $F(x,y)=0$, this is the familiar implicit differentiation $dy/dx=-F_x/F_y$.

These theorems justify Lagrange multipliers. They also show that a level set $\lbrace g=c\rbrace$ with $\nabla g\neq0$ is a smooth hypersurface, which is the first example of a manifold.

**Global extrema.** A continuous function on a **compact** set (closed and bounded) attains a maximum and a minimum. To find them, check the interior critical points, the boundary (using a parametrisation or Lagrange multipliers), and any corners.

---

## 4. Lagrange multipliers

**Theorem (one constraint).** Let $f,g\in C^1$, and let $a$ be a local extremum of $f$ restricted to $S=\lbrace g=c\rbrace$. If $\nabla g(a)\neq0$, then

$$
\nabla f(a)=\lambda\nabla g(a)\quad\text{for some }\lambda\in\mathbb{R}.
$$

*Why.* For any curve $\gamma$ in $S$ through $a$, $f\circ\gamma$ has a critical point at $a$, so $\nabla f(a)\perp\gamma'(0)$. The tangent vectors $\gamma'(0)$ fill the tangent space $\nabla g(a)^\perp$. This step needs the implicit function theorem, which is proved in 2.4. So $\nabla f(a)\in(\nabla g(a)^\perp)^\perp=\operatorname{span}\nabla g(a)$.

**Several constraints.** With constraints $g_1=c_1,\dots,g_k=c_k$, and $\nabla g_1(a),\dots,\nabla g_k(a)$ linearly independent:

$$
\nabla f(a)=\lambda_1\nabla g_1(a)+\dots+\lambda_k\nabla g_k(a).
$$

**Recipe.** Solve the $n+k$ equations in the $n+k$ unknowns $(x,\lambda)$. Evaluate $f$ at every solution, and also at any point of $S$ where the gradients are dependent. If $S$ is compact, the largest value is the maximum and the smallest is the minimum.

**Meaning of $\lambda$.** $\lambda=\frac{d}{dc}\big(\max_{g=c}f\big)$, the sensitivity of the optimal value to the constraint level. In economics this is the "shadow price".

**Worked example.** Find the rectangular box of largest volume with surface area $S$ and sides $x,y,z>0$. Maximise $V=xyz$ subject to $g=2(xy+yz+zx)=S$. The Lagrange condition is
$$
(yz,\ xz,\ xy)=2\lambda\,(y+z,\ x+z,\ x+y).
$$
Multiply the first component by $x$ and the second by $y$: $xyz=2\lambda x(y+z)=2\lambda y(x+z)$. Since $\lambda\neq0$, this gives $xz=yz$, so $x=y$. Similarly $y=z$. The optimal box is a cube with side $\sqrt{S/6}$.

To be sure this is a maximum, you need a separate argument, because the constraint set is not compact. Volume tends to $0$ as any side tends to $0$ or $\infty$ with $S$ fixed, so a maximum exists, and it must occur at the only Lagrange point.

**Linear algebra link.** Maximising $x^tAx$ ($A$ symmetric) on $|x|=1$ gives $Ax=\lambda x$. So the maximum is the largest eigenvalue. This yields a proof that real symmetric matrices have a real eigenvalue (Problem 22), and it is the first step in a variational proof of the spectral theorem.

---

## 5. Multiple integrals

**Fubini.** For $f$ continuous on a rectangle, or more generally integrable with integrable iterated integrals, the double integral equals either iterated integral. For a region of type I, $D=\lbrace a\le x\le b,\ \varphi_1(x)\le y\le\varphi_2(x)\rbrace$:

$$
\iint_Df\,dA=\int_a^b\int_{\varphi_1(x)}^{\varphi_2(x)}f(x,y)\,dy\,dx.
$$

Reversing the order of integration means redescribing $D$ as a type II region. **Always draw the region.**

**Pitfall.** Fubini can fail without absolute integrability. On $[0,1]^2$, the function $\dfrac{x^2-y^2}{(x^2+y^2)^2}$ has iterated integrals $\pi/4$ and $-\pi/4$. The full theory is Fubini–Tonelli in [3.1](../../03-masters-core/3.1-measure-integration/README.md).

**Standard coordinate systems.**

| System | Map | Volume element |
|---|---|---|
| Polar | $x=r\cos\theta,\ y=r\sin\theta$ | $dA=r\,dr\,d\theta$ |
| Cylindrical | $(r\cos\theta,r\sin\theta,z)$ | $dV=r\,dr\,d\theta\,dz$ |
| Spherical | $(\rho\sin\varphi\cos\theta,\ \rho\sin\varphi\sin\theta,\ \rho\cos\varphi)$ | $dV=\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta$ |

Here $\varphi\in[0,\pi]$ is measured from the positive $z$-axis. **Pitfall:** physics texts often swap the names $\theta$ and $\varphi$.

**General change of variables.** Let $T:D^*\to D$ be a $C^1$ bijection between (nice) regions with $\det DT\neq0$. Then

$$
\int_Df(x)\,dx=\int_{D^*}f(T(u))\,\lvert\det DT(u)\rvert\,du.
$$

Reason: $T$ maps a tiny box at $u$ approximately onto the parallelepiped $DT(u)(\text{box})$, whose volume is $|\det DT(u)|$ times the box's volume ([1.3 notes §7](../1.3-linear-algebra/notes.md#7-determinants)).

**Practical tip.** If the substitution is given as $u=u(x,y)$, $v=v(x,y)$, compute $\dfrac{\partial(u,v)}{\partial(x,y)}$ and invert: $dA_{xy}=\left|\dfrac{\partial(u,v)}{\partial(x,y)}\right|^{-1}dA_{uv}$.

**Gaussian integral.** In polar coordinates, $\iint_{\mathbb{R}^2}e^{-(x^2+y^2)}dA=\int_0^{2\pi}\int_0^\infty e^{-r^2}r\,dr\,d\theta=\pi$. Hence $\int_{\mathbb{R}}e^{-x^2}dx=\sqrt\pi$.

---

## 6. Line integrals and conservative fields

Let $C$ be a curve parametrised by $r:[a,b]\to\mathbb{R}^n$, $C^1$, with $r'\neq0$.
- **Scalar line integral:** $\int_Cf\,ds=\int_a^bf(r(t))\,|r'(t)|\,dt$. It does not depend on parametrisation or orientation.
- **Vector line integral (work):** $\int_CF\cdot dr=\int_a^bF(r(t))\cdot r'(t)\,dt$. It does not depend on parametrisation but **changes sign with orientation**. In differential notation it is $\int_C P\,dx+Q\,dy+R\,dz$.

**Fundamental theorem for line integrals.** If $F=\nabla\varphi$, then $\int_CF\cdot dr=\varphi(r(b))-\varphi(r(a))$.

**Conservative fields.** For a continuous $F$ on a connected open set $U$, the following are equivalent:
1. $F=\nabla\varphi$ for some $\varphi$;
2. $\int_CF\cdot dr$ depends only on the endpoints;
3. $\oint_CF\cdot dr=0$ for every closed curve $C$.

If $F$ is $C^1$ and conservative, then $\operatorname{curl}F=0$; in 2D, $Q_x=P_y$. **The converse holds when $U$ is simply connected**, but not in general.

**The key counterexample.** On $U=\mathbb{R}^2\setminus\lbrace0\rbrace$, let

$$
F=\frac{(-y,\,x)}{x^2+y^2}.
$$

Then $Q_x-P_y=0$, but $\oint_{|x|=1}F\cdot dr=2\pi\neq0$. Locally, $F=\nabla\theta$ (the polar angle), but $\theta$ cannot be defined continuously on all of $U$. This is the first example of **de Rham cohomology** and of **winding numbers**. It returns in [2.2 Complex Analysis](../../02-bridge/2.2-complex-analysis/README.md) as $\oint dz/z=2\pi i$, and in [3.4 Algebraic Topology](../../03-masters-core/3.4-algebraic-topology/README.md) as $\pi_1(S^1)\cong\mathbb{Z}$.

**Finding potentials.** Integrate $P$ with respect to $x$ to get $\varphi=\int P\,dx+h(y,z)$. Then differentiate with respect to $y$ and match with $Q$ to determine $h$, and so on.

---

## 7. Green, surface integrals, Stokes and divergence

**div and curl.** For $F=(P,Q,R)$:

$$
\operatorname{div}F=\nabla\cdot F=P_x+Q_y+R_z,\qquad \operatorname{curl}F=\nabla\times F=(R_y-Q_z,\ P_z-R_x,\ Q_x-P_y).
$$

For $C^2$ fields, $\operatorname{curl}(\nabla\varphi)=0$ and $\operatorname{div}(\operatorname{curl}F)=0$. Both are instances of $d^2=0$; see Section 8.

**Green's Theorem.** Let $D\subset\mathbb{R}^2$ be a bounded region with piecewise $C^1$ boundary, oriented positively (counter-clockwise on the outer boundary, $D$ on the left). For $C^1$ functions $P,Q$:

$$
\oint_{\partial D}P\,dx+Q\,dy=\iint_D\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)dA.
$$

*Proof idea:* check it for $P$ alone on a type I region and for $Q$ alone on a type II region, then cut a general region into such pieces. The internal edges cancel because they are traversed in opposite directions.

**Area:** $\operatorname{Area}(D)=\frac12\oint_{\partial D}x\,dy-y\,dx$.

**Parametrised surfaces.** For $r:D\to\mathbb{R}^3$, $r(u,v)$, the vectors $r_u,r_v$ span the tangent plane, and $N=r_u\times r_v$ is a normal.
- Scalar surface integral: $\iint_Sf\,dS=\iint_Df(r(u,v))\,|r_u\times r_v|\,du\,dv$.
- **Flux:** $\iint_SF\cdot n\,dS=\iint_DF(r(u,v))\cdot(r_u\times r_v)\,du\,dv$, if $r_u\times r_v$ points along the chosen orientation $n$.
- Graph $z=g(x,y)$ with upward normal: $N=(-g_x,-g_y,1)$.
- Sphere of radius $R$: $dS=R^2\sin\varphi\,d\varphi\,d\theta$ and $n=x/R$.

**Stokes' Theorem.** Let $S$ be an oriented piecewise-smooth surface with boundary curve $\partial S$, oriented compatibly by the right-hand rule: walking along $\partial S$ with your head along $n$, $S$ is on your left. Then

$$
\oint_{\partial S}F\cdot dr=\iint_S(\operatorname{curl}F)\cdot n\,dS.
$$

*Consequence:* the flux of a curl through $S$ depends only on $\partial S$. You can often replace a hard surface with a flat disc that has the same boundary.

**Divergence (Gauss) Theorem.** Let $E\subset\mathbb{R}^3$ be a bounded solid with piecewise-smooth boundary surface $\partial E$ and **outward** normal. Then

$$
\iint_{\partial E}F\cdot n\,dS=\iiint_E\operatorname{div}F\,dV.
$$

**Pitfall (singularities).** The theorems need $F$ to be $C^1$ on the whole region, *including* the interior. For $F=x/|x|^3$ on $\mathbb{R}^3\setminus\lbrace0\rbrace$, $\operatorname{div}F=0$, yet the flux through any sphere centred at $0$ is $4\pi$ (Problem 23). This is Gauss's law in physics.

**Worked example (flux through a paraboloid).** Find the upward flux of $F=(0,0,z)$ through $S=\lbrace z=1-x^2-y^2,\ z\ge0\rbrace$.
- *Directly:* parametrise as a graph with $N=(-g_x,-g_y,1)=(2x,2y,1)$. Then $F\cdot N=z=1-r^2$, and the flux is $\int_0^{2\pi}\int_0^1(1-r^2)\,r\,dr\,d\theta=2\pi\cdot\frac14=\frac\pi2$.
- *Via Gauss:* close the surface with the unit disc $D$ in $z=0$, whose outward normal is $-e_3$. On $D$, $F\cdot(-e_3)=-z=0$, so $D$ contributes no flux. The enclosed solid $E$ has $\operatorname{div}F=1$, so the flux equals $\operatorname{vol}(E)=\int_0^{2\pi}\int_0^1(1-r^2)\,r\,dr\,d\theta=\frac\pi2$. The two methods agree.

**Physical meaning.** $\operatorname{div}F(p)$ is the outward flux per unit volume of a small ball at $p$. $\operatorname{curl}F(p)\cdot n$ is the circulation per unit area of a small disc at $p$ with normal $n$. The integral theorems "add up" these local quantities, and the internal contributions cancel.

---

## 8. The unifying picture (preview)

All of the theorems above are cases of one theorem. In the language of **differential forms** ([3.5](../../03-masters-core/3.5-smooth-manifolds/README.md)):

| Classical | Form degree | $d$ acts as | Theorem |
|---|---|---|---|
| FTC / gradient theorem | 0-form $\varphi$ | $d\varphi\leftrightarrow\nabla\varphi$ | $\int_C d\varphi=\varphi(b)-\varphi(a)$ |
| Green / Stokes | 1-form $P\,dx+Q\,dy+R\,dz$ | $d\leftrightarrow\operatorname{curl}$ | $\int_S d\omega=\oint_{\partial S}\omega$ |
| Divergence | 2-form (flux) | $d\leftrightarrow\operatorname{div}$ | $\int_E d\omega=\int_{\partial E}\omega$ |

**Generalised Stokes:** $\displaystyle\int_Md\omega=\int_{\partial M}\omega$.

The identities $\operatorname{curl}\nabla=0$ and $\operatorname{div}\operatorname{curl}=0$ both say $d\circ d=0$. "Curl-free ⇒ conservative on simply connected domains" is the statement that $H^1_{dR}$ vanishes there. The field in Section 6 is a closed 1-form that is not exact, which shows $H^1_{dR}(\mathbb{R}^2\setminus\lbrace0\rbrace)\neq0$.

---

## Common pitfalls (summary)

1. Treating "partials exist" as "differentiable".
2. Forgetting the Jacobian factor ($r$, $\rho^2\sin\varphi$), or its absolute value, or inverting it the wrong way.
3. Wrong limits after reversing the order of integration. Draw the region.
4. Orientation errors in Green and Stokes, and inward instead of outward normals in Gauss.
5. Applying Green, Stokes or Gauss when the field has a singularity inside the region.
6. Concluding "conservative" from "curl-free" on a domain with holes.
7. In Lagrange problems, forgetting points where $\nabla g=0$, or forgetting to compare values to decide which candidate is the maximum.

---

## Connections forward

- **2.4 Analysis in $\mathbb{R}^n$:** rigorous proofs of everything here, plus the inverse and implicit function theorems. These justify Lagrange multipliers and the fact that level sets are manifolds.
- **2.2 Complex Analysis:** a complex-differentiable function is one whose real derivative $Df$ is a rotation-scaling (the Cauchy–Riemann equations). Cauchy's theorem is Green's theorem plus Cauchy–Riemann.
- **3.1 Measure and Integration:** Lebesgue integration, Fubini–Tonelli, and the change of variables formula for Lebesgue measure.
- **3.4 Algebraic Topology:** winding numbers, $\pi_1(S^1)$, and de Rham versus singular cohomology.
- **3.5 Smooth Manifolds:** tangent spaces (where $Df$ lives), differential forms, the exterior derivative, and generalised Stokes.
