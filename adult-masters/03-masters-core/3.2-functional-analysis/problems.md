# 3.2 Functional analysis: problems

Spend at least 30 minutes on each problem (45 minutes on Qualifying-exam level problems) before reading [solutions.md](solutions.md). Write full proofs. $H$ always denotes a Hilbert space; scalars are complex unless stated otherwise, with inner products linear in the first slot.

## Warm-up

**1.** Prove that $\ell^\infty$ (bounded sequences with the sup norm) is a Banach space and that $c_0=\lbrace x\in\ell^\infty:x_n\to0\rbrace$ is a closed subspace.

**2.** (a) On $C^1[0,1]$ with the sup norm $\lVert f\rVert_\infty$, show that $\varphi(f)=f'(0)$ is an unbounded linear functional.
(b) Show that every linear map from a finite-dimensional normed space to any normed space is bounded. (You may use that all norms on a finite-dimensional space are equivalent.)

**3.** Define $M:L^2[0,1]\to L^2[0,1]$ by $(Mf)(x)=xf(x)$. Show that $\lVert M\rVert=1$, but that there is no $f\neq0$ with $\lVert Mf\rVert_2=\lVert f\rVert_2$.

**4.** Show that the norm of $\ell^p$ ($1\le p\le\infty$) comes from an inner product only when $p=2$.

**5.** In the real Hilbert space $L^2[0,1]$, find the closest point to $f(x)=x^2$ in the subspace $\mathrm{span}\,\lbrace1,x\rbrace$, and compute the distance.

**6.** (a) Let $X$ be a Banach space. Prove that every weakly convergent sequence in $X$ is bounded.
(b) Let $(e_n)$ be an orthonormal sequence in $H$. Prove that $e_n\rightharpoonup0$ weakly but not in norm.

## Core

**7.** (a) Prove Riesz's lemma: if $M$ is a closed proper subspace of a normed space $X$ and $0<\theta<1$, there is $x\in X$ with $\lVert x\rVert=1$ and $\mathrm{dist}(x,M)\ge\theta$.
(b) Deduce that the closed unit ball of $X$ is compact if and only if $X$ is finite-dimensional.

**8.** Let $X$ be a normed space.
(a) Show that for every $x\in X$ there is $f\in X^*$ with $\lVert f\rVert\le1$ and $f(x)=\lVert x\rVert$.
(b) Show that if $X^*$ is separable then $X$ is separable.

**9.** Prove that $(\ell^1)^*$ is isometrically isomorphic to $\ell^\infty$, via $b\mapsto\varphi_b$, $\varphi_b(a)=\sum_na_nb_n$.

**10.** (Hellinger–Toeplitz.) Let $T:H\to H$ be linear (not assumed bounded) with $\langle Tx,y\rangle=\langle x,Ty\rangle$ for all $x,y\in H$. Prove that $T$ is bounded.

**11.** (a) Let $\lVert\cdot\rVert_1$ and $\lVert\cdot\rVert_2$ be norms on a vector space $V$, both complete, with $\lVert v\rVert_1\le C\lVert v\rVert_2$ for all $v$. Prove that the norms are equivalent.
(b) On $C[0,1]$, $\lVert f\rVert_{L^1}\le\lVert f\rVert_\infty$. Show the two norms are not equivalent, and deduce from (a) that $(C[0,1],\lVert\cdot\rVert_{L^1})$ is not complete.

**12.** Let $(a_n)$ be a sequence of complex numbers such that $\sum_na_nb_n$ converges for every $(b_n)\in c_0$. Prove that $(a_n)\in\ell^1$.

**13.** Prove directly (without quoting Banach–Alaoglu or Eberlein–Šmulian) that every bounded sequence in a Hilbert space has a weakly convergent subsequence.

**14.** Let $H$ be an infinite-dimensional Hilbert space. Prove that the weak closure of the unit sphere $S=\lbrace x:\lVert x\rVert=1\rbrace$ is the closed unit ball $B=\lbrace x:\lVert x\rVert\le1\rbrace$.

**15.** Let $(\lambda_n)$ be a bounded sequence of complex numbers and $D$ the diagonal operator on $\ell^2$, $De_n=\lambda_ne_n$. Prove that $D$ is compact if and only if $\lambda_n\to0$.

**16.** Let $V:L^2[0,1]\to L^2[0,1]$ be the Volterra operator, $(Vf)(x)=\int_0^xf(t)\,dt$. Prove that $V$ is compact, has no eigenvalues, and that $\sigma(V)=\lbrace0\rbrace$.

**17.** Let $K$ be the integral operator on $L^2[0,1]$ with kernel $k(x,y)=\min(x,y)$. Find all eigenvalues and eigenfunctions of $K$, and deduce that $\lbrace\sqrt2\sin\left((n-\tfrac12)\pi x\right)\rbrace_{n\ge1}$ is an orthonormal basis of $L^2[0,1]$.

**18.** Let $T\in B(H)$. Prove that $\ker T^*=(\mathrm{ran}\,T)^\perp$ and $\overline{\mathrm{ran}\,T}=(\ker T^*)^\perp$.

## Qualifying-exam level

**19.** Let $K$ be a compact operator on $H$ and $T=I-K$.
(a) Prove that $\mathrm{ran}\,T$ is closed.
(b) Prove that if $T$ is injective then $T$ is surjective.

**20.** Let $T\in B(H)$ and suppose there is $c>0$ with $\mathrm{Re}\,\langle Tx,x\rangle\ge c\lVert x\rVert^2$ for all $x$. Prove that $T$ is invertible and $\lVert T^{-1}\rVert\le1/c$.

**21.** (a) Prove that every infinite-dimensional separable Hilbert space is isometrically isomorphic to $\ell^2$.
(b) Prove that a Hilbert space with an uncountable orthonormal set is not separable.

**22.** (a) Prove that $c_0$ is not reflexive.
(b) Prove that $\ell^1$ is not reflexive.
(c) Prove that $L^1[0,1]$ is not reflexive.
You may use that $c_0^*\cong\ell^1$, $(\ell^1)^*\cong\ell^\infty$ and $L^1[0,1]^*\cong L^\infty[0,1]$ via the usual pairings, and Problem 8(b).

**23.** Let $P\in B(H)$ with $P^2=P$ and $P\neq0$. Prove that the following are equivalent:
(i) $\mathrm{ran}\,P\perp\ker P$ (i.e. $P$ is an orthogonal projection);
(ii) $P=P^*$;
(iii) $\lVert P\rVert=1$.
