# 1.3 Linear Algebra: Solutions

These are solutions to [problems.md](problems.md). The numerical answers (Problems 4, 5, 6, 15, 16, 17) were checked with a computer algebra system.

## Warm-up

**1.**
(a) **Yes.** This is the null space of the linear map $x\mapsto x_1+2x_2-x_3$, and null spaces are subspaces. You can also check directly: it contains $0$ and is closed under addition and scaling, because the condition is linear.
(b) **No.** $(1,0,0)$ and $(0,1,0)$ are in the set, but their sum $(1,1,0)$ is not.
(c) **No.** It does not contain $0$.
(d) **Yes.** The zero function satisfies $0=2\cdot0$. If $f(0)=2f(1)$ and $g(0)=2g(1)$, then $(af+bg)(0)=af(0)+bg(0)=2(af+bg)(1)$. Equivalently, it is the null space of the linear functional $f\mapsto f(0)-2f(1)$.

**2.** Since $\dim\mathbb{R}^3=3$, it is enough to show the three vectors are independent. Suppose $a(1,1,0)+b(1,0,1)+c(0,1,1)=0$. Then $a+b=0$, $a+c=0$ and $b+c=0$. Adding all three gives $2(a+b+c)=0$, so $a+b+c=0$. Subtracting each equation from this gives $c=0$, $b=0$ and $a=0$. So the list is a basis. (Equivalently, the determinant of the matrix with these columns is $-2\neq0$.)

Over $\mathbb{F}_2$ the list is **not** a basis: $(1,1,0)+(1,0,1)+(0,1,1)=(2,2,2)=(0,0,0)$. The step that fails is dividing by $2$, which is not possible because $2=0$ in $\mathbb{F}_2$. The determinant is $-2=0$ in $\mathbb{F}_2$.

**3.** $D1=0$, $Dx=1$, $Dx^2=2x$ and $Dx^3=3x^2$. The columns of the matrix are the coordinates of these images:
$$
M(D)=\begin{pmatrix}0&1&0&0\\0&0&2&0\\0&0&0&3\\0&0&0&0\end{pmatrix}.
$$
- $\mathrm{null}\,D$ is the constants, $\mathrm{span}(1)$, of dimension 1.
- $\mathrm{range}\,D=\mathcal{P}_2(\mathbb{R})$, of dimension 3. This agrees with rank–nullity: $1+3=4$.
- $D^4=0$, but $D^3(x^3)=6\neq0$. So the minimal polynomial is $z^4$.
- The only eigenvalue is $0$, and $\dim E(0,D)=1$, so there is a single Jordan block: $J=J_4(0)$. Concretely, in the basis $6, 6x, 3x^2, x^3$ the matrix of $D$ is exactly $J_4(0)$, since $D(x^3)=3x^2$, $D(3x^2)=6x$, $D(6x)=6$ and $D(6)=0$.

**4.** Write $d_n=\det A_n$. Expand along the first row. The $(1,1)$ minor is $A_{n-1}$. The $(1,2)$ minor has first column $(1,0,\dots,0)^t$; expanding it down that column gives $\det A_{n-2}$. So
$$
d_n=2d_{n-1}-1\cdot d_{n-2},\qquad d_1=2,\ d_2=3.
$$
So $d_3=4$ and $d_4=5$. By induction, $d_n=n+1$: if $d_{n-1}=n$ and $d_{n-2}=n-1$, then $d_n=2n-(n-1)=n+1$.

**5.** $\chi_A(z)=(z-2)^2-1=(z-1)(z-3)$, so the eigenvalues are $1$ and $3$.
- For $\lambda=3$: $(A-3I)v=0$ gives $v=(1,1)$.
- For $\lambda=1$: $v=(1,-1)$.

With $P=\begin{pmatrix}1&1\\1&-1\end{pmatrix}$, we get $P^{-1}AP=\mathrm{diag}(3,1)$. Then $A^n=P\mathrm{diag}(3^n,1)P^{-1}$, which works out to
$$
A^n=\frac12\begin{pmatrix}3^n+1&3^n-1\\3^n-1&3^n+1\end{pmatrix}.
$$
Check: $n=1$ gives $A$. For $n=5$ the formula gives entries $122$ and $121$, which matches direct multiplication.

**6.**
- $\|1\|^2=\int_{-1}^1 1\,dx=2$, so $e_1=1/\sqrt2$.
- $\langle x,e_1\rangle=\frac1{\sqrt2}\int_{-1}^1x\,dx=0$, so $f_2=x$. Then $\|x\|^2=\int x^2=2/3$, so $e_2=\sqrt{3/2}\,x$.
- $\langle x^2,e_1\rangle=\frac1{\sqrt2}\cdot\frac23$, so the component along $e_1$ is $\frac1{\sqrt2}\cdot\frac23\cdot\frac1{\sqrt2}=\frac13$. Also $\langle x^2,e_2\rangle=0$, since $x^3$ is odd. So $f_3=x^2-\frac13$, and $\|f_3\|^2=\int_{-1}^1(x^4-\tfrac23x^2+\tfrac19)dx=\tfrac25-\tfrac49+\tfrac29=\tfrac8{45}$.

The result is
$$
e_1=\tfrac1{\sqrt2},\quad e_2=\sqrt{\tfrac32}\,x,\quad e_3=\sqrt{\tfrac{45}{8}}\left(x^2-\tfrac13\right).
$$
These are the normalised Legendre polynomials.

## Core

**7.** (a) By rank–nullity, $\dim\mathrm{null}\,T=\dim V-\dim\mathrm{range}\,T\ge\dim V-\dim W>0$. So $\mathrm{null}\,T\neq\lbrace 0\rbrace$, and $T$ is not injective.

(b) $U\times W$ is a vector space under componentwise operations, of dimension $\dim U+\dim W$: if $u_i$ and $w_j$ are bases, then the $(u_i,0)$ together with the $(0,w_j)$ form a basis. The map $\Gamma(u,w)=u+w$ is linear with range $U+W$. Its null space is $\lbrace(u,-u):u\in U\cap W\rbrace$, which is isomorphic to $U\cap W$ via $(u,-u)\mapsto u$. Rank–nullity gives $\dim U+\dim W=\dim(U\cap W)+\dim(U+W)$.

**8.** Every $v\in V$ can be written $v=(v-Pv)+Pv$. Here $Pv\in\mathrm{range}\,P$, and $P(v-Pv)=Pv-P^2v=0$, so $v-Pv\in\mathrm{null}\,P$. Hence $V=\mathrm{null}\,P+\mathrm{range}\,P$.

The sum is direct. If $v\in\mathrm{null}\,P\cap\mathrm{range}\,P$, write $v=Pw$. Then $0=Pv=P^2w=Pw=v$.

On $\mathrm{range}\,P$, $P$ acts as the identity: $P(Pw)=Pw$. On $\mathrm{null}\,P$ it acts as $0$. Joining a basis of $\mathrm{null}\,P$ to a basis of $\mathrm{range}\,P$ gives a basis of eigenvectors, so $P$ is diagonalisable with eigenvalues in $\lbrace 0,1\rbrace$.

Alternatively: $P$ satisfies $z^2-z=z(z-1)$, which has distinct roots, so $m_P$ divides it and $P$ is diagonalisable. Both eigenvalues occur unless $P=0$ or $P=I$.

**9.** In the standard basis, $T(1,0)=(1,0)$ and $T(0,1)=(1,2)$, so $A=\begin{pmatrix}1&1\\0&2\end{pmatrix}$.

*Directly:* $T(1,0)=(1,0)=1\cdot b_1+0\cdot b_2$ and $T(1,1)=(2,2)=0\cdot b_1+2\cdot b_2$. So $[T]_{\mathcal{B}'}=\begin{pmatrix}1&0\\0&2\end{pmatrix}$.

*By formula:* $P$ has the new basis vectors as columns, $P=\begin{pmatrix}1&1\\0&1\end{pmatrix}$, so $P^{-1}=\begin{pmatrix}1&-1\\0&1\end{pmatrix}$. Then $AP=\begin{pmatrix}1&2\\0&2\end{pmatrix}$ and $P^{-1}AP=\begin{pmatrix}1&0\\0&2\end{pmatrix}$. The two methods agree. $\mathcal{B}'$ is an eigenbasis.

**10.** $\psi\in\mathrm{null}\,T'$ iff $\psi\circ T=0$ iff $\psi(Tv)=0$ for all $v$ iff $\psi\in(\mathrm{range}\,T)^0$.

Then
$$
\dim\mathrm{range}\,T'=\dim W'-\dim\mathrm{null}\,T'=\dim W-(\dim W-\dim\mathrm{range}\,T)=\dim\mathrm{range}\,T,
$$
using rank–nullity for $T'$ and $\dim U^0=\dim W-\dim U$.

Now let $A=M(T)$ with respect to bases of $V$ and $W$. With respect to the dual bases, $M(T')=A^t$. The column rank of $A$ is $\dim\mathrm{range}\,T$. The column rank of $A^t$, which is the row rank of $A$, is $\dim\mathrm{range}\,T'$. These are equal.

**11.** Both matrices are upper triangular with diagonal $2,2,3$, so $\chi_A=\chi_B=(z-2)^2(z-3)$.

For $B$: $(B-2I)(B-3I)=\mathrm{diag}(0,0,1)\mathrm{diag}(-1,-1,0)=0$. So $m_B=(z-2)(z-3)$, and $B$ is diagonalisable (it is already diagonal).

For $A$: $A-2I=\begin{pmatrix}0&1&0\\0&0&0\\0&0&1\end{pmatrix}$ and $A-3I=\begin{pmatrix}-1&1&0\\0&-1&0\\0&0&0\end{pmatrix}$. The $(1,2)$ entry of the product is $0\cdot1+1\cdot(-1)+0=-1\neq0$, so $(z-2)(z-3)$ does not annihilate $A$. Since $m_A$ divides $\chi_A$ and has both $2$ and $3$ as roots, $m_A=(z-2)^2(z-3)$. It has a repeated root, so $A$ is **not** diagonalisable. Also $\dim E(2,A)=3-\mathrm{rank}(A-2I)=3-2=1<2$.

$A$ and $B$ are **not similar**: similar matrices have the same minimal polynomial. Equivalently, one is diagonalisable and the other is not.

**12.** $T$ satisfies $p(z)=z^3-z=z(z-1)(z+1)$, so $m_T\mid p$. Every divisor of $p$ splits over $\mathbb{R}$ with distinct roots, so $T$ is diagonalisable by the diagonalisability theorem. The eigenvalues are roots of $m_T$, hence of $p$, so they lie in $\lbrace -1,0,1\rbrace$.

**13.** Let $v_1,\dots,v_m$ be eigenvectors with distinct eigenvalues $\lambda_1,\dots,\lambda_m$. Suppose they are dependent. Let $k$ be the smallest index with $v_k\in\mathrm{span}(v_1,\dots,v_{k-1})$. Such a $k$ exists by the linear dependence lemma, and $k\ge2$ since $v_1\neq0$. Then $v_1,\dots,v_{k-1}$ are independent. Write $v_k=\sum_{i<k}a_iv_i$ and apply $T-\lambda_kI$:
$$
0=\sum_{i<k}a_i(\lambda_i-\lambda_k)v_i.
$$
By independence, $a_i(\lambda_i-\lambda_k)=0$, and $\lambda_i\neq\lambda_k$, so every $a_i=0$. Then $v_k=0$, which contradicts the fact that $v_k$ is an eigenvector.

**14.** Let $Tv=\lambda v$ with $v\neq0$. Then
$$
\lambda\|v\|^2=\langle Tv,v\rangle=\langle v,Tv\rangle=\langle v,\lambda v\rangle=\bar\lambda\|v\|^2,
$$
so $\lambda=\bar\lambda$. If also $Tw=\mu w$ with $\mu\neq\lambda$ (both real), then $\lambda\langle v,w\rangle=\langle Tv,w\rangle=\langle v,Tw\rangle=\mu\langle v,w\rangle$. Hence $(\lambda-\mu)\langle v,w\rangle=0$, so $\langle v,w\rangle=0$.

**15.** Expand $\det(zI-A)$:
$$
\chi_A(z)=(z-2)^3-2(z-2)=(z-2)\big((z-2)^2-2\big).
$$
So the eigenvalues are $2$, $2+\sqrt2$ and $2-\sqrt2$.
- $\lambda=2$: $A-2I=\begin{pmatrix}0&-1&0\\-1&0&-1\\0&-1&0\end{pmatrix}$, so $y=0$ and $x=-z$, giving $v=(1,0,-1)$.
- $\lambda=2+\sqrt2$: the rows of $A-\lambda I$ are $(-\sqrt2,-1,0)$, $(-1,-\sqrt2,-1)$ and $(0,-1,-\sqrt2)$. The first gives $y=-\sqrt2x$ and the third gives $z=-y/\sqrt2=x$. So $v=(1,-\sqrt2,1)$.
- $\lambda=2-\sqrt2$: similarly $v=(1,\sqrt2,1)$.

The three eigenvectors are mutually orthogonal, as Problem 14 predicts. Their norms are $\sqrt2$, $2$ and $2$. So
$$
Q=\begin{pmatrix}\tfrac1{\sqrt2}&\tfrac12&\tfrac12\\0&-\tfrac{\sqrt2}2&\tfrac{\sqrt2}2\\-\tfrac1{\sqrt2}&\tfrac12&\tfrac12\end{pmatrix},\qquad D=\mathrm{diag}(2,\,2+\sqrt2,\,2-\sqrt2),
$$
and $A=QDQ^t$.

**16.** Solve $(A-\lambda I)v=0$ for each eigenvalue:
- $\lambda=1$: $v_1=(-1,1,0,0)$.
- $\lambda=2$: $v_2=(1,-1,0,1)$.
- $\lambda=4$: $\mathrm{rank}(A-4I)=3$, so $E(4,A)$ is 1-dimensional, spanned by $u=(1,0,-1,1)$.

The algebraic multiplicity of $4$ is $2$, but its geometric multiplicity is $1$. So there is one Jordan block $J_2(4)$ for $\lambda = 4$, and
$$
J=\begin{pmatrix}1&0&0&0\\0&2&0&0\\0&0&4&1\\0&0&0&4\end{pmatrix}.
$$
For the Jordan chain, we need $w$ with $(A-4I)w=u$. The first column of $A-4I$ is $(5-4,0,-1,1)=(1,0,-1,1)=u$, so $w=e_1=(1,0,0,0)$ works. Take
$$
P=\begin{pmatrix}-1&1&1&1\\1&-1&0&0\\0&0&-1&0\\0&1&1&0\end{pmatrix}
$$
with columns $v_1,v_2,u,w$. Then $Au=4u$ and $Aw=u+4w$, so the last two columns produce the block $J_2(4)$, and $P^{-1}AP=J$. You can check $AP=PJ$ column by column.

**17.** (a) $\dim V'=\dim V=3$, so it suffices to show independence. Suppose $a\mathrm{ev}_0+b\mathrm{ev}_1+c\mathrm{ev}_2=0$. Apply it to the polynomials $p_0, p_1, p_2$ from part (b). Each $p_j$ is $1$ at $j$ and $0$ at the other two points, so this gives $a=0$, $b=0$ and $c=0$ in turn.

(b) We need $\mathrm{ev}_i(p_j)=p_j(i)=\delta_{ij}$. These are the Lagrange interpolation polynomials:
$$
p_0=\tfrac{(x-1)(x-2)}{2}=\tfrac12x^2-\tfrac32x+1,\quad p_1=\tfrac{x(x-2)}{-1}=-x^2+2x,\quad p_2=\tfrac{x(x-1)}{2}=\tfrac12x^2-\tfrac12x.
$$
They form a basis because they are 3 vectors in a 3-dimensional space and are independent: apply $\mathrm{ev}_i$ to $\sum c_jp_j=0$ to get $c_i=0$.

(c) Any $p\in V$ satisfies $p=\sum_i p(i)\,p_i$, because both sides take the same value at $0,1,2$ and a nonzero polynomial of degree $\le 2$ has at most 2 roots. So $p=p_0+3p_1+7p_2=x^2+x+1$. Check: $p(0)=1$, $p(1)=3$, $p(2)=7$.

**18.** (a) The quotient map $\pi:V\to V/U$ is linear and surjective with $\mathrm{null}\,\pi=U$. Rank–nullity gives $\dim V=\dim U+\dim V/U$.

(b) Let $N = \mathrm{null}\,T$ and define $\tilde T(v+N)=Tv$.
- *Well defined:* if $v+N=v'+N$, then $v-v'\in N$, so $Tv-Tv'=T(v-v')=0$.
- *Linear:* this follows from linearity of $T$ and the definition of the operations on $V/N$.
- *Injective:* $\tilde T(v+N)=0$ means $Tv=0$, so $v\in N$ and $v+N=0+N$.
- *Surjective onto $\mathrm{range}\,T$:* this is clear from the definition.

(c) Define $\bar T(v+U)=Tv$. If $v-v'\in U\subseteq\mathrm{null}\,T$, then $Tv=Tv'$, so $\bar T$ is well defined. Linearity is as in (b). This is the *universal property of the quotient*: $T=\bar T\circ\pi$.

**19.** Let $A=\begin{pmatrix}a&b\\c&d'\end{pmatrix}$, so $t=a+d'$ and $d=ad'-bc$. Then
$$
A^2=\begin{pmatrix}a^2+bc&ab+bd'\\ca+d'c&bc+d'^2\end{pmatrix},\quad tA=\begin{pmatrix}a^2+ad'&ab+bd'\\ac+cd'&ad'+d'^2\end{pmatrix}.
$$
So $A^2-tA=\begin{pmatrix}bc-ad'&0\\0&bc-ad'\end{pmatrix}=-dI$, and $A^2-tA+dI=0$.

For $A=\begin{pmatrix}1&2\\3&4\end{pmatrix}$: $t=5$ and $d=-2$, so $A^2-5A-2I=0$. Rearranging, $A(A-5I)=2I$, so
$$
A^{-1}=\tfrac12(A-5I)=\tfrac12\begin{pmatrix}-4&2\\3&-1\end{pmatrix}=\begin{pmatrix}-2&1\\ \tfrac32&-\tfrac12\end{pmatrix}.
$$
Check: $AA^{-1}=\begin{pmatrix}-2+3&1-1\\-6+6&3-2\end{pmatrix}=I$.

## Challenge

**20.** Let $\dim V=n\ge1$ and choose $v\neq0$. The list $v,Tv,\dots,T^nv$ has $n+1$ vectors, so it is dependent: there are $a_0,\dots,a_n$, not all zero, with $\sum a_jT^jv=0$. Let $p(z)=\sum a_jz^j\neq0$. Then $p$ is not a nonzero constant, because that would give $a_0v=0$ with $a_0\neq0$. So $\deg p=m\ge1$.

**This is where $\mathbb{C}$ is used.** By the Fundamental Theorem of Algebra, $p(z)=c(z-\lambda_1)\cdots(z-\lambda_m)$ with $c\neq0$. Hence
$$
0=p(T)v=c(T-\lambda_1I)\cdots(T-\lambda_mI)v.
$$
If every $T-\lambda_jI$ were injective, the composition would be injective, and $p(T)v\neq0$. So some $T-\lambda_jI$ has a nonzero null vector, and $\lambda_j$ is an eigenvalue.

Over $\mathbb{R}$, $p$ might have no real roots, and the argument breaks. Rotation by $\pi/2$ shows that the conclusion really does fail.

**21.** Let $\lambda_1,\dots,\lambda_m$ be the distinct eigenvalues of $S$, so $V=\bigoplus_jE(\lambda_j,S)$.

*Each $E_j=E(\lambda_j,S)$ is $T$-invariant:* if $Sv=\lambda_jv$, then $S(Tv)=TSv=\lambda_jTv$.

*$T|_{E_j}$ is diagonalisable:* $m_T(T|_{E_j})=m_T(T)|_{E_j}=0$, so the minimal polynomial of $T|_{E_j}$ divides $m_T$. That polynomial splits with distinct roots, hence so does every divisor.

So each $E_j$ has a basis of eigenvectors of $T|_{E_j}$. Each of these vectors is also an eigenvector of $S$, with eigenvalue $\lambda_j$. Joining these bases over $j$ gives a basis of $V$ of common eigenvectors.

**22.** Suppose $T$ is upper triangular with respect to the basis $v_1,\dots,v_n$. Equivalently, $Tv_k\in\mathrm{span}(v_1,\dots,v_k)$ for each $k$, i.e. each $U_k=\mathrm{span}(v_1,\dots,v_k)$ is $T$-invariant.

Apply Gram–Schmidt to $v_1,\dots,v_n$ to get an orthonormal basis $e_1,\dots,e_n$ with $\mathrm{span}(e_1,\dots,e_k)=U_k$ for every $k$. Then $Te_k\in T(U_k)\subseteq U_k=\mathrm{span}(e_1,\dots,e_k)$. So the matrix of $T$ with respect to $e_1,\dots,e_n$ is upper triangular.

(The assumption holds over $\mathbb{C}$. By induction using Problem 20: take an eigenvector $v_1$, then apply the induction hypothesis to the operator that $T$ induces on $V/\mathrm{span}(v_1)$.)

**23.** (a) Write $N=\bigoplus_iJ_{k_i}(0)$. A Jordan block $J_k(0)$ has $J_k(0)^{k-1}\neq0$ and $J_k(0)^k=0$. So $N^r=0$ iff $r\ge\max k_i$, and $m_N=z^{\max k_i}$. Each block has a 1-dimensional null space, spanned by its first basis vector, so $\dim\mathrm{null}\,N$ is the number of blocks.

(b) Take
$$
N_1=J_3(0)\oplus J_3(0)\oplus J_1(0),\qquad N_2=J_3(0)\oplus J_2(0)\oplus J_2(0).
$$
Both are $7\times7$ with minimal polynomial $z^3$ and nullity $3$, since each has 3 blocks.

They are not similar. If $N_2=PN_1P^{-1}$, then $N_2^2=PN_1^2P^{-1}$, so $\mathrm{rank}\,N_1^2=\mathrm{rank}\,N_2^2$. But $J_3(0)^2$ has rank 1 and $J_2(0)^2=J_1(0)^2=0$. So $\mathrm{rank}\,N_1^2=1+1+0=2$, while $\mathrm{rank}\,N_2^2=1+0+0=1$. Contradiction.

In general, the ranks of all the powers $N^k$ determine the partition. Minimal polynomial and nullity record only the largest part and the number of parts.

**24.** (a) $\mathrm{tr}(AB)=\sum_i\sum_jA_{ij}B_{ji}=\sum_j\sum_iB_{ji}A_{ij}=\mathrm{tr}(BA)$. So $\mathrm{tr}(AB-BA)=0$. But $\mathrm{tr}\,I_n=n\neq0$ in $\mathbb{R}$, so $AB-BA=I$ is impossible. The same argument works over any field in which $n\neq0$, in particular any field of characteristic $0$.

(b) *Well defined:* $X$ maps the ideal $(x^p)$ into itself. For $D$, $D(x^pg)=px^{p-1}g+x^pg'=x^pg'$, because $p=0$ in $\mathbb{F}_p$. So $D$ also maps $(x^p)$ into itself, and both induce linear maps on the quotient $V$.

*The commutator:* for any $f$, the product rule gives
$$
(DX-XD)f=D(xf)-xDf=f+xf'-xf'=f.
$$
So $DX-XD=I$ on $V$, which has dimension $p$.

*No contradiction:* $\mathrm{tr}\,I_p=p=0$ in $\mathbb{F}_p$, so the trace argument in (a) gives no obstruction. The argument in (a) needs $n\neq0$ in the field.
