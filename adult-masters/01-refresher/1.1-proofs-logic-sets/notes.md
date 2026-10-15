# 1.1 Notes — Proofs, logic and sets

These notes condense the module. They are not a replacement for the exercises: proof-writing is learned by writing proofs. Read a section, close the notes, and try to reproduce the key proofs.

Convention: $\mathbb{N} = \lbrace 1, 2, 3, \dots \rbrace$. Where $0$ is needed we write $\mathbb{N}_0$.

---

## 1. Logic

### 1.1 Connectives

A *statement* is a sentence that is either true or false. From statements $P, Q$ we form $\neg P$ (not), $P \wedge Q$ (and), $P \vee Q$ (inclusive or), $P \Rightarrow Q$ (if… then) and $P \Leftrightarrow Q$ (if and only if).

The only connective whose truth table people get wrong is the implication:

| $P$ | $Q$ | $P \Rightarrow Q$ |
|---|---|---|
| T | T | T |
| T | F | F |
| F | T | T |
| F | F | T |

An implication with a false hypothesis is *vacuously true*. This is why "every element of $\varnothing$ is purple" is true, and why $\varnothing$ is a subset of every set.

**Key equivalences** (check each with a truth table once, then memorise):

$$
P \Rightarrow Q \ \equiv\ \neg P \vee Q \ \equiv\ \neg Q \Rightarrow \neg P \quad\text{(contrapositive)}
$$

$$
\neg(P \wedge Q) \equiv \neg P \vee \neg Q, \qquad \neg(P \vee Q) \equiv \neg P \wedge \neg Q \quad\text{(De Morgan)}
$$

$$
\neg (P \Rightarrow Q) \equiv P \wedge \neg Q .
$$

The **converse** $Q \Rightarrow P$ is *not* equivalent to $P \Rightarrow Q$. Confusing an implication with its converse is the most common logical error in proofs.

### 1.2 Quantifiers

$\forall x \in S : P(x)$ means "for every $x$ in $S$, $P(x)$". $\exists x \in S : P(x)$ means "there is at least one $x$ in $S$ with $P(x)$". $\exists!$ means "there is exactly one".

**Negation rules:**

$$
\neg\left(\forall x : P(x)\right) \equiv \exists x : \neg P(x), \qquad \neg\left(\exists x : P(x)\right) \equiv \forall x : \neg P(x).
$$

For nested quantifiers, apply the rule from the outside in: each quantifier flips and the negation moves inwards. Bounded quantifiers keep their bounds. The negation of $\forall \varepsilon > 0 \ \ldots$ is $\exists \varepsilon > 0 \ \ldots$, *not* $\exists \varepsilon \le 0$.

**Example (Cauchy sequence).** $(a_n)$ is Cauchy if

$$
\forall \varepsilon > 0\ \exists N \in \mathbb{N}\ \forall m,n \ge N : |a_m - a_n| < \varepsilon .
$$

It is *not* Cauchy if

$$
\exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists m,n \ge N : |a_m - a_n| \ge \varepsilon .
$$

**Order matters.** $\forall x \in \mathbb{R}\ \exists y \in \mathbb{R} : y > x$ is true: $y$ may depend on $x$. $\exists y \in \mathbb{R}\ \forall x \in \mathbb{R} : y > x$ is false: a single $y$ would have to beat everything, including $y$ itself. In general $\exists y \forall x$ implies $\forall x \exists y$, but not conversely. The difference between continuity and *uniform* continuity (module 1.2) is exactly this swap.

### 1.3 Reading the logical form of a goal

The logical form of what you want to prove dictates the opening of the proof (Velleman's central idea):

| Goal | Proof starts with |
|---|---|
| $P \Rightarrow Q$ | "Assume $P$." Then derive $Q$. |
| $\forall x \in S : P(x)$ | "Let $x \in S$ be arbitrary." Then prove $P(x)$. |
| $\exists x : P(x)$ | Construct or exhibit an $x$ and verify $P(x)$, or prove existence indirectly. |
| $P \wedge Q$ | Prove $P$; prove $Q$. |
| $P \vee Q$ | "Assume $\neg P$." Then prove $Q$. Or split into cases. |
| $P \Leftrightarrow Q$ | Prove both directions. |
| $A = B$ (sets) | Prove $A \subseteq B$ and $B \subseteq A$. |

Hypotheses are *used* in the dual way. From $\forall x : P(x)$ you may plug in any $x$ you like. From $\exists x : P(x)$ you may say "choose such an $x$", and it is then fixed and you do not control it.

---

## 2. Proof techniques

### 2.1 Direct proof

Assume the hypothesis and chain implications to the conclusion.

*Example.* If $a \mid b$ and $b \mid c$ then $a \mid c$. *Proof:* $b = ak$ and $c = bl$ for integers $k, l$, so $c = a(kl)$. $\square$

### 2.2 Contrapositive

To prove $P \Rightarrow Q$, prove $\neg Q \Rightarrow \neg P$. Use it when $\neg Q$ gives you something concrete to work with.

*Example.* If $n^2$ is even then $n$ is even. *Proof:* suppose $n$ is odd, $n = 2k+1$. Then $n^2 = 2(2k^2 + 2k) + 1$ is odd. $\square$

### 2.3 Contradiction

Assume the statement is false and derive an absurdity.

**Theorem.** $\sqrt 2$ is irrational.

*Proof.* Suppose $\sqrt2 = p/q$ with $p, q$ positive integers and the fraction in lowest terms. Then $p^2 = 2q^2$, so $p^2$ is even, so $p$ is even (by §2.2). Write $p = 2r$. Then $4r^2 = 2q^2$, so $q^2 = 2r^2$ and $q$ is even too, contradicting lowest terms. $\square$

**Theorem (Euclid).** There are infinitely many primes.

*Proof.* Suppose $p_1, \dots, p_k$ are all the primes, and let $N = p_1 p_2 \cdots p_k + 1$. Since $N > 1$, it has a prime factor $p$, which must be some $p_i$. Then $p_i$ divides both $N$ and $N - 1$, so $p_i \mid 1$, which is absurd. $\square$

*Style note.* Many "proofs by contradiction" are really contrapositive proofs in disguise: you assume $P$ and $\neg Q$, derive $\neg P$, and declare a contradiction. Rewrite these as contrapositives; it is cleaner. Keep contradiction for genuinely indirect arguments, such as irrationality, infinitude, or uncountability.

### 2.4 Cases

Split into exhaustive cases and prove each. *Example:* $n^2 + n$ is even for every integer $n$ (case $n$ even, case $n$ odd). Better: $n^2 + n = n(n+1)$ is a product of consecutive integers, one of which is even. Look for the argument that avoids cases.

### 2.5 Existence and uniqueness

To prove $\exists! x : P(x)$, prove existence (find one) and uniqueness (if $P(x)$ and $P(y)$ then $x = y$).

A **non-constructive** existence proof shows something exists without exhibiting it. *Classic:* there are irrationals $a, b$ with $a^b$ rational. Either $\sqrt2^{\sqrt2}$ is rational (take $a = b = \sqrt2$), or it is not, and then take $a = \sqrt2^{\sqrt2}$, $b = \sqrt 2$, so that $a^b = \sqrt2^2 = 2$. We do not learn which case holds.

### 2.6 Disproof

To disprove $\forall x : P(x)$, give *one* $x$ with $\neg P(x)$. To disprove $\exists x : P(x)$, prove $\forall x : \neg P(x)$, which needs a real proof.

---

## 3. Induction

### 3.1 Ordinary induction

**Principle.** If $P(1)$ holds and $P(n) \Rightarrow P(n+1)$ for every $n \in \mathbb{N}$, then $P(n)$ holds for all $n \in \mathbb{N}$.

*Template.* "We prove $P(n)$ by induction on $n$. **Base case:** … **Inductive step:** let $n \ge 1$ and assume $P(n)$ (the inductive hypothesis). Then … [using the hypothesis] … so $P(n+1)$ holds."

*Example.* For $x > -1$ and all $n \in \mathbb{N}$, $(1+x)^n \ge 1 + nx$ (Bernoulli's inequality). Inductive step: $(1+x)^{n+1} = (1+x)^n(1+x) \ge (1+nx)(1+x) = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x$. The first inequality uses $1 + x > 0$.

### 3.2 Strong induction

**Principle.** If, for every $n$, the truth of $P(k)$ for all $k < n$ implies $P(n)$, then $P(n)$ holds for all $n$.

*Example (Fundamental Theorem of Arithmetic, existence).* Every $n \ge 2$ is a product of primes. If $n$ is prime, done. Otherwise $n = ab$ with $2 \le a, b < n$, and by the strong hypothesis both $a$ and $b$ are products of primes, hence so is $n$.

### 3.3 Well-ordering

**Well-ordering principle.** Every non-empty subset of $\mathbb{N}$ has a least element.

Ordinary induction, strong induction and well-ordering are equivalent (each can be proved from the others). Well-ordering gives proof by **smallest counterexample**: if $P(n)$ fails for some $n$, take the least such $n$ and derive a contradiction by finding a smaller one.

### 3.4 Pitfalls

- Forgetting or fudging the base case. ("All horses are the same colour" breaks at $n = 1 \to 2$: the inductive step silently assumes two overlapping groups.)
- Never using the inductive hypothesis. If you did not use it, you did not need induction, or you have made an error.
- Inducting on the wrong variable, or proving $P(n+1) \Rightarrow P(n)$ by accident.

---

## 4. Sets

### 4.1 Basics

A set is determined by its elements (extensionality). $A \subseteq B$ means $\forall x : x \in A \Rightarrow x \in B$. To prove $A = B$, prove $A \subseteq B$ and $B \subseteq A$ (*double inclusion*, or element-chasing).

Operations: $A \cup B$, $A \cap B$, $A \setminus B$, the complement $A^c$ (relative to a universe $U$), the power set $\mathcal{P}(A)$, and the Cartesian product $A \times B = \lbrace (a,b) : a \in A, b \in B\rbrace$.

**De Morgan's laws** for an indexed family $(A_i)_{i \in I}$:

$$
\left(\bigcup_{i \in I} A_i\right)^c = \bigcap_{i \in I} A_i^c, \qquad \left(\bigcap_{i \in I} A_i\right)^c = \bigcup_{i \in I} A_i^c .
$$

*Proof of the first:* $x \notin \bigcup A_i \iff \neg(\exists i : x \in A_i) \iff \forall i : x \notin A_i \iff x \in \bigcap A_i^c$. Set identities are logical identities in disguise.

**Indexed families** are used constantly in analysis and measure theory. For example, $\bigcap_{n\ge1}(0, 1/n) = \varnothing$ and $\bigcup_{n \ge 1} [1/n, 1] = (0,1]$. Check both carefully: these are where intuition about "the limit" misleads.

### 4.2 Russell's paradox

The "set" $R = \lbrace x : x \notin x \rbrace$ would satisfy $R \in R \iff R \notin R$. The fix (Zermelo–Fraenkel set theory, ZF) is that you may only form subsets $\lbrace x \in A : P(x) \rbrace$ of a set $A$ you already have. In practice: always know which set your elements are drawn from.

---

## 5. Functions

### 5.1 Definitions

A function $f : A \to B$ is a subset $f \subseteq A \times B$ such that every $a \in A$ is paired with exactly one $b \in B$. $A$ is the domain and $B$ the codomain. The codomain is part of the data: $x \mapsto x^2$ is surjective onto $[0, \infty)$ but not onto $\mathbb{R}$.

- **Injective:** $f(a) = f(a') \Rightarrow a = a'$.
- **Surjective:** $\forall b \in B\ \exists a \in A : f(a) = b$.
- **Bijective:** both. This holds exactly when there is an inverse $f^{-1} : B \to A$ with $f^{-1}\circ f = \mathrm{id}_A$ and $f \circ f^{-1} = \mathrm{id}_B$.

**Composition facts** (prove each once):

1. If $g \circ f$ is injective, then $f$ is injective.
2. If $g \circ f$ is surjective, then $g$ is surjective.
3. A composition of injections is injective, and a composition of surjections is surjective.
4. $f$ has a left inverse ($h \circ f = \mathrm{id}$) iff $f$ is injective (for $A \ne \varnothing$). $f$ has a right inverse ($f \circ h = \mathrm{id}$) iff $f$ is surjective. The second needs the axiom of choice in general: you must *choose* a preimage for each $b$.

### 5.2 Images and preimages

For $X \subseteq A$ and $Y \subseteq B$: $f(X) = \lbrace f(x) : x \in X\rbrace$ and $f^{-1}(Y) = \lbrace a \in A : f(a) \in Y \rbrace$. The preimage is defined for *every* $f$, not only bijections.

**Preimages preserve everything:**

$$
f^{-1}\left(\bigcup Y_i\right) = \bigcup f^{-1}(Y_i), \quad f^{-1}\left(\bigcap Y_i\right) = \bigcap f^{-1}(Y_i), \quad f^{-1}(B \setminus Y) = A \setminus f^{-1}(Y).
$$

**Images preserve unions only:** $f(\bigcup X_i) = \bigcup f(X_i)$, but in general only $f(X_1 \cap X_2) \subseteq f(X_1) \cap f(X_2)$, with equality for all $X_1, X_2$ iff $f$ is injective.

**Round trips:**

$$
f\left(f^{-1}(Y)\right) \subseteq Y \ \ (\text{equality for all } Y \iff f \text{ surjective}), \qquad X \subseteq f^{-1}\left(f(X)\right) \ \ (\text{equality for all } X \iff f \text{ injective}).
$$

These facts explain why topology and measure theory define continuity and measurability using **preimages**: preimages respect all the set operations used to build open sets and $\sigma$-algebras.

---

## 6. Relations

A relation on $A$ is a subset $R \subseteq A \times A$; write $a \sim b$ for $(a,b) \in R$.

| Property | Meaning |
|---|---|
| Reflexive | $a \sim a$ for all $a$ |
| Symmetric | $a \sim b \Rightarrow b \sim a$ |
| Antisymmetric | $a \sim b$ and $b \sim a \Rightarrow a = b$ |
| Transitive | $a \sim b$ and $b \sim c \Rightarrow a \sim c$ |

### 6.1 Equivalence relations

An **equivalence relation** is reflexive, symmetric and transitive. The **class** of $a$ is $[a] = \lbrace x \in A : x \sim a\rbrace$, and the quotient set is $A/{\sim} = \lbrace [a] : a \in A\rbrace$.

**Theorem.** The equivalence classes of an equivalence relation partition $A$: they are non-empty, cover $A$, and any two are either equal or disjoint. Conversely, every partition of $A$ comes from exactly one equivalence relation ("lie in the same block").

*Proof sketch.* $a \in [a]$ by reflexivity, so the classes are non-empty and cover $A$. If $c \in [a] \cap [b]$, then for $x \in [a]$ we get $x \sim a \sim c \sim b$ (using symmetry for $a \sim c$), so $x \in [b]$. Hence $[a] \subseteq [b]$, and by symmetry $[a] = [b]$. $\square$

**Key examples:**

- **Congruence mod $n$** on $\mathbb{Z}$: $a \equiv b$ iff $n \mid (a - b)$. The quotient is $\mathbb{Z}/n\mathbb{Z} = \lbrace [0], \dots, [n-1] \rbrace$.
- **Construction of $\mathbb{Q}$:** on $\mathbb{Z} \times (\mathbb{Z}\setminus\lbrace0\rbrace)$, $(a,b) \sim (c,d)$ iff $ad = bc$. The class of $(a,b)$ "is" $a/b$.
- **Projective space:** non-zero vectors of $\mathbb{R}^{n+1}$ modulo scaling by non-zero reals.
- **Cosets** $gH$ of a subgroup (module 1.4). **Quotient spaces** $V/W$ (module 1.3). **Functions equal almost everywhere** (module 3.1, where $L^p$ is a quotient).

### 6.2 Well-definedness

When you define a function on a quotient by a formula in a representative, $F([a]) := \text{formula}(a)$, you must check that the result does not depend on the representative: $a \sim a' \Rightarrow \text{formula}(a) = \text{formula}(a')$.

*Example.* On $\mathbb{Z}/n\mathbb{Z}$, $[a] + [b] := [a+b]$ is well defined: if $a' = a + kn$ and $b' = b + ln$ then $a' + b' = a + b + (k+l)n$. By contrast, $F([a]) := a$ is *not* well defined: it depends on the representative.

This check appears throughout algebra and is one of the most often omitted steps.

### 6.3 Orders

A **partial order** is reflexive, antisymmetric and transitive; a **total order** also has every two elements comparable. Examples: $\le$ on $\mathbb{R}$ (total); $\subseteq$ on $\mathcal{P}(A)$ and divisibility on $\mathbb{N}$ (partial, not total).

In a poset $(P, \le)$:

- An **upper bound** of $S \subseteq P$ is some $u \in P$ with $s \le u$ for all $s \in S$.
- A **greatest** element of $P$ is above everything. A **maximal** element has nothing strictly above it.
- A **chain** is a totally ordered subset.

Greatest implies maximal, but not conversely: in $\lbrace 2, 3, \dots, 10\rbrace$ under divisibility, $6, 7, 8, 9, 10$ are all maximal and there is no greatest element.

---

## 7. Cardinality

### 7.1 Definitions

$|A| = |B|$ means there is a bijection $A \to B$. $|A| \le |B|$ means there is an injection $A \to B$. $A$ is **finite** if it is empty or in bijection with $\lbrace1, \dots, n\rbrace$ for some $n$, **countably infinite** if $|A| = |\mathbb{N}|$, **countable** if finite or countably infinite, and **uncountable** otherwise.

Useful facts:

- A subset of a countable set is countable.
- $A$ is countable iff there is an injection $A \to \mathbb{N}$, iff ($A = \varnothing$ or there is a surjection $\mathbb{N} \to A$).
- An infinite set has a countably infinite subset (this uses a weak form of choice). So $\aleph_0 = |\mathbb{N}|$ is the smallest infinite cardinal.

### 7.2 Countable sets

**$\mathbb{N}\times\mathbb{N}$ is countable.** $(m, n) \mapsto 2^m 3^n$ is injective by unique factorisation. Alternatively, list the pairs along anti-diagonals $m + n = 2, 3, 4, \dots$, which gives the explicit bijection $(m,n) \mapsto \binom{m+n-1}{2} + m$.

**$\mathbb{Z}$ and $\mathbb{Q}$ are countable.** $\mathbb{Z}$: list $0, 1, -1, 2, -2, \dots$. $\mathbb{Q}$: the map $\mathbb{Z}\times\mathbb{N} \to \mathbb{Q}$, $(p, q) \mapsto p/q$, is a surjection from a countable set.

**A countable union of countable sets is countable.** If each $A_n$ is countable, choose surjections $f_n : \mathbb{N} \to A_n$ (assume each $A_n$ is non-empty). Then $(n, k) \mapsto f_n(k)$ is a surjection $\mathbb{N}\times\mathbb{N} \to \bigcup A_n$. Note that we *chose* infinitely many surjections; this uses the axiom of countable choice. Without some choice this theorem can fail.

**Algebraic numbers are countable.** There are countably many integer polynomials (a countable union over degree and coefficients), each with finitely many roots. Hence transcendental numbers exist, and in fact almost all reals are transcendental.

### 7.3 Uncountable sets

**Theorem (Cantor, 1891 diagonal argument).** $(0,1)$ is uncountable.

*Proof.* Let $f : \mathbb{N} \to (0,1)$ be any function and write $f(n) = 0.d_{n1}d_{n2}d_{n3}\ldots$ in decimal, using the expansion that does not end in recurring 9s. Define $x = 0.e_1e_2e_3\ldots$ with $e_n = 5$ if $d_{nn} \ne 5$ and $e_n = 4$ if $d_{nn} = 5$. Then $x \in (0,1)$, its expansion is the non-9s one, and $x$ differs from $f(n)$ in the $n$th digit. So $x \notin f(\mathbb{N})$, and $f$ is not surjective. $\square$

(Using digits 4 and 5 avoids the $0.0999\ldots = 0.1$ ambiguity.)

**Theorem (Cantor).** For every set $A$, there is no surjection $A \to \mathcal{P}(A)$. Hence $|A| < |\mathcal{P}(A)|$.

*Proof.* Given $f : A \to \mathcal{P}(A)$, let $D = \lbrace a \in A : a \notin f(a) \rbrace$. If $D = f(d)$, then $d \in D \iff d \notin f(d) = D$, a contradiction. The map $a \mapsto \lbrace a \rbrace$ is an injection, so $|A| \le |\mathcal{P}(A)|$, and the inequality is strict. $\square$

So there is an infinite hierarchy $|\mathbb{N}| < |\mathcal{P}(\mathbb{N})| < |\mathcal{P}(\mathcal{P}(\mathbb{N}))| < \cdots$.

### 7.4 Schröder–Bernstein

**Theorem (Schröder–Bernstein).** If there are injections $f : A \to B$ and $g : B \to A$, then there is a bijection $h : A \to B$.

So $\le$ on cardinalities is antisymmetric. The theorem does not use the axiom of choice.

*Proof.* Let $C_0 = A \setminus g(B)$ (the points of $A$ not hit by $g$), $C_{n+1} = g(f(C_n))$, and $C = \bigcup_{n \ge 0} C_n$. Define

$$
h(a) = \begin{cases} f(a) & a \in C, \\ g^{-1}(a) & a \notin C. \end{cases}
$$

This makes sense: if $a \notin C$ then $a \notin C_0$, so $a \in g(B)$, and $g^{-1}(a)$ is the unique preimage because $g$ is injective.

*Injective.* Each piece is injective. Suppose $a \in C$, $a' \notin C$ and $f(a) = g^{-1}(a')$. Then $a' = g(f(a))$. If $a \in C_n$ then $a' \in C_{n+1} \subseteq C$, a contradiction.

*Surjective.* Let $b \in B$. If $g(b) \notin C$, then $h(g(b)) = g^{-1}(g(b)) = b$. If $g(b) \in C$, then $g(b) \notin C_0$ (it lies in $g(B)$), so $g(b) \in C_{n+1} = g(f(C_n))$ for some $n$. Thus $g(b) = g(f(a))$ with $a \in C_n \subseteq C$. Since $g$ is injective, $b = f(a) = h(a)$. $\square$

*Picture.* Follow each point backwards along the chain $\cdots \to a \xrightarrow{f} b \xrightarrow{g} a' \to \cdots$. Chains that start in $A \setminus g(B)$ are matched using $f$; all others are matched using $g^{-1}$.

**Applications.**

- $|[0,1]| = |(0,1)| = |\mathbb{R}|$. Injections are easy to write down; bijections are fiddly.
- $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})|$. One injection: $\mathcal{P}(\mathbb{N}) \to \mathbb{R}$, $S \mapsto \sum_{n \in S} 10^{-n}$ (decimal digits 0 and 1 only, so no two sets give the same number). The other: $\mathbb{R} \to \mathcal{P}(\mathbb{Q})$, $x \mapsto \lbrace q \in \mathbb{Q} : q < x \rbrace$ (a Dedekind cut), together with $|\mathcal{P}(\mathbb{Q})| = |\mathcal{P}(\mathbb{N})|$.

The **continuum hypothesis** (no cardinality strictly between $|\mathbb{N}|$ and $|\mathbb{R}|$) can be neither proved nor disproved in ZFC (Gödel 1940, Cohen 1963). You will not need it.

---

## 8. The axiom of choice and Zorn's lemma

**Axiom of choice (AC).** For any family $(A_i)_{i \in I}$ of non-empty sets, there is a function choosing one element from each: $c(i) \in A_i$. It is needed only when the family is infinite *and* there is no rule to make the choice.

**Zorn's lemma.** Let $(P, \le)$ be a non-empty partially ordered set in which every chain has an upper bound in $P$. Then $P$ has a maximal element.

Zorn's lemma is equivalent to AC (and to the well-ordering theorem), given the other ZF axioms. You are not expected to prove the equivalence. Learn the *pattern of use*:

1. Let $P$ be the set of "partial objects" (independent sets, proper ideals, partial extensions…), ordered by inclusion.
2. Check that $P$ is non-empty.
3. Check that every chain has an upper bound, usually its union, and verify that the union is still a partial object.
4. Get a maximal element, and show that maximal implies "complete", because otherwise you could extend it.

**Theorem.** Every vector space $V$ has a basis.

*Proof.* Let $P$ be the set of linearly independent subsets of $V$, ordered by $\subseteq$. $\varnothing \in P$, so $P$ is non-empty. If $\mathcal{C}$ is a chain in $P$, let $U = \bigcup \mathcal{C}$. Any finite subset $\lbrace u_1, \dots, u_k \rbrace \subseteq U$ has each $u_j$ in some $L_j \in \mathcal{C}$. Since $\mathcal{C}$ is a chain, one of the $L_j$ contains all the others, so $u_1, \dots, u_k$ lie in a single independent set and are independent. Hence $U \in P$ is an upper bound. By Zorn's lemma there is a maximal independent set $B$. If some $v \notin \operatorname{span} B$, then $B \cup \lbrace v\rbrace$ would be independent, contradicting maximality. So $B$ spans $V$ and is a basis. $\square$

Other places Zorn's lemma will appear: every proper ideal of a ring with $1$ lies in a maximal ideal (3.3), the Hahn–Banach theorem (3.2), and Tychonoff's theorem (2.1 and beyond). It is also used to show there exist non-measurable sets (3.1), via a choice of representatives for $\mathbb{R}/\mathbb{Q}$ (the Vitali set).

---

## 9. Common pitfalls

1. **Proving the converse.** You were asked for $P \Rightarrow Q$ and proved $Q \Rightarrow P$. Write the goal at the top of the page before starting.
2. **"Let $\varepsilon$ be small."** In "for all $\varepsilon$" proofs, $\varepsilon$ is arbitrary and fixed. You do not get to choose it.
3. **Dependence of choices.** In $\forall x\ \exists y$, the $y$ may depend on $x$; make the dependence explicit ($N = N(\varepsilon)$, $\delta = \delta(\varepsilon, x)$).
4. **Using what you want to prove.** Starting a proof of $A = B$ with "$A = B$, so …" is circular.
5. **Well-definedness** on quotients (§6.2), and **codomain** awareness for surjectivity (§5.1).
6. **Writing $f^{-1}(Y)$ as if $f$ were invertible.** The preimage always exists; the inverse function may not.
7. **Infinite operations by analogy with finite ones.** $\bigcap_n (0, 1/n) = \varnothing$, not $\lbrace 0\rbrace$. Check each element.
8. **Choosing infinitely many things silently.** It is fine to use AC, but know when you are doing so.

---

## 10. Connections forward

| Topic here | Where it returns |
|---|---|
| Quantifier negation | Every $\varepsilon$–$\delta$ argument in [1.2](../1.2-real-analysis-I/), [2.1](../../02-bridge/2.1-metric-spaces-topology/) and [3.1](../../03-masters-core/3.1-measure-integration/) |
| Preimages preserve set operations | Definition of continuity in topology (2.1); measurable functions and $\sigma$-algebras (3.1) |
| Equivalence relations and quotients | Cosets and quotient groups ([1.4](../1.4-abstract-algebra-I/)); quotient spaces ([1.3](../1.3-linear-algebra/)); quotient topology and identification spaces ([3.4](../../03-masters-core/3.4-algebraic-topology/)); $L^p$ spaces as functions modulo "equal almost everywhere" (3.1) |
| Countable versus uncountable | Countable additivity and null sets (3.1); separability of Banach and Hilbert spaces ([3.2](../../03-masters-core/3.2-functional-analysis/)); the Baire category theorem (2.1, 3.2) |
| Cantor's diagonal argument | Diagonal subsequence arguments in Arzelà–Ascoli (2.1) and Banach–Alaoglu (3.2) |
| Zorn's lemma | Maximal ideals ([3.3](../../03-masters-core/3.3-graduate-algebra/)); Hahn–Banach (3.2); bases of infinite-dimensional spaces; non-measurable sets (3.1) |
| Induction and well-ordering | Euclid's algorithm and unique factorisation (1.4); structural induction in algebraic topology (3.4) |
