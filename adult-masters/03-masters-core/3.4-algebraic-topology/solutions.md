# 3.4 Algebraic Topology — Solutions

Solutions to [problems.md](problems.md). Standard results are quoted from Hatcher (or [notes.md](notes.md)) by name. Throughout, $p:\mathbb{R}\to S^1$, $p(s)=e^{2\pi i s}$.

---

## Warm-up

### 1. $\pi_1(S^n)=0$ for $n\ge2$

Let $N,S$ be the north and south poles, $U=S^n\setminus\lbrace N\rbrace$, $V=S^n\setminus\lbrace S\rbrace$. Both are open, and stereographic projection gives $U\cong V\cong\mathbb{R}^n$, so both are simply connected. $U\cap V=S^n\setminus\lbrace N,S\rbrace\cong S^{n-1}\times(-1,1)$, which is path-connected because $n-1\ge1$. Choose a basepoint in $U\cap V$. By van Kampen, $\pi_1(U)*\pi_1(V)\to\pi_1(S^n)$ is surjective, and the source is trivial. $S^n$ is path-connected, so it is simply connected. $\square$

(For $n=1$, $U\cap V$ has two components and the argument fails, as it must.)

### 2. No retraction $D^2\to S^1$; Brouwer in dimension 2

Suppose $r:D^2\to S^1$ with $r\circ i=\mathrm{id}_{S^1}$, where $i$ is the inclusion. Then $r_*\circ i_*=\mathrm{id}$ on $\pi_1(S^1,1)\cong\mathbb{Z}$. But $i_*$ factors through $\pi_1(D^2,1)=0$ ($D^2$ is convex, so contractible). So the identity of $\mathbb{Z}$ is the zero map, a contradiction.

Now let $h:D^2\to D^2$ have no fixed point. For each $x$, the ray starting at $h(x)$ and passing through $x$ meets $S^1$ in exactly one point $r(x)$ beyond $x$ (or at $x$). Explicitly $r(x)=x+t(x)\,(x-h(x))$ where $t(x)\ge0$ is the non-negative root of $|x+t(x-h(x))|^2=1$; the quadratic formula shows $t$ depends continuously on $x$ because $x-h(x)\ne0$. If $x\in S^1$ then $t(x)=0$ and $r(x)=x$. So $r$ is a retraction $D^2\to S^1$, which is impossible. $\square$

### 3. Torus vs. wedge of circles

(a) $T^2=S^1\times S^1$ and $\pi_1$ of a product is the product, so $\pi_1(T^2)\cong\mathbb{Z}^2$. For $S^1\vee S^1$, take $U$ and $V$ to be the wedge minus a point of the second, respectively first, circle. Each deformation retracts onto one circle, and $U\cap V$ is contractible (a cross shape around the wedge point). Van Kampen gives $\pi_1(S^1\vee S^1)\cong\mathbb{Z}*\mathbb{Z}=F_2$.

(b) A homotopy equivalence induces an isomorphism on $\pi_1$ (both spaces are path-connected, so basepoints don't matter up to isomorphism). $\mathbb{Z}^2$ is abelian and $F_2$ is not ($ab\ne ba$ as reduced words). So they are not homotopy equivalent. $\square$

### 4. $\tilde H_*(S^n)$ by Mayer–Vietoris

Claim: $\tilde H_k(S^n)\cong\mathbb{Z}$ if $k=n$, and $0$ otherwise, for $n\ge0$.

Base case $n=0$: $S^0$ is two points, so $H_0=\mathbb{Z}^2$, $\tilde H_0=\mathbb{Z}$, and higher groups vanish.

Inductive step, $n\ge1$: with $U,V$ as in Problem 1, both are contractible and $U\cap V\simeq S^{n-1}$ is non-empty. The reduced Mayer–Vietoris sequence contains
$$
\tilde H_k(U)\oplus\tilde H_k(V)\to\tilde H_k(S^n)\xrightarrow{\partial}\tilde H_{k-1}(U\cap V)\to\tilde H_{k-1}(U)\oplus\tilde H_{k-1}(V).
$$
The outer terms vanish, so $\tilde H_k(S^n)\cong\tilde H_{k-1}(S^{n-1})$ for every $k$. Induction finishes the proof. $\square$

### 5. Euler characteristics of surfaces

$M_g$ has one 0-cell, $2g$ 1-cells and one 2-cell: $\chi(M_g)=1-2g+1=2-2g$.
$N_h$ ($h\ge1$) has one 0-cell, $h$ 1-cells and one 2-cell: $\chi(N_h)=2-h$.

They agree exactly when $h=2g$ (with $g\ge1$), e.g. $\chi(T^2)=\chi(K)=0$.

$H_1$ from the cellular chain complex (or as the abelianization of $\pi_1$): with one 0-cell, $d_1=0$, so $H_1=\mathbb{Z}^{\#\text{1-cells}}/\operatorname{im}d_2$, and $d_2$ sends the 2-cell to the exponent sums of its attaching word.
- For $M_g$ the word $[a_1,b_1]\cdots[a_g,b_g]$ has all exponent sums $0$, so $H_1(M_g)\cong\mathbb{Z}^{2g}$, torsion-free.
- For $N_h$ the word $a_1^2\cdots a_h^2$ gives $d_2(e^2)=2(a_1+\dots+a_h)$. Since $a_1,\dots,a_{h-1},a_1+\dots+a_h$ is a basis of $\mathbb{Z}^h$, $H_1(N_h)\cong\mathbb{Z}^{h-1}\oplus\mathbb{Z}/2$.

$H_1(N_h)$ has torsion and $H_1(M_g)$ does not, so $M_g\not\simeq N_h$ for all $g,h$. $\square$

### 6. Contractible spaces

Let $F:X\times I\to X$ be a homotopy from $\mathrm{id}_X$ to the constant map $c$ at a point $x_1$. For any $x$, $t\mapsto F(x,t)$ is a path from $x$ to $x_1$, so $X$ is path-connected.

Homology: $\mathrm{id}_*=c_*$ on $\tilde H_n(X)$ by homotopy invariance. But $c$ factors as $X\to\lbrace x_1\rbrace\hookrightarrow X$, and $\tilde H_n(\text{pt})=0$ for all $n$. So $\mathrm{id}_*=0$ and $\tilde H_n(X)=0$.

$\pi_1$: the constant map $X\to\lbrace x_1\rbrace$ is a homotopy equivalence (with inverse the inclusion), so it induces an isomorphism $\pi_1(X,x_0)\cong\pi_1(\text{pt})=0$ for any $x_0$ (a homotopy equivalence induces isomorphisms on $\pi_1$ at every basepoint, by Hatcher Prop. 1.18). $\square$

---

## Core

### 7. $\mathbb{RP}^2$

(a) $\mathbb{Z}/2=\lbrace\pm1\rbrace$ acts on $S^2$ by $x\mapsto-x$. For $x\in S^2$, the open set $U=\lbrace y:|y-x|<1\rbrace$ satisfies $U\cap(-U)=\emptyset$ (if $y\in U\cap(-U)$, then $2=|x-(-x)|\le|x-y|+|y+x|<2$). So this is a covering space action, and $q:S^2\to S^2/\pm1=\mathbb{RP}^2$ is a 2-sheeted normal covering with deck group $\mathbb{Z}/2$. Since $S^2$ is simply connected (Problem 1), it is the universal cover, so $\pi_1(\mathbb{RP}^2)\cong\mathbb{Z}/2$.

(b) Let $f:\mathbb{RP}^2\to S^1$. Then $f_*:\mathbb{Z}/2\to\mathbb{Z}$ is zero because $\mathbb{Z}$ is torsion-free. $\mathbb{RP}^2$ is path-connected and locally path-connected, so by the lifting criterion $f$ lifts to $\tilde f:\mathbb{RP}^2\to\mathbb{R}$ with $p\tilde f=f$. $\mathbb{R}$ is contractible: $\tilde f_t=(1-t)\tilde f$ is a homotopy to $0$, and $p\circ\tilde f_t$ is a homotopy from $f$ to a constant. $\square$

### 8. Klein bottle

(a) Corners: $(0,0)\sim(1,0)$ via the first relation; $(0,0)\sim(1,1)$ and $(1,0)\sim(0,1)$ via the second. So all four corners become one 0-cell $v$. Let $b$ be the vertical edge $\lbrace0\rbrace\times I=\lbrace1\rbrace\times I$, oriented upward, and $a$ the bottom edge, oriented left to right. Because $(x,1)\sim(1-x,0)$, the top edge read left to right is $a^{-1}$. Reading the boundary of the square counterclockwise from $(0,0)$: bottom $a$, right side $b$, top from right to left $a$, left side downward $b^{-1}$. So the 2-cell is attached along $abab^{-1}$. $K$ has one 0-cell, two 1-cells, one 2-cell; the 1-skeleton is $S^1\vee S^1$, and attaching a 2-cell kills the normal closure of its word:
$$
\pi_1(K)\cong\langle a,b\mid abab^{-1}\rangle.
$$

(b) The relation says $bab^{-1}=a^{-1}$. In $S_3$ let $r=(1\,2\,3)$ and $s=(1\,2)$; then $srs^{-1}=r^{-1}$. So $a\mapsto r$, $b\mapsto s$ defines a homomorphism $\pi_1(K)\to S_3$. Since $rs\ne sr$, also $ab\ne ba$ in $\pi_1(K)$. So $\pi_1(K)$ is non-abelian.

(c) $H_1(K)\cong\pi_1(K)^{ab}=\langle a,b\mid 2a=0\rangle$ (in additive notation the relator is $a+b+a-b=2a$) $\cong\mathbb{Z}\oplus\mathbb{Z}/2$. $\square$

### 9. $H_*(\mathbb{RP}^n)$

$\mathbb{RP}^n$ has one cell $e^k$ in each dimension $0\le k\le n$, and $\mathbb{RP}^k=\mathbb{RP}^{k-1}\cup e^k$ with attaching map the quotient $\varphi:S^{k-1}\to\mathbb{RP}^{k-1}$.

The cellular boundary $d_k(e^k)=d\cdot e^{k-1}$, where $d$ is the degree of $S^{k-1}\xrightarrow{\varphi}\mathbb{RP}^{k-1}\xrightarrow{q}\mathbb{RP}^{k-1}/\mathbb{RP}^{k-2}\cong S^{k-1}$.

Compute $d$ by local degrees. A point $y$ in the open $(k-1)$-cell has exactly two preimages $x,-x$ under $q\varphi$. On a small neighborhood of $x$, $q\varphi$ is a homeomorphism onto a neighborhood of $y$; call its local degree $\epsilon=\pm1$. Since $q\varphi(-z)=q\varphi(z)$, near $-x$ the map is $(q\varphi|_{\text{near }x})\circ a$ where $a$ is the antipodal map of $S^{k-1}$, of degree $(-1)^k$. So the local degree at $-x$ is $\epsilon(-1)^k$ and
$$
d=\epsilon\big(1+(-1)^k\big)=\begin{cases}\pm2,&k\text{ even}\\0,&k\text{ odd.}\end{cases}
$$
(For $k=1$: $d_1=0$ since there is only one 0-cell, consistent.)

The cellular chain complex is $\mathbb{Z}$ in each degree $0..n$ with $d_k=0$ for $k$ odd and $d_k=\pm2$ for $k$ even, $k\ge 2$. Hence:
- $H_0=\mathbb{Z}$;
- for odd $k<n$: $\ker d_k=\mathbb{Z}$, $\operatorname{im}d_{k+1}=2\mathbb{Z}$, so $H_k=\mathbb{Z}/2$;
- for even $k$ with $0<k\le n$: $d_k$ is injective, so $H_k=0$;
- for $k=n$ odd: $\ker d_n=\mathbb{Z}$ and nothing above, so $H_n=\mathbb{Z}$;
- $H_k=0$ for $k>n$. $\square$

### 10. Antipodal map and hairy ball

(a) First, a reflection $\rho(x_0,x_1,\dots,x_n)=(-x_0,x_1,\dots,x_n)$ has degree $-1$. Give $S^n$ the CW structure with two 0-cells, two 1-cells, ..., two $n$-cells, built from $S^{n-1}$ by attaching the two hemispheres $\lbrace x_0\ge0\rbrace$ and $\lbrace x_0\le0\rbrace$ as $e^n_+$, $e^n_-$ (inductively the $S^{n-1}$ is the equator $x_0=0$; any CW structure on $S^{n-1}$ works). In cellular chains $d(e^n_+)=d(e^n_-)$ (both attached by the identity of the equator), so $H_n(S^n)$ is generated by $e^n_+-e^n_-$. $\rho$ is cellular, fixes the equator, and swaps $e^n_+$ and $e^n_-$ (preserving their identification with $D^n$ that restricts to the identity on the boundary). So $\rho_*(e^n_+-e^n_-)=e^n_--e^n_+$, degree $-1$.

Any reflection in a hyperplane through the origin is conjugate by a rotation (homotopic to the identity, since $SO(n+1)$ is path-connected) to $\rho$, so has degree $-1$. The antipodal map is the composite of the $n+1$ coordinate reflections, so $\deg a=(-1)^{n+1}$.

(b) If $n=2k-1$ is odd, $v(x_1,\dots,x_{2k})=(-x_2,x_1,-x_4,x_3,\dots,-x_{2k},x_{2k-1})$ is a unit tangent vector field ($v(x)\cdot x=0$, $|v(x)|=|x|=1$).

Conversely suppose $v$ is a nowhere-zero tangent field on $S^n$; replacing $v$ by $v/|v|$ assume $|v(x)|=1$ and $v(x)\perp x$. Then $f_t(x)=\cos(\pi t)\,x+\sin(\pi t)\,v(x)$ has $|f_t(x)|^2=\cos^2+\sin^2=1$, so it is a homotopy in $S^n$ from $\mathrm{id}$ to $a$. Then $1=\deg a=(-1)^{n+1}$, so $n$ is odd. $\square$

### 11. Brouwer via homology

Suppose $r:D^n\to S^{n-1}$ is a retraction, $n\ge1$. Then $r\circ i=\mathrm{id}$ and on $\tilde H_{n-1}$ the identity of $\tilde H_{n-1}(S^{n-1})\cong\mathbb{Z}$ factors through $\tilde H_{n-1}(D^n)=0$ (contractible). Contradiction. If $h:D^n\to D^n$ had no fixed point, the ray construction of Problem 2 (same formula, same continuity argument) would give such a retraction. So $h$ has a fixed point. $\square$

### 12. Two-sheeted covers of $S^1\vee S^1$

Connected 2-sheeted covers correspond (up to isomorphism, ignoring basepoints) to conjugacy classes of index-2 subgroups of $F_2=\langle a,b\rangle$. Index-2 subgroups are normal, so we need the index-2 subgroups themselves. These are kernels of surjections $F_2\to\mathbb{Z}/2$, which are determined by the images of $a,b$ in $\mathbb{Z}/2$, not both zero: three choices. So there are exactly **three** connected 2-sheeted covers, all **normal**.

In each case the cover is a graph with vertices $v_0,v_1$ and, at each vertex, one outgoing and one incoming edge of each label.

1. $a\mapsto0$, $b\mapsto1$: an $a$-loop at each vertex, and two $b$-edges $v_0\to v_1$, $v_1\to v_0$. Taking the $b$-edge $v_0\to v_1$ as a maximal tree, the subgroup (at $v_0$) is free on $a$, $bab^{-1}$, $b^2$.
2. $a\mapsto1$, $b\mapsto0$: symmetric; subgroup $\langle b,\,aba^{-1},\,a^2\rangle$.
3. $a\mapsto1$, $b\mapsto1$: two $a$-edges and two $b$-edges, each pair forming a 2-cycle between $v_0$ and $v_1$. With tree the $a$-edge $v_0\to v_1$, the subgroup (words of even length) is free on $a^2$, $ba^{-1}$, $ab$.

Each subgroup has rank $3=2(2-1)+1$, consistent with Problem 19. $\square$

### 13. Lens spaces

*Free action.* Suppose $k\cdot(z,w)=(z,w)$ for some $(z,w)\in S^3$. If $z\ne0$, $\zeta^k=1$ so $m\mid k$. If $z=0$ then $w\ne0$, so $\zeta^{kq}=1$, $m\mid kq$, and $\gcd(m,q)=1$ gives $m\mid k$. So only the identity has fixed points.

*Covering space action.* A free action of a finite group $G$ on a Hausdorff space is a covering space action: given $y$, the points $gy$ ($g\in G$) are distinct, so choose pairwise disjoint open $U_g\ni gy$ and set $U=\bigcap_g g^{-1}U_g$, an open neighborhood of $y$. Then $gU\subseteq U_g$, which is disjoint from $U\subseteq U_e$ for $g\ne e$.

So $S^3\to L(m,q)$ is a normal covering with deck group $\mathbb{Z}/m$. $S^3$ is simply connected (Problem 1), path-connected and locally path-connected, so $\pi_1(L(m,q))\cong\mathbb{Z}/m$. $\square$

### 14. $H_*(K)$ by Mayer–Vietoris

Cut $K$ along a circle to write $K=A\cup B$ with $A,B$ open Möbius bands (slightly thickened) and $A\cap B$ an open annulus, which deformation retracts to a circle $C$. Then $A\simeq B\simeq S^1$ (core circles), $A\cap B\simeq S^1$, and the inclusion $C\hookrightarrow A$ sends the generator of $H_1(C)$ to $\pm2$ times the generator of $H_1(A)$, since the boundary of a Möbius band winds twice around its core. Same for $B$.

Reduced Mayer–Vietoris:
$$
0=H_2(A)\oplus H_2(B)\to H_2(K)\to H_1(A\cap B)\xrightarrow{\ \Phi\ }H_1(A)\oplus H_1(B)\to H_1(K)\to\tilde H_0(A\cap B)=0.
$$
With suitable generators, $\Phi(1)=(2,-2)$ (signs depend on orientation choices but $\Phi$ is injective in any case). Hence $H_2(K)=\ker\Phi=0$, and
$$
H_1(K)\cong\mathbb{Z}^2/\langle(2,-2)\rangle\cong\mathbb{Z}\oplus\mathbb{Z}/2,
$$
using the basis $(1,-1),(0,1)$ of $\mathbb{Z}^2$, in which the subgroup is $2\cdot(1,-1)$. $H_0(K)=\mathbb{Z}$ and $H_k(K)=0$ for $k\ge3$ (all terms vanish). This agrees with Problem 8(c). $\square$

### 15. Invariance of dimension

$\mathbb{R}^0$ is a point, not homeomorphic to $\mathbb{R}^n$ for $n\ge1$. Let $m,n\ge1$ and $h:\mathbb{R}^m\to\mathbb{R}^n$ a homeomorphism. Then $h$ restricts to a homeomorphism of pairs $(\mathbb{R}^m,\mathbb{R}^m\setminus\lbrace0\rbrace)\to(\mathbb{R}^n,\mathbb{R}^n\setminus\lbrace h(0)\rbrace)$, so their relative homology groups are isomorphic.

For any $x\in\mathbb{R}^n$, the long exact sequence of the pair in reduced homology, with $\tilde H_*(\mathbb{R}^n)=0$, gives $H_k(\mathbb{R}^n,\mathbb{R}^n\setminus\lbrace x\rbrace)\cong\tilde H_{k-1}(\mathbb{R}^n\setminus\lbrace x\rbrace)\cong\tilde H_{k-1}(S^{n-1})$, which is $\mathbb{Z}$ for $k=n$ and $0$ otherwise. Comparing gives $m=n$. $\square$

---

## Qualifying-exam level

### 16. Retracts split homology

(a) $r\circ i=\mathrm{id}_A$ gives $r_*i_*=\mathrm{id}$, so $i_*$ is injective in every degree. In the long exact sequence of $(X,A)$,
$$
H_n(A)\xrightarrow{i_*}H_n(X)\xrightarrow{j_*}H_n(X,A)\xrightarrow{\partial}H_{n-1}(A)\xrightarrow{i_*}H_{n-1}(X),
$$
injectivity of the last $i_*$ forces $\partial=0$, so $j_*$ is surjective, and we get short exact sequences $0\to H_n(A)\to H_n(X)\to H_n(X,A)\to0$. They split because $r_*$ is a left inverse of $i_*$. Hence $H_n(X)\cong H_n(A)\oplus H_n(X,A)$.

(b) Let $M$ be the Möbius band and $C=\partial M\cong S^1$. $M$ deformation retracts onto its core, so $H_1(M)\cong\mathbb{Z}$, and $i_*:H_1(C)\to H_1(M)$ is multiplication by $\pm2$. If $r:M\to C$ were a retraction, then $r_*\circ i_*=\mathrm{id}_\mathbb{Z}$, i.e. $\pm2\,r_*(1)=1$ in $\mathbb{Z}$, impossible. (Note $i_*$ *is* injective here; the obstruction is that its image $2\mathbb{Z}$ is not a direct summand, contradicting (a).) $\square$

### 17. Maps between $S^2$ and $T^2$

(a) The universal cover of $T^2$ is $\mathbb{R}^2\to T^2$. $S^2$ is simply connected and locally path-connected, so by the lifting criterion any $f:S^2\to T^2$ lifts to $\tilde f:S^2\to\mathbb{R}^2$. The straight-line homotopy $(1-t)\tilde f$ contracts $\tilde f$ to a constant in $\mathbb{R}^2$, and composing with the covering map gives a nullhomotopy of $f$.

(b) Let $A=S^1\vee S^1\subset T^2$ be the 1-skeleton of the standard CW structure, and $g:T^2\to T^2/A\cong S^2$ the quotient (the quotient of a 2-cell by its boundary is $S^2$). $(T^2,A)$ is a good pair, so $\tilde H_2(T^2/A)\cong H_2(T^2,A)$ and $g_*$ is identified with $j_*:H_2(T^2)\to H_2(T^2,A)$. In the long exact sequence
$$
0=H_2(A)\to H_2(T^2)\xrightarrow{j_*}H_2(T^2,A)\xrightarrow{\partial}H_1(A)\xrightarrow{\ i_*\ }H_1(T^2),
$$
$i_*:\mathbb{Z}^2\to\mathbb{Z}^2$ is an isomorphism (both are the abelianization of $F_2\to\mathbb{Z}^2$ at the level of generators $a,b$). So $\partial=0$ and $j_*$ is an isomorphism $\mathbb{Z}\to\mathbb{Z}$. So $g$ has degree $\pm1$ on $H_2$.

(c) By (a), $f$ is nullhomotopic, so $g\circ f$ is nullhomotopic and has degree $0$. Equivalently $f_*=0$ on $H_2$, so $(g f)_*=g_*f_*=0$. $\square$

### 18. $\mathbb{CP}^2$ vs. $S^2\vee S^4$

*Homology.* $\mathbb{CP}^2$ has cells in dimensions $0,2,4$, so all cellular boundaries vanish and $H_k=\mathbb{Z}$ for $k=0,2,4$, zero otherwise. For a wedge of CW complexes, $\tilde H_k(S^2\vee S^4)\cong\tilde H_k(S^2)\oplus\tilde H_k(S^4)$, again $\mathbb{Z}$ in degrees $2,4$. So the homology groups agree (and, by the universal coefficient theorem, so do the cohomology groups: everything is free).

*Cup products.* Let $W=S^2\vee S^4$, $i:S^2\hookrightarrow W$ and $r:W\to S^2$ the map collapsing $S^4$ to the wedge point, so $r\circ i=\mathrm{id}$. Then $i^*r^*=\mathrm{id}$ on $H^2(S^2)\cong\mathbb{Z}$. Since $H^2(W)\cong\mathbb{Z}$, $r^*:\mathbb{Z}\to\mathbb{Z}$ has a left inverse, so it is an isomorphism. Let $u$ generate $H^2(S^2)$ and $y=r^*u$, a generator of $H^2(W)$. Then
$$
y\smile y=r^*(u\smile u)=0,
$$
because $u\smile u\in H^4(S^2)=0$.

Suppose $h:\mathbb{CP}^2\to W$ is a homotopy equivalence. Then $h^*:H^*(W)\to H^*(\mathbb{CP}^2)$ is a ring isomorphism. So $h^*(y)=\pm x$, and $h^*(y\smile y)=x\smile x=x^2$, which generates $H^4(\mathbb{CP}^2)\cong\mathbb{Z}$, in particular is nonzero. But $h^*(y\smile y)=h^*(0)=0$. Contradiction. $\square$

### 19. Subgroups of free groups

(a) Let $X$ be a connected graph (1-dimensional CW complex) and $p:\tilde X\to X$ a covering. Let $\tilde X^0=p^{-1}(X^0)$. Each open edge $e$ of $X$ is contractible, hence simply connected and locally path-connected, so the inclusion $e\hookrightarrow X$ lifts and $p^{-1}(e)$ is a disjoint union of copies of $e$, each mapped homeomorphically. Each characteristic map $[0,1]\to X$ of an edge lifts (path lifting) to paths in $\tilde X$ whose endpoints lie in $\tilde X^0$, one for each point of the fibre over its starting point. These lifts, with $\tilde X^0$ as vertices, give $\tilde X$ the structure of a graph (the topology agrees because $p$ is a local homeomorphism and $X$ has the weak topology).

Let $F$ be free on a set $S$. Then $F\cong\pi_1(X)$ for $X=\bigvee_{s\in S}S^1$. Given $H\le F$, the classification theorem gives a connected cover $\tilde X_H\to X$ with $p_*\pi_1(\tilde X_H)=H$, and $p_*$ is injective, so $H\cong\pi_1(\tilde X_H)$. $\tilde X_H$ is a connected graph; collapsing a maximal tree $T$ (contractible subcomplex) is a homotopy equivalence onto a wedge of circles, one per edge not in $T$. So $H$ is free.

(b) Let $X=\bigvee_{i=1}^nS^1$ (one vertex, $n$ edges), so $\chi(X)=1-n$. The cover $\tilde X_H$ has $k$ sheets, so it has $k$ vertices and $kn$ edges: $\chi(\tilde X_H)=k(1-n)$. A connected graph is homotopy equivalent to a wedge of $r$ circles, where $r$ is the rank of its $\pi_1$, and $\chi$ is a homotopy invariant (equal to $\operatorname{rank}H_0-\operatorname{rank}H_1=1-r$). So $1-r=k(1-n)$ and
$$
r=k(n-1)+1.
$$

(c) Any index-2 subgroup of $F_2$ (e.g. the kernel of $F_2\to\mathbb{Z}/2$, $a\mapsto1$, $b\mapsto0$) has rank $2(2-1)+1=3$, so it is isomorphic to $F_3$. $\square$

### 20. Fixed points and antipodal points

(a) If $f(x)\ne x$ for all $x$, then $(1-t)f(x)-tx\ne0$ for all $t\in I$: if it were $0$, taking norms gives $1-t=t$, so $t=\tfrac12$ and $f(x)=x$, excluded. So
$$
f_t(x)=\frac{(1-t)f(x)-tx}{|(1-t)f(x)-tx|}
$$
is a homotopy from $f$ to the antipodal map $a$, and $\deg f=\deg a=(-1)^{n+1}$ (Problem 10a).

(b) If $f(x)\ne-x$ for all $x$, the same argument with $(1-t)f(x)+tx$ (which vanishes only if $t=\frac12$ and $f(x)=-x$) gives $f\simeq\mathrm{id}$, so $\deg f=1$.

(c) Let $n$ be even and suppose $f(x)\ne x$ and $f(x)\ne-x$ for all $x$. By (a), $\deg f=(-1)^{n+1}=-1$; by (b), $\deg f=1$. Contradiction.

*Application.* Let $n=2k\ge2$ and $F:\mathbb{RP}^n\to\mathbb{RP}^n$, with $q:S^n\to\mathbb{RP}^n$ the universal cover. $F\circ q:S^n\to\mathbb{RP}^n$ lifts through $q$ because $S^n$ is simply connected and locally path-connected; call the lift $f:S^n\to S^n$, so $qf=Fq$. By (c) there is $x$ with $f(x)=\pm x$. Then $F(q(x))=q(f(x))=q(\pm x)=q(x)$, a fixed point. $\square$

### 21. Borsuk–Ulam for $n=2$

Suppose $g:S^2\to S^1$ satisfies $g(-x)=-g(x)$. Let $\eta:I\to S^2$ be a path from $x_0$ to $-x_0$ (half of a great circle). Then $\gamma=\eta\cdot(-\eta)$, where $(-\eta)(s)=-\eta(s)$ runs from $-x_0$ back to $x_0$, is a loop at $x_0$.

Let $\tilde h$ be the lift of $g\circ\eta$ to $\mathbb{R}$ starting at $\tilde s_0$, where $p(\tilde s_0)=g(x_0)$. It ends at a lift of $g(-x_0)=-g(x_0)=p(\tilde s_0+\tfrac12)$, so $\tilde h(1)=\tilde s_0+\tfrac q2$ for some **odd** integer $q$.

Now $g\circ(-\eta)=-(g\circ\eta)$, and since $-p(s)=p(s+\tfrac12)$, every function $\tilde h+\tfrac12+j$ ($j\in\mathbb{Z}$) is a lift of $g\circ(-\eta)$. Choose $j=\tfrac{q-1}{2}$ so that it starts at $\tilde s_0+\tfrac q2=\tilde h(1)$; it ends at $\tilde h(1)+\tfrac q2=\tilde s_0+q$. So the lift of $g\circ\gamma$ starting at $\tilde s_0$ ends at $\tilde s_0+q$, meaning $[g\circ\gamma]=q\ne0$ in $\pi_1(S^1)\cong\mathbb{Z}$.

But $S^2$ is simply connected, so $\gamma$ is nullhomotopic and so is $g\circ\gamma$: $[g\circ\gamma]=0$. Contradiction.

*Borsuk–Ulam.* If $f:S^2\to\mathbb{R}^2$ had $f(x)\ne f(-x)$ for all $x$, then
$$
g(x)=\frac{f(x)-f(-x)}{|f(x)-f(-x)|}
$$
would be a continuous map $S^2\to S^1$ with $g(-x)=-g(x)$, which we have just shown is impossible. $\square$
