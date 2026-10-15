# 1.3 Linear Algebra: Problems

Solutions are in [solutions.md](solutions.md). Attempt each problem seriously for at least 20–30 minutes before you look. $\mathbb{F}$ is $\mathbb{R}$ or $\mathbb{C}$ unless stated otherwise, and all spaces are finite-dimensional unless stated otherwise.

## Warm-up

**1.** Decide which of the following are subspaces, and justify each answer.
(a) $\lbrace x\in\mathbb{R}^3 : x_1+2x_2-x_3=0\rbrace$.
(b) $\lbrace x\in\mathbb{R}^3 : x_1x_2=0\rbrace$.
(c) $\lbrace x\in\mathbb{R}^3 : x_1=1\rbrace$.
(d) $\lbrace f\in C[0,1] : f(0)=2f(1)\rbrace$, as a subset of $C[0,1]$.

**2.** Show that $(1,1,0),(1,0,1),(0,1,1)$ is a basis of $\mathbb{R}^3$. Is it a basis of $\mathbb{F}_2^3$, where $\mathbb{F}_2$ is the field with two elements?

**3.** Let $D:\mathcal{P}_3(\mathbb{R})\to\mathcal{P}_3(\mathbb{R})$ be differentiation. Write the matrix of $D$ with respect to the basis $1,x,x^2,x^3$. Find $\operatorname{null}D$, $\operatorname{range}D$, the minimal polynomial of $D$ and the Jordan form of $D$.

**4.** Let $A_n$ be the $n\times n$ tridiagonal matrix with $2$ on the diagonal and $1$ on the sub- and super-diagonals. Compute $\det A_4$, then find $\det A_n$ for general $n$.

**5.** Let $A=\begin{pmatrix}2&1\\1&2\end{pmatrix}$. Find the eigenvalues and eigenvectors, diagonalise $A$, and give a closed formula for $A^n$.

**6.** On $\mathcal{P}_2(\mathbb{R})$ with $\langle p,q\rangle=\int_{-1}^1p(x)q(x)\,dx$, apply Gram–Schmidt to $1,x,x^2$.

## Core

**7.** (a) Prove that if $\dim V>\dim W$, no linear map $V\to W$ is injective.
(b) Let $U,W$ be subspaces of $V$. By applying rank–nullity to the map $U\times W\to V$, $(u,w)\mapsto u+w$, prove that $\dim(U+W)=\dim U+\dim W-\dim(U\cap W)$.

**8.** Let $P\in\mathcal{L}(V)$ satisfy $P^2=P$. Prove that $V=\operatorname{null}P\oplus\operatorname{range}P$ and that $P$ is diagonalisable. What are its possible eigenvalues?

**9.** Let $T:\mathbb{R}^2\to\mathbb{R}^2$, $T(x,y)=(x+y,\,2y)$. Find the matrix of $T$ with respect to the standard basis, then with respect to $\mathcal{B}'=((1,0),(1,1))$. Do this both directly and with the formula $P^{-1}AP$.

**10.** Let $T\in\mathcal{L}(V,W)$. Prove that $\operatorname{null}T'=(\operatorname{range}T)^0$, and deduce that $\dim\operatorname{range}T'=\dim\operatorname{range}T$. Explain why this shows that row rank equals column rank.

**11.** Find the characteristic and minimal polynomials of
$$
A=\begin{pmatrix}2&1&0\\0&2&0\\0&0&3\end{pmatrix},\qquad B=\begin{pmatrix}2&0&0\\0&2&0\\0&0&3\end{pmatrix}.
$$
Which of them is diagonalisable? Are $A$ and $B$ similar?

**12.** Let $T\in\mathcal{L}(V)$ over $\mathbb{R}$ satisfy $T^3=T$. Prove that $T$ is diagonalisable and that its eigenvalues lie in $\lbrace -1,0,1\rbrace$.

**13.** Prove that eigenvectors of $T$ corresponding to distinct eigenvalues are linearly independent.

**14.** Let $T$ be a self-adjoint operator on an inner product space. Prove that every eigenvalue of $T$ is real, and that eigenvectors for distinct eigenvalues are orthogonal.

**15.** Find an orthogonal matrix $Q$ and a diagonal $D$ with $A=QDQ^t$, where
$$
A=\begin{pmatrix}2&-1&0\\-1&2&-1\\0&-1&2\end{pmatrix}.
$$

**16.** Find the Jordan form $J$ of
$$
A=\begin{pmatrix}5&4&2&1\\0&1&-1&-1\\-1&-1&3&0\\1&1&-1&2\end{pmatrix},
$$
and an invertible $P$ with $P^{-1}AP=J$. (Hint: $\chi_A(z)=(z-1)(z-2)(z-4)^2$.)

**17.** Let $V=\mathcal{P}_2(\mathbb{R})$ and let $\operatorname{ev}_a\in V'$ be $p\mapsto p(a)$.
(a) Show that $\operatorname{ev}_0,\operatorname{ev}_1,\operatorname{ev}_2$ is a basis of $V'$.
(b) Find the basis $p_0,p_1,p_2$ of $V$ whose dual basis is $\operatorname{ev}_0,\operatorname{ev}_1,\operatorname{ev}_2$.
(c) Use (b) to write down the unique $p\in V$ with $p(0)=1$, $p(1)=3$, $p(2)=7$.

**18.** Let $U\subseteq V$ be a subspace and $T\in\mathcal{L}(V,W)$.
(a) Prove that $\dim V/U=\dim V-\dim U$.
(b) Prove that $V/\operatorname{null}T\cong\operatorname{range}T$. Check carefully that your map is well defined.
(c) Prove that if $U\subseteq\operatorname{null}T$, then $T$ induces a linear map $V/U\to W$.

**19.** Let $A\in\mathbb{F}^{2\times2}$ have trace $t$ and determinant $d$. Verify directly that $A^2-tA+dI=0$. Use this to compute $A^{-1}$ for $A=\begin{pmatrix}1&2\\3&4\end{pmatrix}$ without the adjugate formula.

## Challenge

**20.** Prove, without determinants, that every operator on a nonzero finite-dimensional complex vector space has an eigenvalue. Where does the proof use $\mathbb{C}$?

**21.** Let $S,T\in\mathcal{L}(V)$ be diagonalisable with $ST=TS$. Prove that there is a basis of $V$ consisting of vectors that are eigenvectors of both $S$ and $T$.

**22.** (Schur.) Let $V$ be a complex inner product space and $T\in\mathcal{L}(V)$. Prove that $T$ has an upper-triangular matrix with respect to some orthonormal basis. You may assume $T$ is upper triangular with respect to *some* basis.

**23.** (a) For a nilpotent $N$ on $\mathbb{C}^n$, explain why the minimal polynomial gives the largest Jordan block and $\dim\operatorname{null}N$ gives the number of blocks.
(b) Find two $7\times7$ nilpotent matrices that have the same minimal polynomial and the same nullity but are **not** similar. Prove they are not similar.

**24.** (a) Prove $\operatorname{tr}(AB)=\operatorname{tr}(BA)$ for $A,B\in\mathbb{F}^{n\times n}$, and deduce that there are no $A,B\in\mathbb{R}^{n\times n}$ with $AB-BA=I$.
(b) Let $p$ be prime and $V=\mathbb{F}_p[x]/(x^p)$, with basis $1,x,\dots,x^{p-1}$. Show that differentiation $D$ and multiplication by $x$ ($X$) are well-defined operators on $V$ with $DX-XD=I$. Why does this not contradict (a)?
