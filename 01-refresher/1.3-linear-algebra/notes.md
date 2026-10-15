# 1.3 Linear Algebra: Study Notes

These notes condense the module. They follow Axler's order and approach, which leaves determinants until late, and add the material on matrices and determinants that you need for computation. Throughout, $\mathbb{F}$ denotes a field. Usually $\mathbb{F}=\mathbb{R}$ or $\mathbb{C}$, but most of Sections 1–4 works over any field. $V, W$ are vector spaces over $\mathbb{F}$, and "finite-dimensional" is abbreviated f.d.

---

## 1. Vector spaces and subspaces

**Definition.** A *vector space* over $\mathbb{F}$ is a set $V$ with addition $V\times V\to V$ and scalar multiplication $\mathbb{F}\times V\to V$ such that $(V,+)$ is an abelian group and, for all $a,b\in\mathbb{F}$ and $u,v\in V$:

$$
a(u+v)=au+av,\quad (a+b)v=av+bv,\quad (ab)v=a(bv),\quad 1v=v.
$$

**Examples.** $\mathbb{F}^n$; $\mathbb{F}^{m\times n}$; $\mathcal{P}(\mathbb{F})$ (all polynomials); $\mathcal{P}_m(\mathbb{F})$ (degree $\le m$); $\mathbb{F}^S$ (all functions $S\to\mathbb{F}$); $C[0,1]$; sequence spaces such as $\ell^2$.

**Subspace.** $U\subseteq V$ is a subspace iff $0\in U$ and $U$ is closed under addition and scalar multiplication.

**Sums.** $U_1+\dots+U_m = \lbrace u_1+\dots+u_m : u_i\in U_i\rbrace$ is the smallest subspace containing every $U_i$. The sum is *direct*, written $U_1\oplus\dots\oplus U_m$, if every element of the sum has a unique expression $u_1+\dots+u_m$. Equivalently, $0$ has only the trivial expression.

**Proposition.** $U+W$ is direct iff $U\cap W=\lbrace 0\rbrace$.

*Proof.* If $v\in U\cap W$, then $0 = v + (-v)$ with $v \in U$ and $-v\in W$, so uniqueness forces $v=0$. Conversely, if $0=u+w$, then $u=-w\in U\cap W=\lbrace 0\rbrace$. $\square$

**Pitfall.** For three or more subspaces, pairwise trivial intersections do **not** give a direct sum. Take three distinct lines through the origin in $\mathbb{R}^2$.

---

## 2. Span, independence, bases, dimension

A list $v_1,\dots,v_m$ is *linearly independent* if $\sum a_iv_i=0$ implies all $a_i=0$. It *spans* $V$ if every vector is a linear combination of the list. A *basis* is a linearly independent spanning list. Equivalently, every $v\in V$ is uniquely $\sum a_iv_i$.

**Linear dependence lemma.** If $v_1,\dots,v_m$ is dependent, then some $v_k$ lies in $\operatorname{span}(v_1,\dots,v_{k-1})$, and removing it does not change the span.

**Steinitz exchange lemma.** In a f.d. space, the length of every linearly independent list is at most the length of every spanning list.

*Proof sketch.* Let $u_1,\dots,u_m$ be independent and $w_1,\dots,w_n$ span. Add $u_1$ to the front of the $w$-list. The result is dependent, so by the dependence lemma we can remove some $w_j$ and keep a spanning list. Repeat with $u_2, u_3, \dots$. At each step the removed vector must be a $w$, because the $u$'s are independent. So we never run out of $w$'s, which gives $m\le n$. $\square$

**Consequences.**
- Every spanning list in a f.d. space can be reduced to a basis. Every independent list can be extended to a basis.
- Any two bases have the same length. This common length is $\dim V$.
- If $\dim V=n$, then any $n$ independent vectors form a basis, and so do any $n$ spanning vectors.
- Every subspace $U$ of a f.d. $V$ has a *complement* $W$ with $V=U\oplus W$. Extend a basis of $U$ to a basis of $V$ and let $W$ be the span of the new vectors. The complement is not unique.

**Dimension of a sum.** For subspaces $U,W$ of a f.d. space,

$$
\dim(U+W)=\dim U+\dim W-\dim(U\cap W).
$$

*Proof.* Take a basis $x_1..x_k$ of $U\cap W$. Extend it to a basis $x, u_1..u_p$ of $U$ and to a basis $x, w_1..w_q$ of $W$. Then $x,u,w$ spans $U+W$. It is also independent: if $\sum a x+\sum b u+\sum c w=0$, then $\sum c w\in U\cap W$, so it equals $\sum d x$. Independence of $x,w$ forces $c=0$, and then independence of $x,u$ forces $a=b=0$. Count: $k+p+q = (k+p)+(k+q)-k$. $\square$

**Counterexample to keep in mind.** $\mathcal{P}(\mathbb{F})$ and $C[0,1]$ are infinite-dimensional. Many f.d. results fail there. For example, the shift $(x_1,x_2,\dots)\mapsto(0,x_1,x_2,\dots)$ is injective but not surjective.

---

## 3. Linear maps and rank–nullity

$T:V\to W$ is *linear* if $T(au+bv)=aTu+bTv$. The set $\mathcal{L}(V,W)$ of linear maps is itself a vector space. Write $\mathcal{L}(V)=\mathcal{L}(V,V)$; its elements are called *operators*.

**Key fact.** A linear map is determined by its values on a basis, and those values can be chosen freely. If $v_1..v_n$ is a basis of $V$ and $w_1..w_n\in W$ are arbitrary, there is a unique linear $T$ with $Tv_i=w_i$.

The *null space* (kernel) is $\operatorname{null}T=\lbrace v: Tv=0\rbrace$, and the *range* (image) is $\operatorname{range}T$. Both are subspaces. $T$ is injective iff $\operatorname{null}T=\lbrace 0\rbrace$.

**Rank–nullity (Fundamental Theorem of Linear Maps).** If $V$ is f.d. and $T\in\mathcal{L}(V,W)$, then $\operatorname{range}T$ is f.d. and

$$
\dim V=\dim\operatorname{null}T+\dim\operatorname{range}T.
$$

*Proof.* Take a basis $u_1..u_k$ of $\operatorname{null}T$ and extend it to a basis $u, v_1..v_r$ of $V$. Then $Tv_1..Tv_r$ spans $\operatorname{range}T$, because the $Tu_i$ are $0$. They are also independent: if $\sum b_jTv_j=0$, then $\sum b_jv_j\in\operatorname{null}T$, so $\sum b_j v_j=\sum a_iu_i$, and independence of $u, v$ gives $b=0$. $\square$

**Corollaries.**
- If $\dim V>\dim W$, no $T\in\mathcal{L}(V,W)$ is injective. If $\dim V<\dim W$, none is surjective.
- A homogeneous system with more unknowns than equations has a nonzero solution.
- For an operator on a f.d. space, injective ⇔ surjective ⇔ invertible. **This fails in infinite dimensions**: see the shift above.

**Isomorphism.** F.d. spaces over the same field are isomorphic iff they have the same dimension. Choosing a basis gives an isomorphism $V\cong\mathbb{F}^n$, which is not canonical.

---

## 4. Matrices and change of basis

Fix bases $\mathcal{B}=(v_1..v_n)$ of $V$ and $\mathcal{C}=(w_1..w_m)$ of $W$. The matrix $M(T)=[T]_{\mathcal{B}}^{\mathcal{C}}\in\mathbb{F}^{m\times n}$ has $k$-th column equal to the coordinates of $Tv_k$ in $\mathcal{C}$:

$$
Tv_k=\sum_{j=1}^m A_{jk}w_j.
$$

Then $M(ST)=M(S)M(T)$. Matrix multiplication is *defined* so that this holds. The map $T\mapsto M(T)$ is an isomorphism $\mathcal{L}(V,W)\to\mathbb{F}^{m\times n}$, so $\dim\mathcal{L}(V,W)=mn$.

**Change of basis.** Let $\mathcal{B}$ and $\mathcal{B}'$ be bases of $V$. Let $P$ be the matrix whose columns are the $\mathcal{B}$-coordinates of the vectors in $\mathcal{B}'$, so $P=[I]^{\mathcal{B}}_{\mathcal{B}'}$. For $T\in\mathcal{L}(V)$:

$$
[T]_{\mathcal{B}'} = P^{-1}[T]_{\mathcal{B}}P.
$$

Matrices related in this way are *similar*. Similar matrices represent the same operator in different bases. So any quantity defined for operators, such as the trace, determinant, eigenvalues, minimal polynomial or Jordan form, is a *similarity invariant*.

**Pitfall.** Mixing up $P$ and $P^{-1}$ is the most common computational error. Check your formula on one basis vector: $P$ takes $\mathcal{B}'$-coordinates to $\mathcal{B}$-coordinates.

**Rank.** The rank of $T$ is $\dim\operatorname{range}T$, which is the column rank of any matrix representing $T$. Row rank equals column rank; see Section 6.

---

## 5. Quotient spaces

Let $U\subseteq V$ be a subspace. The *coset* of $v$ is $v+U=\lbrace v+u:u\in U\rbrace$. Two cosets are either equal or disjoint, and $v+U=w+U \iff v-w\in U$. The *quotient* $V/U$ is the set of cosets, with

$$
(v+U)+(w+U)=(v+w)+U,\qquad a(v+U)=av+U.
$$

These operations are well defined because $U$ is a subspace. The *quotient map* $\pi:V\to V/U$, $v\mapsto v+U$, is linear and surjective with null space $U$. Rank–nullity then gives

$$
\dim V/U=\dim V-\dim U.
$$

**First isomorphism theorem.** For $T\in\mathcal{L}(V,W)$, the map $\tilde T: V/\operatorname{null}T\to\operatorname{range}T$, $\tilde T(v+\operatorname{null}T)=Tv$, is a well-defined isomorphism.

**Why quotients matter.** In f.d. linear algebra, $V/U$ is isomorphic to any complement of $U$, so quotients can look unnecessary. They become essential when there is no natural complement: quotient groups and rings (1.4), $L^p$ spaces as functions modulo "equal almost everywhere" (3.1), quotient Banach spaces (3.2), and homology as cycles modulo boundaries (3.4).

---

## 6. Duality

The *dual space* is $V'=\mathcal{L}(V,\mathbb{F})$. Its elements are *linear functionals*.

**Dual basis.** If $v_1..v_n$ is a basis of $V$, define $\varphi_j\in V'$ by $\varphi_j(v_k)=\delta_{jk}$. Then $\varphi_1..\varphi_n$ is a basis of $V'$, and $\varphi_j(v)$ is the $j$-th coordinate of $v$. So $\dim V'=\dim V$ for f.d. $V$.

**Example.** On $\mathcal{P}_m(\mathbb{R})$ with basis $1,x,\dots,x^m$, the dual basis is $\varphi_k(p)=p^{(k)}(0)/k!$.

**Dual map.** For $T\in\mathcal{L}(V,W)$, define $T'\in\mathcal{L}(W',V')$ by $T'(\psi)=\psi\circ T$. Then $(ST)'=T'S'$, and with respect to dual bases, $M(T')=M(T)^{t}$.

**Annihilator.** $U^0=\lbrace\varphi\in V':\varphi|_U=0\rbrace$. For f.d. $V$, $\dim U^0=\dim V-\dim U$.

*Proof.* The restriction map $V'\to U'$ is surjective, since any functional on $U$ extends by extending a basis. Its null space is $U^0$. Apply rank–nullity. $\square$

**Key identities** (f.d.):

$$
\operatorname{null}T'=(\operatorname{range}T)^0,\qquad \operatorname{range}T'=(\operatorname{null}T)^0,\qquad \dim\operatorname{range}T'=\dim\operatorname{range}T.
$$

*Proof of the last.* $\dim\operatorname{range}T' = \dim W' - \dim\operatorname{null}T' = \dim W - \dim(\operatorname{range}T)^0 = \dim\operatorname{range}T$. $\square$

**Corollary (row rank = column rank).** The column rank of $A^t$ is the rank of $T'$, which equals the rank of $T$, which is the column rank of $A$.

**Double dual.** The map $V\to V''$, $v\mapsto(\varphi\mapsto\varphi(v))$, is an injective linear map. For f.d. $V$ it is an isomorphism, and it is *canonical*: it needs no choice of basis. In contrast, $V\cong V'$ requires a choice of basis or an inner product.

**Connections forward.** In 3.2 Functional Analysis, the dual of a normed space is the space of *continuous* linear functionals. Hahn–Banach replaces "extend a basis", and the canonical map $V\to V''$ may fail to be surjective. Spaces where it is surjective are called *reflexive*. In 3.5 Smooth Manifolds, cotangent vectors and differential forms live in duals of tangent spaces.

---

## 7. Determinants

**Abstract definition (Axler Ch. 9).** Let $\dim V=n$. A multilinear form $\alpha:V^n\to\mathbb{F}$ is *alternating* if it vanishes whenever two arguments are equal. The space of alternating $n$-forms on $V$ has dimension 1. Every $T\in\mathcal{L}(V)$ acts on this space by $(T^*\alpha)(v_1..v_n)=\alpha(Tv_1..Tv_n)$. Because the space is 1-dimensional, $T^*$ is multiplication by a scalar, and that scalar is $\det T$.

**Leibniz formula.**

$$
\det A=\sum_{\sigma\in S_n}\operatorname{sgn}(\sigma)\prod_{i=1}^n A_{\sigma(i),i}.
$$

**Properties.**
- $\det(AB)=\det A\det B$. This is immediate from the abstract definition, since $(ST)^*=T^*S^*$.
- $\det A^t=\det A$.
- $A$ is invertible iff $\det A\neq0$.
- Row operations: swapping two rows multiplies $\det$ by $-1$; adding a multiple of one row to another leaves it unchanged; scaling a row by $c$ scales $\det$ by $c$.
- The determinant of a triangular matrix is the product of its diagonal entries.
- Cofactor (Laplace) expansion along any row or column.
- Geometry: $|\det A|$ is the factor by which $A$ scales $n$-dimensional volume. This explains the Jacobian factor in the change-of-variables formula ([1.5](../1.5-multivariable-calculus/notes.md)).

**Characteristic polynomial.** $\chi_T(z)=\det(zI-T)$ is monic of degree $n$, and its roots are the eigenvalues of $T$.

**Computational advice.** For anything bigger than $3\times3$, row-reduce to triangular form. Never expand a $4\times4$ determinant fully by cofactors.

---

## 8. Eigenvalues, the minimal polynomial and diagonalisation

**Definitions.** A subspace $U$ is *$T$-invariant* if $T(U)\subseteq U$. A scalar $\lambda$ is an *eigenvalue* if $Tv=\lambda v$ for some $v\neq0$; such $v$ is an *eigenvector*. The *eigenspace* is $E(\lambda,T)=\operatorname{null}(T-\lambda I)$.

**Proposition.** Eigenvectors with distinct eigenvalues are linearly independent. Hence an operator on an $n$-dimensional space has at most $n$ distinct eigenvalues.

*Proof.* Suppose not, and take the smallest $k$ such that $v_k\in\operatorname{span}(v_1..v_{k-1})$, by the dependence lemma. Write $v_k=\sum_{i<k}a_iv_i$. Apply $T-\lambda_kI$: $0=\sum_{i<k}a_i(\lambda_i-\lambda_k)v_i$. Since $v_1..v_{k-1}$ is independent and $\lambda_i\neq\lambda_k$, all $a_i=0$, so $v_k=0$. That is a contradiction. $\square$

**Existence of eigenvalues (Axler, no determinants).** Every operator on a f.d. *complex* vector space $V\neq\lbrace 0\rbrace$ has an eigenvalue.

*Proof.* Let $n=\dim V$ and pick $v\neq0$. The $n+1$ vectors $v,Tv,\dots,T^nv$ are dependent, so some nonzero polynomial $p$ satisfies $p(T)v=0$. Factor it over $\mathbb{C}$ as $p(z)=c(z-\lambda_1)\cdots(z-\lambda_m)$, with $m\ge1$ because $v\neq0$. Then $c(T-\lambda_1 I)\cdots(T-\lambda_m I)v=0$, so some $T-\lambda_j I$ is not injective. $\square$

Over $\mathbb{R}$, rotation by $90°$ in $\mathbb{R}^2$ has no eigenvalue. Every operator on a f.d. real space does have an invariant subspace of dimension 1 or 2.

**Minimal polynomial.** On f.d. $V$, there is a unique monic polynomial $m_T$ of smallest degree with $m_T(T)=0$. It exists because $\dim\mathcal{L}(V)=n^2$, so $I,T,\dots,T^{n^2}$ are dependent; in fact $\deg m_T\le n$. Moreover:
- $p(T)=0$ iff $m_T\mid p$. *Proof:* divide, $p=qm_T+r$ with $\deg r<\deg m_T$, so $r(T)=0$, and minimality forces $r=0$.
- The zeros of $m_T$ are exactly the eigenvalues of $T$.

**Cayley–Hamilton.** $\chi_T(T)=0$, so $m_T\mid\chi_T$. The two polynomials have the same roots but possibly different multiplicities.

**Upper-triangular form.** $T$ has an upper-triangular matrix with respect to some basis iff $m_T$ splits into linear factors over $\mathbb{F}$. This always holds over $\mathbb{C}$. The diagonal entries are then exactly the eigenvalues, repeated according to algebraic multiplicity.

**Diagonalisability theorem.** For $T\in\mathcal{L}(V)$, $V$ f.d., with distinct eigenvalues $\lambda_1..\lambda_m$, the following are equivalent:
1. $T$ is diagonalisable, meaning $V$ has a basis of eigenvectors.
2. $V=E(\lambda_1,T)\oplus\dots\oplus E(\lambda_m,T)$.
3. $\dim V=\sum\dim E(\lambda_i,T)$.
4. $m_T(z)=(z-\lambda_1)\cdots(z-\lambda_m)$, i.e. $m_T$ splits with **no repeated roots**.

*Proof of (4)⇒(2), the important direction.* Induct on $\dim V$, or use Lagrange interpolation. Let $p_j(z)=\prod_{i\neq j}(z-\lambda_i)/(\lambda_j-\lambda_i)$. Then $\sum_jp_j=1$, because the left side has degree $<m$ and equals $1$ at the $m$ points $\lambda_1,\dots,\lambda_m$. So $v=\sum_jp_j(T)v$ for every $v$. Each $p_j(T)v$ lies in $E(\lambda_j,T)$, because $(T-\lambda_j I)p_j(T)$ is a scalar multiple of $m_T(T)=0$. So the eigenspaces span $V$, and the sum is direct by the independence proposition. $\square$

**Useful consequences.**
- If $p(T)=0$ for some $p$ with distinct roots, all in $\mathbb{F}$, then $T$ is diagonalisable. Examples: projections ($T^2=T$), involutions ($T^2=I$, when $\operatorname{char}\mathbb{F}\neq2$), and $T^k=I$ over $\mathbb{C}$.
- The restriction of a diagonalisable operator to an invariant subspace is diagonalisable, because its minimal polynomial divides $m_T$.
- Commuting diagonalisable operators are *simultaneously* diagonalisable.

**Standard counterexample.** $\begin{pmatrix}0&1\\0&0\end{pmatrix}$ has minimal polynomial $z^2$ and is not diagonalisable. Its only eigenvalue is $0$, with a 1-dimensional eigenspace: algebraic multiplicity 2, geometric multiplicity 1.

---

## 9. Inner product spaces

Now $\mathbb{F}=\mathbb{R}$ or $\mathbb{C}$. An *inner product* is a map $\langle\cdot,\cdot\rangle:V\times V\to\mathbb{F}$ that is linear in the first slot, conjugate-symmetric ($\langle u,v\rangle=\overline{\langle v,u\rangle}$), and positive definite. Set $\|v\|=\sqrt{\langle v,v\rangle}$.

**Examples.** The dot product on $\mathbb{F}^n$; $\langle f,g\rangle=\int_a^bf\bar g$ on $C[a,b]$; $\langle A,B\rangle=\operatorname{tr}(AB^*)$ on matrices.

**Pythagoras.** If $u\perp v$, then $\|u+v\|^2=\|u\|^2+\|v\|^2$.

**Cauchy–Schwarz.** $|\langle u,v\rangle|\le\|u\|\|v\|$, with equality iff $u,v$ are dependent.

*Proof.* If $v=0$ the inequality is trivial. Otherwise write $u=\frac{\langle u,v\rangle}{\|v\|^2}v+w$ with $w\perp v$, which is an orthogonal decomposition. Pythagoras gives $\|u\|^2\ge|\langle u,v\rangle|^2/\|v\|^2$. $\square$

The triangle inequality follows from Cauchy–Schwarz.

**Orthonormal bases.** If $e_1..e_n$ is orthonormal, then $v=\sum\langle v,e_j\rangle e_j$ and $\|v\|^2=\sum|\langle v,e_j\rangle|^2$ (Parseval).

**Gram–Schmidt.** Given an independent list $v_1..v_m$, define

$$
f_k=v_k-\sum_{j<k}\langle v_k,e_j\rangle e_j,\qquad e_k=f_k/\|f_k\|.
$$

Then $e_1..e_m$ is orthonormal and $\operatorname{span}(e_1..e_k)=\operatorname{span}(v_1..v_k)$ for each $k$. Hence every f.d. inner product space has an orthonormal basis. Combined with upper-triangular form, this gives **Schur's theorem**: over $\mathbb{C}$, every operator is upper triangular with respect to some *orthonormal* basis.

**Orthogonal complement and projection.** $U^\perp=\lbrace v:\langle v,u\rangle=0\ \forall u\in U\rbrace$. For f.d. $U$, $V=U\oplus U^\perp$, and the orthogonal projection $P_U v=\sum\langle v,e_j\rangle e_j$ (for an orthonormal basis $e_j$ of $U$) is the **unique closest point** of $U$ to $v$:

$$
\|v-P_Uv\|\le\|v-u\|\quad\forall u\in U,
$$

with equality only if $u=P_U v$. This is the basis of least squares and Fourier approximation.

**Riesz representation (f.d.).** Every $\varphi\in V'$ is $\varphi(v)=\langle v,w\rangle$ for a unique $w$, namely $w=\sum\overline{\varphi(e_j)}e_j$. Over $\mathbb{R}$ this gives a *canonical* isomorphism $V\cong V'$ once an inner product is fixed. Over $\mathbb{C}$ the map $w\mapsto\langle\cdot,w\rangle$ is conjugate-linear.

**Adjoint.** For $T\in\mathcal{L}(V,W)$, the adjoint $T^*$ is defined by $\langle Tv,w\rangle=\langle v,T^*w\rangle$. In orthonormal bases, $M(T^*)$ is the conjugate transpose of $M(T)$. **Pitfall:** this matrix statement is false for non-orthonormal bases.

---

## 10. The spectral theorem and its relatives

$T\in\mathcal{L}(V)$ is *self-adjoint* if $T=T^*$, *normal* if $TT^*=T^*T$, and an *isometry* (unitary or orthogonal) if $T^*T=I$, i.e. $\|Tv\|=\|v\|$ for all $v$.

**Lemma.** If $T$ is self-adjoint, then:
- every eigenvalue is real ($\lambda\|v\|^2=\langle Tv,v\rangle=\langle v,Tv\rangle=\bar\lambda\|v\|^2$);
- eigenvectors for distinct eigenvalues are orthogonal;
- if $U$ is $T$-invariant, so is $U^\perp$;
- over $\mathbb{R}$, $T$ still has an eigenvalue. *Sketch:* the minimal polynomial factors over $\mathbb{R}$ into linear factors and irreducible quadratics $z^2+bz+c$ with $b^2<4c$. For self-adjoint $T$, each $T^2+bT+cI$ is injective, because $\langle(T^2+bT+c)v,v\rangle=\|Tv\|^2+b\langle Tv,v\rangle+c\|v\|^2\ge\|Tv\|^2-|b|\|Tv\|\|v\|+c\|v\|^2=(\|Tv\|-\tfrac{|b|}{2}\|v\|)^2+(c-\tfrac{b^2}{4})\|v\|^2>0$ for $v\neq0$. So no quadratic factor can appear in $m_T$, and $m_T$ must have a real root.

**Real Spectral Theorem.** For $\mathbb{F}=\mathbb{R}$, $T$ is self-adjoint iff $V$ has an orthonormal basis of eigenvectors of $T$. In matrix terms, a real matrix $A$ is symmetric iff $A=QDQ^t$ with $Q$ orthogonal and $D$ diagonal.

*Proof (⇒).* Induct on $\dim V$. Take an eigenvector $e_1$ of norm 1, which exists by the lemma. $U=\operatorname{span}(e_1)$ is invariant, so $U^\perp$ is invariant. $T|_{U^\perp}$ is self-adjoint, and induction gives an orthonormal eigenbasis of $U^\perp$. Add $e_1$ to it. (⇐) If $M(T)$ is diagonal and real in an orthonormal basis, it equals its own conjugate transpose. $\square$

**Complex Spectral Theorem.** For $\mathbb{F}=\mathbb{C}$, $T$ is normal iff $V$ has an orthonormal basis of eigenvectors.

*Proof (⇒).* By Schur, $M(T)=A$ is upper triangular in some orthonormal basis. Normality gives $\|Te_1\|^2=\langle T^*Te_1,e_1\rangle=\langle TT^*e_1,e_1\rangle=\|T^*e_1\|^2$. The left side is $|a_{11}|^2$, because the first column of $A$ is $(a_{11},0,\dots,0)$. The right side is the squared norm of the first *row*, $\sum_j|a_{1j}|^2$. So $a_{12}=\dots=a_{1n}=0$. Repeat row by row. $\square$

**Positive operators.** $T$ is *positive* if it is self-adjoint and $\langle Tv,v\rangle\ge0$ for all $v$. Equivalently, it is self-adjoint with non-negative eigenvalues, or $T=R^*R$ for some $R$. Every positive operator has a unique positive square root.

**Singular value decomposition.** For any $T\in\mathcal{L}(V,W)$ there are orthonormal bases $e_1..e_n$ of $V$ and $f_1..f_m$ of $W$, and scalars $s_1\ge s_2\ge\dots\ge0$, such that $Te_k=s_kf_k$ (with $s_k = 0$ beyond the rank). The $s_k$ are the square roots of the eigenvalues of $T^*T$. In matrix form, $A=U\Sigma V^*$. The *polar decomposition* is $T=S\sqrt{T^*T}$ with $S$ an isometry.

**Connections forward.** In 3.2, compact self-adjoint operators on Hilbert space have an orthonormal eigenbasis whose eigenvalues tend to 0. Its proof uses the same induction as above, with "an eigenvalue exists" replaced by "$\pm\|T\|$ is an eigenvalue". Bounded self-adjoint operators need spectral measures. The SVD becomes the Schmidt decomposition of compact operators.

---

## 11. Generalised eigenvectors and Jordan form

Not every operator is diagonalisable. Jordan form describes exactly how far it can fail.

**Generalised eigenspaces.** $G(\lambda,T)=\operatorname{null}(T-\lambda I)^{\dim V}$. This is the set of $v$ with $(T-\lambda I)^kv=0$ for some $k$.

**Decomposition theorem.** If $\mathbb{F}=\mathbb{C}$, or more generally if $m_T$ splits, then

$$
V=G(\lambda_1,T)\oplus\dots\oplus G(\lambda_m,T).
$$

Each $G(\lambda_j,T)$ is $T$-invariant, and $(T-\lambda_jI)|_{G(\lambda_j,T)}$ is **nilpotent**. The dimension of $G(\lambda_j,T)$ is the algebraic multiplicity of $\lambda_j$. Equivalently, $T = D + N$ with $D$ diagonalisable, $N$ nilpotent and $DN=ND$. This is the Jordan–Chevalley decomposition.

**Structure of nilpotent operators.** If $N$ is nilpotent, $V$ has a basis made of chains $v, Nv, N^2v,\dots,N^{k-1}v$ (with $N^kv=0$). With respect to such a chain, written in reverse order, $N$ acts as a single Jordan block with eigenvalue 0.

**Jordan Canonical Form.** If $m_T$ splits, then $V$ has a basis in which $M(T)$ is block diagonal with Jordan blocks

$$
J_k(\lambda)=\begin{pmatrix}\lambda&1&&\\&\lambda&\ddots&\\&&\ddots&1\\&&&\lambda\end{pmatrix}\in\mathbb{F}^{k\times k}.
$$

The multiset of blocks is unique; only their order can vary. Two complex matrices are similar iff they have the same Jordan form.

**Reading off the blocks.** For each eigenvalue $\lambda$:
- the number of blocks $= \dim E(\lambda,T)$, the geometric multiplicity;
- the sum of the block sizes $= $ the algebraic multiplicity;
- the size of the largest block $=$ the multiplicity of $\lambda$ as a root of $m_T$;
- the number of blocks of size $\ge k$ equals $\dim\operatorname{null}(T-\lambda I)^k-\dim\operatorname{null}(T-\lambda I)^{k-1}$. This formula determines everything.

**Uses.**
- Powers: $J_k(\lambda)^n$ has $\binom{n}{j}\lambda^{n-j}$ on the $j$-th superdiagonal. This lets you compute $A^n$ and $e^{tA}$, and decide whether $A^n\to0$ (iff all $|\lambda|<1$).
- Similarity questions.
- Linear ODEs $x'=Ax$.

**Pitfall.** Characteristic polynomial and minimal polynomial together do **not** always determine the Jordan form. They do for $n\le3$, and also for $n\le 6$ when you add $\dim E(\lambda)$. See Problem 23 for a $7\times7$ example where all three agree but the forms differ.

---

## 12. Trace

$\operatorname{tr}A=\sum A_{ii}$ satisfies $\operatorname{tr}(AB)=\operatorname{tr}(BA)$, so it is a similarity invariant. It equals the sum of the eigenvalues with algebraic multiplicity (over $\mathbb{C}$), and $\det$ equals their product. The coefficient of $z^{n-1}$ in $\chi_T$ is $-\operatorname{tr}T$.

---

## Common pitfalls (summary)

1. Treating a list that spans as if it were independent, or the reverse. In $n$ dimensions, $n$ vectors that do one also do the other, but $n+1$ vectors cannot be independent and $n-1$ vectors cannot span.
2. Assuming that "injective ⇔ surjective" holds in infinite dimensions.
3. $P$ vs $P^{-1}$ in change of basis.
4. Conjugate transpose = adjoint only in *orthonormal* bases.
5. "Distinct eigenvalues ⇒ diagonalisable" is true. Its converse is false: the identity is diagonalisable with one eigenvalue.
6. Over $\mathbb{R}$, an operator need not have eigenvalues. Over $\mathbb{C}$ it always does. Keep track of the field.
7. Over a field of characteristic $p$, some identities fail. For example, $\operatorname{tr} I_p=0$, so $AB-BA=I$ becomes possible; see Problem 24.

---

## Connections forward

- **1.4 Abstract Algebra I:** vector spaces are modules over a field. Quotients and the isomorphism theorems recur for groups and rings. $GL_n(\mathbb{F})$, $SL_n$, $O(n)$ and $U(n)$ are basic examples of groups. Polynomial rings $\mathbb{F}[x]$ are Euclidean domains, which is why the minimal polynomial exists and is unique.
- **1.5 / 2.4 Multivariable and Analysis in $\mathbb{R}^n$:** the derivative is a linear map. The Hessian is a symmetric matrix, and the spectral theorem classifies critical points. The Jacobian determinant is the volume-scaling factor.
- **2.3 Abstract Algebra II:** field extensions are vector spaces over the base field. The degree $[L:K]$ is a dimension, and the tower law is a basis computation.
- **3.2 Functional Analysis:** infinite-dimensional versions of dual spaces, adjoints, orthogonal projection and the spectral theorem.
- **3.3 Graduate Algebra:** the Jordan and rational canonical forms both follow from the structure theorem for f.g. modules over a PID, applied to $V$ as an $\mathbb{F}[x]$-module via $x\cdot v=Tv$. That is the cleanest proof.
- **3.4 Algebraic Topology:** homology groups are quotients $\ker\partial/\operatorname{im}\partial$. Over a field, rank–nullity gives the Euler characteristic formula.
- **3.5 Smooth Manifolds:** tangent spaces, dual (cotangent) spaces, alternating multilinear forms (differential forms), and determinants as top-degree forms.
