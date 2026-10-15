# Diagnostic test

Closed book. About 3 hours in three sittings (see [README](README.md)). Each question is worth 4 points. Write proofs in full sentences. Each question is tagged with the module it tests.

Notation: $\mathbb{N} = \lbrace 1, 2, 3, \dots \rbrace$.

---

## Sitting 1

### Section A — Proofs, logic and sets (module 1.1)

**A1.** `[1.1]` Write the negation of the following statement without using the word "not" in front of a quantifier (push the negation all the way in):

$$
\forall \varepsilon > 0 \ \exists \delta > 0 \ \forall x \in \mathbb{R} : \ |x - a| < \delta \implies |f(x) - f(a)| < \varepsilon .
$$

What property of $f$ does the original statement express, and what does the negation express?

**A2.** `[1.1]` Prove by induction that for every $n \in \mathbb{N}$,

$$
\sum_{k=1}^{n} k^3 = \left( \frac{n(n+1)}{2} \right)^2 .
$$

**A3.** `[1.1]` Let $f : A \to B$ and $g : B \to C$.

(a) Prove that if $g \circ f$ is injective then $f$ is injective.

(b) Give an example where $g \circ f$ is injective but $g$ is not injective.

(c) Prove that for subsets $A_1, A_2 \subseteq A$, $f(A_1 \cap A_2) \subseteq f(A_1) \cap f(A_2)$, and give an example where the inclusion is strict.

**A4.** `[1.1]` On $\mathbb{R}^2 \setminus \lbrace 0 \rbrace$ define $u \sim v$ if there is a real $\lambda > 0$ with $v = \lambda u$. Prove that $\sim$ is an equivalence relation, describe the equivalence classes geometrically, and give a natural bijection between the set of classes and the unit circle.

**A5.** `[1.1]` (a) Prove that the set of all *finite* subsets of $\mathbb{N}$ is countable. (b) Prove that the set of *all* subsets of $\mathbb{N}$ is uncountable.

**A6.** `[1.1]` State the Schröder–Bernstein theorem. Use it to show that $[0,1]$ and $(0,1)$ have the same cardinality.

### Section B — Real analysis (module 1.2)

**B1.** `[1.2]` State the completeness (least upper bound) axiom for $\mathbb{R}$. Let $S \subseteq \mathbb{R}$ be non-empty and bounded above, and let $s$ be an upper bound of $S$. Prove that $s = \sup S$ if and only if for every $\varepsilon > 0$ there is $x \in S$ with $x > s - \varepsilon$.

**B2.** `[1.2]` Using only the $\varepsilon$–$N$ definition, prove that

$$
\lim_{n \to \infty} \frac{3n + 1}{n + 2} = 3 .
$$

**B3.** `[1.2]` State the Bolzano–Weierstrass theorem. Using it, prove that every Cauchy sequence of real numbers converges.

**B4.** `[1.2]` Decide whether each series converges absolutely, converges conditionally, or diverges. Justify briefly.

(a) $\displaystyle\sum_{n=1}^\infty \frac{n^2}{2^n}$  (b) $\displaystyle\sum_{n=1}^\infty \frac{(-1)^n}{\sqrt{n}}$  (c) $\displaystyle\sum_{n=2}^\infty \frac{1}{n \ln n}$  (d) $\displaystyle\sum_{n=1}^\infty \frac{\sin n}{n^2}$

**B5.** `[1.2]` Give the definition of uniform continuity. Prove that $f(x) = x^2$ is uniformly continuous on $[0,1]$ but not on $\mathbb{R}$.

**B6.** `[1.2]` State the Mean Value Theorem. Use it to prove that $|\sin x - \sin y| \le |x - y|$ for all real $x, y$, and that a function with $f'(x) = 0$ for all $x$ in an interval is constant on that interval.

**B7.** `[1.2]` Let $f_n(x) = x^n$ on $[0,1]$.

(a) Find the pointwise limit $f$.

(b) Does $f_n \to f$ uniformly on $[0,1]$? Prove your answer.

(c) Does $f_n \to f$ uniformly on $[0, \tfrac12]$? Prove your answer.

**B8.** `[1.2]` (a) State both parts of the Fundamental Theorem of Calculus. (b) Compute

$$
\frac{d}{dx} \int_0^{x^2} e^{t^2} \, dt .
$$

(c) Explain why the function $D : [0,1] \to \mathbb{R}$ with $D(x) = 1$ for rational $x$ and $D(x) = 0$ for irrational $x$ is not Riemann integrable.

---

## Sitting 2

### Section C — Linear algebra (module 1.3)

**C1.** `[1.3]` Let $A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$. Find the eigenvalues and an orthonormal basis of eigenvectors, write $A = Q D Q^{T}$ with $Q$ orthogonal and $D$ diagonal, and give a closed formula for $A^n$.

**C2.** `[1.3]` (a) State the rank–nullity theorem. (b) If $T : \mathbb{R}^5 \to \mathbb{R}^3$ is linear and surjective, what is $\dim \ker T$? (c) Prove that a linear map $T : V \to V$ on a finite-dimensional space is injective if and only if it is surjective.

**C3.** `[1.3]` Prove that eigenvectors of a linear map corresponding to distinct eigenvalues are linearly independent.

**C4.** `[1.3]` Let $V$ be the space of real polynomials of degree at most 2 and $T(p) = p'$. Write the matrix of $T$ in the basis $1, x, x^2$. Find all eigenvalues and eigenvectors. Is $T$ diagonalisable? What is its Jordan normal form?

**C5.** `[1.3]` In $\mathbb{R}^3$ with the dot product, apply Gram–Schmidt to $v_1 = (1,1,0)$, $v_2 = (1,0,1)$. Then find the orthogonal projection of $e_3 = (0,0,1)$ onto $W = \operatorname{span}(v_1, v_2)$.

**C6.** `[1.3]` Prove that every eigenvalue of a real symmetric matrix is real.

### Section D — Abstract algebra (module 1.4)

**D1.** `[1.4]` State and prove Lagrange's theorem for finite groups. Deduce that every group of prime order is cyclic.

**D2.** `[1.4]` List all subgroups of $\mathbb{Z}/12\mathbb{Z}$ with their orders. Which elements generate the whole group?

**D3.** `[1.4]` Let $\varphi : G \to H$ be a group homomorphism. (a) Prove that $\ker \varphi$ is a normal subgroup of $G$. (b) State the First Isomorphism Theorem. (c) Use it to show that $\mathbb{R}^{\times} / \lbrace \pm 1 \rbrace \cong \mathbb{R}_{>0}$, where both are groups under multiplication.

**D4.** `[1.4]` (a) Is $x^3 - 2$ irreducible in $\mathbb{Q}[x]$? (b) Prove that the ideal $(x^2 + 1)$ is maximal in $\mathbb{R}[x]$, and identify the quotient ring $\mathbb{R}[x]/(x^2+1)$.

**D5.** `[1.4]` (a) Solve $7x \equiv 3 \pmod{20}$. (b) Find the order of $3$ in the multiplicative group $(\mathbb{Z}/7\mathbb{Z})^{\times}$. Is this group cyclic?

---

## Sitting 3

### Section E — Multivariable calculus (module 1.5)

**E1.** `[1.5]` Let $f(x,y) = \dfrac{xy}{x^2 + y^2}$ for $(x,y) \neq (0,0)$ and $f(0,0) = 0$. Do the partial derivatives $f_x(0,0)$ and $f_y(0,0)$ exist? Is $f$ continuous at the origin? Is it differentiable there?

**E2.** `[1.5]` Find and classify all critical points of $f(x,y) = x^3 - 3x + y^2$.

**E3.** `[1.5]` Use Lagrange multipliers to find the maximum and minimum of $f(x,y) = xy$ on the ellipse $x^2 + 4y^2 = 8$.

**E4.** `[1.5]` Compute $\displaystyle\iint_{x^2+y^2 \le R^2} e^{-(x^2+y^2)} \, dA$. Use the result to show $\displaystyle\int_{-\infty}^{\infty} e^{-x^2}\,dx = \sqrt{\pi}$.

**E5.** `[1.5]` Let $C$ be the ellipse $x^2/a^2 + y^2/b^2 = 1$ traversed anticlockwise. Compute $\displaystyle\oint_C (-y\,dx + x\,dy)$ directly from a parametrisation, and again using Green's theorem.

### Section F — Complex numbers and topology basics (preview of 2.1 and 2.2)

**F1.** `[2.2]` Find all $z \in \mathbb{C}$ with $z^4 = -16$, in both polar and Cartesian form.

**F2.** `[2.2]` (a) Using the Cauchy–Riemann equations, decide where $f(z) = \bar z$ is complex differentiable. (b) Compute $\displaystyle\oint_{|z|=1} \frac{dz}{z}$, the circle traversed once anticlockwise.

**F3.** `[2.1]` In $\mathbb{R}$ with the usual distance:

(a) Show that an intersection of infinitely many open sets need not be open.

(b) State the Heine–Borel theorem.

(c) Show directly from the open-cover definition that $(0,1]$ is not compact.

---

*End of test. Now mark it with [diagnostic-solutions.md](diagnostic-solutions.md).*
