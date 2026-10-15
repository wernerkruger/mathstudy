# 1.4 Abstract Algebra I: Problems

Solutions are in [solutions.md](solutions.md). Rings are commutative with $1$ unless stated otherwise.

## Warm-up

**1.** Which of the following are groups? Give a reason for each answer.
(a) $(\mathbb{Z},-)$, the integers under subtraction.
(b) $(\mathbb{Q}\setminus\lbrace0\rbrace,\times)$.
(c) $\lbrace 1,-1,i,-i\rbrace\subset\mathbb{C}$ under multiplication.
(d) $\lbrace A\in M_2(\mathbb{R}):\det A=2\rbrace$ under matrix multiplication.
(e) $\lbrace 1,2,\dots,n-1\rbrace$ under multiplication mod $n$, for $n\ge2$.

**2.** List the cycle types in $S_4$. For each type, give the number of elements, their order and their sign. Check that the counts add up to 24.

**3.** List all subgroups of $\mathbb{Z}_{12}$ and all generators of $\mathbb{Z}_{12}$.

**4.** Prove that if every element of a group $G$ satisfies $g^2=e$, then $G$ is abelian.

**5.** (a) Prove that $[k]\in\mathbb{Z}_n$ is a unit iff $\gcd(k,n)=1$, and deduce that $\mathbb{Z}_n$ is a field iff $n$ is prime.
(b) List $U(15)$, find the order of each element, and decide whether $U(15)$ is cyclic. Which group of the form $\mathbb{Z}_a\times\mathbb{Z}_b$ is it isomorphic to?

**6.** Prove that $\mathbb{Z}_m\times\mathbb{Z}_n$ is cyclic iff $\gcd(m,n)=1$.

## Core

**7.** Prove Lagrange's theorem. Deduce (a) every group of prime order is cyclic, and (b) Fermat's little theorem: $a^{p-1}\equiv1\pmod p$ when $p\nmid a$.

**8.** Let $\varphi:G\to H$ be a homomorphism. Prove that $\ker\varphi\trianglelefteq G$, and prove the First Isomorphism Theorem.

**9.** Prove that every subgroup of index 2 is normal. Find a subgroup of $S_3$ that is not normal.

**10.** Prove that $SL_n(\mathbb{R})\trianglelefteq GL_n(\mathbb{R})$ and that $GL_n(\mathbb{R})/SL_n(\mathbb{R})\cong\mathbb{R}^\times$.

**11.** Identify each quotient as a familiar group, with proof.
(a) $(\mathbb{Z}\times\mathbb{Z})/\langle(1,1)\rangle$.
(b) $\mathbb{R}/\mathbb{Z}$.
(c) $(\mathbb{Z}_4\times\mathbb{Z}_2)/\langle(2,0)\rangle$.

**12.** Use the orbit–stabiliser theorem to find the order of (a) the rotation group of a regular tetrahedron and (b) the rotation group of a cube.

**13.** Let $p$ be prime. Prove that every group of order $p^2$ is abelian. You may use the fact that $p$-groups have nontrivial centre, but prove that $G/Z(G)$ cyclic implies $G$ abelian.

**14.** (a) Prove that $\sigma(a_1\,\dots\,a_k)\sigma^{-1}=(\sigma(a_1)\,\dots\,\sigma(a_k))$.
(b) Find the size of the conjugacy class of $(1\,2)(3\,4)$ in $S_4$ and the order of its centraliser.
(c) Show that $A_4$ has no subgroup of order 6.

**15.** (a) Prove that every group of order 15 is cyclic.
(b) Prove that there is no simple group of order 20.

**16.** Prove that there is no simple group of order 30.

**17.** Let $R$ be a commutative ring and $I$ an ideal.
(a) Prove that $R/I$ is an integral domain iff $I$ is prime, and that $R/I$ is a field iff $I$ is maximal.
(b) Show that $(x)$ is a prime ideal of $\mathbb{Z}[x]$ that is not maximal.

**18.** Prove that the ideal $(2,x)\subset\mathbb{Z}[x]$ is not principal. Identify $\mathbb{Z}[x]/(2,x)$.

**19.** In $\mathbb{Z}[i]$:
(a) Factor $2$, $5$ and $13$ into irreducibles.
(b) Prove that $3$ is irreducible in $\mathbb{Z}[i]$.
(c) Use the Euclidean algorithm to find $\gcd(11+3i,\,1+8i)$.

**20.** (a) Prove that $x^3-2$ is irreducible over $\mathbb{Q}$.
(b) Prove that $x^4+1$ is irreducible over $\mathbb{Q}$.
(c) Factor $x^4+1$ over $\mathbb{F}_2$.

**21.** Show that $f=x^2+x+1$ is irreducible over $\mathbb{F}_2$. Write down the addition and multiplication tables of $\mathbb{F}_2[x]/(f)$. Show that the multiplicative group is cyclic of order 3.

**22.** Let $R$ be a PID.
(a) Prove that every nonzero prime ideal of $R$ is maximal.
(b) Deduce that for a field $F$ and nonconstant $f\in F[x]$, $F[x]/(f)$ is a field iff $f$ is irreducible.

## Challenge

**23.** Let $|G|=2m$ with $m$ odd. Using the left regular representation $G\to\operatorname{Sym}(G)$ and the sign homomorphism, prove that $G$ has a normal subgroup of index 2. Deduce that no group of order $2m$, with $m>1$ odd, is simple.

**24.** Prove that $A_5$ is simple. First determine its conjugacy classes and their sizes, and explain carefully which $S_5$-classes split in $A_5$.

**25.** In $R=\mathbb{Z}[\sqrt{-5}]$, with $N(a+b\sqrt{-5})=a^2+5b^2$:
(a) Show that $N$ is multiplicative and that the units are $\pm1$.
(b) Show that $2$, $3$, $1+\sqrt{-5}$ and $1-\sqrt{-5}$ are irreducible.
(c) Deduce that $R$ is not a UFD, and that $2$ is irreducible but not prime.
