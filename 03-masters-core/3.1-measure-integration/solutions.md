# 3.1 Measure and integration: solutions

Read a solution only after a serious attempt. After reading, close the file and write the proof out yourself.

---

## Warm-up

### 1.

(a) Let $\lbrace\mathcal{M}_i\rbrace_{i\in I}$ be σ-algebras on $X$ and $\mathcal{M}=\bigcap_i\mathcal{M}_i$. Each $\mathcal{M}_i$ contains $\emptyset$, so $\emptyset\in\mathcal{M}$. If $A\in\mathcal{M}$ then $A\in\mathcal{M}_i$ for all $i$, so $A^c\in\mathcal{M}_i$ for all $i$, so $A^c\in\mathcal{M}$. If $A_1,A_2,\dots\in\mathcal{M}$ then for each $i$ all $A_n\in\mathcal{M}_i$, so $\bigcup_nA_n\in\mathcal{M}_i$; hence $\bigcup_nA_n\in\mathcal{M}$.

(b) Let $\mathcal{M}_1=\lbrace\emptyset,\lbrace1\rbrace,\lbrace2,3\rbrace,X\rbrace$ and $\mathcal{M}_2=\lbrace\emptyset,\lbrace2\rbrace,\lbrace1,3\rbrace,X\rbrace$. Both are σ-algebras. Their union contains $\lbrace1\rbrace$ and $\lbrace2\rbrace$ but not $\lbrace1,2\rbrace$, so it is not closed under unions.

### 2.

Put $F_n=E_1\setminus E_n$. Then $F_1\subseteq F_2\subseteq\cdots$ and $\bigcup_nF_n=E_1\setminus\bigcap_nE_n$. By continuity from below, $\mu(E_1\setminus\bigcap E_n)=\lim\mu(E_1\setminus E_n)$. Since $\mu(E_1)<\infty$, all sets involved have finite measure and $\mu(E_1\setminus A)=\mu(E_1)-\mu(A)$ for $A\subseteq E_1$. So $\mu(E_1)-\mu(\bigcap E_n)=\mu(E_1)-\lim\mu(E_n)$; cancel the finite quantity $\mu(E_1)$.

Counterexample: $E_n=[n,\infty)\subseteq\mathbb{R}$ with Lebesgue measure. Each $m(E_n)=\infty$, but $\bigcap_nE_n=\emptyset$ has measure $0$.

(Continuity from below, for completeness: if $A_1\subseteq A_2\subseteq\cdots$, let $B_1=A_1$, $B_k=A_k\setminus A_{k-1}$; these are disjoint with $\bigcup_{k\le n}B_k=A_n$, so $\mu(\bigcup A_n)=\sum_k\mu(B_k)=\lim_n\mu(A_n)$.)

### 3.

The limit is $1$.

Let $f_n(x)=(1-x/n)^n\chi_{[0,n]}(x)$ on $[0,\infty)$. For fixed $x\ge0$ and $n>x$, $f_n(x)=(1-x/n)^n\to e^{-x}$. Since $1-t\le e^{-t}$ for all real $t$, for $0\le x\le n$ we have $0\le1-x/n\le e^{-x/n}$, and raising to the $n$-th power gives $0\le f_n(x)\le e^{-x}$. The function $e^{-x}$ is integrable on $[0,\infty)$, so by the dominated convergence theorem
$$
\int_0^n\left(1-\frac xn\right)^ndx=\int_0^\infty f_n\to\int_0^\infty e^{-x}\,dx=1.
$$
Check: directly, $\int_0^n(1-x/n)^n\,dx=\frac{n}{n+1}\to1$.

### 4.

(a) Let $A=\lbrace a_1,a_2,\dots\rbrace$ and $\varepsilon>0$. The intervals $I_k=(a_k-\varepsilon2^{-k-1},a_k+\varepsilon2^{-k-1})$ cover $A$ with total length $\sum_k\varepsilon2^{-k}=\varepsilon$. So $m^*(A)\le\varepsilon$ for every $\varepsilon$, hence $m^*(A)=0$, and null sets are measurable.

(b) $C=\bigcap_kC_k$ where $C_k$ is a union of $2^k$ disjoint closed intervals each of length $3^{-k}$. So $m(C)\le m(C_k)=(2/3)^k\to0$.

Uncountability: every $x\in[0,1]$ has a ternary expansion $x=\sum_{k\ge1}d_k3^{-k}$, $d_k\in\lbrace0,1,2\rbrace$. $C$ is exactly the set of $x$ having an expansion with all $d_k\in\lbrace0,2\rbrace$ (at stage $k$ one removes the points whose $k$-th digit must be $1$). The map $(\epsilon_k)\mapsto\sum_k2\epsilon_k3^{-k}$ from $\lbrace0,1\rbrace^{\mathbb{N}}$ to $C$ is injective (two different $0/2$-expansions give different numbers: if they first differ at place $j$, the difference is at least $2\cdot3^{-j}-\sum_{k>j}2\cdot3^{-k}=3^{-j}>0$) and onto $C$. Since $\lbrace0,1\rbrace^\mathbb{N}$ is uncountable (Cantor's diagonal argument), so is $C$.

### 5.

For $n\ge1$ let $E_n=\lbrace f\ge1/n\rbrace$. Then $\frac1n\chi_{E_n}\le f$, so $\frac1n\mu(E_n)\le\int f=0$, so $\mu(E_n)=0$. Since $\lbrace f>0\rbrace=\bigcup_nE_n$, countable subadditivity gives $\mu(\lbrace f>0\rbrace)=0$.

### 6.

Let $E=\lbrace\lvert f\rvert\ge\alpha\rbrace$. Then $\alpha\chi_E\le\lvert f\rvert$ pointwise, so $\alpha\mu(E)=\int\alpha\chi_E\le\int\lvert f\rvert$.

If $f\in L^1$, then $\lbrace\lvert f\rvert=\infty\rbrace\subseteq\lbrace\lvert f\rvert\ge n\rbrace$ for every $n$, so its measure is at most $\frac1n\lVert f\rVert_1\to0$.

---

## Core

### 7.

Define $x\sim y$ on $[0,1]$ iff $x-y\in\mathbb{Q}$. This is an equivalence relation. **Using the axiom of choice**, choose a set $V\subseteq[0,1]$ containing exactly one element of each equivalence class.

Let $q_1,q_2,\dots$ enumerate $\mathbb{Q}\cap[-1,1]$ and $V_k=V+q_k$.

- *Disjoint:* if $x\in V_j\cap V_k$ then $x-q_j,x-q_k\in V$ are equivalent (their difference $q_k-q_j$ is rational), so they are equal, so $q_j=q_k$ and $j=k$.
- *Cover $[0,1]$:* given $x\in[0,1]$, let $v\in V$ be the representative of its class. Then $x-v\in\mathbb{Q}\cap[-1,1]$, so $x-v=q_k$ for some $k$, and $x\in V_k$.
- *Contained in $[-1,2]$:* clear.

Suppose $V$ were measurable. By translation invariance each $V_k$ is measurable with $m(V_k)=m(V)$. By countable additivity and monotonicity,
$$
1=m([0,1])\le m\left(\bigcup_kV_k\right)=\sum_{k=1}^\infty m(V)\le m([-1,2])=3.
$$
If $m(V)=0$ the sum is $0<1$; if $m(V)>0$ the sum is $\infty>3$. Either way a contradiction, so $V$ is not measurable.

### 8.

(a) By definition of outer measure there are open intervals $I_j$ covering $E$ with $\sum_j\lvert I_j\rvert<m(E)+\varepsilon$. Let $U=\bigcup_jI_j$, an open set containing $E$. By countable subadditivity $m(U)\le\sum\lvert I_j\rvert<m(E)+\varepsilon$. Since $E$ is measurable and $m(E)<\infty$, $m(U\setminus E)=m(U)-m(E)<\varepsilon$.

(b) *Bounded case.* Suppose $E\subseteq J=[-N,N]$. Apply (a) to the measurable set $J\setminus E$ (finite measure): there is an open $U\supseteq J\setminus E$ with $m(U\setminus(J\setminus E))<\varepsilon$. Let $K=J\setminus U=J\cap U^c$, closed and bounded, hence compact. Since $J\setminus E\subseteq U$, we have $K\subseteq E$. Also $E\setminus K=E\cap U$, and every point of $E\cap U$ lies in $U$ but not in $J\setminus E$, so $E\setminus K\subseteq U\setminus(J\setminus E)$ and $m(E\setminus K)<\varepsilon$.

*General case.* Let $E_N=E\cap[-N,N]$. The sets $E\setminus E_N$ decrease to $\emptyset$ and $m(E)<\infty$, so by continuity from above there is $N$ with $m(E\setminus E_N)<\varepsilon/2$. By the bounded case pick compact $K\subseteq E_N$ with $m(E_N\setminus K)<\varepsilon/2$. Then $m(E\setminus K)<\varepsilon$.

### 9.

Discard the null set where $f_n\not\to f$ (add it to $E$ at the end). For $k,n\ge1$ let
$$
E_n(k)=\bigcup_{j\ge n}\left\lbrace x:\lvert f_j(x)-f(x)\rvert\ge\tfrac1k\right\rbrace .
$$
For fixed $k$, $E_1(k)\supseteq E_2(k)\supseteq\cdots$, and $\bigcap_nE_n(k)$ is the set where $\lvert f_j-f\rvert\ge1/k$ for infinitely many $j$, which is empty because $f_j\to f$ everywhere (after discarding). Since $\mu(X)<\infty$, continuity from above gives $\mu(E_n(k))\to0$, so choose $n_k$ with $\mu(E_{n_k}(k))<\varepsilon2^{-k}$. Let $E=\bigcup_kE_{n_k}(k)$, so $\mu(E)<\varepsilon$. If $x\notin E$, then for every $k$ and every $j\ge n_k$, $\lvert f_j(x)-f(x)\rvert<1/k$. That is uniform convergence on $X\setminus E$.

*Finite measure is needed.* On $\mathbb{R}$ let $f_n=\chi_{[n,n+1]}$, so $f_n\to0$ everywhere. If $m(E)<1$, then $[n,n+1]\setminus E\neq\emptyset$ for every $n$, so $\sup_{\mathbb{R}\setminus E}\lvert f_n\rvert=1$ for every $n$; there is no uniform convergence off $E$.

### 10.

(a) $f_n=\chi_{[n,n+1]}$ on $\mathbb{R}$: $\liminf f_n=0$ pointwise, so $\int\liminf f_n=0<1=\liminf\int f_n$.

(b) Suppose $f_n\to f$ a.e., $\lvert f_n\rvert\le g\in L^1$. Then $\lvert f\rvert\le g$ a.e., so $f\in L^1$. The functions $h_n=2g-\lvert f_n-f\rvert$ are non-negative a.e. and $h_n\to2g$ a.e. Fatou's lemma gives
$$
\int2g\le\liminf_n\int\left(2g-\lvert f_n-f\rvert\right)=\int2g-\limsup_n\int\lvert f_n-f\rvert .
$$
Since $\int2g<\infty$ we can subtract it: $\limsup\int\lvert f_n-f\rvert\le0$. Hence $\int\lvert f_n-f\rvert\to0$ and $\left\lvert\int f_n-\int f\right\rvert\le\int\lvert f_n-f\rvert\to0$.

### 11.

Let $g(x)=\frac1{1+x}$, so $g(1)=\frac12$ and $\lvert g'(x)\rvert=\frac1{(1+x)^2}\le1$ on $[0,1]$. Integrate by parts (both factors are $C^1$ on $[0,1]$):
$$
\int_0^1nx^{n-1}g(x)\,dx=\left[x^ng(x)\right]_0^1-\int_0^1x^ng'(x)\,dx=\frac12-\int_0^1x^ng'(x)\,dx .
$$
And $\left\lvert\int_0^1x^ng'(x)\,dx\right\rvert\le\int_0^1x^n\,dx=\frac1{n+1}\to0$. So the limit is $\frac12$.

(The general principle: $nx^{n-1}\,dx$ is a probability measure on $[0,1]$ concentrating at $1$, so $\int nx^{n-1}g\to g(1)$ for any $g$ continuous at $1$ and bounded.)

### 12.

(a) Enumerate the dyadic intervals level by level: for $k=0,1,2,\dots$ and $j=0,\dots,2^k-1$, let $I_{k,j}=[j2^{-k},(j+1)2^{-k}]$, and let $f_1,f_2,\dots$ be the indicators $\chi_{I_{0,0}},\chi_{I_{1,0}},\chi_{I_{1,1}},\chi_{I_{2,0}},\dots$. If $f_n=\chi_{I_{k,j}}$ then $\lVert f_n\rVert_1=2^{-k}$, and $k\to\infty$ as $n\to\infty$, so $\lVert f_n\rVert_1\to0$. But for every $x\in[0,1]$ and every level $k$, $x$ lies in at least one $I_{k,j}$ and outside at least one other (for $k\ge1$). So $f_n(x)=1$ infinitely often and $f_n(x)=0$ infinitely often; $f_n(x)$ does not converge.

(b) Choose $n_1<n_2<\cdots$ with $\mu(E_k)<2^{-k}$, where $E_k=\lbrace\lvert f_{n_k}-f\rvert\ge2^{-k}\rbrace$ (possible since $f_n\to f$ in measure). Since $\sum_k\mu(E_k)<\infty$, Borel–Cantelli says that a.e. $x$ lies in only finitely many $E_k$. For such $x$ there is $K$ with $\lvert f_{n_k}(x)-f(x)\rvert<2^{-k}$ for all $k\ge K$, so $f_{n_k}(x)\to f(x)$.

### 13.

For fixed $x\in(0,1]$, note that
$$
\frac{\partial}{\partial y}\frac{y}{x^2+y^2}=\frac{x^2+y^2-2y^2}{(x^2+y^2)^2}=\frac{x^2-y^2}{(x^2+y^2)^2}.
$$
So $\int_0^1f(x,y)\,dy=\frac1{x^2+1}$, and $\int_0^1\int_0^1f\,dy\,dx=\int_0^1\frac{dx}{1+x^2}=\frac\pi4$. Since $f(y,x)=-f(x,y)$, the other order gives $-\frac\pi4$.

No contradiction: Fubini requires $f\in L^1([0,1]^2)$, and it is not. By Tonelli, using polar coordinates on the quarter-disc $\lbrace r\le1,\ 0\le\theta\le\pi/2\rbrace\subseteq[0,1]^2$, where $\lvert f\rvert=\frac{\lvert\cos2\theta\rvert}{r^2}$,
$$
\iint_{[0,1]^2}\lvert f\rvert\ge\int_0^{\pi/2}\lvert\cos2\theta\rvert\,d\theta\int_0^1\frac{r\,dr}{r^2}=1\cdot\infty=\infty .
$$

### 14.

Write $\tau_hf(x)=f(x+h)$; note $\lVert\tau_hg\rVert_1=\lVert g\rVert_1$ by translation invariance.

*Continuous compactly supported case.* Let $g\in C_c(\mathbb{R})$ with support in $[-R,R]$. Then $g$ is uniformly continuous, so $\omega(h)=\sup_x\lvert g(x+h)-g(x)\rvert\to0$ as $h\to0$. For $\lvert h\rvert\le1$, $\tau_hg-g$ vanishes outside $[-R-1,R+1]$, so $\lVert\tau_hg-g\rVert_1\le(2R+2)\,\omega(h)\to0$.

*General case.* Given $\varepsilon>0$ pick $g\in C_c$ with $\lVert f-g\rVert_1<\varepsilon$. Then
$$
\lVert\tau_hf-f\rVert_1\le\lVert\tau_h(f-g)\rVert_1+\lVert\tau_hg-g\rVert_1+\lVert g-f\rVert_1<2\varepsilon+\lVert\tau_hg-g\rVert_1,
$$
so $\limsup_{h\to0}\lVert\tau_hf-f\rVert_1\le2\varepsilon$ for every $\varepsilon$.

*Failure in $L^\infty$.* For $f=\chi_{[0,1]}$ and $0<h<1$, $\tau_hf-f=\chi_{[-h,0)}-\chi_{(1-h,1]}$ (up to endpoints), which has absolute value $1$ on a set of positive measure. So $\lVert\tau_hf-f\rVert_\infty=1$ for all small $h\neq0$.

### 15.

(a) If $q=\infty$: $\int\lvert f\rvert^p\le\lVert f\rVert_\infty^p\mu(X)$. If $q<\infty$: apply Hölder to $\lvert f\rvert^p\cdot1$ with exponents $r=q/p>1$ and $r'=q/(q-p)$:
$$
\int\lvert f\rvert^p\le\left(\int\lvert f\rvert^q\right)^{p/q}\mu(X)^{1-p/q}.
$$
Take $p$-th roots: $\lVert f\rVert_p\le\mu(X)^{1/p-1/q}\lVert f\rVert_q$.

(b) If $\mu(X)=0$ or $\lVert f\rVert_\infty=0$ both sides are $0$. Otherwise: by (a) with $q=\infty$, $\lVert f\rVert_p\le\mu(X)^{1/p}\lVert f\rVert_\infty$, and $\mu(X)^{1/p}\to1$, so $\limsup_p\lVert f\rVert_p\le\lVert f\rVert_\infty$. Conversely, for $0<\varepsilon<\lVert f\rVert_\infty$ the set $A=\lbrace\lvert f\rvert>\lVert f\rVert_\infty-\varepsilon\rbrace$ has $\mu(A)>0$ by definition of the essential supremum, and $\lVert f\rVert_p\ge(\lVert f\rVert_\infty-\varepsilon)\mu(A)^{1/p}\to\lVert f\rVert_\infty-\varepsilon$. So $\liminf_p\lVert f\rVert_p\ge\lVert f\rVert_\infty-\varepsilon$ for every $\varepsilon$.

### 16.

*Lemma.* A normed space is complete iff every absolutely convergent series converges. (If every such series converges and $(x_n)$ is Cauchy, choose $n_1<n_2<\cdots$ with $\lVert x_{n_{k+1}}-x_{n_k}\rVert<2^{-k}$; the series $x_{n_1}+\sum_k(x_{n_{k+1}}-x_{n_k})$ converges, so a subsequence of $(x_n)$ converges, and a Cauchy sequence with a convergent subsequence converges.)

Let $f_k\in L^p$ with $\sum_k\lVert f_k\rVert_p=B<\infty$. Let $G_n=\sum_{k=1}^n\lvert f_k\rvert$ and $G=\sum_{k=1}^\infty\lvert f_k\rvert\in[0,\infty]$. By Minkowski, $\lVert G_n\rVert_p\le B$. Since $G_n^p\uparrow G^p$, MCT gives $\int G^p=\lim\int G_n^p\le B^p$. So $G\in L^p$ and in particular $G<\infty$ a.e. On the set where $G<\infty$ the series $\sum f_k(x)$ converges absolutely; define $F(x)$ as its sum there and $0$ elsewhere. Then $\lvert F\rvert\le G$, so $F\in L^p$, and
$$
\left\lvert F-\sum_{k=1}^nf_k\right\rvert^p\le\left(2G\right)^p\in L^1,
$$
with the left side tending to $0$ a.e. By DCT, $\lVert F-\sum_{k\le n}f_k\rVert_p\to0$. By the lemma, $L^p$ is complete.

### 17.

Let $P=\lbrace f\ge0\rbrace$ and $N=\lbrace f<0\rbrace$. For measurable $E\subseteq P$, $\nu(E)=\int_Ef\ge0$; for $E\subseteq N$, $\nu(E)\le0$. So $(P,N)$ is a Hahn decomposition.

The Jordan decomposition is $\nu^+(E)=\nu(E\cap P)=\int_Ef^+\,dm$ and $\nu^-(E)=-\nu(E\cap N)=\int_Ef^-\,dm$, where $f^\pm=\max(\pm f,0)$. These are mutually singular (concentrated on $P$ and $N$ respectively) and $\nu=\nu^+-\nu^-$, so by uniqueness of the Jordan decomposition this is it. Then
$$
\lvert\nu\rvert(E)=\nu^+(E)+\nu^-(E)=\int_E(f^++f^-)\,dm=\int_E\lvert f\rvert\,dm .
$$

### 18.

If $c(E)=0$ then $E=\emptyset$, so $m(E)=0$. Hence $m\ll c$.

Suppose $m(E)=\int_Ef\,dc$ for all Borel $E$. Taking $E=\lbrace x\rbrace$ gives $0=m(\lbrace x\rbrace)=\int_{\lbrace x\rbrace}f\,dc=f(x)$ for every $x$. So $f\equiv0$, and then $m([0,1])=\int f\,dc=0$, a contradiction.

The failing hypothesis: $c$ is not σ-finite on $[0,1]$ (a set of finite counting measure is finite, and a countable union of finite sets is countable).

### 19.

(a) Let $A=\limsup E_n=\bigcap_{N}\bigcup_{n\ge N}E_n$, the set of points in infinitely many $E_n$. For each $N$, $\mu(A)\le\mu(\bigcup_{n\ge N}E_n)\le\sum_{n\ge N}\mu(E_n)$, which tends to $0$ as the tail of a convergent series. So $\mu(A)=0$.

(b) Fix an integer $k$ and work in $[k,k+1]$. For $q\ge1$ let
$$
E_q=\bigcup_{p\in\mathbb{Z}}\left(\frac pq-\frac1{q^3},\frac pq+\frac1{q^3}\right)\cap[k,k+1].
$$
Only $p$ with $p/q\in[k-1,k+2]$ contribute, at most $3q+1\le4q$ values of $p$. So $m(E_q)\le4q\cdot\frac2{q^3}=\frac8{q^2}$, and $\sum_qm(E_q)<\infty$. By (a), a.e. $x\in[k,k+1]$ lies in only finitely many $E_q$. For such an $x$, there are only finitely many $q$ for which some $p$ satisfies $\lvert x-p/q\rvert<q^{-3}$, and for each such $q$, $\lvert qx-p\rvert<q^{-2}\le1$ allows at most two values of $p$ (an open interval of length $2$ contains at most two integers). So only finitely many pairs. A countable union over $k\in\mathbb{Z}$ of null sets is null.

---

## Qualifying-exam level

### 20.

By Tonelli (for the counting measure on $\mathbb{Z}$ times Lebesgue measure on $[0,1]$; both σ-finite) and translation invariance,
$$
\int_0^1\sum_{n\in\mathbb{Z}}\lvert f(x+n)\rvert\,dx=\sum_{n\in\mathbb{Z}}\int_0^1\lvert f(x+n)\rvert\,dx=\sum_{n\in\mathbb{Z}}\int_n^{n+1}\lvert f\rvert=\lVert f\rVert_1<\infty .
$$
So $\sum_n\lvert f(x+n)\rvert<\infty$ for a.e. $x\in[0,1]$. The function $x\mapsto\sum_n\lvert f(x+n)\rvert$ is $1$-periodic, so the exceptional set $Z\subseteq\mathbb{R}$ satisfies $Z=Z+1$, and $Z=\bigcup_{k\in\mathbb{Z}}\big((Z\cap[0,1])+k\big)$ is a countable union of null sets. So the series converges absolutely for a.e. $x\in\mathbb{R}$.

Since the double integral of $\lvert f(x+n)\rvert$ is finite, Fubini applies to $f(x+n)$:
$$
\int_0^1F(x)\,dx=\sum_{n\in\mathbb{Z}}\int_0^1f(x+n)\,dx=\sum_{n\in\mathbb{Z}}\int_n^{n+1}f=\int_\mathbb{R}f .
$$

### 21.

Let $\Lambda_n(f)=\int_0^{2\pi}f(x)\lvert\sin nx\rvert\,dx$ and $\Lambda(f)=\frac2\pi\int_0^{2\pi}f$. Both are linear and satisfy $\lvert\Lambda_n(f)\rvert\le\lVert f\rVert_1$, $\lvert\Lambda(f)\rvert\le\frac2\pi\lVert f\rVert_1\le\lVert f\rVert_1$.

*Step 1: intervals.* Let $f=\chi_{[a,b]}$ with $0\le a<b\le2\pi$. The function $\lvert\sin nx\rvert$ has period $\pi/n$ and $\int_0^{\pi/n}\lvert\sin nx\rvert\,dx=\frac1n\int_0^\pi\sin u\,du=\frac2n$, i.e. average value $\frac2\pi$ per period; by periodicity the integral over *any* interval of length $\pi/n$ is $\frac2n$. Cut $[a,b]$, starting from $a$, into $N=\lfloor n(b-a)/\pi\rfloor$ consecutive intervals of length $\pi/n$, plus a leftover piece of length less than $\pi/n$ on which the integrand is at most $1$. So
$$
\left\lvert\int_a^b\lvert\sin nx\rvert\,dx-N\cdot\frac2n\right\rvert\le\frac\pi n,
$$
and $N\cdot\frac2n=\frac2\pi(b-a)+O(1/n)$. Hence $\Lambda_n(\chi_{[a,b]})\to\frac2\pi(b-a)=\Lambda(\chi_{[a,b]})$. By linearity, $\Lambda_n(s)\to\Lambda(s)$ for every step function $s$ (finite linear combination of interval indicators).

*Step 2: density.* Step functions are dense in $L^1[0,2\pi]$. Given $\varepsilon>0$ choose a step function $s$ with $\lVert f-s\rVert_1<\varepsilon$. Then
$$
\lvert\Lambda_n(f)-\Lambda(f)\rvert\le\lvert\Lambda_n(f-s)\rvert+\lvert\Lambda_n(s)-\Lambda(s)\rvert+\lvert\Lambda(s-f)\rvert\le2\varepsilon+\lvert\Lambda_n(s)-\Lambda(s)\rvert,
$$
so $\limsup_n\lvert\Lambda_n(f)-\Lambda(f)\rvert\le2\varepsilon$. As $\varepsilon$ is arbitrary, the limit is $\Lambda(f)$.

(The same argument shows: if $\phi$ is bounded and $T$-periodic with mean $c$, then $\int f(x)\phi(nx)\,dx\to c\int f$ for every $f\in L^1$. The Riemann–Lebesgue lemma is the case $\phi(x)=e^{ix}$, $c=0$.)

### 22.

For $a,b\in\mathbb{C}$ and $p\ge1$, convexity of $t\mapsto t^p$ gives $\lvert a-b\rvert^p\le(\lvert a\rvert+\lvert b\rvert)^p\le2^{p-1}(\lvert a\rvert^p+\lvert b\rvert^p)$. So
$$
h_n=2^{p-1}\left(\lvert f_n\rvert^p+\lvert f\rvert^p\right)-\lvert f_n-f\rvert^p\ge0,
$$
and $h_n\to2^p\lvert f\rvert^p$ a.e. By Fatou,
$$
\int2^p\lvert f\rvert^p\le\liminf_n\int h_n=2^{p-1}\left(\lim_n\lVert f_n\rVert_p^p+\lVert f\rVert_p^p\right)-\limsup_n\int\lvert f_n-f\rvert^p=2^p\lVert f\rVert_p^p-\limsup_n\lVert f_n-f\rVert_p^p .
$$
Since $\lVert f\rVert_p<\infty$, subtract to get $\limsup_n\lVert f_n-f\rVert_p^p\le0$.

(The norm hypothesis is necessary: $f_n=n^{1/p}\chi_{(0,1/n)}\to0$ a.e. with $\lVert f_n\rVert_p=1\not\to0$.)

### 23.

*$f\in L^2$:* $\lvert f_n\rvert^2\to\lvert f\rvert^2$ a.e., so by Fatou $\int\lvert f\rvert^2\le\liminf\int\lvert f_n\rvert^2\le1$.

*Weak convergence.* Fix $g\in L^2[0,1]$ and $\varepsilon>0$. Because $\lvert g\rvert^2\in L^1$, the measure $E\mapsto\int_E\lvert g\rvert^2$ is absolutely continuous with respect to $m$ and finite, so there is $\delta>0$ with $m(E)<\delta\Rightarrow\int_E\lvert g\rvert^2<\varepsilon^2$. (Proof of this standard fact: otherwise there are $E_k$ with $m(E_k)<2^{-k}$ and $\int_{E_k}\lvert g\rvert^2\ge\varepsilon^2$; by Borel–Cantelli $A=\limsup E_k$ is null, yet by continuity from above for the finite measure $\lvert g\rvert^2dm$, $\int_A\lvert g\rvert^2=\lim_N\int_{\bigcup_{k\ge N}E_k}\lvert g\rvert^2\ge\varepsilon^2$, a contradiction.)

All $f_n$ and $f$ are finite a.e. and $m([0,1])<\infty$, so Egorov gives a measurable $E$ with $m(E)<\delta$ and $f_n\to f$ uniformly on $[0,1]\setminus E$. Then, by Cauchy–Schwarz,
$$
\left\lvert\int_0^1(f_n-f)g\right\rvert\le\sup_{[0,1]\setminus E}\lvert f_n-f\rvert\cdot\lVert g\rVert_1+\lVert f_n-f\rVert_2\left(\int_E\lvert g\rvert^2\right)^{1/2}\le\sup_{[0,1]\setminus E}\lvert f_n-f\rvert\cdot\lVert g\rVert_2+2\varepsilon .
$$
(We used $\lVert g\rVert_1\le\lVert g\rVert_2$ on $[0,1]$ and $\lVert f_n-f\rVert_2\le2$.) The first term tends to $0$, so $\limsup_n\lvert\int(f_n-f)g\rvert\le2\varepsilon$.

### 24.

Suppose $m(E)>0$. Then $m(E\cap[-N,N])>0$ for some $N$; replace $E$ by $E\cap[-N,N]$ (the hypothesis still holds for the smaller set). Apply the Lebesgue differentiation theorem to $\chi_E\in L^1(\mathbb{R})$: for a.e. $x$,
$$
\lim_{r\to0}\frac{m(E\cap(x-r,x+r))}{2r}=\chi_E(x).
$$
Since $m(E)>0$, there is a point $x\in E$ where this holds, so the ratio tends to $1$. But by hypothesis the ratio is at most $c<1$ for every $r$. Contradiction. Hence $m(E)=0$.

### 25.

Recall: $C=\bigcap_kC_k$; $[0,1]\setminus C$ is a countable disjoint union of open intervals ("removed intervals"), and $F$ is continuous, increasing, $F(0)=0$, $F(1)=1$, and constant on the closure of each removed interval.

(a) For a removed interval $(a,b)$, $F(a)=F(b)$, so $\mu_F((a,b))\le\mu_F((a,b])=F(b)-F(a)=0$. By countable additivity, $\mu_F([0,1]\setminus C)=0$ (note $\mu_F(\lbrace0\rbrace)=F(0)=0$ is irrelevant since $0\in C$). So $\mu_F$ is concentrated on $C$, while $m(C)=0$ (Problem 4) and $m$ is concentrated on $[0,1]\setminus C$. Hence $\mu_F\perp m$.

(b) $F$ is constant on each removed interval, so $F'=0$ on $[0,1]\setminus C$, i.e. a.e. If $F$ were absolutely continuous, the fundamental theorem of calculus for Lebesgue integrals would give $1=F(1)-F(0)=\int_0^1F'\,dm=0$. So $F$ is not absolutely continuous. (Directly: for each $k$, $C_k$ is a union of $2^k$ intervals of total length $(2/3)^k$ on which $F$ increases by a total of $1$.)

(c) The Cantor function satisfies $F(1-x)=1-F(x)$. (It holds at every stage of the standard construction $F=\lim F_k$, where $F_k$ is piecewise linear, and $C$ and its removed intervals are symmetric under $x\mapsto1-x$; pass to the uniform limit.) Hence
$$
\int_0^1F(x)\,dx=\int_0^1F(1-x)\,dx=\int_0^1\left(1-F(x)\right)dx=1-\int_0^1F(x)\,dx,
$$
so $\int_0^1F=\frac12$.
