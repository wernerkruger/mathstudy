# 2.1 Metric Spaces and Topology: Study Notes

These notes are a condensed map of the module. Read the textbook sections first, then use these notes to consolidate. Proofs marked "sketch" leave routine steps to you; filling them in is good practice.

---

## 1. Metric spaces

**Definition.** A *metric* on a set $X$ is a function $d : X \times X \to [0,\infty)$ such that for all $x,y,z \in X$:

1. $d(x,y) = 0 \iff x = y$;
2. $d(x,y) = d(y,x)$;
3. $d(x,z) \le d(x,y) + d(y,z)$ (triangle inequality).

**Examples.**

- $\mathbb{R}^n$ with $d_p(x,y) = \left(\sum |x_i - y_i|^p\right)^{1/p}$ for $1 \le p < \infty$, and $d_\infty(x,y) = \max_i |x_i - y_i|$. The triangle inequality for $d_p$ is Minkowski's inequality.
- The *discrete metric*: $d(x,y) = 1$ if $x \ne y$, else $0$. Every subset is open.
- $C[a,b]$ with $d_\infty(f,g) = \sup_{x}|f(x)-g(x)|$ (uniform metric), or with $d_1(f,g) = \int_a^b |f-g|$.
- $\ell^p = \lbrace (x_n) : \sum |x_n|^p < \infty \rbrace$ with the $p$-norm; $\ell^\infty$ = bounded sequences with the sup norm.
- The $p$-adic metric on $\mathbb{Q}$: $d(x,y) = p^{-v_p(x-y)}$. It satisfies the stronger *ultrametric* inequality $d(x,z) \le \max(d(x,y), d(y,z))$.

**Open and closed sets.** The open ball is $B(x,r) = \lbrace y : d(x,y) < r \rbrace$. A set $U$ is *open* if for every $x \in U$ there is $r>0$ with $B(x,r) \subseteq U$. A set is *closed* if its complement is open. Equivalently, $F$ is closed iff it contains all its limit points iff every convergent sequence in $F$ has its limit in $F$.

- Arbitrary unions and finite intersections of open sets are open. (Infinite intersections need not be: $\bigcap_n (-1/n, 1/n) = \lbrace 0 \rbrace$.)
- *Interior* $A^\circ$: the largest open set inside $A$. *Closure* $\overline{A}$: the smallest closed set containing $A$; $x \in \overline{A}$ iff every ball around $x$ meets $A$ iff $x$ is a limit of a sequence in $A$. *Boundary* $\partial A = \overline{A} \setminus A^\circ$.

**Pitfall.** In a general metric space, the closure of the open ball $B(x,r)$ need not equal the closed ball $\lbrace y : d(x,y) \le r\rbrace$. In the discrete metric, $B(x,1) = \lbrace x \rbrace$ is closed, but the closed ball of radius 1 is all of $X$.

**Continuity.** For $f : (X,d) \to (Y,e)$, these are equivalent:

1. ($\varepsilon$–$\delta$) for all $x$ and $\varepsilon>0$ there is $\delta>0$ with $d(x,x')<\delta \Rightarrow e(f(x),f(x'))<\varepsilon$;
2. (sequential) $x_n \to x \Rightarrow f(x_n) \to f(x)$;
3. (topological) $f^{-1}(V)$ is open for every open $V \subseteq Y$.

*Proof of 1 ⇒ 3.* Let $V$ be open and $x \in f^{-1}(V)$. Choose $\varepsilon$ with $B(f(x),\varepsilon) \subseteq V$, then $\delta$ from (1). Then $B(x,\delta) \subseteq f^{-1}(V)$. *3 ⇒ 1:* take $V = B(f(x),\varepsilon)$; $f^{-1}(V)$ is open and contains $x$, so contains some $B(x,\delta)$. $\square$

Form (3) makes no reference to the metric. This is the motivation for topological spaces.

**Equivalent metrics.** Two metrics $d, d'$ on $X$ are *(strongly) equivalent* if $c\,d \le d' \le C\,d$ for constants $0<c\le C$. They are *topologically equivalent* if they have the same open sets. All $d_p$ on $\mathbb{R}^n$ are strongly equivalent. On $C[0,1]$, $d_1$ and $d_\infty$ are not topologically equivalent: $f_n(x) = x^n$ tends to $0$ in $d_1$ but not in $d_\infty$.

---

## 2. Completeness

**Definition.** $(x_n)$ is *Cauchy* if for every $\varepsilon>0$ there is $N$ with $d(x_m,x_n) < \varepsilon$ for $m,n \ge N$. $X$ is *complete* if every Cauchy sequence converges in $X$.

Convergent sequences are Cauchy. A Cauchy sequence with a convergent subsequence converges (to the same limit).

**Facts.**

- $\mathbb{R}^n$ is complete (from completeness of $\mathbb{R}$, coordinatewise).
- A closed subset of a complete space is complete. A complete subspace of any metric space is closed.
- $\mathbb{Q}$ is not complete; $(0,1)$ is not complete (but is homeomorphic to $\mathbb{R}$, which is). **Completeness is not a topological property.**
- $C[a,b]$ with the uniform metric is complete. *Proof sketch:* if $(f_n)$ is Cauchy in $d_\infty$, then for each $x$, $(f_n(x))$ is Cauchy in $\mathbb{R}$, so converges to some $f(x)$. Letting $m \to \infty$ in $|f_n(x) - f_m(x)| < \varepsilon$ gives $|f_n(x) - f(x)| \le \varepsilon$ for all $x$ and $n \ge N$, so $f_n \to f$ uniformly. A uniform limit of continuous functions is continuous (the "$\varepsilon/3$ argument"), so $f \in C[a,b]$. $\square$
- $C[0,1]$ with $d_1$ is **not** complete: continuous approximations to a step function are $d_1$-Cauchy with no continuous limit.
- $\ell^p$ is complete for $1 \le p \le \infty$ (same pattern: pointwise limit, then show it lies in the space and convergence is in norm).

**Completion.** Every metric space $X$ embeds isometrically as a dense subset of a complete metric space $\hat X$, unique up to isometry fixing $X$. (Construction: equivalence classes of Cauchy sequences, exactly as $\mathbb{R}$ is built from $\mathbb{Q}$.) Completing $\mathbb{Q}$ with the $p$-adic metric gives $\mathbb{Q}_p$.

**Contraction mapping theorem (Banach).** Let $X$ be a non-empty complete metric space and $T: X \to X$ a *contraction*: $d(Tx,Ty) \le k\,d(x,y)$ for some $k<1$. Then $T$ has a unique fixed point $x^*$, and for any $x_0$, the iterates $x_{n+1} = Tx_n$ converge to $x^*$, with $d(x_n,x^*) \le \frac{k^n}{1-k} d(x_1,x_0)$.

*Proof.* $d(x_{n+1},x_n) \le k^n d(x_1,x_0)$, so for $m>n$,
$$
d(x_m,x_n) \le (k^n + \dots + k^{m-1}) d(x_1,x_0) \le \frac{k^n}{1-k}d(x_1,x_0),
$$
which tends to 0. So $(x_n)$ is Cauchy and converges to some $x^*$. $T$ is continuous, so $Tx^* = \lim Tx_n = \lim x_{n+1} = x^*$. Uniqueness: if $Tx=x, Ty=y$ then $d(x,y) \le k\,d(x,y)$, forcing $d(x,y)=0$. $\square$

**Pitfall.** $k<1$ uniformly is essential. $T(x) = x + 1/x$ on $[1,\infty)$ satisfies $|Tx - Ty| < |x-y|$ for $x \ne y$ but has no fixed point.

This theorem proves Picard–Lindelöf (existence and uniqueness for ODEs) and the inverse function theorem (module [2.4](../2.4-analysis-in-Rn/)).

---

## 3. The Baire category theorem

**Definitions.** $A \subseteq X$ is *dense* if $\overline{A} = X$. $A$ is *nowhere dense* if $\overline{A}$ has empty interior. $A$ is *meagre* (first category) if it is a countable union of nowhere dense sets.

**Baire category theorem.** Let $X$ be a non-empty complete metric space.

(a) If $U_1, U_2, \dots$ are open and dense, then $\bigcap_n U_n$ is dense.

(b) Equivalently, $X$ is not a countable union of nowhere dense sets. If $X = \bigcup_n F_n$ with $F_n$ closed, some $F_n$ has non-empty interior.

*Proof of (a).* Let $W$ be a non-empty open set; we show $W$ meets $\bigcap U_n$. Since $U_1$ is dense and open, $W \cap U_1$ is non-empty and open, so contains a closed ball $\overline{B}(x_1, r_1)$ with $0<r_1<1$. Inductively, $B(x_{n-1},r_{n-1}) \cap U_n$ is non-empty and open, so contains a closed ball $\overline{B}(x_n,r_n)$ with $r_n < 1/n$. The centres satisfy $x_m \in \overline{B}(x_n,r_n)$ for $m \ge n$, so $d(x_m,x_n) \le r_n < 1/n$: the sequence is Cauchy, converging to some $x$. Each closed ball is closed, so $x \in \overline{B}(x_n,r_n) \subseteq U_n$ for every $n$, and $x \in \overline{B}(x_1,r_1) \subseteq W$. $\square$

(b) follows from (a) by taking complements: $F_n$ closed nowhere dense $\iff$ $U_n = X \setminus F_n$ open dense.

**Applications.**

1. *$\mathbb{R}$ is uncountable.* If $\mathbb{R} = \lbrace q_1, q_2, \dots\rbrace$, each singleton is closed and nowhere dense, contradicting Baire.
2. *A non-empty complete metric space with no isolated points is uncountable.* Same argument.
3. *$\mathbb{Q}$ is not a $G_\delta$ set in $\mathbb{R}$* (not a countable intersection of open sets). If $\mathbb{Q} = \bigcap U_n$, then the $U_n$ and the sets $\mathbb{R} \setminus \lbrace q \rbrace$ are countably many dense open sets whose intersection is empty.
4. *Nowhere differentiable functions are generic.* The set of $f \in C[0,1]$ that are differentiable at some point is meagre in $(C[0,1], d_\infty)$. So "most" continuous functions are nowhere differentiable. (Statement; the proof is a good Challenge exercise.)
5. In functional analysis (module [3.2](../../03-masters-core/3.2-functional-analysis/)): uniform boundedness principle, open mapping theorem, closed graph theorem all rest on Baire.
6. A Hamel (algebraic) basis of an infinite-dimensional Banach space is uncountable.

**Pitfall.** Baire is about *topological* size (meagre), not measure. There is a dense $G_\delta$ subset of $\mathbb{R}$ with Lebesgue measure zero: enumerate $\mathbb{Q} = \lbrace q_k \rbrace$ and take $\bigcap_n \bigcup_k (q_k - 2^{-k-n}, q_k + 2^{-k-n})$.

---

## 4. Compactness

**Definitions.** A metric (or topological) space $K$ is *compact* if every open cover has a finite subcover. It is *sequentially compact* if every sequence has a convergent subsequence. A metric space is *totally bounded* if for every $\varepsilon > 0$ it is covered by finitely many $\varepsilon$-balls.

**Theorem.** For a metric space $X$ the following are equivalent:

1. $X$ is compact;
2. $X$ is sequentially compact;
3. $X$ is complete and totally bounded.

*Proof sketch.*

- (1 ⇒ 2) Suppose $(x_n)$ has no convergent subsequence. Then each point $y$ has a ball $B_y$ containing $x_n$ for only finitely many $n$ (otherwise one could extract a subsequence converging to $y$). Finitely many $B_y$ cover $X$, so only finitely many indices $n$ are covered: contradiction.
- (2 ⇒ 3) A Cauchy sequence with a convergent subsequence converges, so $X$ is complete. If $X$ is not totally bounded for some $\varepsilon$, choose $x_1, x_2, \dots$ inductively with $x_{n} \notin \bigcup_{i<n} B(x_i,\varepsilon)$; then $d(x_m,x_n) \ge \varepsilon$ for all $m \ne n$, so no subsequence is Cauchy.
- (3 ⇒ 2) Given a sequence, cover by finitely many $1$-balls; one contains infinitely many terms. Cover that by finitely many $1/2$-balls, and so on. A diagonal subsequence is Cauchy, hence converges.
- (2 ⇒ 1) **Lebesgue number lemma:** if $X$ is sequentially compact and $\mathcal{U}$ is an open cover, there is $\delta>0$ such that every ball $B(x,\delta)$ lies in some member of $\mathcal{U}$. (If not, pick $x_n$ with $B(x_n,1/n)$ in no member; a subsequence converges to $x$; $x \in U \in \mathcal{U}$ with $B(x,r) \subseteq U$; for large $n$ in the subsequence, $B(x_n,1/n) \subseteq B(x,r)$, contradiction.) Now (2 ⇒ 3) gives total boundedness, so cover $X$ by finitely many $\delta$-balls, each inside one member of $\mathcal{U}$. $\square$

**Heine–Borel.** A subset of $\mathbb{R}^n$ is compact iff it is closed and bounded. This **fails** in general metric spaces: the closed unit ball of $\ell^2$ is closed and bounded but not compact (the standard basis vectors $e_n$ satisfy $\|e_m - e_n\| = \sqrt2$). In fact, a normed space has compact closed unit ball iff it is finite-dimensional (Riesz's lemma; see 3.2).

**Basic consequences (true in any topological space where they make sense).**

- A closed subset of a compact space is compact.
- A compact subset of a Hausdorff (in particular, metric) space is closed.
- The continuous image of a compact space is compact. Hence a continuous real-valued function on a compact space is bounded and attains its maximum and minimum.
- A continuous function from a compact metric space to a metric space is uniformly continuous (use the Lebesgue number lemma, or a sequential argument).
- **A continuous bijection $f: K \to H$ from a compact space to a Hausdorff space is a homeomorphism.** *Proof:* if $F \subseteq K$ is closed, it is compact, so $f(F)$ is compact, hence closed in $H$. So $f^{-1}$ is continuous. $\square$

**Counterexample.** $t \mapsto (\cos t, \sin t)$ from $[0,2\pi)$ to the circle is a continuous bijection but not a homeomorphism (the domain is not compact).

---

## 5. Connectedness

**Definition.** A space $X$ is *connected* if it is not the union of two disjoint non-empty open sets. Equivalently, the only subsets that are both open and closed ("clopen") are $\emptyset$ and $X$; equivalently, every continuous $f: X \to \lbrace 0,1\rbrace$ (discrete) is constant.

$X$ is *path connected* if any two points are joined by a continuous path $\gamma: [0,1] \to X$.

**Theorems.**

1. The connected subsets of $\mathbb{R}$ are exactly the intervals. (The key step: $[a,b]$ is connected, proved with the least upper bound property.)
2. The continuous image of a connected space is connected. Combined with (1), this *is* the intermediate value theorem.
3. If a family of connected subsets all share a point, their union is connected. The closure of a connected set is connected.
4. Path connected ⇒ connected. The converse fails: the **topologist's sine curve** $S = \lbrace (x,\sin(1/x)) : 0 < x \le 1 \rbrace \cup (\lbrace 0\rbrace \times [-1,1])$ is connected (it is the closure of a connected set) but not path connected.
5. An open connected subset of $\mathbb{R}^n$ is path connected. (The set of points reachable by a path from a fixed point is open and closed.) This is used constantly in complex analysis ("domain" = open connected set).
6. Products of connected spaces are connected.

**Components.** The relation "$x$ and $y$ lie in a common connected subset" is an equivalence relation; its classes are the *connected components*. Components are closed. In $\mathbb{Q}$ the components are single points (*totally disconnected*), though $\mathbb{Q}$ is not discrete.

**Typical use.** To show $\mathbb{R}$ is not homeomorphic to $\mathbb{R}^2$: removing a point disconnects $\mathbb{R}$ but not $\mathbb{R}^2$. Similarly, $[0,1]$ is not homeomorphic to $S^1$.

---

## 6. Topological spaces

**Definition.** A *topology* on $X$ is a collection $\mathcal{T}$ of subsets ("open sets") containing $\emptyset$ and $X$, closed under arbitrary unions and finite intersections.

**Examples.** Discrete topology (all subsets), indiscrete topology ($\lbrace \emptyset, X\rbrace$), metric topologies, the *cofinite* topology (open sets are $\emptyset$ and complements of finite sets), the *Zariski topology* on $k^n$ (closed sets are common zero sets of polynomials; on $k = $ an infinite field and $n=1$ it is the cofinite topology).

**Bases.** A collection $\mathcal{B}$ is a *basis* for a topology if (i) it covers $X$ and (ii) whenever $x \in B_1 \cap B_2$ with $B_i \in \mathcal{B}$, there is $B_3 \in \mathcal{B}$ with $x \in B_3 \subseteq B_1 \cap B_2$. The open sets are then the unions of basis elements. A *subbasis* is any collection whose finite intersections form a basis.

**Continuity.** $f : X \to Y$ is continuous if $f^{-1}(V)$ is open for every open $V$. It suffices to check $V$ in a (sub)basis. A *homeomorphism* is a continuous bijection with continuous inverse.

**Subspace topology.** For $A \subseteq X$, the open sets of $A$ are $U \cap A$ with $U$ open in $X$. Watch out: $[0,1/2)$ is open in $[0,1]$ but not in $\mathbb{R}$.

**Product topology.** On $\prod_{\alpha} X_\alpha$, the product topology has subbasis $\lbrace \pi_\alpha^{-1}(U_\alpha) \rbrace$. So a basic open set is $\prod U_\alpha$ with $U_\alpha$ open and $U_\alpha = X_\alpha$ for all but finitely many $\alpha$.

- **Universal property:** $f: Z \to \prod X_\alpha$ is continuous iff every $\pi_\alpha \circ f$ is continuous.
- The *box topology* allows all $\prod U_\alpha$; for infinite products it is strictly finer, and the universal property fails: $f: \mathbb{R} \to \mathbb{R}^{\mathbb{N}}$, $f(t) = (t,t,t,\dots)$ is not continuous into the box topology, because the preimage of $\prod (-1/n, 1/n)$ is $\lbrace 0 \rbrace$.
- For finite products of metric spaces, the product topology is the metric topology of $d_\infty$ (or $d_1$, $d_2$). A countable product of metric spaces is metrisable, for example by $d(x,y) = \sum_n 2^{-n}\min(1, d_n(x_n,y_n))$.

**Quotient topology.** Given a surjection $q: X \to Y$, the quotient topology on $Y$ declares $V$ open iff $q^{-1}(V)$ is open in $X$. If $\sim$ is an equivalence relation, $X/\!\sim$ gets the quotient topology from the projection.

- **Universal property:** $g: Y \to Z$ is continuous iff $g \circ q$ is continuous. So a continuous map $X \to Z$ that is constant on equivalence classes descends to a continuous map $X/\!\sim \to Z$.
- Examples: $[0,1]/(0 \sim 1) \cong S^1$; $[0,1]^2$ with opposite sides identified is the torus $T^2 \cong S^1 \times S^1$; $\mathbb{RP}^n = S^n/(x \sim -x)$; collapsing a subspace $A$ to a point, $X/A$ (for example, $D^n/S^{n-1} \cong S^n$).
- To prove $X/\!\sim\ \cong Y$: build a continuous surjection $f: X \to Y$ whose fibres are the equivalence classes; it induces a continuous bijection $X/\!\sim \to Y$. If $X$ is compact and $Y$ Hausdorff, this is a homeomorphism (Section 4).

**Pitfall.** Quotients can be badly behaved. $\mathbb{R}/\mathbb{Q}$ (identify $x \sim y$ iff $x - y \in \mathbb{Q}$) has the indiscrete topology. Quotients of Hausdorff spaces need not be Hausdorff: the "line with two origins".

---

## 7. Separation axioms

- $T_1$: points are closed. Equivalently, for $x \ne y$ there is an open set containing $x$ but not $y$.
- $T_2$ (*Hausdorff*): distinct points have disjoint neighbourhoods. Limits of sequences are unique in Hausdorff spaces.
- *Regular* ($T_3$, with $T_1$): a point and a closed set not containing it have disjoint neighbourhoods.
- *Normal* ($T_4$, with $T_1$): disjoint closed sets have disjoint neighbourhoods.

Normal ⇒ regular ⇒ Hausdorff ⇒ $T_1$, and none of these implications reverses.

**Examples.**

- The cofinite topology on an infinite set is $T_1$ but not Hausdorff (any two non-empty open sets meet).
- Metric spaces are normal: for disjoint closed $A,B$, the function $f(x) = \dfrac{d(x,A)}{d(x,A)+d(x,B)}$ is continuous, $0$ on $A$ and $1$ on $B$; take $f^{-1}([0,1/2))$ and $f^{-1}((1/2,1])$.
- Compact Hausdorff spaces are normal. (First separate a point from a compact set using finitely many neighbourhoods, then a compact set from a compact set.)

**Urysohn's lemma (statement).** If $X$ is normal and $A,B$ are disjoint closed subsets, there is a continuous $f: X \to [0,1]$ with $f|_A = 0$ and $f|_B = 1$.

In metric spaces the formula above proves it directly. In general the proof builds open sets $U_r$ indexed by dyadic rationals $r$ with $\overline{U_r} \subseteq U_s$ for $r<s$, and sets $f(x) = \inf\lbrace r : x \in U_r\rbrace$.

**Tietze extension theorem (statement).** If $X$ is normal, $A \subseteq X$ closed and $f: A \to [a,b]$ (or $\mathbb{R}$) continuous, then $f$ extends continuously to $X$.

**Urysohn metrisation theorem (statement).** A second-countable regular space is metrisable.

---

## 8. Tychonoff's theorem

**Theorem (statement).** An arbitrary product of compact spaces is compact in the product topology.

- For finitely many factors, use the *tube lemma*. For countably many metric factors, a diagonal argument with sequential compactness works.
- The general case is equivalent to the axiom of choice. Standard proofs use Zorn's lemma via the finite intersection property, or ultrafilters/nets.
- It fails for the box topology: $\lbrace 0,1 \rbrace^{\mathbb{N}}$ with the box topology is discrete and infinite, hence not compact.
- Applications: the Cantor set $\cong \lbrace 0,1\rbrace^{\mathbb{N}}$ is compact; the Banach–Alaoglu theorem (the closed unit ball of a dual space is weak-* compact) in module [3.2](../../03-masters-core/3.2-functional-analysis/); Stone–Čech compactification.

---

## 9. Common pitfalls

1. "Closed and bounded ⇒ compact" holds in $\mathbb{R}^n$ only. In general use complete + totally bounded.
2. "Not open" does not mean "closed". $[0,1)$ is neither in $\mathbb{R}$; $\emptyset$ and $\mathbb{R}$ are both.
3. Completeness depends on the metric, not just the topology.
4. Sequences are not enough in general topological spaces. In non-first-countable spaces, closure and continuity need nets or filters. In metric spaces sequences suffice.
5. Sequential compactness and compactness differ for general topological spaces (neither implies the other), though they agree for metric spaces.
6. A union of two closed sets is closed, but an infinite union need not be: $\bigcup_n [1/n, 1] = (0,1]$.
7. Quotient maps need not be open. $q: [0,1] \to S^1$ sends the open set $[0,1/2)$ to a non-open set.

---

## 10. Connections forward

- **2.2 Complex analysis:** domains are open connected sets; the identity theorem and maximum modulus principle are connectedness arguments; uniform convergence on compact sets is convergence in a complete metric space (Montel, used in the Riemann mapping theorem).
- **2.4 Analysis in $\mathbb{R}^n$:** contraction mapping proves the inverse function theorem; Arzelà–Ascoli characterises compact subsets of $C(K)$; Stone–Weierstrass describes dense subalgebras.
- **3.1 Measure theory:** Borel $\sigma$-algebra generated by open sets; regularity of measures uses compactness; Urysohn's lemma is the key step in the Riesz representation theorem.
- **3.2 Functional analysis:** Baire ⇒ uniform boundedness, open mapping, closed graph; Tychonoff ⇒ Banach–Alaoglu.
- **3.4 Algebraic topology:** quotient spaces, CW complexes, connectedness and path connectedness, compactness of $S^n$.
- **3.5 Smooth manifolds:** manifolds are second countable Hausdorff spaces locally homeomorphic to $\mathbb{R}^n$; partitions of unity use paracompactness and Urysohn-type constructions.
