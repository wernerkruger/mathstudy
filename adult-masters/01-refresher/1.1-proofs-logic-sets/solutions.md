# 1.1 Solutions — Proofs, logic and sets

Solutions to [problems.md](problems.md). Other correct proofs exist. Compare structure, not wording.

---

## Warm-up

### 1.

(a)

| $P$ | $Q$ | $P \Rightarrow Q$ | $\neg Q \Rightarrow \neg P$ | $\neg P \vee Q$ |
|---|---|---|---|---|
| T | T | T | T | T |
| T | F | F | F | F |
| F | T | T | T | T |
| F | F | T | T | T |

The last three columns agree in every row, so the three statements are equivalent.

(b) With $P$ false and $Q$ true, $P \Rightarrow Q$ is true but $Q \Rightarrow P$ is false.

(c) $P \Rightarrow (Q \wedge R)$ is false exactly when $P$ is true and $Q \wedge R$ is false, that is, when $P$ is true and at least one of $Q, R$ is false. $(P \Rightarrow Q)\wedge(P \Rightarrow R)$ is false exactly when at least one conjunct is false, that is, when $P$ is true and $Q$ is false, or $P$ is true and $R$ is false. These are the same rows, so the statements are equivalent.

### 2.

(a) **True.** Given $x$, take $y = x + 1$. Negation: $\exists x \in \mathbb{R}\ \forall y \in \mathbb{R} : y \le x$.

(b) **False.** If such a $y$ existed, taking $x = y$ would give $y > y$. Negation (which is true): $\forall y \in \mathbb{R}\ \exists x \in \mathbb{R} : y \le x$.

(c) **True** by the Archimedean property: given $\varepsilon > 0$ choose $N > 1/\varepsilon$; then $n \ge N$ gives $1/n \le 1/N < \varepsilon$. Negation: $\exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists n \ge N : \dfrac1n \ge \varepsilon$.

(a) and (b) differ only in the order of the quantifiers, and they have opposite truth values.

### 3.

If $n = 2k+1$ then $n^2 = 4k^2 + 4k + 1 = 2(2k^2+2k) + 1$, which is odd.

The second statement is the **contrapositive** of the first: "$n^2$ even $\Rightarrow$ $n$ even" is equivalent to "$n$ odd $\Rightarrow n^2$ odd", which we have just proved.

### 4.

($\subseteq$) Let $x \in A \setminus (B\cup C)$. Then $x \in A$ and $x \notin B \cup C$, so $x \notin B$ and $x \notin C$. Hence $x \in A\setminus B$ and $x \in A \setminus C$.

($\supseteq$) Let $x \in (A\setminus B)\cap(A\setminus C)$. Then $x \in A$, $x \notin B$ and $x \notin C$, so $x \notin B \cup C$, and $x \in A \setminus (B \cup C)$.

### 5.

(a) **Injective:** $2n + 1 = 2m + 1 \Rightarrow n = m$. **Not surjective:** every value is odd, so $0$ is not attained.

(b) **Not injective:** $g(0) = g(1) = 0$. **Surjective:** given $c \in \mathbb{R}$, the function $x \mapsto x^3 - x - c$ is continuous, tends to $-\infty$ as $x \to -\infty$ and to $+\infty$ as $x \to +\infty$. By the Intermediate Value Theorem (module 1.2) it has a zero $x$, and then $g(x) = c$.

(c) **Bijective.** It is injective because $e^x$ is strictly increasing. It is surjective because for $y > 0$, $h(\ln y) = y$.

### 6.

*Base case* $n = 5$: $32 > 25$.

*Inductive step.* Let $n \ge 5$ and assume $2^n > n^2$. Then $2^{n+1} = 2 \cdot 2^n > 2n^2$. It remains to show $2n^2 \ge (n+1)^2$, which is equivalent to $n^2 - 2n - 1 \ge 0$, or $(n-1)^2 \ge 2$. This holds for $n \ge 3$, and in particular for $n \ge 5$. So $2^{n+1} > (n+1)^2$.

(Note that the claim is false for $n = 2, 3, 4$: $4 = 4$, $8 < 9$, $16 = 16$. The base case matters.)

---

## Core

### 7.

Suppose $\sqrt3 = p/q$ with $p, q \in \mathbb{N}$ and $\gcd(p,q) = 1$. Then $p^2 = 3q^2$, so $3 \mid p^2$.

**Claim:** $3 \mid p^2 \Rightarrow 3 \mid p$. If $3 \nmid p$ then $p \equiv \pm 1 \pmod 3$, so $p^2 \equiv 1 \pmod 3$. (Alternatively use Euclid's lemma: a prime that divides a product divides one of the factors.)

So $p = 3r$, and $9r^2 = 3q^2$, which gives $q^2 = 3r^2$. By the claim $3 \mid q$. Then $3$ divides both $p$ and $q$, contradicting $\gcd(p,q) = 1$.

### 8.

Suppose the primes $\equiv 3 \pmod 4$ are exactly $p_1, \dots, p_k$ (there is at least one, namely $3$). Let

$$
N = 4p_1p_2\cdots p_k - 1.
$$

Then $N \ge 11$, and $N$ is odd with $N \equiv 3 \pmod 4$. Every prime factor of $N$ is odd, so it is $\equiv 1$ or $\equiv 3 \pmod 4$. A product of numbers $\equiv 1 \pmod 4$ is $\equiv 1 \pmod 4$. So if all prime factors of $N$ were $\equiv 1 \pmod 4$, we would have $N \equiv 1 \pmod 4$, which is false. Hence some prime $q \equiv 3 \pmod 4$ divides $N$. By assumption $q = p_i$ for some $i$. But $p_i \mid 4p_1\cdots p_k$, so $p_i \mid 4p_1\cdots p_k - N = 1$, which is absurd.

(Why not $4p_1\cdots p_k + 3$? Because $3$ is one of the $p_i$ and would divide it, which breaks the argument. The "$-1$" version avoids this.)

### 9.

Let $P(n)$ be "$n = 4a + 5b$ for some integers $a, b \ge 0$".

*Base cases:* $12 = 4\cdot 3$, $13 = 4 \cdot 2 + 5$, $14 = 4 + 5\cdot 2$, $15 = 5 \cdot 3$.

*Inductive step:* let $n \ge 16$ and assume $P(k)$ for all $12 \le k < n$. Then $12 \le n - 4 < n$, so $n - 4 = 4a + 5b$ and $n = 4(a+1) + 5b$.

Four base cases are needed because the step reaches back 4. (The claim fails for $n = 11$.)

### 10.

(a) *Inclusion.* If $y \in f(f^{-1}(Y))$ then $y = f(x)$ for some $x \in f^{-1}(Y)$, which means $f(x) \in Y$. So $y \in Y$.

*If $f$ is surjective,* let $y \in Y$ and pick $x$ with $f(x) = y$. Then $x \in f^{-1}(Y)$, so $y \in f(f^{-1}(Y))$, and equality holds.

*Conversely,* if equality holds for every $Y$, take $Y = B$: $B = f(f^{-1}(B)) = f(A)$, so $f$ is surjective.

(b) *Inclusion.* If $x \in X$ then $f(x) \in f(X)$, so $x \in f^{-1}(f(X))$.

*If $f$ is injective* and $x \in f^{-1}(f(X))$, then $f(x) = f(x')$ for some $x' \in X$, so $x = x' \in X$.

*Conversely,* suppose equality holds for every $X$, and let $f(a) = f(a')$. With $X = \lbrace a\rbrace$, $a' \in f^{-1}(\lbrace f(a)\rbrace) = f^{-1}(f(X)) = X = \lbrace a\rbrace$, so $a' = a$.

### 11.

(a) If $f(a) = f(a')$ then $g(f(a)) = g(f(a'))$, so $a = a'$ because $g \circ f$ is injective. Hence $f$ is injective. Given $c \in C$, surjectivity of $g \circ f$ gives $a$ with $g(f(a)) = c$, so $c = g(b)$ with $b = f(a)$. Hence $g$ is surjective.

(b) $A = \lbrace 1\rbrace$, $B = \lbrace 1, 2\rbrace$, $C = \lbrace 1\rbrace$, $f(1) = 1$, $g(1) = g(2) = 1$. Then $g \circ f$ is the identity on a one-point set, which is bijective. $f$ is not surjective ($2$ is missed) and $g$ is not injective.

### 12.

(a) *Reflexive:* $x - x = 0 \in \mathbb{Q}$. *Symmetric:* $x - y \in \mathbb{Q} \Rightarrow y - x = -(x - y) \in \mathbb{Q}$. *Transitive:* $x - z = (x - y) + (y - z) \in \mathbb{Q}$.

(b) $[x] = \lbrace x + q : q \in \mathbb{Q}\rbrace$, and $q \mapsto x + q$ is a bijection $\mathbb{Q} \to [x]$. Since $\mathbb{Q}$ is countable, so is $[x]$.

(c) The classes partition $\mathbb{R}$, so $\mathbb{R} = \bigcup_{c \in \mathbb{R}/\sim} c$. If there were only countably many classes, $\mathbb{R}$ would be a countable union of countable sets, hence countable (problem 16). This contradicts the uncountability of $\mathbb{R}$.

(Choosing one element from each class gives the Vitali set, the standard example of a non-Lebesgue-measurable set in module 3.1.)

### 13.

(a) *Reflexive:* $ab = ba$. *Symmetric:* $ad = bc \Rightarrow cb = da$.

*Transitive:* suppose $ad = bc$ and $cf = de$, where $b, d, f \ne 0$. Then

$$
d(af) = (ad)f = (bc)f = b(cf) = b(de) = d(be).
$$

Since $d \ne 0$ and $\mathbb{Z}$ has no zero divisors, $af = be$, so $(a,b) \sim (e,f)$.

(Note that we cancelled $d$, which is non-zero, and never divided by $c$, which may be $0$. A tempting wrong proof writes $a/b = c/d = e/f$, which assumes the rationals that this construction is meant to build.)

(b) First, $bd \ne 0$, so $(ad + bc, bd) \in X$. Suppose $(a,b)\sim(a',b')$ and $(c,d)\sim(c',d')$, that is, $ab' = a'b$ and $cd' = c'd$. We need $(ad+bc)b'd' = (a'd' + b'c')bd$:

$$
(ad + bc)b'd' = (ab')dd' + (cd')bb' = (a'b)dd' + (c'd)bb' = (a'd' + b'c')bd .
$$

So the class of the sum does not depend on the representatives.

### 14.

(a) *Reflexive:* $a = 1\cdot a$. *Antisymmetric:* if $b = ak$ and $a = bl$ with $k, l \in \mathbb{N}$, then $a = akl$, so $kl = 1$ and $k = l = 1$, giving $a = b$. (This uses positivity: on $\mathbb{Z}$, $2 \mid -2$ and $-2 \mid 2$.) *Transitive:* $b = ak$, $c = bl \Rightarrow c = a(kl)$. *Not total:* $2 \nmid 3$ and $3 \nmid 2$.

(b) $1$ is the least element, since $1 \mid n$ for all $n$. There is no greatest element: if $g$ were greatest then $2g \mid g$, impossible since $2g > g$.

(c) *Minimal* (no other element of the set properly divides it): $2, 3, 5, 7$. The others are not minimal: $4, 6, 8, 10$ are divisible by $2$, and $9$ by $3$.

*Maximal* (it divides no other element of the set): $6, 7, 8, 9, 10$. The others are not maximal: $2 \mid 4$, $3 \mid 6$, $4 \mid 8$, $5 \mid 10$.

There is no greatest element, since there are several maximal elements.

### 15.

(a) Let $\varphi : \mathbb{Z} \to \mathbb{N}$, $\varphi(k) = 2k$ for $k \ge 1$ and $\varphi(k) = 1 - 2k$ for $k \le 0$. This is a bijection (positive integers go to even numbers, non-positive integers to odd numbers). Define $F(m,n) = 2^{\varphi(m)}3^{\varphi(n)}$. If $F(m,n) = F(m',n')$, uniqueness of prime factorisation gives $\varphi(m) = \varphi(m')$ and $\varphi(n) = \varphi(n')$, so $(m,n) = (m',n')$.

(b) Every $q \in \mathbb{Q}$ can be written uniquely as $p/r$ with $p \in \mathbb{Z}$, $r \in \mathbb{N}$ and $\gcd(p, r) = 1$. The map $q \mapsto (p, r)$ is an injection $\mathbb{Q} \to \mathbb{Z}\times\mathbb{Z}$. Composing with $F$ gives an injection $\mathbb{Q} \to \mathbb{N}$. $\mathbb{Q}$ is infinite, so it is countably infinite.

### 16.

Discard any empty $A_n$; if all are empty, the union is empty. Re-index so that every $A_n$ is non-empty. (If only finitely many are non-empty, repeat one of them; this does not change the union.)

Each $A_n$ is countable and non-empty, so there exists a surjection $\mathbb{N} \to A_n$. **Choose** one such surjection $f_n$ for each $n$. This is where countable choice is used: we make infinitely many arbitrary choices at once.

Define $F : \mathbb{N}\times\mathbb{N} \to \bigcup A_n$ by $F(n,k) = f_n(k)$. It is surjective. Compose with a bijection $\mathbb{N} \to \mathbb{N}\times\mathbb{N}$ to get a surjection $G : \mathbb{N} \to \bigcup A_n$.

Finally, a surjection $G : \mathbb{N} \to U$ gives an injection $U \to \mathbb{N}$, $u \mapsto \min G^{-1}(\lbrace u\rbrace)$. This uses well-ordering, not choice. So $U$ is countable.

### 17.

Let $f : A \to \mathcal{P}(A)$ and $D = \lbrace a \in A : a \notin f(a)\rbrace \in \mathcal{P}(A)$. Suppose $D = f(d)$ for some $d \in A$. If $d \in D$, then by the definition of $D$, $d \notin f(d) = D$. If $d \notin D = f(d)$, then by definition $d \in D$. Either way we have a contradiction, so $D \notin f(A)$ and $f$ is not surjective.

---

## Challenge

### 18.

Let $C_0 = A \setminus g(B)$, $C_{n+1} = g(f(C_n))$ for $n \ge 0$, and $C = \bigcup_{n\ge0} C_n$. Define $h : A \to B$ by

$$
h(a) = \begin{cases} f(a) & \text{if } a \in C,\\ g^{-1}(a) & \text{if } a \notin C.\end{cases}
$$

*Well defined:* if $a \notin C$ then $a \notin C_0$, so $a \in g(B)$, and since $g$ is injective there is exactly one $b$ with $g(b) = a$. Call it $g^{-1}(a)$.

*Injective:* $f$ is injective on $C$, and $g^{-1}$ is injective on $A \setminus C$ (if $g^{-1}(a) = g^{-1}(a')$, apply $g$). Mixed case: $a \in C_n$, $a' \notin C$, and $f(a) = g^{-1}(a')$. Then $a' = g(f(a)) \in g(f(C_n)) = C_{n+1} \subseteq C$, a contradiction.

*Surjective:* let $b \in B$ and consider $a = g(b)$.
- If $a \notin C$, then $h(a) = g^{-1}(a) = b$.
- If $a \in C$, then since $a \in g(B)$, $a \notin C_0$, so $a \in C_{n+1}$ for some $n \ge 0$. Then $a = g(f(c))$ for some $c \in C_n$. Since $g$ is injective, $b = f(c)$, and since $c \in C$, $h(c) = f(c) = b$.

So $h$ is a bijection.

### 19.

(a) Define $\phi : [0,1] \to [0,1)$ by $\phi(1/n) = 1/(n+1)$ for $n \in \mathbb{N}$ and $\phi(x) = x$ for every other $x$.

*Injective:* on $\lbrace 1/n : n \in \mathbb{N}\rbrace$, $\phi$ is injective with image $\lbrace 1/m : m \ge 2\rbrace$. On the rest, $\phi$ is the identity, and the rest does not meet $\lbrace 1/m\rbrace$.

*Surjective onto $[0,1)$:* $1/m$ with $m \ge 2$ is $\phi(1/(m-1))$, and every other $y \in [0,1)$ (including $0$) is $\phi(y)$. The only point of $[0,1]$ not in the image is $1$, which is not in $[0,1)$.

This is "Hilbert's hotel": shift a countable sequence along by one to absorb an extra point.

(b) *Injection $\mathcal{P}(\mathbb{N}) \to \mathbb{R}$:* $S \mapsto \sum_{n \in S} 10^{-n}$. The image has decimal digits only $0$ and $1$ (digit $n$ is $1$ iff $n \in S$). Such expansions never end in recurring $9$s, so they are unique, and distinct $S$ give distinct reals.

*Injection $\mathbb{R} \to \mathcal{P}(\mathbb{N})$:* fix a bijection $\beta : \mathbb{Q} \to \mathbb{N}$, and send $x \mapsto \beta\left(\lbrace q \in \mathbb{Q} : q < x\rbrace\right)$. If $x < y$, there is a rational $q$ with $x < q < y$ (density of $\mathbb{Q}$), and $q$ lies in the second set but not the first. So distinct reals give distinct sets, and $\beta$ preserves distinctness.

By Schröder–Bernstein, $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})|$.

### 20.

Let $V$ be a vector space over a field $F$. Let $\mathcal{L}$ be the set of linearly independent subsets of $V$, partially ordered by inclusion $\subseteq$. (Inclusion is reflexive, antisymmetric and transitive.)

*Non-empty:* $\varnothing \in \mathcal{L}$ (vacuously independent).

*Chains have upper bounds:* let $\mathcal{C} \subseteq \mathcal{L}$ be a chain. If $\mathcal{C} = \varnothing$, then $\varnothing$ is an upper bound. Otherwise let $U = \bigcup\mathcal{C}$. Clearly $L \subseteq U$ for every $L \in \mathcal{C}$. To see $U \in \mathcal{L}$: suppose $\sum_{j=1}^k a_j u_j = 0$ with distinct $u_j \in U$. Each $u_j$ lies in some $L_j \in \mathcal{C}$. Since $\mathcal{C}$ is totally ordered, the finite set $\lbrace L_1, \dots, L_k\rbrace$ has a largest member $L^\ast$, and all $u_j \in L^\ast$. Since $L^\ast$ is independent, all $a_j = 0$. So $U$ is independent.

*Conclusion:* by Zorn's lemma, $\mathcal{L}$ has a maximal element $B$. If $\mathrm{span}\, B \ne V$, pick $v \notin \mathrm{span}\, B$. Then $B \cup \lbrace v\rbrace$ is independent: in a relation $a v + \sum a_j b_j = 0$, $a \ne 0$ would put $v$ in $\mathrm{span}\, B$, so $a = 0$, and then all $a_j = 0$. This contradicts maximality. Hence $B$ spans $V$ and is a basis.

### 21.

(a) An eventually-zero 0–1 sequence $x$ corresponds to the finite set $S_x = \lbrace n : x_n = 1\rbrace$, and this is a bijection onto the finite subsets of $\mathbb{N}$. Let $\mathcal{F}_N$ be the subsets of $\lbrace 1, \dots, N\rbrace$; each is finite (with $2^N$ elements). The finite subsets of $\mathbb{N}$ form $\bigcup_N \mathcal{F}_N$, a countable union of finite sets, hence countable. (No choice is needed here: each $\mathcal{F}_N$ can be listed explicitly, say in binary order.)

(b) *Diagonal argument.* Let $\Phi : \mathbb{N} \to \mathbb{N}^{\mathbb{N}}$ be any function and define $g(n) = \Phi(n)(n) + 1$. Then $g \in \mathbb{N}^\mathbb{N}$ and $g(n) \ne \Phi(n)(n)$, so $g \ne \Phi(n)$ for every $n$. Hence $\Phi$ is not surjective.

(Alternatively: $S \mapsto 1 + \mathbf{1}_S$ is an injection from the uncountable $\mathcal{P}(\mathbb{N})$ into $\mathbb{N}^{\mathbb{N}}$.)

### 22.

(a) Split $\lbrace 1, \dots, 2n\rbrace$ into the $n$ pairs $\lbrace 1, 2\rbrace, \lbrace 3, 4\rbrace, \dots, \lbrace 2n-1, 2n\rbrace$. By the pigeonhole principle, two of the $n+1$ chosen numbers lie in the same pair, so they are consecutive integers $m, m+1$. Any common divisor $d$ divides $(m+1) - m = 1$, so they are coprime.

(b) Write each $x \in S$ as $x = 2^{k}q$ with $k \ge 0$ and $q$ odd (this is unique). The odd part $q$ lies in $\lbrace 1, 3, \dots, 2n-1\rbrace$, which has $n$ elements. By pigeonhole, two distinct elements of $S$ have the same odd part: $x = 2^k q$ and $y = 2^l q$ with $k \ne l$. Say $k < l$. Then $x \mid y$.

(Both bounds are sharp: $\lbrace 2, 4, \dots, 2n\rbrace$ has $n$ elements and no coprime pair, and $\lbrace n+1, \dots, 2n\rbrace$ has $n$ elements and no divisibility pair.)
