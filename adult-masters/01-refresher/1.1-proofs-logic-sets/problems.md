# 1.1 Problems — Proofs, logic and sets

Attempt each problem before opening [solutions.md](solutions.md). Write every proof in full sentences. $\mathbb{N} = \lbrace 1, 2, 3, \dots\rbrace$.

---

## Warm-up

**1.** (a) Use truth tables to show that $P \Rightarrow Q$, $\neg Q \Rightarrow \neg P$ and $\neg P \vee Q$ are logically equivalent.
(b) Show that $P \Rightarrow Q$ is not equivalent to its converse $Q \Rightarrow P$.
(c) Show that $(P \Rightarrow Q) \wedge (P \Rightarrow R) \equiv P \Rightarrow (Q \wedge R)$.

**2.** For each statement, decide whether it is true, and write its negation with no $\neg$ in front of a quantifier.
(a) $\forall x \in \mathbb{R}\ \exists y \in \mathbb{R} : y > x$.
(b) $\exists y \in \mathbb{R}\ \forall x \in \mathbb{R} : y > x$.
(c) $\forall \varepsilon > 0\ \exists N \in \mathbb{N}\ \forall n \ge N : \dfrac{1}{n} < \varepsilon$.

**3.** Let $n$ be an integer. Prove that if $n$ is odd then $n^2$ is odd, and that if $n^2$ is even then $n$ is even. Which proof technique does the second part use?

**4.** Prove, by double inclusion, that for all sets $A, B, C$:

$$
A \setminus (B \cup C) = (A \setminus B) \cap (A \setminus C).
$$

**5.** Decide whether each function is injective and whether it is surjective. Prove your answers.
(a) $f : \mathbb{Z} \to \mathbb{Z}$, $f(n) = 2n + 1$.
(b) $g : \mathbb{R} \to \mathbb{R}$, $g(x) = x^3 - x$.
(c) $h : \mathbb{R} \to (0, \infty)$, $h(x) = e^x$.

**6.** Prove by induction that $2^n > n^2$ for every integer $n \ge 5$.

---

## Core

**7.** Prove that $\sqrt 3$ is irrational.

**8.** Prove that there are infinitely many primes of the form $4k + 3$.

**9.** Prove by strong induction that every integer $n \ge 12$ can be written as $n = 4a + 5b$ with $a, b$ non-negative integers.

**10.** Let $f : A \to B$.
(a) Prove that $f(f^{-1}(Y)) \subseteq Y$ for all $Y \subseteq B$, with equality for every $Y$ if and only if $f$ is surjective.
(b) Prove that $X \subseteq f^{-1}(f(X))$ for all $X \subseteq A$, with equality for every $X$ if and only if $f$ is injective.

**11.** Let $f : A \to B$ and $g : B \to C$, and suppose $g \circ f$ is bijective.
(a) Prove that $f$ is injective and $g$ is surjective.
(b) Give an example where neither $f$ nor $g$ is bijective.

**12.** On $\mathbb{R}$ define $x \sim y$ if $x - y \in \mathbb{Q}$.
(a) Prove that $\sim$ is an equivalence relation.
(b) Prove that every equivalence class is countable.
(c) Deduce that the set of equivalence classes $\mathbb{R}/{\sim}$ is uncountable.

**13.** On $X = \mathbb{Z} \times (\mathbb{Z}\setminus\lbrace 0\rbrace)$ define $(a,b) \sim (c,d)$ if $ad = bc$.
(a) Prove that $\sim$ is an equivalence relation. Take care with transitivity.
(b) Define $[(a,b)] + [(c,d)] := [(ad + bc, bd)]$. Prove that this is well defined.

**14.** Consider divisibility, $a \mid b$, on $\mathbb{N}$.
(a) Prove that it is a partial order but not a total order.
(b) Does $\mathbb{N}$ have a least element? A greatest element?
(c) Find all minimal and all maximal elements of $\lbrace 2, 3, \dots, 10\rbrace$. Does this set have a greatest element?

**15.** (a) Give an explicit injection $\mathbb{Z}\times\mathbb{Z} \to \mathbb{N}$ and prove that it is injective.
(b) Deduce that $\mathbb{Q}$ is countable.

**16.** Prove that if $A_1, A_2, \dots$ are countable sets, then $\bigcup_{n=1}^\infty A_n$ is countable. Point out where you use the axiom of (countable) choice.

**17.** Prove Cantor's theorem: for any set $A$ there is no surjection $A \to \mathcal{P}(A)$.

---

## Challenge

**18.** Prove the Schröder–Bernstein theorem: if there are injections $f : A \to B$ and $g : B \to A$, then there is a bijection $A \to B$.

**19.** (a) Write down an explicit bijection $[0,1] \to [0,1)$.
(b) Using Schröder–Bernstein, prove that $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})|$.

**20.** Use Zorn's lemma to prove that every vector space has a basis. State precisely which partially ordered set you use and verify every hypothesis of Zorn's lemma.

**21.** (a) Prove that the set of sequences $(x_n)_{n\ge1}$ with $x_n \in \lbrace 0, 1 \rbrace$ that are *eventually zero* is countable.
(b) Prove that the set of all functions $\mathbb{N} \to \mathbb{N}$ is uncountable.

**22.** Let $n \in \mathbb{N}$ and let $S$ be any set of $n + 1$ numbers chosen from $\lbrace 1, 2, \dots, 2n\rbrace$.
(a) Prove that $S$ contains two numbers that are coprime.
(b) Prove that $S$ contains two distinct numbers, one of which divides the other.
