# 3.2 Functional analysis: solutions

Read a solution only after a serious attempt. After reading, close the file and write the proof out yourself.

---

## Warm-up

### 1.

*Completeness of $\ell^\infty$.* Let $(x^{(k)})$ be Cauchy in $\ell^\infty$. For each coordinate $n$, $\lvert x^{(k)}_n-x^{(j)}_n\rvert\le\lVert x^{(k)}-x^{(j)}\rVert_\infty$, so $(x^{(k)}_n)_k$ is Cauchy in $\mathbb{C}$; let $x_n$ be its limit. Given $\varepsilon>0$ choose $N$ with $\lVert x^{(k)}-x^{(j)}\rVert_\infty<\varepsilon$ for $j,k\ge N$. For each $n$ and $k\ge N$, letting $j\to\infty$ gives $\lvert x^{(k)}_n-x_n\rvert\le\varepsilon$. So $x=x^{(N)}+(x-x^{(N)})$ is bounded, i.e. $x\in\ell^\infty$, and $\lVert x^{(k)}-x\rVert_\infty\le\varepsilon$ for $k\ge N$.

*$c_0$ is closed.* Let $x^{(k)}\in c_0$ with $x^{(k)}\to x$ in $\ell^\infty$. Given $\varepsilon$, pick $k$ with $\lVert x^{(k)}-x\rVert_\infty<\varepsilon/2$, then $N$ with $\lvert x^{(k)}_n\rvert<\varepsilon/2$ for $n\ge N$. Then $\lvert x_n\rvert<\varepsilon$ for $n\ge N$, so $x\in c_0$. (It is clearly a subspace.)

### 2.

(a) Linearity is clear. Let $f_n(x)=(1-x)^n$. Then $\lVert f_n\rVert_\infty=1$ and $f_n'(0)=-n$, so $\lvert\varphi(f_n)\rvert/\lVert f_n\rVert_\infty=n\to\infty$.

(b) Let $\dim X=d$ with basis $v_1,\dots,v_d$, and define $\lVert\sum c_iv_i\rVert_1=\sum\lvert c_i\rvert$. This is a norm on $X$, so by equivalence there is $A$ with $\lVert x\rVert_1\le A\lVert x\rVert$ for all $x$. For linear $T:X\to Y$ let $B=\max_i\lVert Tv_i\rVert$. Then
$$
\left\lVert T\sum c_iv_i\right\rVert\le\sum\lvert c_i\rvert\lVert Tv_i\rVert\le B\lVert x\rVert_1\le AB\lVert x\rVert .
$$

### 3.

$\lVert Mf\rVert_2^2=\int_0^1x^2\lvert f\rvert^2\le\int_0^1\lvert f\rvert^2$, so $\lVert M\rVert\le1$. For $f_\varepsilon=\varepsilon^{-1/2}\chi_{[1-\varepsilon,1]}$ we have $\lVert f_\varepsilon\rVert_2=1$ and $\lVert Mf_\varepsilon\rVert_2^2=\varepsilon^{-1}\int_{1-\varepsilon}^1x^2\,dx\ge(1-\varepsilon)^2$. So $\lVert M\rVert=1$.

If $\lVert Mf\rVert_2=\lVert f\rVert_2$ then $\int_0^1(1-x^2)\lvert f(x)\rvert^2\,dx=0$. The integrand is non-negative, so it vanishes a.e.; since $1-x^2>0$ on $[0,1)$, $f=0$ a.e.

### 4.

If a norm comes from an inner product it satisfies the parallelogram law. Take $x=e_1$, $y=e_2$. For $p<\infty$, $\lVert x+y\rVert_p=\lVert x-y\rVert_p=2^{1/p}$, so the law reads $2\cdot2^{2/p}=4$, i.e. $2^{2/p}=2$, i.e. $p=2$. For $p=\infty$ the left side is $1+1=2\ne4$. Conversely, $\ell^2$ has the inner product $\sum x_n\bar y_n$.

### 5.

The closest point $g=a+bx$ is the orthogonal projection, characterised by $x^2-g\perp1$ and $x^2-g\perp x$:
$$
\int_0^1(x^2-a-bx)\,dx=\tfrac13-a-\tfrac b2=0,\qquad\int_0^1x(x^2-a-bx)\,dx=\tfrac14-\tfrac a2-\tfrac b3=0 .
$$
From the first, $a=\frac13-\frac b2$. Substituting, $\frac14-\frac16+\frac b4-\frac b3=0$, i.e. $\frac1{12}-\frac b{12}=0$, so $b=1$ and $a=-\frac16$. The closest point is $g(x)=x-\frac16$.

The residual $r=x^2-x+\frac16$ is orthogonal to $g$, so $\lVert r\rVert^2=\langle r,x^2\rangle=\int_0^1\left(x^4-x^3+\frac{x^2}6\right)dx=\frac15-\frac14+\frac1{18}=\frac1{180}$. The distance is $\frac1{\sqrt{180}}=\frac1{6\sqrt5}$.

### 6.

(a) Let $x_n\rightharpoonup x$. Consider $J(x_n)\in X^{**}=B(X^*,\mathbb{C})$. For each $f\in X^*$, $(f(x_n))$ converges, so $\sup_n\lvert J(x_n)(f)\rvert<\infty$. $X^*$ is a Banach space, so the uniform boundedness principle gives $\sup_n\lVert J(x_n)\rVert<\infty$. Since $J$ is an isometry (Hahn–Banach), $\sup_n\lVert x_n\rVert<\infty$.

(b) By the Riesz representation theorem every $f\in H^*$ has the form $f=\langle\cdot,y\rangle$. Bessel's inequality gives $\sum_n\lvert\langle e_n,y\rangle\rvert^2\le\lVert y\rVert^2<\infty$, so $\langle e_n,y\rangle\to0$. Hence $e_n\rightharpoonup0$. But $\lVert e_n-0\rVert=1$ for all $n$.

---

## Core

### 7.

(a) Take $x_0\notin M$ and let $d=\mathrm{dist}(x_0,M)$; $d>0$ because $M$ is closed. Since $d/\theta>d$, there is $m_0\in M$ with $\lVert x_0-m_0\rVert<d/\theta$. Put $x=\frac{x_0-m_0}{\lVert x_0-m_0\rVert}$. For any $m\in M$, $m_0+\lVert x_0-m_0\rVert m\in M$, so
$$
\lVert x-m\rVert=\frac{\lVert x_0-(m_0+\lVert x_0-m_0\rVert m)\rVert}{\lVert x_0-m_0\rVert}\ge\frac{d}{\lVert x_0-m_0\rVert}>\theta .
$$

(b) If $\dim X=d<\infty$, choosing a basis gives a linear bijection $\mathbb{F}^d\to X$ which is a homeomorphism (equivalence of norms); the closed unit ball is closed and bounded in $\mathbb{F}^d$-coordinates, hence compact by Heine–Borel.

If $X$ is infinite-dimensional, build unit vectors inductively: given $x_1,\dots,x_{n-1}$, the span $M_{n-1}$ is finite-dimensional, hence closed, and proper. By (a) with $\theta=\frac12$ choose a unit $x_n$ with $\mathrm{dist}(x_n,M_{n-1})\ge\frac12$. Then $\lVert x_n-x_m\rVert\ge\frac12$ for $m<n$, so $(x_n)$ has no Cauchy subsequence, and the unit ball is not (sequentially) compact.

### 8.

(a) If $x=0$ take $f=0$. Otherwise, on $M=\mathbb{F}x$ define $g(\lambda x)=\lambda\lVert x\rVert$; $\lVert g\rVert=1$. By Hahn–Banach extend to $f\in X^*$ with $\lVert f\rVert=1$.

(b) Let $\lbrace f_n\rbrace$ be dense in $X^*$. Choose unit vectors $x_n$ with $\lvert f_n(x_n)\rvert\ge\frac12\lVert f_n\rVert$. Let $M$ be the closed linear span of $\lbrace x_n\rbrace$; it is separable (finite rational linear combinations are dense). Suppose $M\ne X$. By Hahn–Banach (corollary 3 in the notes) there is $f\in X^*$ with $\lVert f\rVert=1$ and $f|_M=0$. Pick $n$ with $\lVert f-f_n\rVert<\frac13$. Then $\lVert f_n\rVert>\frac23$, and
$$
\tfrac13<\tfrac12\lVert f_n\rVert\le\lvert f_n(x_n)\rvert=\lvert(f_n-f)(x_n)\rvert\le\lVert f_n-f\rVert<\tfrac13,
$$
a contradiction. So $X=M$ is separable.

### 9.

For $b\in\ell^\infty$ and $a\in\ell^1$, $\lvert\sum a_nb_n\rvert\le\lVert b\rVert_\infty\lVert a\rVert_1$, so $\varphi_b\in(\ell^1)^*$ with $\lVert\varphi_b\rVert\le\lVert b\rVert_\infty$. Also $\varphi_b(e_n)=b_n$ and $\lVert e_n\rVert_1=1$, so $\lVert\varphi_b\rVert\ge\sup_n\lvert b_n\rvert$. Hence $b\mapsto\varphi_b$ is a linear isometry.

*Onto.* Let $\varphi\in(\ell^1)^*$ and $b_n=\varphi(e_n)$. Then $\lvert b_n\rvert\le\lVert\varphi\rVert$, so $b\in\ell^\infty$. For $a\in\ell^1$, $\lVert a-\sum_{n\le N}a_ne_n\rVert_1=\sum_{n>N}\lvert a_n\rvert\to0$, so by continuity and linearity $\varphi(a)=\lim_N\sum_{n\le N}a_nb_n=\varphi_b(a)$.

### 10.

We use the closed graph theorem ($H$ is complete). Suppose $x_n\to x$ and $Tx_n\to z$. For every $y\in H$,
$$
\langle z,y\rangle=\lim\langle Tx_n,y\rangle=\lim\langle x_n,Ty\rangle=\langle x,Ty\rangle=\langle Tx,y\rangle .
$$
So $z-Tx\perp H$, i.e. $z=Tx$. The graph is closed, so $T$ is bounded.

### 11.

(a) The identity map $(V,\lVert\cdot\rVert_2)\to(V,\lVert\cdot\rVert_1)$ is linear, bijective and bounded (by $C$) between Banach spaces. By the bounded inverse theorem, its inverse is bounded: there is $C'$ with $\lVert v\rVert_2\le C'\lVert v\rVert_1$.

(b) $f_n(x)=x^n$ has $\lVert f_n\rVert_\infty=1$ and $\lVert f_n\rVert_{L^1}=\frac1{n+1}\to0$, so there is no $C'$ with $\lVert f\rVert_\infty\le C'\lVert f\rVert_{L^1}$. $(C[0,1],\lVert\cdot\rVert_\infty)$ is complete. If $(C[0,1],\lVert\cdot\rVert_{L^1})$ were complete, (a) would make the norms equivalent. So it is not complete.

### 12.

For $N\ge1$ define $\varphi_N\in c_0^*$ by $\varphi_N(b)=\sum_{n\le N}a_nb_n$. Then $\lvert\varphi_N(b)\rvert\le\left(\sum_{n\le N}\lvert a_n\rvert\right)\lVert b\rVert_\infty$, and choosing $b_n=\overline{\mathrm{sgn}\,a_n}$ for $n\le N$ and $b_n=0$ for $n>N$ (a finitely supported sequence, so in $c_0$, with $\lVert b\rVert_\infty\le1$) shows $\lVert\varphi_N\rVert=\sum_{n\le N}\lvert a_n\rvert$. (Here $\mathrm{sgn}\,z=z/\lvert z\rvert$ for $z\neq0$ and $0$ otherwise.)

For each fixed $b\in c_0$, $\varphi_N(b)$ converges as $N\to\infty$ by hypothesis, so $\sup_N\lvert\varphi_N(b)\rvert<\infty$. Since $c_0$ is a Banach space (Problem 1), the uniform boundedness principle gives $\sup_N\lVert\varphi_N\rVert<\infty$, that is, $\sum_n\lvert a_n\rvert<\infty$.

### 13.

Let $\lVert x_n\rVert\le C$. Let $M$ be the closed linear span of $\lbrace x_n\rbrace$.

*Diagonal argument.* For each $j$, the sequence $(\langle x_j,x_n\rangle)_n$ is bounded by $C^2$. By a diagonal argument choose a subsequence $(y_k)=(x_{n_k})$ such that $\lim_k\langle z,y_k\rangle$ exists for every $z\in\lbrace x_1,x_2,\dots\rbrace$, hence for every $z$ in their linear span $S$.

*Extend to $H$.* If $z\in M=\overline S$ and $\varepsilon>0$, choose $s\in S$ with $\lVert z-s\rVert<\varepsilon$. Then $\lvert\langle z,y_k\rangle-\langle z,y_l\rangle\rvert\le2C\varepsilon+\lvert\langle s,y_k\rangle-\langle s,y_l\rangle\rvert$, so $(\langle z,y_k\rangle)_k$ is Cauchy. If $z\in M^\perp$, then $\langle z,y_k\rangle=0$. Since $H=M\oplus M^\perp$, $\varphi(z)=\lim_k\langle z,y_k\rangle$ exists for every $z\in H$.

*Identify the limit.* $\varphi$ is linear and $\lvert\varphi(z)\rvert\le C\lVert z\rVert$. By Riesz representation, $\varphi(z)=\langle z,y\rangle$ for some $y\in H$. Thus $\langle z,y_k\rangle\to\langle z,y\rangle$ for all $z$; taking complex conjugates, $\langle y_k,z\rangle\to\langle y,z\rangle$. Since every functional is of the form $\langle\cdot,z\rangle$, $y_k\rightharpoonup y$.

### 14.

*Weak closure of $S$ is contained in $B$.* $B=\bigcap_{\lVert z\rVert\le1}\lbrace x:\mathrm{Re}\,\langle x,z\rangle\le1\rbrace$ (because $\lVert x\rVert=\sup_{\lVert z\rVert\le1}\mathrm{Re}\,\langle x,z\rangle$). Each set in the intersection is weakly closed (preimage of a closed set under a weakly continuous map), so $B$ is weakly closed and contains $S$.

*$B$ is contained in the weak closure of $S$.* Points of $S$ are trivially in it. Let $\lVert x\rVert<1$. The subspace $\lbrace x\rbrace^\perp$ is infinite-dimensional (it has codimension at most $1$ in an infinite-dimensional space), so it contains an orthonormal sequence $(e_n)$. Put $t=\sqrt{1-\lVert x\rVert^2}>0$ and $y_n=x+te_n$. By Pythagoras $\lVert y_n\rVert^2=\lVert x\rVert^2+t^2=1$, so $y_n\in S$. By Problem 6(b), $y_n\rightharpoonup x$. A weak limit of a sequence in $S$ lies in the weak closure of $S$ (every weak neighbourhood of $x$ contains $y_n$ for large $n$). So $x\in\overline{S}^{w}$.

### 15.

($\Leftarrow$) Let $D_N$ be the finite-rank operator $D_Ne_n=\lambda_ne_n$ for $n\le N$ and $0$ for $n>N$. Then $(D-D_N)$ is diagonal with entries $0,\dots,0,\lambda_{N+1},\lambda_{N+2},\dots$, so $\lVert D-D_N\rVert=\sup_{n>N}\lvert\lambda_n\rvert\to0$. A norm limit of finite-rank operators is compact.

($\Rightarrow$) If $\lambda_n\not\to0$, there are $\varepsilon>0$ and $n_1<n_2<\cdots$ with $\lvert\lambda_{n_k}\rvert\ge\varepsilon$. The sequence $e_{n_k}$ is bounded, but for $k\neq l$, $\lVert De_{n_k}-De_{n_l}\rVert^2=\lvert\lambda_{n_k}\rvert^2+\lvert\lambda_{n_l}\rvert^2\ge2\varepsilon^2$, so $(De_{n_k})$ has no convergent subsequence. $D$ is not compact.

### 16.

*Compact.* $V$ is the integral operator with kernel $k(x,t)=\chi_{\lbrace t<x\rbrace}$, which is in $L^2([0,1]^2)$. Hilbert–Schmidt integral operators are compact.

*No eigenvalues.* Suppose $Vf=\lambda f$ with $f\in L^2$.
- If $\lambda=0$: $\int_0^xf=0$ for all $x$. By the Lebesgue differentiation theorem, $f(x)=\frac{d}{dx}\int_0^xf=0$ for a.e. $x$. So $f=0$.
- If $\lambda\neq0$: $f=\lambda^{-1}Vf$ is continuous (as $Vf$ is), hence $Vf$ is $C^1$, hence $f$ is $C^1$, with $f'=\lambda^{-1}f$ and $f(0)=\lambda^{-1}(Vf)(0)=0$. The unique solution of this initial value problem is $f=0$.

*Spectrum.* $L^2[0,1]$ is infinite-dimensional, so the compact operator $V$ is not invertible, and $0\in\sigma(V)$. For a compact operator every non-zero point of the spectrum is an eigenvalue (Riesz–Schauder). There are none, so $\sigma(V)=\lbrace0\rbrace$.

(Alternative: by induction $\lvert(V^nf)(x)\rvert\le\frac{x^{n-1}}{(n-1)!}\lVert f\rVert_1$, which gives $\lVert V^n\rVert\le\frac1{(n-1)!}$ and so spectral radius $\lim\lVert V^n\rVert^{1/n}=0$.)

### 17.

The kernel is real, symmetric and in $L^2$, so $K$ is compact and self-adjoint. Explicitly
$$
(Kf)(x)=\int_0^xyf(y)\,dy+x\int_x^1f(y)\,dy .
$$
For $f\in L^2\subseteq L^1$, $u=Kf$ is absolutely continuous with
$$
u'(x)=xf(x)+\int_x^1f-xf(x)=\int_x^1f(y)\,dy\quad\text{a.e.},
$$
and $u'$ (which has a continuous version) is itself absolutely continuous with $u''=-f$ a.e. Also $u(0)=0$ and $u'(1)=0$.

*Kernel.* If $Kf=0$ then $u'(x)=\int_x^1f=0$ for all $x$, so $f=0$ a.e. (Lebesgue differentiation). So $\ker K=0$.

*Positivity.* $\min(x,y)=\int_0^1\chi_{[0,x)}(t)\chi_{[0,y)}(t)\,dt$, so by Fubini $\langle Kf,f\rangle=\int_0^1\left\lvert\int_t^1f(x)\,dx\right\rvert^2dt\ge0$. Hence all eigenvalues are $\ge0$, and since $\ker K=0$ they are $>0$.

*Eigenvalues.* Let $Kf=\lambda f$ with $\lambda>0$, $f\neq0$. Then $f=\lambda^{-1}u$ is continuous, hence (bootstrapping) smooth, and $\lambda f''=-f$, $f(0)=0$, $f'(1)=0$. With $\omega=\lambda^{-1/2}$, $f=A\sin\omega x$ (the condition $f(0)=0$ kills the cosine), and $f'(1)=A\omega\cos\omega=0$ forces $\cos\omega=0$, i.e. $\omega=(n-\frac12)\pi$, $n\ge1$. Conversely each such $f$ satisfies $Kf=\lambda f$: $u=Kf$ and $\lambda f$ both solve $v''=-f$, $v(0)=0$, $v'(1)=0$, and the difference $w$ satisfies $w''=0$, $w(0)=0$, $w'(1)=0$, so $w=0$. So
$$
\lambda_n=\frac1{(n-\frac12)^2\pi^2},\qquad f_n(x)=\sqrt2\sin\left((n-\tfrac12)\pi x\right),\quad n=1,2,\dots
$$
Each eigenspace is one-dimensional (the ODE solution is unique up to scaling). Normalisation: $\int_0^1\sin^2(\omega x)\,dx=\frac12-\frac{\sin2\omega}{4\omega}=\frac12$ since $\sin2\omega=\sin((2n-1)\pi)=0$.

*Basis.* By the spectral theorem, $L^2[0,1]=\ker K\oplus\overline{\mathrm{span}}\lbrace f_n\rbrace=\overline{\mathrm{span}}\lbrace f_n\rbrace$. Eigenvectors of a self-adjoint operator for distinct eigenvalues are orthogonal. So $\lbrace f_n\rbrace$ is an orthonormal basis.

(Check: the trace $\sum\lambda_n=\frac4{\pi^2}\sum_{n\ge1}\frac1{(2n-1)^2}=\frac4{\pi^2}\cdot\frac{\pi^2}8=\frac12$ equals $\int_0^1k(x,x)\,dx=\int_0^1x\,dx=\frac12$.)

### 18.

$y\in\ker T^*\iff T^*y=0\iff\langle x,T^*y\rangle=0\ \forall x\iff\langle Tx,y\rangle=0\ \forall x\iff y\in(\mathrm{ran}\,T)^\perp$.

For the second identity, take orthogonal complements: $(\ker T^*)^\perp=(\mathrm{ran}\,T)^{\perp\perp}=\overline{\mathrm{ran}\,T}$, using $S^{\perp\perp}=\overline S$ for a subspace $S$ (which follows from $H=\overline S\oplus\overline S^\perp$ and $S^\perp=\overline S^\perp$).

---

## Qualifying-exam level

### 19.

Let $N=\ker T$.

*Step 0: $N$ is finite-dimensional.* On $N$, $K=I$. The unit ball of $N$ equals $K(\text{unit ball of }N)$, which is relatively compact; it is also closed. So the unit ball of $N$ is compact and $\dim N<\infty$ (Problem 7).

(a) Let $Tu_n\to f$. Replace $u_n$ by $u_n-P_Nu_n$, so $u_n\in N^\perp$ (this does not change $Tu_n$).

*Claim: $(u_n)$ is bounded.* If not, pass to a subsequence with $\lVert u_n\rVert\to\infty$ and set $v_n=u_n/\lVert u_n\rVert\in N^\perp$. Then $Tv_n\to0$. By compactness a further subsequence has $Kv_n\to w$. Then $v_n=Tv_n+Kv_n\to w$, so $\lVert w\rVert=1$, $w\in N^\perp$ (closed), and $Tw=\lim Tv_n=0$, i.e. $w\in N$. So $w\in N\cap N^\perp=\lbrace0\rbrace$, contradicting $\lVert w\rVert=1$.

Now $(u_n)$ is bounded, so a subsequence has $Ku_n\to z$. Then $u_n=Tu_n+Ku_n\to f+z=:u$, and $Tu=\lim Tu_n=f$. So $f\in\mathrm{ran}\,T$, and the range is closed.

(b) Suppose $T$ is injective but not surjective. Let $H_n=T^nH$. Note $T^n=(I-K)^n=I-K_n$ where $K_n$ is compact (expand by the binomial theorem; every term except $I$ contains $K$). By (a) applied to $K_n$, each $H_n$ is closed. Clearly $H_0\supseteq H_1\supseteq H_2\supseteq\cdots$. The inclusions are strict: $H_1\neq H_0$ by assumption, and if $H_{n+1}=H_n$ for some $n\ge1$, then for any $x$ we have $T^nx=T^{n+1}y$ for some $y$, so by injectivity of $T^n$, $x=Ty$, i.e. $T$ is onto, a contradiction.

Choose unit vectors $x_n\in H_n\cap H_{n+1}^\perp$. For $n<m$,
$$
Kx_n-Kx_m=x_n-\left(Tx_n+x_m-Tx_m\right).
$$
Here $Tx_n\in H_{n+1}$, $x_m\in H_m\subseteq H_{n+1}$ and $Tx_m\in H_{m+1}\subseteq H_{n+1}$, so the bracket $z$ lies in $H_{n+1}$, while $x_n\perp H_{n+1}$. By Pythagoras $\lVert Kx_n-Kx_m\rVert^2=\lVert x_n\rVert^2+\lVert z\rVert^2\ge1$. So $(Kx_n)$ has no convergent subsequence although $(x_n)$ is bounded, contradicting compactness of $K$. Hence $T$ is surjective.

### 20.

*Bounded below.* By Cauchy–Schwarz, $c\lVert x\rVert^2\le\mathrm{Re}\,\langle Tx,x\rangle\le\lVert Tx\rVert\lVert x\rVert$, so $\lVert Tx\rVert\ge c\lVert x\rVert$. In particular $T$ is injective.

*Closed range.* If $Tx_n\to y$, then $\lVert x_n-x_m\rVert\le c^{-1}\lVert Tx_n-Tx_m\rVert$, so $(x_n)$ is Cauchy, $x_n\to x$, and $Tx=y$.

*Dense range.* If $y\perp\mathrm{ran}\,T$ then $0=\mathrm{Re}\,\langle Ty,y\rangle\ge c\lVert y\rVert^2$, so $y=0$. Thus $(\mathrm{ran}\,T)^\perp=0$ and the range is dense.

So $T$ is a bijection. For $y=Tx$, $\lVert T^{-1}y\rVert=\lVert x\rVert\le c^{-1}\lVert Tx\rVert=c^{-1}\lVert y\rVert$, so $\lVert T^{-1}\rVert\le1/c$.

(This is the operator form of the Lax–Milgram theorem: apply it to the operator representing a bounded coercive sesquilinear form $a(u,v)=\langle Tu,v\rangle$.)

### 21.

(a) Let $\lbrace d_1,d_2,\dots\rbrace$ be dense in $H$. Apply Gram–Schmidt to this sequence, discarding any vector that is a linear combination of earlier ones. The result is an orthonormal sequence $(e_n)$ whose linear span equals the span of the $d_j$, hence is dense. Since $H$ is infinite-dimensional, the sequence is infinite. A dense span means $(e_n)$ is an orthonormal basis, so Parseval holds: $\lVert x\rVert^2=\sum\lvert\langle x,e_n\rangle\rvert^2$.

Define $U:H\to\ell^2$ by $Ux=(\langle x,e_n\rangle)_n$. It is linear and, by Parseval, isometric. It is onto: given $a\in\ell^2$, the partial sums $s_N=\sum_{n\le N}a_ne_n$ satisfy $\lVert s_N-s_M\rVert^2=\sum_{M<n\le N}\lvert a_n\rvert^2$, so they are Cauchy; the limit $x$ has $\langle x,e_n\rangle=a_n$ by continuity of the inner product. An isometric linear bijection preserves inner products (polarisation).

(b) If $\lbrace e_\alpha\rbrace_{\alpha\in A}$ is orthonormal with $A$ uncountable, then $\lVert e_\alpha-e_\beta\rVert=\sqrt2$ for $\alpha\neq\beta$. The open balls $B(e_\alpha,\frac{\sqrt2}2)$ are pairwise disjoint. A dense subset must meet each of them, so it is uncountable.

### 22.

Recall the fact from Problem 8(b): if $Y^*$ is separable then $Y$ is separable. Apply it with $Y=X^*$: if $X^{**}$ is separable, then $X^*$ is separable.

(a) Under $c_0^*\cong\ell^1$ and $(\ell^1)^*\cong\ell^\infty$, the canonical map $J:c_0\to c_0^{**}$ becomes the inclusion $c_0\hookrightarrow\ell^\infty$: for $x\in c_0$ and $b\in\ell^1$, $J(x)(b)=\sum_nb_nx_n=\varphi_x(b)$. The sequence $(1,1,1,\dots)\in\ell^\infty$ is not in $c_0$, so $J$ is not onto and $c_0$ is not reflexive.

(b) $\ell^1$ is separable (finitely supported rational sequences are dense). $(\ell^1)^*\cong\ell^\infty$ is not separable: the uncountably many $0$–$1$ sequences are at mutual distance $1$, so (as in Problem 21(b)) no countable set is dense. If $\ell^1$ were reflexive, $(\ell^1)^{**}=J(\ell^1)$ would be separable, and then $(\ell^1)^*$ would be separable by the fact above. Contradiction.

(c) Same argument. $L^1[0,1]$ is separable (step functions with rational data are dense). $L^\infty[0,1]$ is not separable: the functions $\chi_{[0,t]}$, $t\in(0,1]$, satisfy $\lVert\chi_{[0,t]}-\chi_{[0,s]}\rVert_\infty=1$ for $s\neq t$. If $L^1[0,1]$ were reflexive, its bidual would be separable, hence its dual $L^\infty$ would be separable. Contradiction.

### 23.

Write $R=\mathrm{ran}\,P$ and $N=\ker P$. Since $P^2=P$, every $x$ decomposes as $x=Px+(x-Px)$ with $Px\in R$ and $x-Px\in N$, and $Pu=u$ for $u\in R$. Also $\lVert P\rVert\ge1$: pick $u\in R$, $u\neq0$ (possible as $P\neq0$); then $Pu=u$.

*(i) ⇒ (ii).* For $x,y\in H$: $\langle Px,y\rangle=\langle Px,Py+(y-Py)\rangle=\langle Px,Py\rangle$ because $Px\in R\perp N\ni y-Py$. Similarly $\langle x,Py\rangle=\langle Px,Py\rangle$. So $P=P^*$.

*(ii) ⇒ (i).* For $u=Px\in R$ and $v\in N$: $\langle u,v\rangle=\langle Px,v\rangle=\langle x,Pv\rangle=0$.

*(i) ⇒ (iii).* By Pythagoras, $\lVert x\rVert^2=\lVert Px\rVert^2+\lVert x-Px\rVert^2\ge\lVert Px\rVert^2$, so $\lVert P\rVert\le1$; with $\lVert P\rVert\ge1$, $\lVert P\rVert=1$.

*(iii) ⇒ (i).* Let $u\in R$, $v\in N$ and $t\in\mathbb{R}$. Then $P(u+tv)=u$, so $\lVert u\rVert\le\lVert u+tv\rVert$, i.e.
$$
0\le2t\mathrm{Re}\,\langle u,v\rangle+t^2\lVert v\rVert^2\quad\text{for all }t\in\mathbb{R}.
$$
Dividing by $t$ and letting $t\to0^+$ and $t\to0^-$ gives $\mathrm{Re}\,\langle u,v\rangle=0$. Replacing $v$ by $iv\in N$ gives $\mathrm{Im}\,\langle u,v\rangle=0$. So $u\perp v$.
