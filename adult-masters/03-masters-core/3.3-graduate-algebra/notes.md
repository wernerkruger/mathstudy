# 3.3 Graduate algebra: study notes

These notes condense the module. Rings are commutative with $1$ unless stated otherwise (the group algebra $\mathbb{C}[G]$ in §12 is the exception); ring homomorphisms preserve $1$. $A$ denotes a ring, $M,N$ are $A$-modules, $k$ is a field. Read the texts first; use these notes to consolidate and review.

---

## 1. Categories, functors and universal properties (light)

A **category** $\mathcal{C}$ has objects, sets of morphisms $\operatorname{Hom}(X,Y)$, an associative composition and identities. Examples: $\mathsf{Set}$, $\mathsf{Grp}$, $\mathsf{Ab}$, $A\text{-}\mathsf{Mod}$, $\mathsf{Ring}$, $\mathsf{Top}$, and a poset (one morphism $x\to y$ iff $x\le y$).

A (covariant) **functor** $F:\mathcal{C}\to\mathcal{D}$ sends objects to objects and morphisms to morphisms, preserving composition and identities; a contravariant functor reverses arrows. Examples: forgetful functors; $\operatorname{Hom}(M,-)$ (covariant) and $\operatorname{Hom}(-,N)$ (contravariant) from $A\text{-}\mathsf{Mod}$ to $A\text{-}\mathsf{Mod}$; $\operatorname{Spec}:\mathsf{Ring}\to\mathsf{Top}$ (contravariant); homology $H_n:\mathsf{Top}\to\mathsf{Ab}$ (in [3.4](../3.4-algebraic-topology/)).

A **natural transformation** $\eta:F\Rightarrow G$ is a family $\eta_X:F(X)\to G(X)$ with $G(f)\circ\eta_X=\eta_Y\circ F(f)$ for every $f:X\to Y$. Example: the map $V\to V^{**}$ into the double dual is natural; an isomorphism $V\cong V^*$ is not (it depends on a basis).

**Universal properties.** An object defined by a universal property is unique up to unique isomorphism. *Product* $X\times Y$: an object with maps $p_X,p_Y$ such that every pair $f:Z\to X$, $g:Z\to Y$ factors uniquely through it. *Coproduct*: the dual notion. In $\mathsf{Set}$ these are the cartesian product and disjoint union; in $A\text{-}\mathsf{Mod}$, finite products and coproducts coincide (the direct sum $M\oplus N$), but for infinite families $\prod M_i\ne\bigoplus M_i$; in $\mathsf{Grp}$ the coproduct is the free product; in commutative rings it is $A\otimes_\mathbb{Z}B$.

**Adjunctions.** $F:\mathcal{C}\to\mathcal{D}$ is left adjoint to $G:\mathcal{D}\to\mathcal{C}$ if $\operatorname{Hom}_\mathcal{D}(FX,Y)\cong\operatorname{Hom}_\mathcal{C}(X,GY)$ naturally in $X$ and $Y$. Examples: free module ⊣ forgetful; $-\otimes_AM$ ⊣ $\operatorname{Hom}_A(M,-)$. *Left adjoints preserve colimits (cokernels, direct sums) and are right exact; right adjoints preserve limits (kernels, products) and are left exact.* This one principle explains the exactness properties in §3.

**Yoneda lemma (statement).** $X\cong Y$ iff $\operatorname{Hom}(-,X)\cong\operatorname{Hom}(-,Y)$ naturally. "An object is determined by how others map into it."

---

## 2. Modules and exact sequences

Modules, submodules, quotients and the isomorphism theorems work exactly as for abelian groups. $M$ is **free** if it has a basis; every module is a quotient of a free module. **Finitely generated** means a quotient of $A^n$.

A sequence $\cdots\to M_{i-1}\xrightarrow{f_i}M_i\xrightarrow{f_{i+1}}M_{i+1}\to\cdots$ is **exact** at $M_i$ if $\operatorname{im}f_i=\ker f_{i+1}$. A **short exact sequence** $0\to M'\xrightarrow{f}M\xrightarrow{g}M''\to0$ means $f$ injective, $g$ surjective, $\operatorname{im}f=\ker g$. So $M''\cong M/f(M')$.

**Splitting lemma.** For a short exact sequence as above, the following are equivalent: (a) there is $r:M\to M'$ with $rf=\mathrm{id}$; (b) there is $s:M''\to M$ with $gs=\mathrm{id}$; (c) there is an isomorphism $M\cong M'\oplus M''$ compatible with $f$ and $g$. Non-example: $0\to\mathbb{Z}\xrightarrow{2}\mathbb{Z}\to\mathbb{Z}/2\to0$ does not split ($\mathbb{Z}$ has no element of order $2$). Over a field every short exact sequence splits.

**Five lemma.** In a commutative diagram with exact rows of five terms each, if the outer four vertical maps are isomorphisms, so is the middle one.

**Snake lemma.** A morphism of short exact sequences $(M'\to M\to M'')\to(N'\to N\to N'')$ with vertical maps $\alpha,\beta,\gamma$ gives an exact sequence
$$
0\to\ker\alpha\to\ker\beta\to\ker\gamma\xrightarrow{\ \delta\ }\operatorname{coker}\alpha\to\operatorname{coker}\beta\to\operatorname{coker}\gamma\to0 .
$$
The *connecting homomorphism* $\delta$ is the prototype of the long exact sequences of homology in 3.4. Prove it once by diagram chasing; afterwards use it freely.

---

## 3. Tensor products and Hom

**Definition.** $M\otimes_AN$ is an $A$-module with a bilinear map $\otimes:M\times N\to M\otimes_AN$ such that every bilinear $\beta:M\times N\to P$ factors uniquely as $\beta=\tilde\beta\circ\otimes$ with $\tilde\beta$ linear. Existence: the free module on $M\times N$ modulo the bilinearity relations. Elements are finite sums $\sum m_i\otimes n_i$; **not every element is a pure tensor**, and a pure tensor can be zero for non-obvious reasons.

**Basic isomorphisms.** $A\otimes_AM\cong M$; $M\otimes N\cong N\otimes M$; $(M\otimes N)\otimes P\cong M\otimes(N\otimes P)$; $(\bigoplus M_i)\otimes N\cong\bigoplus(M_i\otimes N)$; $A^m\otimes A^n\cong A^{mn}$; $(A/I)\otimes_AM\cong M/IM$; $S^{-1}A\otimes_AM\cong S^{-1}M$.

**Examples over $\mathbb{Z}$.**
- $\mathbb{Z}/m\otimes\mathbb{Z}/n\cong\mathbb{Z}/\gcd(m,n)$.
- $\mathbb{Q}\otimes\mathbb{Q}/\mathbb{Z}=0$ (divisible ⊗ torsion = 0); $\mathbb{Q}\otimes\mathbb{Q}\cong\mathbb{Q}$.
- $\mathbb{Z}/n\otimes M\cong M/nM$.
- $\mathbb{C}\otimes_\mathbb{R}\mathbb{C}\cong\mathbb{C}\times\mathbb{C}$ as rings.

**Extension of scalars.** For a ring map $A\to B$, $B\otimes_AM$ is a $B$-module. Example: complexification $\mathbb{C}\otimes_\mathbb{R}V$. For algebras, $B\otimes_AC$ is a ring with $(b\otimes c)(b'\otimes c')=bb'\otimes cc'$; $A[x]\otimes_AA[y]\cong A[x,y]$, and $k[x]/(f)\otimes_kL\cong L[x]/(f)$.

**Hom–tensor adjunction.** $\operatorname{Hom}_A(M\otimes_AN,P)\cong\operatorname{Hom}_A(N,\operatorname{Hom}_A(M,P))$, $\varphi\mapsto(n\mapsto(m\mapsto\varphi(m\otimes n)))$.

**Exactness.**
- $\operatorname{Hom}_A(M,-)$ is **left exact**: if $0\to N'\to N\to N''$ is exact then so is $0\to\operatorname{Hom}(M,N')\to\operatorname{Hom}(M,N)\to\operatorname{Hom}(M,N'')$. Similarly $\operatorname{Hom}(-,N)$ turns $M'\to M\to M''\to0$ into $0\to\operatorname{Hom}(M'',N)\to\operatorname{Hom}(M,N)\to\operatorname{Hom}(M',N)$.
- $M\otimes_A-$ is **right exact**: $N'\to N\to N''\to0$ exact implies $M\otimes N'\to M\otimes N\to M\otimes N''\to0$ exact. *Proof:* a sequence $X'\to X\to X''\to0$ is exact iff $0\to\operatorname{Hom}(X'',P)\to\operatorname{Hom}(X,P)\to\operatorname{Hom}(X',P)$ is exact for every $P$. Apply this with $X=M\otimes N$ and use the adjunction plus left exactness of $\operatorname{Hom}(-,\operatorname{Hom}(M,P))$.
- Neither is exact in general: $\mathbb{Z}\xrightarrow{2}\mathbb{Z}$ is injective, but after $\mathbb{Z}/2\otimes-$ it becomes the zero map $\mathbb{Z}/2\to\mathbb{Z}/2$. And $\mathbb{Z}\to\mathbb{Z}/2$ is onto, but $\operatorname{Hom}(\mathbb{Z}/2,\mathbb{Z})=0\to\operatorname{Hom}(\mathbb{Z}/2,\mathbb{Z}/2)$ is not.

The failure of exactness is measured by the derived functors $\operatorname{Tor}$ and $\operatorname{Ext}$ (e.g. $\operatorname{Tor}_1^\mathbb{Z}(\mathbb{Z}/m,\mathbb{Z}/n)\cong\mathbb{Z}/\gcd(m,n)$, $\operatorname{Ext}^1_\mathbb{Z}(\mathbb{Z}/n,\mathbb{Z})\cong\mathbb{Z}/n$). They appear in the universal coefficient theorems of 3.4.

---

## 4. Projective, injective and flat modules

**Projective:** $P$ is projective if $\operatorname{Hom}(P,-)$ is exact; equivalently every surjection $M\to P$ splits; equivalently every map $P\to M''$ lifts through any surjection $M\to M''$; equivalently $P$ is a direct summand of a free module. Free modules are projective. Over a PID (and over local rings, for finitely generated modules) projective = free. Not in general: in $\mathbb{Z}/6\cong\mathbb{Z}/2\times\mathbb{Z}/3$, the summand $\mathbb{Z}/2$ is projective but not free.

**Injective:** $I$ is injective if $\operatorname{Hom}(-,I)$ is exact; equivalently, maps into $I$ extend along injections. **Baer's criterion:** it suffices to extend maps from ideals $\mathfrak{a}\to I$ to $A\to I$. Over a PID, injective = divisible ($nx=y$ solvable for all $y$ and $n\ne0$). So $\mathbb{Q}$ and $\mathbb{Q}/\mathbb{Z}$ are injective $\mathbb{Z}$-modules, while $\mathbb{Z}$ is not. Every module embeds in an injective module.

**Flat:** $F$ is flat if $F\otimes_A-$ is exact (preserves injections). Free ⇒ projective ⇒ flat. $\mathbb{Q}$ is a flat $\mathbb{Z}$-module that is not projective. Localisations $S^{-1}A$ are flat over $A$. Over a PID, flat = torsion-free. Flatness is local: $M$ is flat iff $M_\mathfrak{p}$ is flat over $A_\mathfrak{p}$ for all primes $\mathfrak{p}$.

**Why this matters.** Projective and injective modules are used to build resolutions, which compute $\operatorname{Ext}$ and $\operatorname{Tor}$; flat base change is the algebraic notion of "a family varying nicely" in algebraic geometry.

---

## 5. Ideals, radicals and Nakayama

**Existence of maximal ideals.** Every proper ideal is contained in a maximal ideal (Zorn). So $A\ne0$ has a maximal ideal, and a non-unit lies in some maximal ideal.

**Nilradical.** $\operatorname{nil}(A)=\lbrace a:a^n=0\text{ for some }n\rbrace=\bigcap_{\mathfrak{p}\text{ prime}}\mathfrak{p}$.
*Proof of "⊇":* if $f$ is not nilpotent, $S=\lbrace1,f,f^2,\dots\rbrace$ avoids $0$, so $S^{-1}A\ne0$ has a maximal ideal; its preimage in $A$ is a prime not containing $f$. More generally $\sqrt I=\bigcap_{\mathfrak{p}\supseteq I}\mathfrak{p}$.

**Jacobson radical.** $J(A)=\bigcap_{\mathfrak{m}\text{ maximal}}\mathfrak{m}=\lbrace a:1-ab\text{ is a unit for all }b\rbrace$.

**Local rings.** $A$ is local if it has a unique maximal ideal $\mathfrak{m}$; equivalently the non-units form an ideal. Examples: fields, $\mathbb{Z}_{(p)}$, $k[[x]]$, $A_\mathfrak{p}$.

**Nakayama's lemma.** Let $M$ be a finitely generated $A$-module and $I\subseteq J(A)$ an ideal. If $IM=M$ then $M=0$.

*Proof.* Suppose $M\neq0$ with minimal generating set $x_1,\dots,x_n$. Since $x_n\in IM$, $x_n=\sum_ia_ix_i$ with $a_i\in I$. Then $(1-a_n)x_n=\sum_{i<n}a_ix_i$, and $1-a_n$ is a unit because $a_n\in J(A)$. So $x_n$ is redundant, a contradiction. $\square$

*Corollaries.* If $N\subseteq M$, $M$ finitely generated, and $N+IM=M$, then $N=M$. Over a local ring $(A,\mathfrak{m},k)$, elements $x_1,\dots,x_n$ generate $M$ iff their images span $M/\mathfrak{m}M$ over $k$; so every minimal generating set has $\dim_kM/\mathfrak{m}M$ elements. Finitely generated projective modules over a local ring are free.

*Pitfall:* finite generation is essential. $\mathbb{Q}$ over $\mathbb{Z}_{(p)}$ satisfies $p\mathbb{Q}=\mathbb{Q}$ but $\mathbb{Q}\ne0$.

---

## 6. Localisation

For a multiplicative set $S\ni1$, $S^{-1}A=\lbrace a/s\rbrace$ with $a/s=b/t$ iff $u(at-bs)=0$ for some $u\in S$. (The $u$ is needed when $A$ has zero divisors.) Universal property: ring maps $A\to B$ sending $S$ to units factor uniquely through $S^{-1}A$. Similarly $S^{-1}M$; $S^{-1}M\cong S^{-1}A\otimes_AM$.

**Key cases.** $A_f=S^{-1}A$ for $S=\lbrace f^n\rbrace$ ("invert $f$"); $A_\mathfrak{p}=S^{-1}A$ for $S=A\setminus\mathfrak{p}$ ("look near $\mathfrak{p}$"), a local ring with maximal ideal $\mathfrak{p}A_\mathfrak{p}$; the fraction field of a domain ($S=A\setminus\lbrace0\rbrace$).

**Properties.**
- **Exactness:** $S^{-1}$ is an exact functor; equivalently $S^{-1}A$ is flat over $A$.
- **Primes:** primes of $S^{-1}A$ correspond bijectively to primes of $A$ not meeting $S$ (via $\mathfrak{q}\mapsto\mathfrak{q}\cap A$). So the primes of $A_\mathfrak{p}$ are the primes contained in $\mathfrak{p}$, and the primes of $A/\mathfrak{p}$ are those containing $\mathfrak{p}$.
- **Local properties:** $M=0$ iff $M_\mathfrak{p}=0$ for all primes $\mathfrak{p}$ iff $M_\mathfrak{m}=0$ for all maximal $\mathfrak{m}$. The same holds for injectivity and surjectivity of a map, and for flatness. Being a domain or reduced: reduced is local; domain is not (e.g. $k\times k$).

---

## 7. The prime spectrum

$\operatorname{Spec}A$ is the set of prime ideals with the **Zariski topology**, whose closed sets are $V(I)=\lbrace\mathfrak{p}\supseteq I\rbrace$. Basic open sets $D(f)=\operatorname{Spec}A\setminus V(f)$ form a base, and $D(f)\cong\operatorname{Spec}A_f$.

**Facts.**
- $V(I)\subseteq V(J)$ iff $\sqrt I\supseteq\sqrt J$; $V(I)=\emptyset$ iff $I=A$.
- The closure of $\lbrace\mathfrak{p}\rbrace$ is $V(\mathfrak{p})$; closed points are maximal ideals.
- $\operatorname{Spec}A$ is quasi-compact (open covers have finite subcovers), though rarely Hausdorff.
- A ring map $\varphi:A\to B$ induces a continuous map $\operatorname{Spec}B\to\operatorname{Spec}A$, $\mathfrak{q}\mapsto\varphi^{-1}(\mathfrak{q})$. $\operatorname{Spec}(A/I)\cong V(I)$ (closed embedding) and $\operatorname{Spec}(S^{-1}A)$ is the subspace of primes missing $S$.
- $\operatorname{Spec}A$ is irreducible iff $\operatorname{nil}(A)$ is prime.

**Examples.**
- $\operatorname{Spec}\mathbb{Z}=\lbrace(0)\rbrace\cup\lbrace(p)\rbrace$. Closed sets: the whole space and finite sets of non-zero primes. $(0)$ is a dense "generic point".
- $\operatorname{Spec}\mathbb{C}[x]=\lbrace(0)\rbrace\cup\lbrace(x-a):a\in\mathbb{C}\rbrace$: the complex line plus a generic point.
- $\operatorname{Spec}\mathbb{R}[x]$: $(0)$, $(x-a)$ for $a\in\mathbb{R}$, and $(x^2+bx+c)$ irreducible, i.e. conjugate pairs of non-real points.
- $\operatorname{Spec}\mathbb{C}[x,y]$: $(0)$, irreducible curves $(f)$, and points $(x-a,y-b)$ (by the Nullstellensatz).
- $\operatorname{Spec}\mathbb{Z}[x]$: Mumford's "arithmetic surface": $(0)$, $(p)$, $(f)$ for irreducible primitive $f$, and maximal ideals $(p,f)$ with $f$ irreducible mod $p$.

---

## 8. Noetherian rings

For a module $M$, the following are equivalent: every ascending chain of submodules stabilises (ACC); every non-empty set of submodules has a maximal element; every submodule is finitely generated. $M$ is then **Noetherian**. A ring is Noetherian if it is Noetherian as a module over itself, i.e. every ideal is finitely generated.

If $0\to M'\to M\to M''\to0$ is exact, $M$ is Noetherian iff $M'$ and $M''$ are. Hence finitely generated modules over a Noetherian ring are Noetherian. Quotients and localisations of Noetherian rings are Noetherian.

**Hilbert basis theorem.** If $A$ is Noetherian, so is $A[x]$.

*Proof.* Suppose $I\subseteq A[x]$ is not finitely generated. Choose $f_1\in I$ of minimal degree, and inductively $f_{k+1}\in I\setminus(f_1,\dots,f_k)$ of minimal degree. Then $\deg f_1\le\deg f_2\le\cdots$. Let $a_k$ be the leading coefficient of $f_k$. The chain $(a_1)\subseteq(a_1,a_2)\subseteq\cdots$ stabilises, so $a_{N+1}=\sum_{i\le N}r_ia_i$ for some $N$. Then
$$
g=f_{N+1}-\sum_{i\le N}r_ix^{\deg f_{N+1}-\deg f_i}f_i
$$
lies in $I\setminus(f_1,\dots,f_N)$ and has degree $<\deg f_{N+1}$, contradicting minimality. $\square$

*Corollaries.* $k[x_1,\dots,x_n]$ and $\mathbb{Z}[x_1,\dots,x_n]$ are Noetherian; so is every finitely generated algebra over a Noetherian ring. Geometrically, every affine variety is cut out by finitely many polynomials.

*Non-examples.* $k[x_1,x_2,\dots]$ (infinitely many variables); $C[0,1]$; the ring of algebraic integers $\overline{\mathbb{Z}}$ ($(2)\subsetneq(2^{1/2})\subsetneq(2^{1/4})\subsetneq\cdots$). A subring of a Noetherian ring need not be Noetherian ($k[x,xy,xy^2,\dots]\subseteq k[x,y]$).

**Related results.** In a Noetherian ring every ideal contains a power of its radical, and every ideal has a primary decomposition (Lasker–Noether). **Artinian** rings (DCC) are Noetherian of dimension $0$ (AM ch. 8).

---

## 9. Integral extensions

Let $A\subseteq B$. An element $b\in B$ is **integral** over $A$ if it satisfies a monic polynomial with coefficients in $A$. Equivalently, $A[b]$ is a finitely generated $A$-module; equivalently, $b$ lies in a subring $C\subseteq B$ that is a finitely generated $A$-module. (The last ⇒ first uses the determinant trick: if $bC\subseteq C=\sum Ac_i$, write $bc_i=\sum a_{ij}c_j$; then $\det(bI-(a_{ij}))$ kills $C\ni1$.)

**Consequences.** The integral elements form a subring, the **integral closure** of $A$ in $B$. Integrality is transitive. $A$ is **integrally closed** (normal) if it equals its integral closure in its fraction field. UFDs are integrally closed (rational root test); so are $\mathbb{Z}$, $k[x_1,\dots,x_n]$, and all localisations of normal domains. $\mathbb{Z}[\sqrt{-3}]$ and $k[x,y]/(y^2-x^3)$ are not: $\frac{1+\sqrt{-3}}2$ and $y/x$ are integral but missing.

**Field lemma.** If $A\subseteq B$ are domains with $B$ integral over $A$, then $A$ is a field iff $B$ is a field.

**Cohen–Seidenberg theorems** (for $A\subseteq B$ integral):
- **Lying over:** for every prime $\mathfrak{p}$ of $A$ there is a prime $\mathfrak{q}$ of $B$ with $\mathfrak{q}\cap A=\mathfrak{p}$. (Localise at $\mathfrak{p}$: $A_\mathfrak{p}\subseteq B_\mathfrak{p}$ is still integral; take any maximal ideal $\mathfrak{n}$ of $B_\mathfrak{p}$; by the field lemma $\mathfrak{n}\cap A_\mathfrak{p}$ is maximal, hence $\mathfrak{p}A_\mathfrak{p}$; pull back to $B$.)
- **Incomparability:** if $\mathfrak{q}\subseteq\mathfrak{q}'$ lie over the same $\mathfrak{p}$ then $\mathfrak{q}=\mathfrak{q}'$.
- **Going up:** chains of primes in $A$ lift to chains in $B$ extending a given start.
- Hence $\dim A=\dim B$ (Krull dimension: the supremum of lengths of prime chains).

**Example.** $\mathbb{Z}\subseteq\mathbb{Z}[i]$ is integral. Over $(2)$ lies $(1+i)$ (ramified: $(2)=(1+i)^2$); over $p\equiv1\pmod4$ lie two primes $(a+bi)$, $(a-bi)$ with $p=a^2+b^2$ (split); over $p\equiv3\pmod4$ lies one prime $(p)$ (inert).

---

## 10. Noether normalisation and the Nullstellensatz

**Noether normalisation.** If $B$ is a finitely generated $k$-algebra, there are algebraically independent $y_1,\dots,y_d\in B$ such that $B$ is finite (integral and finitely generated as a module) over $k[y_1,\dots,y_d]$. Moreover $d=\dim B$. (Proof by a change of variables $x_i\mapsto x_i-x_n^{r_i}$ that makes a relation monic in $x_n$, then induction.)

**Zariski's lemma.** If a finitely generated $k$-algebra $L$ is a field, then $L$ is a finite extension of $k$. (By normalisation $L$ is integral over $k[y_1,\dots,y_d]$; by the field lemma the polynomial ring is a field, so $d=0$.)

**Weak Nullstellensatz.** If $k$ is algebraically closed, the maximal ideals of $k[x_1,\dots,x_n]$ are exactly $\mathfrak{m}_a=(x_1-a_1,\dots,x_n-a_n)$ for $a\in k^n$. Equivalently, if $I\subsetneq k[x_1,\dots,x_n]$ is a proper ideal then $V(I)=\lbrace a\in k^n:f(a)=0\ \forall f\in I\rbrace\ne\emptyset$.

*Proof.* If $\mathfrak{m}$ is maximal, $L=k[x]/\mathfrak{m}$ is a field, finite over $k$ by Zariski, hence equal to $k$. Let $a_i\in k$ be the image of $x_i$. Then $\mathfrak{m}_a\subseteq\mathfrak{m}$, and $\mathfrak{m}_a$ is maximal, so they are equal. $\square$

(For $k=\mathbb{C}$ there is a slicker proof: $L$ has countable dimension over $\mathbb{C}$, but if $t\in L$ were transcendental, the uncountably many elements $1/(t-a)$, $a\in\mathbb{C}$, would be linearly independent. See Problem 18.)

**Strong Nullstellensatz.** For $k$ algebraically closed and any ideal $I$, $I(V(I))=\sqrt I$.

*Proof (Rabinowitsch trick).* Let $f$ vanish on $V(I)$, $I=(g_1,\dots,g_m)$ (Hilbert basis theorem). In $k[x_1,\dots,x_n,t]$, the ideal $(g_1,\dots,g_m,1-tf)$ has no common zero, so by the weak form it is the whole ring: $1=\sum h_ig_i+h(1-tf)$. Substitute $t=1/f$ in $k(x)$ and clear denominators: $f^N=\sum\tilde h_ig_i\in I$. $\square$

**Dictionary.** For $k$ algebraically closed, $V$ and $I$ give inclusion-reversing bijections:

| Algebra ($k[x_1,\dots,x_n]$) | Geometry ($k^n$) |
|---|---|
| radical ideals | affine algebraic sets |
| prime ideals | irreducible algebraic sets (varieties) |
| maximal ideals | points |
| $k[x]/I$ (reduced) | regular functions on $V(I)$ |

Also: a finitely generated $k$-algebra is a **Jacobson ring**: every prime is an intersection of maximal ideals, so the nilradical equals the Jacobson radical.

---

## 11. Dedekind domains

A **discrete valuation ring** (DVR) is a local PID that is not a field; equivalently, a Noetherian local domain of dimension $1$ that is integrally closed. Every non-zero ideal is $(\pi^n)$ for a uniformiser $\pi$. Examples: $\mathbb{Z}_{(p)}$, $k[[t]]$, $k[x]_{(x)}$.

A **Dedekind domain** is a Noetherian, integrally closed domain of dimension $\le1$. Equivalently: a Noetherian domain whose localisations at non-zero primes are DVRs. Examples: PIDs; rings of integers $\mathcal{O}_K$ of number fields (they are Noetherian as finitely generated $\mathbb{Z}$-modules, integrally closed by definition, and of dimension $1$ by going up over $\mathbb{Z}$); coordinate rings of smooth affine curves.

**Main theorem.** In a Dedekind domain every non-zero ideal factors uniquely as a product of prime ideals. The fractional ideals form a group; modulo principal fractional ideals this is the **ideal class group** $\operatorname{Cl}(A)$, trivial iff $A$ is a PID iff $A$ is a UFD. For rings of integers, $\operatorname{Cl}$ is finite (Minkowski).

**Rings of integers of quadratic fields.** For squarefree $d\ne0,1$, the integral closure of $\mathbb{Z}$ in $\mathbb{Q}(\sqrt d)$ is $\mathbb{Z}[\sqrt d]$ if $d\equiv2,3\pmod4$ and $\mathbb{Z}[\frac{1+\sqrt d}2]$ if $d\equiv1\pmod4$.

**The classic example.** In $\mathbb{Z}[\sqrt{-5}]$, $6=2\cdot3=(1+\sqrt{-5})(1-\sqrt{-5})$ are two factorisations into irreducibles, so it is not a UFD. As ideals,
$$
(2)=\mathfrak{p}^2,\quad(3)=\mathfrak{q}\mathfrak{q}',\quad(1+\sqrt{-5})=\mathfrak{p}\mathfrak{q},\quad(1-\sqrt{-5})=\mathfrak{p}\mathfrak{q}',
$$
with $\mathfrak{p}=(2,1+\sqrt{-5})$, $\mathfrak{q}=(3,1+\sqrt{-5})$, $\mathfrak{q}'=(3,1-\sqrt{-5})$. Both factorisations of $6$ are the same ideal factorisation $\mathfrak{p}^2\mathfrak{q}\mathfrak{q}'$, grouped differently. $\mathfrak{p}$ is not principal; $\operatorname{Cl}\cong\mathbb{Z}/2$.

**How primes split.** For $K=\mathbb{Q}(\sqrt d)$ and an odd prime $p\nmid d$, $p$ splits if $d$ is a non-zero square mod $p$ and is inert otherwise; primes dividing the discriminant ramify. This is where quadratic reciprocity lives.

---

## 12. Representations of finite groups

Throughout, $G$ is a finite group and representations are on finite-dimensional complex vector spaces.

A **representation** is a homomorphism $\rho:G\to GL(V)$; equivalently a $\mathbb{C}[G]$-module. A **subrepresentation** is a $G$-invariant subspace; $V$ is **irreducible** if it has no subrepresentations other than $0$ and $V$. Morphisms are **$G$-maps** (intertwiners). Constructions: direct sums, tensor products ($g(v\otimes w)=gv\otimes gw$), duals, $\operatorname{Hom}(V,W)$ with $(g\varphi)(v)=g\varphi(g^{-1}v)$. The **regular representation** is $\mathbb{C}[G]$ acting on itself.

**Maschke's theorem.** Every subrepresentation $W\subseteq V$ has a $G$-invariant complement. Hence every representation is a direct sum of irreducibles.

*Proof.* Let $p:V\to W$ be any linear projection onto $W$. Average:
$$
\bar p=\frac1{\lvert G\rvert}\sum_{g\in G}gpg^{-1}.
$$
Then $\bar p$ is a $G$-map, maps $V$ into $W$, and is the identity on $W$ (for $w\in W$, $g^{-1}w\in W$, so $gpg^{-1}w=w$). So $\bar p$ is a $G$-equivariant projection onto $W$ and $\ker\bar p$ is an invariant complement. $\square$

The proof needs $\lvert G\rvert$ invertible in the field; in characteristic $p\mid\lvert G\rvert$ Maschke fails (modular representation theory). Over $\mathbb{C}$ one can also average an inner product to make $\rho$ unitary and take orthogonal complements; this version extends to compact groups.

**Schur's lemma.** If $V,W$ are irreducible and $\varphi:V\to W$ is a $G$-map, then $\varphi$ is $0$ or an isomorphism (kernel and image are subrepresentations). Over $\mathbb{C}$, every $G$-map $V\to V$ is a scalar (it has an eigenvalue $\lambda$, and $\varphi-\lambda$ is a non-injective $G$-map). Consequences: irreducible representations of abelian groups are $1$-dimensional; the centre acts by scalars on an irreducible representation.

**Characters.** $\chi_V(g)=\operatorname{tr}\rho(g)$. Properties: $\chi_V(1)=\dim V$; $\chi_V$ is a class function; $\chi_{V\oplus W}=\chi_V+\chi_W$; $\chi_{V\otimes W}=\chi_V\chi_W$; $\chi_{V^*}=\overline{\chi_V}$, and $\chi_V(g^{-1})=\overline{\chi_V(g)}$ because $\rho(g)$ has finite order, so its eigenvalues are roots of unity. The regular character is $\lvert G\rvert$ at $1$ and $0$ elsewhere.

On class functions define
$$
\langle\alpha,\beta\rangle=\frac1{\lvert G\rvert}\sum_{g\in G}\alpha(g)\overline{\beta(g)} .
$$

**Key computation.** For any representation $U$, the averaging map $e=\frac1{\lvert G\rvert}\sum_g\rho_U(g)$ is a projection onto the invariants $U^G$, so $\dim U^G=\operatorname{tr}e=\frac1{\lvert G\rvert}\sum_g\chi_U(g)$. Apply this to $U=\operatorname{Hom}(V,W)$, whose character is $\overline{\chi_V}\chi_W$ and whose invariants are the $G$-maps:
$$
\dim\operatorname{Hom}_G(V,W)=\langle\chi_W,\chi_V\rangle .
$$

**First orthogonality relation.** The irreducible characters are orthonormal: $\langle\chi_i,\chi_j\rangle=\delta_{ij}$ (by Schur, $\dim\operatorname{Hom}_G(V_i,V_j)=\delta_{ij}$).

*Consequences.*
- A representation is determined up to isomorphism by its character. The multiplicity of $V_i$ in $V$ is $\langle\chi_V,\chi_i\rangle$.
- $V$ is irreducible iff $\langle\chi_V,\chi_V\rangle=1$.
- $\mathbb{C}[G]\cong\bigoplus_iV_i^{\oplus\dim V_i}$, so $\sum_i(\dim V_i)^2=\lvert G\rvert$.
- **The irreducible characters form a basis of the class functions**, so the number of irreducible representations equals the number of conjugacy classes. (If a class function $f$ is orthogonal to every $\chi_i$, then $\sum_g\overline{f(g)}\rho(g)$ is a $G$-map on each $V_i$, hence a scalar, with trace $\lvert G\rvert\langle\chi_i,f\rangle=0$, hence zero; applying it to $1\in\mathbb{C}[G]$ gives $f=0$.)

**Second (column) orthogonality.** $\sum_i\chi_i(g)\overline{\chi_i(h)}=\lvert C_G(g)\rvert$ if $g,h$ are conjugate and $0$ otherwise.

**Further facts (statements).** $\dim V_i$ divides $\lvert G\rvert$ (via algebraic integers). **Artin–Wedderburn:** $\mathbb{C}[G]\cong\prod_iM_{d_i}(\mathbb{C})$. **Burnside's theorem:** groups of order $p^aq^b$ are solvable (proved with character theory). The one-dimensional representations are the homomorphisms $G\to\mathbb{C}^\times$, which factor through $G/[G,G]$; there are $[G:[G,G]]$ of them.

**Induction.** For $H\le G$ and a representation $W$ of $H$, $\operatorname{Ind}_H^GW=\mathbb{C}[G]\otimes_{\mathbb{C}[H]}W$, of dimension $[G:H]\dim W$, with character
$$
\chi_{\operatorname{Ind}W}(g)=\frac1{\lvert H\rvert}\sum_{x\in G,\ x^{-1}gx\in H}\chi_W(x^{-1}gx).
$$
**Frobenius reciprocity:** $\operatorname{Hom}_G(\operatorname{Ind}_H^GW,V)\cong\operatorname{Hom}_H(W,\operatorname{Res}_H^GV)$, i.e. $\langle\operatorname{Ind}\chi_W,\chi_V\rangle_G=\langle\chi_W,\operatorname{Res}\chi_V\rangle_H$. (This is the Hom–tensor adjunction of §3 again.)

**Character tables.**

$S_3$ (classes: identity; 3 transpositions; 2 three-cycles):

| | $1$ | $(12)$ | $(123)$ |
|---|---|---|---|
| trivial | 1 | 1 | 1 |
| sign | 1 | −1 | 1 |
| standard | 2 | 0 | −1 |

$A_4$ (classes: identity; 3 double transpositions; 4 elements conjugate to $(123)$; 4 conjugate to $(132)$; $\omega=e^{2\pi i/3}$):

| | $1$ | $(12)(34)$ | $(123)$ | $(132)$ |
|---|---|---|---|---|
| $\chi_1$ | 1 | 1 | 1 | 1 |
| $\chi_2$ | 1 | 1 | $\omega$ | $\omega^2$ |
| $\chi_3$ | 1 | 1 | $\omega^2$ | $\omega$ |
| $\chi_4$ | 3 | −1 | 0 | 0 |

(The linear characters come from $A_4/V_4\cong\mathbb{Z}/3$; $\chi_4$ is forced by $1+1+1+d^2=12$ and column orthogonality; it is the restriction of the $3$-dimensional rotation representation of the tetrahedron.)

---

## 13. Common pitfalls

1. **Treating every element of $M\otimes N$ as a pure tensor**, or defining a map on $M\otimes N$ by a formula on pure tensors without checking bilinearity.
2. **Forgetting which ring you tensor over.** $\mathbb{C}\otimes_\mathbb{C}\mathbb{C}\cong\mathbb{C}$ but $\mathbb{C}\otimes_\mathbb{R}\mathbb{C}\cong\mathbb{C}^2$.
3. **Assuming tensoring preserves injections.** It does only for flat modules.
4. **Dropping the extra $u$ in the definition of localisation** when $A$ has zero divisors.
5. **Applying Nakayama to modules that are not finitely generated.**
6. **Confusing "integral" (algebraic with monic equation over a ring) with "algebraic".** $\frac12$ is algebraic over $\mathbb{Z}$ but not integral.
7. **Using the Nullstellensatz over non-algebraically-closed fields.** $(x^2+1)\subseteq\mathbb{R}[x]$ is maximal and $V(x^2+1)=\emptyset$ in $\mathbb{R}$.
8. **Assuming the character table determines the group.** $D_4$ and $Q_8$ have the same table (Problem 20).
9. **Using Maschke in characteristic dividing $\lvert G\rvert$.** $\mathbb{Z}/p$ acting on $\mathbb{F}_p^2$ by $\begin{pmatrix}1&1\\0&1\end{pmatrix}$ has an invariant line with no invariant complement.

---

## 14. Connections forward

- **[3.4 Algebraic topology](../3.4-algebraic-topology/):** chain complexes are sequences of modules; the snake lemma gives long exact sequences in homology; $\operatorname{Tor}$ and $\operatorname{Ext}$ appear in the universal coefficient and Künneth theorems; homology is a functor and the Eilenberg–Steenrod axioms are categorical.
- **Algebraic geometry:** $\operatorname{Spec}$, localisation and the Nullstellensatz are the foundations of schemes; Noether normalisation gives dimension theory; flatness describes families; Dedekind domains are the algebra of smooth curves.
- **Algebraic number theory:** rings of integers, splitting of primes, class groups, and the finiteness of the class number; local fields via completion of DVRs.
- **[3.5 Smooth manifolds](../3.5-smooth-manifolds/) and Lie theory:** tensor products and exterior powers of vector spaces become tensor fields and differential forms; representation theory of compact Lie groups (Peter–Weyl) extends §12, with averaging over $G$ replaced by integration against Haar measure (compare [3.1](../3.1-measure-integration/)).
- **[3.2 Functional analysis](../3.2-functional-analysis/):** Schur's lemma and orthogonality reappear for unitary representations on Hilbert spaces; the group algebra $\mathbb{C}[G]$ becomes $L^1(G)$ and the C\*-algebra of $G$.
