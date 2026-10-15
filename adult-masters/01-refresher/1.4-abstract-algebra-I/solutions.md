# 1.4 Abstract Algebra I: Solutions

These are solutions to [problems.md](problems.md).

## Warm-up

**1.**
(a) **No.** Subtraction is not associative: $(1-1)-1=-1$ but $1-(1-1)=1$.
(b) **Yes.** Multiplication is associative and closed on nonzero rationals, $1$ is the identity, and $1/q$ is the inverse of $q$.
(c) **Yes.** The set is closed under multiplication: it is $\langle i\rangle$, cyclic of order 4. It contains $1$, and the inverses are $1^{-1}=1$, $(-1)^{-1}=-1$ and $i^{-1}=-i$.
(d) **No.** It is not closed: $\det(AB)=4$. It also does not contain the identity, since $\det I=1$.
(e) **A group iff $n$ is prime.** If $n$ is prime, $\mathbb{Z}_n$ is a field, so the nonzero classes form a group under multiplication. If $n=ab$ with $1<a,b<n$, then $a\cdot b\equiv0$, which is not in the set, so the set is not closed. (For $n=2$ the set is $\lbrace 1\rbrace$, the trivial group.)

**2.**

| Cycle type | Example | Count | Order | Sign |
|---|---|---|---|---|
| $1^4$ (identity) | $e$ | 1 | 1 | $+$ |
| $2\,1^2$ (transposition) | $(1\,2)$ | $\binom42=6$ | 2 | $-$ |
| $3\,1$ (3-cycle) | $(1\,2\,3)$ | $4\cdot2=8$ | 3 | $+$ |
| $4$ (4-cycle) | $(1\,2\,3\,4)$ | $3!=6$ | 4 | $-$ |
| $2^2$ (double transposition) | $(1\,2)(3\,4)$ | $3$ | 2 | $+$ |

The counts: there are 4 ways to choose the three points of a 3-cycle and 2 cyclic orders, giving 8. A 4-cycle can be written starting at 1, leaving $3!$ orders. There are 3 ways to split $\lbrace1,2,3,4\rbrace$ into two pairs. Total: $1+6+8+6+3=24$. The even permutations number $1+8+3=12=|A_4|$.

**3.** $\mathbb{Z}_{12}$ is cyclic, so it has exactly one subgroup for each divisor $d$ of 12, namely $\langle 12/d\rangle$:
- $d=1$: $\lbrace0\rbrace$
- $d=2$: $\langle6\rangle=\lbrace0,6\rbrace$
- $d=3$: $\langle4\rangle=\lbrace0,4,8\rbrace$
- $d=4$: $\langle3\rangle=\lbrace0,3,6,9\rbrace$
- $d=6$: $\langle2\rangle=\lbrace0,2,4,6,8,10\rbrace$
- $d=12$: $\mathbb{Z}_{12}$

The generators are the $k$ with $\gcd(k,12)=1$: $1,5,7,11$.

**4.** If $g^2=e$, then $g=g^{-1}$, for every $g$. So for any $a,b$: $ab=(ab)^{-1}=b^{-1}a^{-1}=ba$.

**5.** (a) If $\gcd(k,n)=1$, Bézout gives $ka+nb=1$ for some integers $a,b$, so $[k][a]=[1]$. Conversely, if $[k][a]=[1]$, then $ka-1=nb$ for some $b$, so any common divisor of $k$ and $n$ divides $1$.

So every nonzero element of $\mathbb{Z}_n$ is a unit iff every $k$ with $1\le k\le n-1$ is coprime to $n$, i.e. iff $n$ is prime.

(b) $U(15)=\lbrace1,2,4,7,8,11,13,14\rbrace$, of order $\varphi(15)=8$. Orders, computed mod 15:
- $|1|=1$.
- $2,4,8,1$: $|2|=4$.
- $4^2=16=1$: $|4|=2$.
- $7^2=49=4$, so $|7|=4$.
- $8^2=64=4$, so $|8|=4$.
- $11^2=121=1$: $|11|=2$.
- $13^2=169=4$, so $|13|=4$.
- $14^2=196=1$: $|14|=2$.

No element has order 8, so $U(15)$ is **not cyclic**. It is abelian of order 8 with an element of order 4 and is not cyclic. Among $\mathbb{Z}_8$, $\mathbb{Z}_4\times\mathbb{Z}_2$ and $\mathbb{Z}_2^3$, only $\mathbb{Z}_4\times\mathbb{Z}_2$ fits. So $U(15)\cong\mathbb{Z}_2\times\mathbb{Z}_4$. This also follows from CRT: $U(15)\cong U(3)\times U(5)\cong\mathbb{Z}_2\times\mathbb{Z}_4$.

**6.** In a direct product, $|(a,b)|=\mathrm{lcm}(|a|,|b|)$.

(⇐) If $\gcd(m,n)=1$, then $|(1,1)|=\mathrm{lcm}(m,n)=mn$, which is the order of the group. So $(1,1)$ generates.

(⇒) If $d=\gcd(m,n)>1$, then every element has order dividing $\mathrm{lcm}(m,n)=mn/d<mn$. So no element generates.

## Core

**7.** *Lagrange.* Let $H\le G$ with $G$ finite.
- The relation $a\sim b\iff a^{-1}b\in H$ is an equivalence relation. Reflexive: $e\in H$. Symmetric: inverses. Transitive: closure.
- Its classes are the left cosets $aH$, so the cosets partition $G$.
- Each coset has $|H|$ elements, because $h\mapsto ah$ is a bijection $H\to aH$ with inverse $x\mapsto a^{-1}x$.

So $|G|=[G:H]\cdot|H|$.

(a) If $|G|=p$ is prime and $g\neq e$, then $|\langle g\rangle|$ divides $p$ and is greater than 1. So it equals $p$, and $G=\langle g\rangle$.

(b) $U(p)=\mathbb{Z}_p^\times$ has order $p-1$. For $[a]\in U(p)$, $|[a]|$ divides $p-1$, so $[a]^{p-1}=[1]$, i.e. $a^{p-1}\equiv1\pmod p$.

**8.** Let $K=\ker\varphi$. It is a subgroup: $\varphi(e)=e$, and if $a,b\in K$ then $\varphi(ab^{-1})=\varphi(a)\varphi(b)^{-1}=e$. It is normal: for $g\in G$ and $k\in K$, $\varphi(gkg^{-1})=\varphi(g)\,e\,\varphi(g)^{-1}=e$.

*First Isomorphism Theorem.* Define $\bar\varphi:G/K\to\mathrm{im}\,\varphi$ by $\bar\varphi(gK)=\varphi(g)$.
- *Well defined and injective:* $aK=bK\iff a^{-1}b\in K\iff\varphi(a^{-1}b)=e\iff\varphi(a)=\varphi(b)$. The forward direction gives well-definedness, and the backward direction gives injectivity.
- *Homomorphism:* $\bar\varphi(aK\,bK)=\bar\varphi(abK)=\varphi(ab)=\varphi(a)\varphi(b)$.
- *Surjective onto $\mathrm{im}\,\varphi$:* immediate from the definition.

**9.** Let $[G:H]=2$. The left cosets are $H$ and $G\setminus H$, and so are the right cosets. If $g\in H$, then $gH=H=Hg$. If $g\notin H$, then $gH=G\setminus H=Hg$. So $gH=Hg$ for all $g$, which is equivalent to normality.

In $S_3$, let $H=\lbrace e,(1\,2)\rbrace$. Then $(1\,3)(1\,2)(1\,3)^{-1}=(3\,2)\notin H$, using the conjugation formula with $\sigma=(1\,3)$. So $H$ is not normal. Its index is 3, which is consistent with the first part.

**10.** $\det:GL_n(\mathbb{R})\to\mathbb{R}^\times$ is a homomorphism, since $\det(AB)=\det A\det B$. It is surjective: $\det\mathrm{diag}(t,1,\dots,1)=t$. Its kernel is $SL_n(\mathbb{R})$, which is therefore normal by Problem 8. The First Isomorphism Theorem gives $GL_n(\mathbb{R})/SL_n(\mathbb{R})\cong\mathbb{R}^\times$.

**11.**
(a) $\varphi:\mathbb{Z}\times\mathbb{Z}\to\mathbb{Z}$, $(a,b)\mapsto a-b$, is a surjective homomorphism: $(n,0)\mapsto n$. Its kernel is $\lbrace(a,a)\rbrace=\langle(1,1)\rangle$. So the quotient is $\cong\mathbb{Z}$.

(b) $\varphi:\mathbb{R}\to S^1=\lbrace z\in\mathbb{C}:|z|=1\rbrace$, $t\mapsto e^{2\pi it}$, is a homomorphism from $(\mathbb{R},+)$ to $(S^1,\times)$. It is surjective, and its kernel is $\mathbb{Z}$. So $\mathbb{R}/\mathbb{Z}\cong S^1$, the circle group.

(c) $\varphi:\mathbb{Z}_4\times\mathbb{Z}_2\to\mathbb{Z}_2\times\mathbb{Z}_2$, $(a,b)\mapsto(a\bmod2,\,b)$. This is well defined because $2\mid4$, and it is a surjective homomorphism. Its kernel is $\lbrace(0,0),(2,0)\rbrace=\langle(2,0)\rangle$. So the quotient is $\cong\mathbb{Z}_2\times\mathbb{Z}_2$. It is not $\mathbb{Z}_4$, because every element is killed by 2.

**12.** (a) The rotation group $T$ of a regular tetrahedron acts on the 4 vertices.

*The action is transitive.* Let $v,w$ be distinct vertices and let $u$ be a third vertex. Rotation by $\pm120°$ about the axis through $u$ and the centre of the opposite face cyclically permutes the other three vertices, which include $v$ and $w$. One of these two rotations takes $v$ to $w$.

*The stabiliser of a vertex $v$* consists of rotations about the axis through $v$ and the centre of the opposite face: angles $0°$, $120°$ and $240°$. That is 3 elements.

So $|T|=4\cdot3=12$. In fact $T\cong A_4$.

(b) The rotation group of the cube acts transitively on the 6 faces. Rotations by $90°$ about the three face axes take any face to an adjacent face, and two such steps reach the opposite face. The stabiliser of a face is the 4 rotations about the axis through its centre. So the group has order $6\cdot4=24$.

**13.** *Lemma.* If $G/Z(G)$ is cyclic, then $G$ is abelian.

*Proof.* Let $G/Z=\langle gZ\rangle$, where $Z=Z(G)$. Then every element of $G$ has the form $g^iz$ with $z\in Z$. For $x=g^iz_1$ and $y=g^jz_2$:
$$
xy=g^{i+j}z_1z_2=yx,
$$
because $z_1,z_2$ are central and powers of $g$ commute with each other.

*Main proof.* Let $|G|=p^2$. Then $Z(G)\neq\lbrace e\rbrace$, so $|Z(G)|\in\lbrace p,p^2\rbrace$. If $|Z(G)|=p$, then $|G/Z(G)|=p$, so $G/Z(G)$ is cyclic, and the lemma says $G$ is abelian. But then $Z(G)=G$ has order $p^2$, a contradiction. Hence $Z(G)=G$, and $G$ is abelian. (In fact $G\cong\mathbb{Z}_{p^2}$ or $\mathbb{Z}_p\times\mathbb{Z}_p$.)

**14.** (a) Let $\tau=\sigma(a_1\,\dots\,a_k)\sigma^{-1}$.
- $\tau(\sigma(a_i))=\sigma(a_1\,\dots\,a_k)(a_i)=\sigma(a_{i+1})$, with indices mod $k$.
- If $x\notin\lbrace\sigma(a_1),\dots,\sigma(a_k)\rbrace$, then $\sigma^{-1}(x)\notin\lbrace a_i\rbrace$ is fixed by the cycle, so $\tau(x)=x$.

So $\tau=(\sigma(a_1)\,\dots\,\sigma(a_k))$. Applying this to each cycle of a disjoint-cycle decomposition shows that conjugation preserves cycle type. Conversely, any two permutations of the same cycle type are conjugate: choose $\sigma$ to send one cycle decomposition to the other, entry by entry.

(b) The class of $(1\,2)(3\,4)$ is all double transpositions: $\lbrace(1\,2)(3\,4),(1\,3)(2\,4),(1\,4)(2\,3)\rbrace$, of size 3. By orbit–stabiliser, $|C_{S_4}((1\,2)(3\,4))|=24/3=8$. It is a dihedral group of order 8 and a Sylow 2-subgroup of $S_4$.

(c) Suppose $H\le A_4$ with $|H|=6$. Then $[A_4:H]=2$, so $H\trianglelefteq A_4$, and $A_4/H$ has order 2. So for every $g\in A_4$, $(gH)^2=H$, i.e. $g^2\in H$.

If $\sigma$ is a 3-cycle, then $\sigma=\sigma^4=(\sigma^2)^2\in H$. So all eight 3-cycles lie in $H$. That is impossible, since $|H|=6$.

**15.** (a) $15=3\cdot5$. $n_5$ divides 3 and $n_5\equiv1\pmod5$, so $n_5=1$. $n_3$ divides 5 and $n_3\equiv1\pmod3$, so $n_3=1$. Let $P$ (order 3) and $Q$ (order 5) be the Sylow subgroups. Both are normal.
- $P\cap Q=\lbrace e\rbrace$, by Lagrange.
- $|PQ|=15$, so $PQ=G$.
- For $x\in P$ and $y\in Q$, the commutator $xyx^{-1}y^{-1}$ lies in $P$ (because $Q$ is normal, $yx^{-1}y^{-1}\in P$) and in $Q$ (because $P$ is normal, $xyx^{-1}\in Q$). So it is $e$, and $xy=yx$.

Hence $G\cong P\times Q\cong\mathbb{Z}_3\times\mathbb{Z}_5\cong\mathbb{Z}_{15}$, by Problem 6.

(b) $|G|=20=2^2\cdot5$. $n_5$ divides 4 and $n_5\equiv1\pmod5$, so $n_5=1$. The unique Sylow 5-subgroup is normal of order 5, which is neither $1$ nor $20$. So $G$ is not simple.

**16.** $|G|=30=2\cdot3\cdot5$.
- $n_5$ divides 6 and $n_5\equiv1\pmod5$, so $n_5\in\lbrace1,6\rbrace$.
- $n_3$ divides 10 and $n_3\equiv1\pmod3$, so $n_3\in\lbrace1,10\rbrace$.

Suppose $G$ is simple. Then $n_5=6$ and $n_3=10$. Distinct subgroups of prime order meet only in $e$. So there are $6\cdot4=24$ elements of order 5 and $10\cdot2=20$ elements of order 3. That is $44>30$ elements, a contradiction. So $n_3=1$ or $n_5=1$, and $G$ has a proper nontrivial normal subgroup.

**17.** (a) *Prime.* $R/I$ is nonzero iff $I\neq R$. In $R/I$, $(a+I)(b+I)=0+I$ iff $ab\in I$. So "no zero divisors in $R/I$" says exactly: $ab\in I\Rightarrow a\in I$ or $b\in I$.

*Maximal.* Suppose $I$ is maximal and $a\notin I$. Then $I+(a)$ is an ideal strictly containing $I$, so it equals $R$. Write $1=i+ra$ with $i\in I$. Then $(r+I)(a+I)=1+I$, so every nonzero element of $R/I$ is invertible. Also $I\neq R$, so $1\neq0$ in $R/I$, and $R/I$ is a field.

Conversely, suppose $R/I$ is a field and $J\supsetneq I$ is an ideal. Pick $a\in J\setminus I$. There is $r$ with $ra-1\in I\subseteq J$. Since $ra\in J$, we get $1\in J$, so $J=R$. Hence $I$ is maximal.

(b) Evaluation at $0$, $\mathbb{Z}[x]\to\mathbb{Z}$, $f\mapsto f(0)$, is a surjective ring homomorphism. Its kernel is $(x)$: $f(0)=0$ iff the constant term is $0$ iff $x\mid f$. So $\mathbb{Z}[x]/(x)\cong\mathbb{Z}$. This is an integral domain but not a field, so $(x)$ is prime but not maximal. Explicitly, $(x)\subsetneq(2,x)\subsetneq\mathbb{Z}[x]$.

**18.** Suppose $(2,x)=(f)$.
- Since $2\in(f)$, $f$ divides $2$ in $\mathbb{Z}[x]$. Degrees add, so $f$ is a constant, and $f\in\lbrace\pm1,\pm2\rbrace$.
- If $f=\pm2$, then $x\in(2)$, which is false: the coefficient $1$ is odd.
- If $f=\pm1$, then $1\in(2,x)$, so $1=2g(x)+xh(x)$. Comparing constant terms gives $1=2g(0)$, which is impossible in $\mathbb{Z}$.

So $(2,x)$ is not principal, and $\mathbb{Z}[x]$ is not a PID.

The map $\mathbb{Z}[x]\to\mathbb{F}_2$, $f\mapsto f(0)\bmod 2$, is a surjective ring homomorphism. Its kernel is $\lbrace f: f(0)\text{ even}\rbrace$. Any such $f$ can be written $f=f(0)+xg$, which lies in $(2,x)$; and $(2,x)$ is clearly inside the kernel. So $\mathbb{Z}[x]/(2,x)\cong\mathbb{F}_2$, and $(2,x)$ is maximal.

**19.** Use $N(a+bi)=a^2+b^2$. It is multiplicative, and the units are the elements of norm 1: $\pm1,\pm i$. *Criterion:* if $N(z)$ is a prime number, then $z$ is irreducible. If $z=uv$, then $N(u)N(v)$ is prime, so one of $u,v$ has norm 1 and is a unit.

(a)
- $2=(1+i)(1-i)=-i(1+i)^2$.
- $5=(2+i)(2-i)$.
- $13=(3+2i)(3-2i)$.

All the factors have prime norm (2, 5 or 13), so they are irreducible. Note that $1-i=-i(1+i)$ is an associate of $1+i$.

(b) Suppose $3=uv$ with neither factor a unit. Then $N(u)N(v)=9$ and $N(u),N(v)>1$, so $N(u)=3$. But $a^2+b^2=3$ has no integer solutions, since squares are $0,1,4,\dots$. So $3$ is irreducible. (In fact a rational prime $p$ stays prime in $\mathbb{Z}[i]$ iff $p\equiv3\pmod4$.)

(c) Divide, rounding the exact quotient to the nearest Gaussian integer.
- $\frac{11+3i}{1+8i}=\frac{(11+3i)(1-8i)}{65}=\frac{35-85i}{65}\approx0.54-1.31i$. Take $q=1-i$. Then $(1-i)(1+8i)=9+7i$, so $11+3i=(1-i)(1+8i)+(2-4i)$.
- $\frac{1+8i}{2-4i}=\frac{(1+8i)(2+4i)}{20}=\frac{-30+20i}{20}=-1.5+i$. Take $q=-2+i$. Then $(-2+i)(2-4i)=10i$, so $1+8i=(-2+i)(2-4i)+(1-2i)$, with $N(1-2i)=5<20$.
- $2-4i=2(1-2i)+0$.

So $\gcd(11+3i,1+8i)=1-2i$, up to units. Check: $N(11+3i)=130$ and $N(1+8i)=65$ are both divisible by $5=N(1-2i)$. Also $11+3i=(1-2i)(1+5i)$ and $1+8i=(1-2i)(-3+2i)$.

**20.** (a) $x^3-2$ is Eisenstein at $p=2$: $2\mid 0,0,-2$, $2^2\nmid-2$, and $2\nmid1$. So it is irreducible over $\mathbb{Q}$. Alternatively: it has degree 3, and by the rational root test the only candidate roots are $\pm1,\pm2$, none of which is a root.

(b) The map $f(x)\mapsto f(x+1)$ is a ring automorphism of $\mathbb{Q}[x]$, so $f$ is irreducible iff $f(x+1)$ is. Now
$$
(x+1)^4+1=x^4+4x^3+6x^2+4x+2,
$$
which is Eisenstein at $2$. So $x^4+1$ is irreducible over $\mathbb{Q}$.

(c) Over $\mathbb{F}_2$, $(x+1)^4=x^4+4x^3+6x^2+4x+1=x^4+1$. So $x^4+1=(x+1)^4$.

**21.** $f(0)=1$ and $f(1)=1+1+1=1$ in $\mathbb{F}_2$. So $f$ has no roots, and since it has degree 2, it is irreducible. Hence $K=\mathbb{F}_2[x]/(f)$ is a field with $2^2=4$ elements: $0$, $1$, $\alpha$ and $\beta=\alpha+1$, where $\alpha=x+(f)$ satisfies $\alpha^2=\alpha+1$ (since $-1=1$).

Addition (characteristic 2, so $y+y=0$):

| $+$ | $0$ | $1$ | $\alpha$ | $\beta$ |
|---|---|---|---|---|
| $0$ | $0$ | $1$ | $\alpha$ | $\beta$ |
| $1$ | $1$ | $0$ | $\beta$ | $\alpha$ |
| $\alpha$ | $\alpha$ | $\beta$ | $0$ | $1$ |
| $\beta$ | $\beta$ | $\alpha$ | $1$ | $0$ |

Multiplication:
- $\alpha^2=\beta$.
- $\alpha\beta=\alpha^2+\alpha=2\alpha+1=1$.
- $\beta^2=\alpha^2+2\alpha+1=\alpha^2+1=\alpha$.

| $\times$ | $1$ | $\alpha$ | $\beta$ |
|---|---|---|---|
| $1$ | $1$ | $\alpha$ | $\beta$ |
| $\alpha$ | $\alpha$ | $\beta$ | $1$ |
| $\beta$ | $\beta$ | $1$ | $\alpha$ |

$K^\times=\lbrace1,\alpha,\beta\rbrace$, with $\alpha^1=\alpha$, $\alpha^2=\beta$ and $\alpha^3=\alpha\beta=1$. So $K^\times=\langle\alpha\rangle\cong\mathbb{Z}_3$.

**22.** (a) Let $(p)\neq0$ be prime, and suppose $(p)\subseteq(m)$. Then $p=mr$ for some $r$. Since $p$ is a prime element, $p\mid m$ or $p\mid r$.
- If $p\mid m$, then $(m)\subseteq(p)$, so $(m)=(p)$.
- If $p\mid r$, write $r=ps$. Then $p=mps$, so $p(1-ms)=0$. Since $p\neq0$ and $R$ is a domain, $ms=1$, so $m$ is a unit and $(m)=R$.

So $(p)$ is maximal.

(b) $F[x]$ is a PID, since it is Euclidean.

(⇐) Let $f$ be irreducible. Then $(f)\neq F[x]$, because $f$ is not a unit. If $(f)\subseteq(g)$, then $f=gh$, and irreducibility forces either $g$ to be a unit, so $(g)=F[x]$, or $h$ to be a unit, so $(g)=(f)$. Every ideal is principal, so $(f)$ is maximal, and $F[x]/(f)$ is a field by Problem 17.

(⇒) If $f=gh$ with $1\le\deg g,\deg h<\deg f$, then $g,h\notin(f)$, because nonzero multiples of $f$ have degree at least $\deg f$. But $(g+(f))(h+(f))=0$. So $F[x]/(f)$ has zero divisors and is not a field.

## Challenge

**23.** Let $\lambda:G\to\mathrm{Sym}(G)$, $\lambda_g(x)=gx$. This is an injective homomorphism (Cayley). Since $|G|$ is even, Cauchy's theorem gives $t\in G$ of order 2.

The permutation $\lambda_t$ has no fixed points, because $tx=x$ forces $t=e$. Also $\lambda_t^2=\lambda_{t^2}=\mathrm{id}$. So $\lambda_t$ is a product of $|G|/2=m$ disjoint transpositions $(x\ \ tx)$. Since $m$ is odd, $\lambda_t$ is an odd permutation.

So $\mathrm{sgn}\,\circ\lambda:G\to\lbrace\pm1\rbrace$ is a surjective homomorphism. Its kernel $N$ is normal of index 2, so $|N|=m$. If $m>1$, then $N$ is neither trivial nor all of $G$, so $G$ is not simple.

**24.** *Splitting criterion.* Let $x\in A_n$ and let $c=|\text{class of }x\text{ in }S_n|=n!/|C_{S_n}(x)|$. We have $C_{A_n}(x)=C_{S_n}(x)\cap A_n$, which is either all of $C_{S_n}(x)$ or a subgroup of index 2 in it.
- If $C_{S_n}(x)\subseteq A_n$, the $A_n$-class of $x$ has size $(n!/2)/|C_{S_n}(x)|=c/2$. The $S_n$-class splits into two $A_n$-classes of size $c/2$, which are interchanged by conjugating by any odd permutation.
- Otherwise the $A_n$-class has size $(n!/2)/(|C_{S_n}(x)|/2)=c$, so it is the whole $S_n$-class.

*The classes of $A_5$.* The even cycle types in $S_5$ are $1^5$, $3\,1^2$, $2^2\,1$ and $5$.
- **3-cycles:** $\binom53\cdot2=20$ in $S_5$, so the centraliser has order $120/20=6$. It contains $(4\,5)$, which commutes with $(1\,2\,3)$ and is odd. So there is no splitting: one class of size **20**.
- **Double transpositions:** $5\cdot3=15$ in $S_5$, so the centraliser has order 8. It contains the odd element $(1\,2)$, which commutes with $(1\,2)(3\,4)$. One class of size **15**.
- **5-cycles:** $4!=24$ in $S_5$, so the centraliser has order 5. It is $\langle(1\,2\,3\,4\,5)\rangle\subseteq A_5$. The class splits into **12 + 12**.
- **Identity:** **1**.

Check: $1+20+15+12+12=60$.

*Simplicity.* A normal subgroup $N\trianglelefteq A_5$ is a union of conjugacy classes, contains $\lbrace e\rbrace$, and has order dividing 60. The possible sums $1+(\text{a sub-multiset of }\lbrace 20,15,12,12\rbrace)$ are
$$
1,13,16,21,25,28,33,36,40,45,48,60.
$$
The only divisors of 60 in this list are $1$ and $60$. So $N=\lbrace e\rbrace$ or $N=A_5$, and $A_5$ is simple.

**25.** (a) $N(z)=z\bar z$, where $\bar z$ is complex conjugation, which preserves $R$. So $N(zw)=N(z)N(w)$. If $u$ is a unit, then $N(u)N(u^{-1})=N(1)=1$, so $N(u)=1$. Now $a^2+5b^2=1$ forces $b=0$ and $a=\pm1$. So the units are $\pm1$.

(b) Note that $a^2+5b^2$ never equals $2$ or $3$: if $b\neq0$ it is at least $5$, and if $b=0$ it is a perfect square.
- $N(2)=4$. A factorisation into non-units would need two factors of norm $2$, which is impossible.
- $N(3)=9$. It would need factors of norm $3$, which is impossible.
- $N(1\pm\sqrt{-5})=6$. It would need factors of norms $2$ and $3$, which is impossible.

So all four elements are irreducible.

(c) $6=2\cdot3=(1+\sqrt{-5})(1-\sqrt{-5})$. The only units are $\pm1$, and $1\pm\sqrt{-5}\neq\pm2$, so $2$ is not associate to either $1\pm\sqrt{-5}$. These are therefore two essentially different factorisations into irreducibles, and $R$ is not a UFD.

$2$ is not prime: $2\mid(1+\sqrt{-5})(1-\sqrt{-5})=6$, but $2\nmid1\pm\sqrt{-5}$, because $\frac{1\pm\sqrt{-5}}2\notin R$. In a UFD every irreducible is prime, so this is another way to see that $R$ is not a UFD.
