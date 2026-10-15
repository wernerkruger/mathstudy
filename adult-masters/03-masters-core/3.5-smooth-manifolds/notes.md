# 3.5 Smooth Manifolds — Study Notes

These notes condense Lee, *Introduction to Smooth Manifolds* (2nd ed.), Chapters 1–9 and 11–17, with a glance at 13 and 19. "Smooth" means $C^\infty$. Einstein summation is used where it helps: repeated upper and lower indices are summed.

---

## 1. Smooth manifolds and smooth maps

### 1.1 Definitions

A **topological $n$-manifold** is a second countable Hausdorff space that is locally homeomorphic to $\mathbb{R}^n$. Hausdorff rules out the line with two origins; second countability guarantees partitions of unity and rules out the long line.

A **chart** is $(U,\varphi)$ with $U$ open and $\varphi:U\to\varphi(U)\subseteq\mathbb{R}^n$ a homeomorphism onto an open set. Two charts are **smoothly compatible** if the **transition map** $\psi\circ\varphi^{-1}:\varphi(U\cap V)\to\psi(U\cap V)$ is a diffeomorphism. A **smooth atlas** is a collection of pairwise compatible charts covering $M$. Each smooth atlas lies in a unique **maximal** atlas, the **smooth structure**.

A map $F:M\to N$ is **smooth** if for all charts, $\psi\circ F\circ\varphi^{-1}$ is smooth where defined. A **diffeomorphism** is a smooth bijection with smooth inverse.

**Examples.**
1. **Spheres.** $S^n\subset\mathbb{R}^{n+1}$ with stereographic charts $\sigma_\pm(x)=\dfrac{(x^1,\dots,x^n)}{1\mp x^{n+1}}$. The transition map is $u\mapsto u/|u|^2$ on $\mathbb{R}^n\setminus0$, smooth.
2. **Projective space.** $\mathbb{RP}^n=(\mathbb{R}^{n+1}\setminus0)/\mathbb{R}^\times$, charts $U_i=\lbrace x^i\ne0\rbrace$, $\varphi_i[x]=(x^0/x^i,\dots,\widehat{x^i/x^i},\dots,x^n/x^i)$. Transitions are rational functions with non-vanishing denominators.
3. **Open subsets, products, graphs** of smooth functions; $GL(n,\mathbb{R})$ as an open subset of $\mathbb{R}^{n^2}$.
4. **Exotic structures.** On $\mathbb{R}$, the chart $x\mapsto x^3$ gives a smooth structure different from the standard one (the identity is not smooth in both directions), but the two manifolds are diffeomorphic via $x\mapsto x^{1/3}$. Genuinely non-diffeomorphic smooth structures exist on $S^7$ (Milnor) and on $\mathbb{R}^4$.

**Manifolds with boundary** use charts into the half-space $\mathbb{H}^n=\lbrace x^n\ge0\rbrace$. Interior and boundary points are well defined (invariance of the boundary, by the inverse function theorem in the smooth case).

### 1.2 Partitions of unity

**Bump functions.** $f(t)=e^{-1/t}$ for $t>0$ and $0$ otherwise is smooth. From it build $h:\mathbb{R}^n\to[0,1]$ smooth, equal to $1$ on $\overline{B_1}$ and supported in $B_2$.

**Theorem.** For any open cover $\lbrace U_\alpha\rbrace$ of $M$ there is a smooth partition of unity $\lbrace\psi_\alpha\rbrace$ subordinate to it: $\mathrm{supp}\,\psi_\alpha\subseteq U_\alpha$, the supports are locally finite, and $\sum_\alpha\psi_\alpha=1$.

*Consequences.* Smooth Urysohn functions; extension of smooth functions from closed sets; existence of Riemannian metrics; existence of smooth exhaustion functions; Whitney embedding. **Partitions of unity are the main tool for passing from local to global** whenever the object being built is convex (metrics, inner products, connections) — but not for things like nonvanishing vector fields or forms, where averaging can produce zero.

---

## 2. Tangent vectors and the differential

### 2.1 Derivations

A **tangent vector** at $p\in M$ is a **derivation** at $p$: a linear map $v:C^\infty(M)\to\mathbb{R}$ with $v(fg)=f(p)v(g)+g(p)v(f)$. The tangent space $T_pM$ is the vector space of these. In a chart $(x^i)$, the vectors
$$
\left.\frac{\partial}{\partial x^i}\right|_p f=\frac{\partial(f\circ\varphi^{-1})}{\partial x^i}(\varphi(p))
$$
form a basis, so $\dim T_pM=n$. (The proof uses Taylor's theorem with remainder $f(x)=f(p)+\sum(x^i-p^i)g_i(x)$ and the fact that derivations kill constants.)

Equivalent definitions: equivalence classes of curves through $p$ with the same velocity in a chart; or vectors in $\mathbb{R}^n$ transforming by the Jacobian of transition maps. All are canonically isomorphic.

### 2.2 The differential

For smooth $F:M\to N$, $dF_p:T_pM\to T_{F(p)}N$ is $dF_p(v)(f)=v(f\circ F)$. In coordinates, $dF_p$ has the Jacobian matrix $\big(\partial F^j/\partial x^i\big)$. **Chain rule:** $d(G\circ F)_p=dG_{F(p)}\circ dF_p$.

**Change of coordinates.** If $(\tilde x^j)$ is another chart,
$$
\frac{\partial}{\partial x^i}=\frac{\partial\tilde x^j}{\partial x^i}\frac{\partial}{\partial\tilde x^j}.
$$

The **tangent bundle** $TM=\bigsqcup_pT_pM$ is a smooth $2n$-manifold with charts $(x^i,v^i)$ for $v=v^i\partial_i$; the projection $\pi:TM\to M$ is a smooth vector bundle of rank $n$. A **velocity** of a smooth curve $\gamma$ is $\gamma'(t)=d\gamma(d/dt)$.

---

## 3. Rank, immersions, submersions, submanifolds

### 3.1 The rank theorem

The **rank** of $F$ at $p$ is $\mathrm{rank}\,dF_p$. $F$ is an **immersion** if $dF_p$ is injective everywhere, a **submersion** if surjective everywhere. A **smooth embedding** is an immersion that is a homeomorphism onto its image (with the subspace topology).

**Inverse function theorem.** If $dF_p$ is invertible, $F$ is a diffeomorphism near $p$.

**Constant rank theorem.** If $F:M^m\to N^n$ has constant rank $r$ near $p$, there are charts centered at $p$ and $F(p)$ in which
$$
F(x^1,\dots,x^m)=(x^1,\dots,x^r,0,\dots,0).
$$
*Proof sketch.* Reorder so the top-left $r\times r$ block of the Jacobian is invertible; use the first $r$ components of $F$ plus the remaining $x$'s as new coordinates on the source (IFT); then constant rank forces the remaining components of $F$ to depend only on the first $r$, and a change of coordinates on the target straightens them.

**Consequences.** Immersions are locally embeddings. Submersions are open maps and have local sections.

**Examples and counterexamples.**
- The figure eight $\beta(t)=(\sin 2t,\sin t)$ on $(-\pi,\pi)$ is an injective immersion that is not an embedding: its image is compact but $(-\pi,\pi)$ is not, and points near $t=\pm\pi$ converge to $\beta(0)$ in the image.
- The **irrational line on the torus** $t\mapsto(e^{2\pi it},e^{2\pi i\alpha t})\in T^2$, $\alpha\notin\mathbb{Q}$, is an injective immersion with dense image; not an embedding.
- $t\mapsto(t^2,t^3)$ is smooth and injective, a homeomorphism onto the cusp, but not an immersion at $0$. Its image is not a smooth submanifold.
- An injective immersion of a **compact** manifold is an embedding (a continuous bijection from compact to Hausdorff is a homeomorphism).

### 3.2 Submanifolds

An **embedded submanifold** $S\subseteq M$ of dimension $k$ is a subset that is a manifold in the subspace topology with a smooth structure making the inclusion an embedding. Equivalently, $S$ satisfies the **local $k$-slice condition**: around each point of $S$ there is a chart of $M$ in which $S$ is $\lbrace x^{k+1}=\dots=x^n=0\rbrace$.

**Regular value theorem.** Let $F:M^m\to N^n$ be smooth and $c\in N$ a **regular value**: $dF_p$ is surjective for all $p\in F^{-1}(c)$. Then $F^{-1}(c)$ is an embedded submanifold of dimension $m-n$, and
$$
T_pF^{-1}(c)=\ker dF_p.
$$
More generally, the constant-rank level set theorem: if $F$ has constant rank $r$, every level set is an embedded submanifold of codimension $r$.

**Examples.**
- $S^n=f^{-1}(1)$ for $f(x)=|x|^2$; $df_x(v)=2x\cdot v$ is onto for $x\ne0$. $T_xS^n=x^\perp$.
- $O(n)=\Phi^{-1}(I)$ for $\Phi:GL(n)\to\mathrm{Sym}(n)$, $\Phi(A)=A^TA$. $d\Phi_A(B)=B^TA+A^TB$; given $C\in\mathrm{Sym}(n)$, $B=\tfrac12AC$ gives $d\Phi_A(B)=C$. So $O(n)$ is a submanifold of dimension $n^2-\tfrac{n(n+1)}2=\tfrac{n(n-1)}2$, with $T_IO(n)=\lbrace B:B^T+B=0\rbrace$.
- $SL(n)=\det^{-1}(1)$; $d(\det)_A(B)=\det(A)\mathrm{tr}(A^{-1}B)$, so $1$ is a regular value.

**Sard's theorem.** The set of critical values of a smooth map has measure zero. Hence regular values are dense.

**Whitney embedding theorem.** Every smooth $n$-manifold embeds in $\mathbb{R}^{2n}$ (easy version: $\mathbb{R}^{2n+1}$) and immerses in $\mathbb{R}^{2n-1}$ for $n>1$.

**Transversality.** $F:M\to N$ is transverse to an embedded submanifold $S\subseteq N$ if $dF_p(T_pM)+T_{F(p)}S=T_{F(p)}N$ whenever $F(p)\in S$. Then $F^{-1}(S)$ is an embedded submanifold of codimension $\mathrm{codim}\,S$.

---

## 4. Vector fields, flows, Lie brackets

### 4.1 Vector fields and flows

A **vector field** is a smooth section $X:M\to TM$. It acts on functions as a derivation $Xf(p)=X_pf$. An **integral curve** is $\gamma$ with $\gamma'(t)=X_{\gamma(t)}$.

**Fundamental theorem on flows.** For smooth $X$ there is a unique maximal flow $\theta:\mathcal{D}\to M$, with $\mathcal{D}\subseteq\mathbb{R}\times M$ open containing $\lbrace0\rbrace\times M$, such that $t\mapsto\theta_t(p)$ is the maximal integral curve through $p$, $\theta_0=\mathrm{id}$, $\theta_s\circ\theta_t=\theta_{s+t}$ where defined, and each $\theta_t$ is a diffeomorphism between open sets. The proof is ODE existence, uniqueness and smooth dependence on initial conditions, plus a patching argument.

**Completeness.** Compactly supported vector fields, in particular all vector fields on compact manifolds, are complete (flow defined for all $t$). Counterexample: $X=x^2\partial_x$ on $\mathbb{R}$ has flow $\theta_t(x)=x/(1-tx)$, which blows up at $t=1/x$.

**Escape lemma.** If an integral curve is defined only on a bounded-above interval, it leaves every compact set.

**Canonical form.** Near a point where $X_p\ne0$ there are coordinates with $X=\partial/\partial x^1$ (straightening).

### 4.2 Lie bracket

$[X,Y]f=X(Yf)-Y(Xf)$. This is again a derivation (second derivatives cancel), so a vector field. In coordinates,
$$
[X,Y]=\left(X^i\frac{\partial Y^j}{\partial x^i}-Y^i\frac{\partial X^j}{\partial x^i}\right)\frac{\partial}{\partial x^j}.
$$
Properties: bilinear, antisymmetric, Jacobi identity, $[fX,gY]=fg[X,Y]+f(Xg)Y-g(Yf)X$. Coordinate vector fields commute.

**Naturality.** If $X$ is $F$-related to $X'$ and $Y$ to $Y'$, then $[X,Y]$ is $F$-related to $[X',Y']$. In particular $F_*[X,Y]=[F_*X,F_*Y]$ for diffeomorphisms.

**Lie derivative.** $(\mathcal{L}_XY)_p=\dfrac{d}{dt}\Big|_{t=0}d(\theta_{-t})_{\theta_t(p)}\big(Y_{\theta_t(p)}\big)$. **Theorem:** $\mathcal{L}_XY=[X,Y]$.

**Commuting flows.** $[X,Y]=0$ iff $\theta^X_s\circ\theta^Y_t=\theta^Y_t\circ\theta^X_s$ wherever defined. More quantitatively, flowing around a small "square" of side $\sqrt t$ (along $X$, $Y$, $-X$, $-Y$) displaces a point by $t[X,Y]+O(t^{3/2})$.

**Canonical form for commuting fields.** If $X_1,\dots,X_k$ are linearly independent and pairwise commute near $p$, there are coordinates with $X_i=\partial/\partial x^i$.

### 4.3 Frobenius

A rank-$k$ **distribution** $D\subseteq TM$ is **involutive** if $[X,Y]\in D$ whenever $X,Y\in D$, and **integrable** if each point lies in a $k$-dimensional submanifold tangent to $D$. **Frobenius theorem:** involutive ⇔ integrable (⇔ locally of the form $\mathrm{span}\,\lbrace\partial_1,\dots,\partial_k\rbrace$). Example of non-integrability: the contact distribution $\ker(dz-y\,dx)$ on $\mathbb{R}^3$.

---

## 5. Tensors and differential forms

### 5.1 Covectors and tensors

$T_p^*M=(T_pM)^*$, with dual basis $dx^i|_p$. For $f\in C^\infty(M)$, $df_p(v)=vf$, so $df=\dfrac{\partial f}{\partial x^i}dx^i$. Covectors transform by $d\tilde x^j=\dfrac{\partial\tilde x^j}{\partial x^i}dx^i$.

**Pullback.** For $F:M\to N$ and a covector field $\omega$ on $N$, $(F^*\omega)_p(v)=\omega_{F(p)}(dF_p v)$. Pullback works for covariant tensors and forms even when $F$ is not a diffeomorphism — unlike pushforward of vector fields.

**Line integrals.** $\int_\gamma\omega=\int_a^b\omega_{\gamma(t)}(\gamma'(t))\,dt$, independent of orientation-preserving reparametrization. **Fundamental theorem:** $\int_\gamma df=f(\gamma(b))-f(\gamma(a))$. A 1-form is **exact** if $\omega=df$; **closed** if $d\omega=0$, i.e. $\partial_i\omega_j=\partial_j\omega_i$. Exact ⇒ closed; closed ⇒ exact locally (on star-shaped sets), but not globally.

**Key example.** On $\mathbb{R}^2\setminus0$,
$$
\omega=\frac{x\,dy-y\,dx}{x^2+y^2}
$$
is closed, but $\int_{S^1}\omega=2\pi\ne0$, so it is not exact. Locally $\omega=d\theta$ for a branch of the angle function.

A covariant $k$-tensor field assigns a multilinear map $(T_pM)^k\to\mathbb{R}$ to each $p$. A **Riemannian metric** is a symmetric positive definite 2-tensor field $g=g_{ij}dx^idx^j$.

### 5.2 Alternating tensors and the wedge product

$\Lambda^k(V^*)$ is the space of alternating $k$-linear forms on $V$; $\dim\Lambda^k(V^*)=\binom nk$ with basis $\varepsilon^{i_1}\wedge\dots\wedge\varepsilon^{i_k}$, $i_1<\dots<i_k$. The wedge product (Lee's determinant convention) satisfies
$$
\varepsilon^{i_1}\wedge\dots\wedge\varepsilon^{i_k}(v_1,\dots,v_k)=\det\big(\varepsilon^{i_a}(v_b)\big),
$$
is associative, bilinear, and **graded commutative**: $\omega\wedge\eta=(-1)^{k\ell}\eta\wedge\omega$. In particular $\omega\wedge\omega=0$ for odd $k$. For $n$-forms on an $n$-dimensional $V$ and a linear map $T$, $T^*\omega=(\det T)\,\omega$.

**Pitfall.** Conventions differ by factorials (Lee/Spivak "determinant" convention vs Kobayashi–Nomizu "Alt" convention). Fix one and stick to it.

**Interior product.** $(i_X\omega)(v_2,\dots,v_k)=\omega(X,v_2,\dots,v_k)$. It is an antiderivation: $i_X(\omega\wedge\eta)=(i_X\omega)\wedge\eta+(-1)^k\omega\wedge i_X\eta$.

### 5.3 The exterior derivative

**Theorem.** There is a unique family of linear maps $d:\Omega^k(M)\to\Omega^{k+1}(M)$ such that: (i) $df$ is the differential for functions; (ii) $d(\omega\wedge\eta)=d\omega\wedge\eta+(-1)^k\omega\wedge d\eta$; (iii) $d\circ d=0$. In coordinates,
$$
d\Big(\sum_I\omega_Idx^I\Big)=\sum_I\sum_j\frac{\partial\omega_I}{\partial x^j}dx^j\wedge dx^I.
$$
$d\circ d=0$ is equality of mixed partials. **Naturality:** $F^*(d\omega)=d(F^*\omega)$.

**Invariant formula for 1-forms:** $d\omega(X,Y)=X(\omega(Y))-Y(\omega(X))-\omega([X,Y])$.

**In $\mathbb{R}^3$** $d$ on 0-, 1-, 2-forms is grad, curl, div, and $d^2=0$ encodes $\mathrm{curl}\,\mathrm{grad}=0$ and $\mathrm{div}\,\mathrm{curl}=0$.

**Lie derivative of forms and Cartan's formula.**
$$
\mathcal{L}_X\omega=\frac{d}{dt}\Big|_{t=0}\theta_t^*\omega=i_X(d\omega)+d(i_X\omega).
$$
*Proof idea.* Both sides are derivations of degree 0 commuting with $d$ and agreeing on functions ($\mathcal{L}_Xf=Xf=i_Xdf$); such operators are determined by their values on functions and on $df$, and the forms $f\,dg$ generate locally. Corollary: $\mathcal{L}_X$ commutes with $d$.

---

## 6. Orientation and integration

### 6.1 Orientation

An **orientation** of an $n$-dimensional vector space is an equivalence class of ordered bases under "change of basis matrix has positive determinant". A pointwise orientation on $M$ is **continuous** if locally given by a local frame. $M$ is **orientable** iff any of the following equivalent conditions holds:
- there is a nowhere-vanishing $n$-form (a **volume form**);
- there is an atlas whose transition maps have positive Jacobian determinant;
- (for connected $M$) the orientation double cover is disconnected.

Examples: spheres, tori, Lie groups (left-translate a nonzero element of $\Lambda^n(T_e^*G)$), and any hypersurface of an orientable manifold (e.g. of $\mathbb{R}^n$) with a nowhere-vanishing normal field are orientable. $\mathbb{RP}^n$ is orientable iff $n$ is odd. The Möbius band is not orientable. Every simply connected manifold is orientable.

**Boundary orientation.** If $M$ is oriented with boundary, $\partial M$ gets the **Stokes orientation**: $(v_1,\dots,v_{n-1})$ is positive on $\partial M$ iff $(N,v_1,\dots,v_{n-1})$ is positive on $M$, where $N$ is outward-pointing. Equivalently, if $\omega$ orients $M$, then $i_N\omega$ orients $\partial M$. For $\mathbb{H}^n=\lbrace x^n\ge0\rbrace$ with the standard orientation, the induced orientation on $\partial\mathbb{H}^n\cong\mathbb{R}^{n-1}$ is $(-1)^n$ times the standard one.

### 6.2 Integration

For an $n$-form $\omega=f\,dx^1\wedge\dots\wedge dx^n$ compactly supported in a positively oriented chart, $\int_M\omega=\int_{\mathbb{R}^n}f\,dx^1\cdots dx^n$. This is well defined by the change of variables formula: under an orientation-preserving diffeomorphism the Jacobian $|\det DF|=\det DF$ matches the transformation $F^*(dy^1\wedge\dots\wedge dy^n)=\det(DF)dx^1\wedge\dots\wedge dx^n$. In general, patch with a partition of unity.

Properties: linear; reverses sign under reversing orientation; $\int_MF^*\omega=\pm\int_N\omega$ for a diffeomorphism $F$ preserving/reversing orientation; positive on positively oriented volume forms.

### 6.3 Stokes' theorem

**Theorem (Stokes).** Let $M$ be an oriented smooth $n$-manifold with boundary, $\omega$ a compactly supported $(n-1)$-form. Then
$$
\int_Md\omega=\int_{\partial M}\omega,
$$
with $\partial M$ carrying the Stokes orientation (if $\partial M=\emptyset$, the right side is $0$).

*Proof sketch.* By a partition of unity, reduce to $\omega$ supported in one chart. For $\mathbb{H}^n$ write $\omega=\sum_i\omega_i\,dx^1\wedge\dots\wedge\widehat{dx^i}\wedge\dots\wedge dx^n$, so $d\omega=\sum_i(-1)^{i-1}\partial_i\omega_i\,dx^1\wedge\dots\wedge dx^n$. Integrate each term with Fubini: for $i<n$ the integral of $\partial_i\omega_i$ in $x^i$ is $0$ (compact support); for $i=n$ it gives $-\omega_n(x',0)$. So $\int_{\mathbb{H}^n}d\omega=(-1)^{n}\int_{\mathbb{R}^{n-1}}\omega_n(x',0)\,dx'$, which is exactly $\int_{\partial\mathbb{H}^n}\omega$ with the orientation $(-1)^n\times$standard. $\square$

**Special cases.** Fundamental theorem of calculus ($n=1$); Green's theorem; divergence theorem $\int_M\mathrm{div}\,X\,dV=\int_{\partial M}\langle X,N\rangle\,dA$; classical Stokes for surfaces in $\mathbb{R}^3$.

**Corollaries.**
- On a compact oriented manifold without boundary, $\int_Md\eta=0$. So a volume form is never exact, and $H^n_{dR}(M)\ne0$.
- If $\omega$ is a closed $k$-form and $S_0,S_1$ are homologous compact oriented $k$-submanifolds (cobounding a compact oriented $(k+1)$-manifold), then $\int_{S_0}\omega=\int_{S_1}\omega$.
- **Smooth Brouwer:** there is no smooth retraction $r:\overline{B}^n\to S^{n-1}$. If there were, let $\sigma$ be a volume form on $S^{n-1}$ with $\int\sigma>0$; then $0<\int_{S^{n-1}}\sigma=\int_{S^{n-1}}r^*\sigma=\int_{B^n}d(r^*\sigma)=\int_{B^n}r^*(d\sigma)=0$, since $d\sigma$ is an $n$-form on an $(n-1)$-manifold.

---

## 7. de Rham cohomology

$$
H^k_{dR}(M)=\frac{\ker\big(d:\Omega^k(M)\to\Omega^{k+1}(M)\big)}{\mathrm{im}\,\big(d:\Omega^{k-1}(M)\to\Omega^k(M)\big)}.
$$
It is a contravariant functor, and the wedge product makes $H^*_{dR}(M)$ a graded-commutative ring.

**Basic facts.**
- $H^0_{dR}(M)=\mathbb{R}^{\#\text{components}}$ (closed functions are locally constant).
- $H^k_{dR}(M)=0$ for $k>\dim M$.
- **Homotopy invariance.** Homotopic smooth maps induce the same map; proof by a chain homotopy $h$ with $dh+hd=g^*-f^*$, built from integrating along the homotopy parameter. Continuous maps can be approximated by smooth ones, so $H^*_{dR}$ is a homotopy invariant of manifolds.
- **Poincaré lemma.** Star-shaped open sets in $\mathbb{R}^n$ have $H^k_{dR}=0$ for $k\ge1$. Every closed form is locally exact.
- **Mayer–Vietoris.** For $M=U\cup V$ open,
$$
0\to\Omega^k(M)\xrightarrow{(i_U^*,\,i_V^*)}\Omega^k(U)\oplus\Omega^k(V)\xrightarrow{\ \omega-\eta\ }\Omega^k(U\cap V)\to0
$$
is exact (surjectivity uses a partition of unity $\lbrace\varphi_U,\varphi_V\rbrace$: $\omega=(\varphi_V\omega)-(-\varphi_U\omega)$), giving a long exact sequence with connecting map $\delta:H^k(U\cap V)\to H^{k+1}(M)$.

**Computations.**
- $H^k_{dR}(S^n)=\mathbb{R}$ for $k=0,n$ and $0$ otherwise ($n\ge1$).
- $H^*_{dR}(T^n)=\Lambda^*(\mathbb{R}^n)$, generated by $dx^1,\dots,dx^n$.
- $H^1_{dR}(\mathbb{R}^2\setminus0)=\mathbb{R}$, generated by the angle form.
- For $M$ compact, connected, oriented, without boundary, integration gives $H^n_{dR}(M)\cong\mathbb{R}$. If $M$ is compact connected and non-orientable, $H^n_{dR}(M)=0$.

**Degree.** For a smooth map $F:M\to N$ between compact connected oriented $n$-manifolds without boundary, $\int_MF^*\omega=\deg(F)\int_N\omega$, where $\deg F$ is the signed count of preimages of any regular value. This agrees with the homological degree of [3.4](../3.4-algebraic-topology/notes.md).

**de Rham theorem.** $H^k_{dR}(M)\cong H^k(M;\mathbb{R})$ (singular cohomology with real coefficients), and the isomorphism is a ring isomorphism (wedge ↔ cup). The map is integration of forms over smooth singular chains, via Stokes.

---

## 8. Riemannian metrics (introduction)

A **Riemannian metric** $g$ is a smoothly varying inner product on each $T_pM$. **Existence:** on each chart take the Euclidean metric, then glue with a partition of unity; positive-definiteness survives convex combinations.

**Lengths and distance.** $L(\gamma)=\int_a^b|\gamma'(t)|_g\,dt$; $d_g(p,q)=\inf L(\gamma)$ over piecewise smooth curves. $d_g$ is a metric inducing the manifold topology.

**Musical isomorphisms.** $g$ gives $TM\cong T^*M$: $X^\flat=g(X,\cdot)$, i.e. $(X^\flat)_j=g_{ij}X^i$; inverse $\sharp$ uses $g^{ij}$. **Gradient:** $\mathrm{grad}\,f=(df)^\sharp$, so $g(\mathrm{grad}\,f,X)=Xf$; in coordinates $\mathrm{grad}\,f=g^{ij}\partial_jf\,\partial_i$.

**Riemannian volume form.** On an oriented Riemannian manifold there is a unique $n$-form $dV_g$ with $dV_g(E_1,\dots,E_n)=1$ on positive orthonormal frames; in coordinates $dV_g=\sqrt{\det(g_{ij})}\,dx^1\wedge\dots\wedge dx^n$. **Divergence** is defined by $d(i_XdV_g)=(\mathrm{div}\,X)\,dV_g$, and Stokes becomes the divergence theorem.

**Isometries** preserve $g$. Examples: round metric on $S^n$ (induced from $\mathbb{R}^{n+1}$), flat metric on $T^n$, hyperbolic metric $\frac{dx^2+dy^2}{y^2}$ on the upper half-plane. Curvature, connections and geodesics are the subject of the [Riemannian geometry elective](../../04-electives/riemannian-geometry/).

---

## 8A. Lie groups and vector bundles (light)

**Lie groups.** A Lie group $G$ is a smooth manifold with smooth multiplication and inversion. Examples: $\mathbb{R}^n$, $T^n$, $GL(n,\mathbb{R})$, and its closed subgroups $O(n)$, $SO(n)$, $SL(n,\mathbb{R})$, $U(n)$, $SU(n)$ (all embedded submanifolds by the regular value theorem; in general by the **closed subgroup theorem**: every closed subgroup of a Lie group is an embedded Lie subgroup).

A vector field $X$ on $G$ is **left-invariant** if $d(L_g)(X_h)=X_{gh}$ for all $g,h$. Evaluation at $e$ is a linear isomorphism from left-invariant fields to $T_eG$, and the bracket of left-invariant fields is left-invariant (naturality of the bracket). This makes $\mathfrak{g}=T_eG$ a **Lie algebra**. For $G=GL(n,\mathbb{R})$, $\mathfrak{g}=M_n(\mathbb{R})$ with $[A,B]=AB-BA$. Consequences:
- **Every Lie group is parallelizable** (left-translate a basis of $T_eG$), hence orientable. So $S^2$ admits no Lie group structure.
- Left-invariant fields are complete; the integral curve through $e$ of the field with $X_e=A$ is a one-parameter subgroup, and $\exp(A)$ is its value at $t=1$. For matrix groups, $\exp(A)=e^A=\sum A^k/k!$.

**Vector bundles.** A smooth rank-$k$ vector bundle $\pi:E\to M$ has fibres $E_p\cong\mathbb{R}^k$ and local trivializations $\pi^{-1}(U)\cong U\times\mathbb{R}^k$ that are linear on fibres. $TM$, $T^*M$, $\Lambda^kT^*M$ and tensor bundles are all vector bundles; their smooth sections are vector fields, 1-forms, $k$-forms and tensor fields. A bundle is **trivial** iff it has a global frame ($k$ sections that are linearly independent at every point). The tautological line bundle over $\mathbb{RP}^1\cong S^1$ is the open Möbius band, the simplest non-trivial bundle. Transition functions $g_{\alpha\beta}:U_\alpha\cap U_\beta\to GL(k,\mathbb{R})$ satisfy the cocycle condition $g_{\alpha\beta}g_{\beta\gamma}=g_{\alpha\gamma}$ and determine the bundle; for $TM$ they are the Jacobians of the chart transitions, and $M$ is orientable iff they can be chosen with positive determinant.

## 8B. Worked example: the torus

Let $T^2=\mathbb{R}^2/\mathbb{Z}^2$ with coordinates $(x,y)$ defined mod 1. The forms $dx$, $dy$ descend to $T^2$ (translation-invariant) and are closed; they are not exact, since $\int_{a}dx=1$ along the loop $a(t)=(t,0)$, and exact forms integrate to $0$ over loops. The 2-form $dx\wedge dy$ is a volume form with $\int_{T^2}dx\wedge dy=1$.

Claim: $H^1_{dR}(T^2)$ has basis $[dx],[dy]$. Given a closed 1-form $\omega$, let $a=\int_a\omega$, $b=\int_b\omega$ over the two standard loops. Then $\eta=\omega-a\,dx-b\,dy$ is closed with zero integrals over $a$ and $b$. Pull $\eta$ back to $\mathbb{R}^2$: there it is exact, $\eta=df$ (Poincaré lemma). The periods vanish, so $f(x+1,y)=f(x,y)$ and $f(x,y+1)=f(x,y)$ (the difference is the integral of $\eta$ over a translate of $a$ or $b$, which is homotopic to $a$ or $b$). So $f$ descends to $T^2$ and $[\omega]=a[dx]+b[dy]$. Independence follows by integrating over $a$ and $b$. Together with $H^0=\mathbb{R}$ and $H^2=\mathbb{R}$ (compact, connected, orientable), $H^*_{dR}(T^2)=\Lambda^*(\mathbb{R}^2)$, with $[dx]\wedge[dy]$ generating $H^2$. This matches the cohomology ring of $T^2$ in [3.4 §5.2](../3.4-algebraic-topology/notes.md), as de Rham's theorem predicts.

**Degree computation.** The map $F:T^2\to T^2$ induced by an integer matrix $A=\begin{pmatrix}p&q\\r&s\end{pmatrix}$ satisfies $F^*(dx\wedge dy)=(ps-qr)\,dx\wedge dy$, so $\deg F=\det A$. Check with regular values: $F$ is a $|\det A|$-sheeted covering when $\det A\ne0$, each sheet contributing $\mathrm{sign}\,\det A$.

## 9. Common pitfalls

1. **Bijective immersion ≠ embedding; homeomorphism onto image ≠ embedding.** Check both the immersion condition and the topology.
2. **Images vs preimages.** The regular value theorem is about preimages. Images of smooth maps need not be submanifolds (cusp, figure eight).
3. **Pushforward of vector fields** is only defined for diffeomorphisms (or for $F$-related fields). Pullback of forms always works.
4. **Closed ≠ exact.** The topology of $M$ is precisely the obstruction, measured by $H^*_{dR}$.
5. **Orientation signs in Stokes.** "Outward normal first." Check on $[0,1]$: $\partial[0,1]=\lbrace1\rbrace-\lbrace0\rbrace$.
6. **Wedge product conventions** vary by factorials between books; check $dx\wedge dy(e_1,e_2)=1$ in your convention.
7. **$d$ of a coefficient-free basis form is zero only in coordinates.** $d(dx^i)=0$, but for a general frame $\varepsilon^i$, $d\varepsilon^i$ need not vanish (it encodes the bracket of the dual frame).
8. **Completeness.** Don't assume flows exist for all time on non-compact manifolds.
9. **Partitions of unity can't average away topology.** You can glue metrics but not nonvanishing vector fields ($S^2$ has none).

---

## 10. Connections forward

- **Algebraic topology ([3.4](../3.4-algebraic-topology/)).** de Rham theorem; Poincaré duality $H^k_{dR}(M)\cong H^{n-k}_{dR}(M)^*$ for compact oriented $M$ (via the pairing $\int\alpha\wedge\beta$); degree theory.
- **Riemannian geometry ([elective](../../04-electives/riemannian-geometry/)).** Connections, geodesics, curvature, Gauss–Bonnet $\int_M K\,dA=2\pi\chi(M)$, linking the metric to the topology computed in 3.4.
- **Lie groups ([elective](../../04-electives/lie-groups-representation-theory/)).** Left-invariant vector fields, exponential map (a flow), Lie algebra = bracket of left-invariant fields, closed subgroup theorem.
- **Functional analysis and PDE ([3.2](../3.2-functional-analysis/), [PDE elective](../../04-electives/pde/)).** Hodge theory: on compact oriented Riemannian $M$ each de Rham class has a unique harmonic representative, proved with elliptic PDE.
- **Complex analysis ([2.2](../../02-bridge/2.2-complex-analysis/)).** Cauchy's theorem is Stokes for the closed form $f(z)\,dz$; residues compute $H^1_{dR}$ classes of punctured domains.
- **Physics.** Maxwell's equations as $dF=0$, $d{\star F}=J$; Hamiltonian mechanics on symplectic manifolds $(T^*M,d\lambda)$.
