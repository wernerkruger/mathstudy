# 3.1 Measure and integration: problems

Spend at least 30 minutes on each problem (45 minutes on Qualifying-exam level problems) before reading [solutions.md](solutions.md). Write full proofs. Throughout, $m$ is Lebesgue measure on $\mathbb{R}$ (or $\mathbb{R}^n$), and "a.e." means "almost everywhere".

## Warm-up

**1.** (a) Show that the intersection of any family of σ-algebras on $X$ is a σ-algebra.
(b) Give an example of two σ-algebras on $X=\lbrace1,2,3\rbrace$ whose union is not a σ-algebra.

**2.** Let $\mu$ be a measure and $E_1\supseteq E_2\supseteq\cdots$ measurable sets. Show that if $\mu(E_1)<\infty$ then $\mu\left(\bigcap_n E_n\right)=\lim_n\mu(E_n)$, and give an example showing that the hypothesis $\mu(E_1)<\infty$ cannot be dropped.

**3.** Compute, with justification,
$$
\lim_{n\to\infty}\int_0^n\left(1-\frac{x}{n}\right)^n dx .
$$

**4.** (a) Show that every countable subset of $\mathbb{R}$ has Lebesgue measure zero.
(b) Show that the Cantor middle-thirds set $C$ has measure zero and is uncountable.

**5.** Let $f\ge0$ be measurable with $\int f\,d\mu=0$. Prove that $f=0$ $\mu$-a.e.

**6.** (Markov's inequality.) Let $f$ be measurable and $\alpha>0$. Prove $\mu(\lbrace\lvert f\rvert\ge\alpha\rbrace)\le\alpha^{-1}\int\lvert f\rvert\,d\mu$. Deduce that every $f\in L^1(\mu)$ is finite a.e.

## Core

**7.** (Vitali.) Construct a subset of $[0,1]$ that is not Lebesgue measurable, and prove that it is not measurable. State where you used the axiom of choice.

**8.** Let $E\subseteq\mathbb{R}$ be Lebesgue measurable with $m(E)<\infty$ and let $\varepsilon>0$. Using only the definition of Lebesgue outer measure (as an infimum over countable covers by open intervals) and Carathéodory measurability, show that:
(a) there is an open set $U\supseteq E$ with $m(U\setminus E)<\varepsilon$;
(b) there is a compact set $K\subseteq E$ with $m(E\setminus K)<\varepsilon$.

**9.** (Egorov.) Let $\mu(X)<\infty$ and let $f_n,f:X\to\mathbb{R}$ be measurable with $f_n\to f$ a.e. Prove that for every $\varepsilon>0$ there is a measurable $E$ with $\mu(E)<\varepsilon$ such that $f_n\to f$ uniformly on $X\setminus E$. Show by example that the hypothesis $\mu(X)<\infty$ is needed.

**10.** (a) Give a sequence of non-negative functions $f_n$ on $\mathbb{R}$ for which the inequality in Fatou's lemma is strict.
(b) Derive the dominated convergence theorem from Fatou's lemma.

**11.** Prove that
$$
\lim_{n\to\infty}\int_0^1\frac{n x^{n-1}}{1+x}\,dx=\frac12 .
$$

**12.** (a) Construct a sequence $f_n$ on $[0,1]$ with $\lVert f_n\rVert_1\to0$ but $f_n(x)$ convergent for no $x\in[0,1]$.
(b) Prove that if $f_n\to f$ in measure, then some subsequence converges to $f$ a.e.

**13.** Let $f(x,y)=\dfrac{x^2-y^2}{(x^2+y^2)^2}$ on $(0,1]^2$. Compute both iterated integrals $\int_0^1\int_0^1f\,dy\,dx$ and $\int_0^1\int_0^1f\,dx\,dy$, and explain why this does not contradict Fubini's theorem.

**14.** Let $f\in L^1(\mathbb{R})$. Prove that $\lim_{h\to0}\int_\mathbb{R}\lvert f(x+h)-f(x)\rvert\,dx=0$. You may use that $C_c(\mathbb{R})$ is dense in $L^1(\mathbb{R})$. Show that the analogous statement fails in $L^\infty(\mathbb{R})$.

**15.** Let $\mu(X)<\infty$.
(a) Show that if $1\le p<q\le\infty$ then $L^q(\mu)\subseteq L^p(\mu)$ and $\lVert f\rVert_p\le\mu(X)^{1/p-1/q}\lVert f\rVert_q$.
(b) Show that $\lim_{p\to\infty}\lVert f\rVert_p=\lVert f\rVert_\infty$ for every $f\in L^\infty(\mu)$.

**16.** (Riesz–Fischer.) Prove that $L^p(\mu)$ is complete for $1\le p<\infty$.

**17.** Let $f\in L^1(\mathbb{R})$ be real-valued and define the signed measure $\nu(E)=\int_Ef\,dm$. Find a Hahn decomposition for $\nu$, its Jordan decomposition, and prove that $\lvert\nu\rvert(E)=\int_E\lvert f\rvert\,dm$.

**18.** Let $m$ be Lebesgue measure on the Borel sets of $[0,1]$ and $c$ counting measure on the same σ-algebra. Show that $m\ll c$ but that there is no measurable $f$ with $m(E)=\int_Ef\,dc$ for all Borel $E$. Which hypothesis of the Radon–Nikodym theorem fails?

**19.** (Borel–Cantelli.) (a) Prove that if $\sum_n\mu(E_n)<\infty$ then almost every point lies in only finitely many $E_n$.
(b) Deduce that for almost every $x\in\mathbb{R}$ there are only finitely many pairs of integers $(p,q)$ with $q\ge1$ and $\left\lvert x-\frac pq\right\rvert<\frac1{q^3}$.

## Qualifying-exam level

**20.** Let $f\in L^1(\mathbb{R})$. Prove that $\sum_{n\in\mathbb{Z}}\lvert f(x+n)\rvert<\infty$ for almost every $x$, and that the function $F(x)=\sum_{n\in\mathbb{Z}}f(x+n)$ satisfies $\int_0^1F(x)\,dx=\int_\mathbb{R}f(x)\,dx$.

**21.** Let $f\in L^1[0,2\pi]$. Prove that
$$
\lim_{n\to\infty}\int_0^{2\pi}f(x)\,\lvert\sin nx\rvert\,dx=\frac2\pi\int_0^{2\pi}f(x)\,dx .
$$

**22.** Let $1\le p<\infty$, and let $f_n,f\in L^p(\mu)$ with $f_n\to f$ a.e. and $\lVert f_n\rVert_p\to\lVert f\rVert_p$. Prove that $\lVert f_n-f\rVert_p\to0$.

**23.** Let $f_n\in L^2[0,1]$ with $\lVert f_n\rVert_2\le1$ for all $n$, and suppose $f_n\to f$ a.e. Prove that $f\in L^2[0,1]$ with $\lVert f\rVert_2\le1$, and that $\int_0^1f_ng\to\int_0^1fg$ for every $g\in L^2[0,1]$.

**24.** Let $E\subseteq\mathbb{R}$ be Lebesgue measurable and suppose there is a constant $c<1$ such that $m(E\cap I)\le c\,m(I)$ for every bounded open interval $I$. Prove that $m(E)=0$.

**25.** Let $F:[0,1]\to[0,1]$ be the Cantor function and $\mu_F$ the associated Lebesgue–Stieltjes measure on $[0,1]$ (so $\mu_F([0,x])=F(x)$).
(a) Prove that $\mu_F\perp m$.
(b) Prove that $F$ is not absolutely continuous.
(c) Compute $\int_0^1F(x)\,dx$.
