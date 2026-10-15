# 3.5 Smooth Manifolds — Problems

Work these alongside the [schedule](README.md). Full solutions are in [solutions.md](solutions.md). You may quote theorems from Lee, *Introduction to Smooth Manifolds* (2nd ed.) unless the problem asks you to prove them. Conventions: Lee's (determinant) convention for the wedge product; $\partial M$ carries the Stokes (outward-normal-first) orientation.

---

## Warm-up

**1.** Let $N=(0,\dots,0,1)$ and $S=-N$ in $S^n\subset\mathbb{R}^{n+1}$. Define stereographic projections $\sigma_N:S^n\setminus\lbrace N\rbrace\to\mathbb{R}^n$ and $\sigma_S:S^n\setminus\lbrace S\rbrace\to\mathbb{R}^n$ by
$$
\sigma_N(x)=\frac{(x^1,\dots,x^n)}{1-x^{n+1}},\qquad\sigma_S(x)=\frac{(x^1,\dots,x^n)}{1+x^{n+1}}.
$$
Find $\sigma_N^{-1}$, compute the transition map $\sigma_S\circ\sigma_N^{-1}$, and conclude that $\lbrace\sigma_N,\sigma_S\rbrace$ is a smooth atlas.

**2.** Let $f:\mathbb{R}^3\to\mathbb{R}$, $f(x,y,z)=x^2+y^2-z^2$.
(a) Find all regular values of $f$ and conclude which level sets are embedded surfaces by the regular value theorem.
(b) Show that the cone $f^{-1}(0)$ is not a topological 2-manifold, hence not an embedded submanifold.

**3.** On $\mathbb{R}^3$ let $\omega=x\,dy\wedge dz+y\,dz\wedge dx+z\,dx\wedge dy$.
(a) Compute $d\omega$.
(b) Show that $\omega_p(u,v)=p\cdot(u\times v)$.
(c) Let $F(\varphi,\theta)=(\sin\varphi\cos\theta,\sin\varphi\sin\theta,\cos\varphi)$. Compute $F^*\omega$.

**4.** On $\mathbb{R}^2$ let $X=x\,\partial_y-y\,\partial_x$, $Y=\partial_x$, $Z=x\,\partial_x+y\,\partial_y$. Compute $[X,Y]$ and $[X,Z]$, and interpret the second answer in terms of flows.

**5.** On $M=\mathbb{R}^2\setminus\lbrace0\rbrace$ let $\omega=\dfrac{x\,dy-y\,dx}{x^2+y^2}$. Show that $\omega$ is closed but not exact. Show that its restriction to $\lbrace x>0\rbrace$ is exact.

**6.** Show that $O(n)=\lbrace A\in GL(n,\mathbb{R}):A^TA=I\rbrace$ is an embedded submanifold of $GL(n,\mathbb{R})$ of dimension $n(n-1)/2$, and identify $T_IO(n)$.

---

## Core

**7.** Show that $\mathbb{RP}^n$ is orientable if and only if $n$ is odd.

**8.** Let $\alpha\in\mathbb{R}\setminus\mathbb{Q}$ and $\gamma:\mathbb{R}\to T^2=S^1\times S^1$, $\gamma(t)=(e^{2\pi it},e^{2\pi i\alpha t})$. Show that $\gamma$ is an injective immersion but not an embedding. (You may use that $\lbrace n\alpha\bmod1:n\in\mathbb{Z}\rbrace$ is dense in $[0,1)$.)

**9.** (a) Find the maximal flow of $X=x^2\,\partial_x$ on $\mathbb{R}$, including its domain $\mathcal{D}\subseteq\mathbb{R}\times\mathbb{R}$, and show $X$ is not complete.
(b) Find the flow of $Y=x\,\partial_x+2y\,\partial_y$ on $\mathbb{R}^2$ and verify the group law $\theta_s\circ\theta_t=\theta_{s+t}$.

**10.** Let $X=x\,\partial_y-y\,\partial_x$ on $\mathbb{R}^2$ and $\omega=x\,dy$. Compute $\mathcal{L}_X\omega$ in two ways: (a) from the definition $\frac{d}{dt}\big|_{t=0}\theta_t^*\omega$ using the flow, and (b) by Cartan's formula.

**11.** Let $\omega$ be as in Problem 3 and give $S^2=\partial\overline{B}^3$ the Stokes orientation. Compute $\int_{S^2}\omega$ directly using Problem 3(c), and again using Stokes' theorem.

**12.** Show that $H^1_{dR}(S^1)\cong\mathbb{R}$, with the isomorphism given by $[\omega]\mapsto\int_{S^1}\omega$.

**13.** Let $M$ be a compact oriented smooth $n$-manifold without boundary, $n\ge1$.
(a) Show $\int_Md\eta=0$ for every $(n-1)$-form $\eta$.
(b) Deduce that no volume form on $M$ is exact and that $H^n_{dR}(M)\ne0$.
(c) Deduce that $S^n$ is not diffeomorphic to $\mathbb{R}^n$ — and find a simpler reason too.

**14.** Let $M$ be a nonempty compact smooth manifold and $k\ge1$. Show that there is no smooth submersion $F:M\to\mathbb{R}^k$.

**15.** Prove that every smooth manifold admits a Riemannian metric.

**16.** (a) Show that $T^2$ is parallelizable (has a global frame of vector fields).
(b) Identify $\mathbb{R}^4$ with the quaternions $\mathbb{H}$ and $S^3$ with the unit quaternions. Show that $p\mapsto ip$, $p\mapsto jp$, $p\mapsto kp$ define a global orthonormal frame on $S^3$.
(c) Why does the same idea fail for $S^2$?

---

## Qualifying-exam level

**17.** Compute $H^k_{dR}(S^n)$ for all $k$ and $n\ge1$ using the Mayer–Vietoris sequence. You may use the Poincaré lemma and homotopy invariance.

**18.** (a) Prove there is no smooth retraction $r:\overline{B}^n\to S^{n-1}$ ($n\ge2$), using Stokes' theorem.
(b) Deduce that every smooth map $\overline{B}^n\to\overline{B}^n$ has a fixed point.

**19.** Let $M$ be a connected, simply connected smooth manifold. Show that every closed 1-form on $M$ is exact, i.e. $H^1_{dR}(M)=0$.

**20.** On $\mathbb{R}^3$ let $D$ be the rank-2 distribution spanned by $V=\partial_x+y\,\partial_z$ and $W=\partial_y$.
(a) Show $D=\ker(dz-y\,dx)$.
(b) Show $D$ is not involutive, hence not integrable.
(c) Let $\alpha=dz-y\,dx$. Compute $\alpha\wedge d\alpha$ and explain how it detects (b).

**21.** Let $X,Y$ be complete vector fields on $M$ with flows $\theta,\psi$. Prove that $[X,Y]=0$ if and only if $\theta_t\circ\psi_s=\psi_s\circ\theta_t$ for all $s,t$. (You may use $\frac{d}{dt}\big|_{t=t_0}d(\theta_{-t})_{\theta_t(p)}\big(Y_{\theta_t(p)}\big)=d(\theta_{-t_0})\big([X,Y]_{\theta_{t_0}(p)}\big)$.)

**22.** (a) Show that $d(\det)_A(B)=\det(A)\mathrm{tr}(A^{-1}B)$ for $A\in GL(n,\mathbb{R})$.
(b) Deduce that $SL(n,\mathbb{R})$ is an embedded submanifold of dimension $n^2-1$ with $T_ISL(n,\mathbb{R})=\lbrace B:\mathrm{tr}\,B=0\rbrace$.
(c) Show that $\det(e^{B})=e^{\mathrm{tr}\,B}$ by considering the curve $t\mapsto\det(e^{tB})$, and conclude that $\exp$ maps trace-zero matrices into $SL(n,\mathbb{R})$.
