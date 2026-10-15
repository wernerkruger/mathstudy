# 3.3 Graduate algebra: problems

Spend at least 30 minutes on each problem (45 minutes on Qualifying-exam level problems) before reading [solutions.md](solutions.md). Write full proofs. Rings are commutative with $1$; all representations are finite-dimensional over $\mathbb{C}$; $G$ is a finite group.

## Warm-up

**1.** Prove that $\mathbb{Z}/m\otimes_\mathbb{Z}\mathbb{Z}/n\cong\mathbb{Z}/d$, where $d=\gcd(m,n)$.

**2.** Prove that $\mathbb{Q}\otimes_\mathbb{Z}\mathbb{Q}/\mathbb{Z}=0$ and that $\mathbb{Q}\otimes_\mathbb{Z}\mathbb{Q}\cong\mathbb{Q}$.

**3.** (a) Prove that $\operatorname{Hom}_\mathbb{Z}(\mathbb{Z}/m,\mathbb{Z}/n)\cong\mathbb{Z}/\gcd(m,n)$.
(b) Prove that $\operatorname{Hom}_\mathbb{Z}(\mathbb{Q},\mathbb{Z})=0$.

**4.** (a) Show that $\mathbb{Z}$ is not an injective $\mathbb{Z}$-module.
(b) Using Baer's criterion, show that $\mathbb{Q}$ is an injective $\mathbb{Z}$-module.

**5.** Compute the character table of $S_3$, and use it to decompose the permutation representation of $S_3$ on $\mathbb{C}^3$ into irreducibles.

**6.** (a) In any category, show that if $(P,p_1,p_2)$ and $(P',p_1',p_2')$ are both products of $X_1$ and $X_2$, there is a unique isomorphism $u:P'\to P$ with $p_iu=p_i'$.
(b) Show that in the category of commutative rings, $A\otimes_\mathbb{Z}B$ with the maps $a\mapsto a\otimes1$ and $b\mapsto1\otimes b$ is a coproduct of $A$ and $B$.

## Core

**7.** (Splitting lemma.) Let $0\to M'\xrightarrow{f}M\xrightarrow{g}M''\to0$ be a short exact sequence of $A$-modules. Prove that the following are equivalent:
(a) there is $r:M\to M'$ with $rf=\mathrm{id}_{M'}$;
(b) there is $s:M''\to M$ with $gs=\mathrm{id}_{M''}$;
(c) there is an isomorphism $\theta:M'\oplus M''\to M$ with $\theta(x,0)=f(x)$ and $g\theta(x,y)=y$.
Give an example of a short exact sequence of $\mathbb{Z}$-modules that does not split.

**8.** Prove that $\operatorname{Hom}_A(M,-)$ is left exact, and give an example showing that it is not exact.

**9.** Prove that $M\otimes_A-$ is right exact (you may use the Hom–tensor adjunction), and give an example showing that it is not left exact.

**10.** (a) Prove that an $A$-module $P$ is projective (every surjection onto $P$ splits; equivalently maps out of $P$ lift through surjections) if and only if $P$ is a direct summand of a free module.
(b) Show that $\mathbb{Z}/2$, viewed as a $\mathbb{Z}/6$-module, is projective but not free.

**11.** Let $S\subseteq A$ be multiplicative. Prove that if $M'\xrightarrow{f}M\xrightarrow{g}M''$ is exact then $S^{-1}M'\to S^{-1}M\to S^{-1}M''$ is exact. Deduce that $S^{-1}A$ is a flat $A$-module. (You may use $S^{-1}A\otimes_AM\cong S^{-1}M$.)

**12.** (Nakayama.) Let $(A,\mathfrak{m},k)$ be a local ring and $M$ a finitely generated $A$-module.
(a) Prove that if $\mathfrak{m}M=M$ then $M=0$.
(b) Prove that $x_1,\dots,x_n\in M$ generate $M$ if and only if their images span $M/\mathfrak{m}M$ over $k$.

**13.** Prove that the nilradical of $A$ equals the intersection of all prime ideals of $A$.

**14.** (a) Describe $\operatorname{Spec}\mathbb{Z}$ and its closed sets. Which points are closed? What is the closure of $\lbrace(0)\rbrace$?
(b) Prove that $\operatorname{Spec}A$ is quasi-compact for every ring $A$.

**15.** (Hilbert basis theorem.) Prove that if $A$ is Noetherian then so is $A[x]$.

**16.** Let $R=\mathbb{Z}[\sqrt{-5}]$.
(a) Show that $2$, $3$, $1+\sqrt{-5}$, $1-\sqrt{-5}$ are irreducible in $R$ and that $R$ is not a UFD.
(b) Let $\mathfrak{p}=(2,1+\sqrt{-5})$, $\mathfrak{q}=(3,1+\sqrt{-5})$, $\mathfrak{q}'=(3,1-\sqrt{-5})$. Show that these ideals are maximal, that $\mathfrak{p}^2=(2)$, $\mathfrak{q}\mathfrak{q}'=(3)$, $\mathfrak{p}\mathfrak{q}=(1+\sqrt{-5})$, $\mathfrak{p}\mathfrak{q}'=(1-\sqrt{-5})$, and hence $(6)=\mathfrak{p}^2\mathfrak{q}\mathfrak{q}'$.
(c) Show that $\mathfrak{p}$ is not principal.

**17.** Let $d\ne0,1$ be a squarefree integer. Prove that the integral closure of $\mathbb{Z}$ in $\mathbb{Q}(\sqrt d)$ is $\mathbb{Z}[\sqrt d]$ if $d\equiv2,3\pmod4$, and $\mathbb{Z}\left[\frac{1+\sqrt d}2\right]$ if $d\equiv1\pmod4$. (You may use that the minimal polynomial over $\mathbb{Q}$ of an element integral over $\mathbb{Z}$ has integer coefficients.)

**18.** Prove that every maximal ideal of $\mathbb{C}[x_1,\dots,x_n]$ has the form $(x_1-a_1,\dots,x_n-a_n)$, using the following outline: if $\mathfrak{m}$ is maximal, $L=\mathbb{C}[x_1,\dots,x_n]/\mathfrak{m}$ is a field of countable dimension over $\mathbb{C}$; show that $L$ cannot contain an element transcendental over $\mathbb{C}$.

**19.** Prove that $G$ is abelian if and only if every irreducible representation of $G$ is one-dimensional.

**20.** Compute the character tables of the dihedral group $D_4$ of order $8$ and the quaternion group $Q_8$. Show that they are the same (after suitably matching conjugacy classes), and that $D_4\not\cong Q_8$.

## Qualifying-exam level

**21.** Let $A$ be a Noetherian ring and $\varphi:A\to A$ a surjective ring homomorphism. Prove that $\varphi$ is injective.

**22.** Let $R=C([0,1],\mathbb{R})$ be the ring of continuous real functions on $[0,1]$.
(a) Prove that $R$ is not Noetherian.
(b) Prove that the maximal ideals of $R$ are exactly $\mathfrak{m}_x=\lbrace f:f(x)=0\rbrace$, $x\in[0,1]$.

**23.** Prove that $\mathbb{C}\otimes_\mathbb{R}\mathbb{C}\cong\mathbb{C}\times\mathbb{C}$ as rings.

**24.** Let $A$ be an abelian subgroup of $G$ and $V$ an irreducible representation of $G$. Prove that $\dim V\le[G:A]$.

**25.** Prove that the number of one-dimensional representations of $G$ (up to isomorphism) equals $[G:G']$, where $G'=[G,G]$ is the commutator subgroup. Use this to find the degrees of the irreducible representations of $S_4$.
