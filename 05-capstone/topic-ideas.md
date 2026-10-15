# Capstone Topic Ideas

Twenty-two concrete topics for the [expository dissertation](README.md), grouped by the module they grow out of. Each has a main theorem, the modules it needs, and one or two key references. Difficulty: ★ = comfortably within reach after the core, ★★ = solid stretch, ★★★ = ambitious (needs the relevant elective and a good reviewer).

---

## Algebraic topology ([3.4](../03-masters-core/3.4-algebraic-topology/))

**1. Classification of compact surfaces** ★
Every compact connected surface is homeomorphic to a sphere, a connected sum of tori, or a connected sum of projective planes; the classes are distinguished by orientability and Euler characteristic. Write up a triangulation-based proof plus Conway's "ZIP" proof.
*References:* W. S. Massey, *A Basic Course in Algebraic Topology*, Ch. 1; G. K. Francis and J. R. Weeks, "Conway's ZIP Proof", *American Mathematical Monthly* 106 (1999).

**2. The Lefschetz fixed point theorem** ★★
For a map $f$ of a finite simplicial complex, a nonzero Lefschetz number $\sum(-1)^k\operatorname{tr}(f_*|H_k)$ forces a fixed point. Applications: Brouwer, fixed points on $\mathbb{RP}^{2k}$, vector fields and Euler characteristic.
*References:* A. Hatcher, *Algebraic Topology*, §2.C; G. E. Bredon, *Topology and Geometry*, Ch. IV.

**3. Poincaré duality for closed manifolds** ★★★
$H^k(M;R)\cong H_{n-k}(M;R)$ for a closed $R$-orientable $n$-manifold, via cap product. Applications: cohomology rings of $\mathbb{CP}^n$, signature, Euler characteristic of odd-dimensional manifolds vanishes.
*References:* Hatcher, §3.3; R. Bott and L. Tu, *Differential Forms in Algebraic Topology* (de Rham version).

**4. The Borsuk–Ulam theorem and its combinatorial applications** ★★
Prove Borsuk–Ulam (via $\mathbb{Z}/2$-cohomology or degree), then derive the ham sandwich theorem, the necklace-splitting theorem and Lovász's proof of the Kneser conjecture.
*References:* J. Matoušek, *Using the Borsuk–Ulam Theorem* (Springer Universitext); Hatcher, §2.B.

**5. Covering spaces and Galois theory** ★★
The parallel between the classification of covering spaces and the fundamental theorem of Galois theory, unified via étale algebras and the "Galois category" viewpoint.
*References:* T. Szamuely, *Galois Groups and Fundamental Groups* (Cambridge), Chs. 1–2.

---

## Smooth manifolds and geometry ([3.5](../03-masters-core/3.5-smooth-manifolds/), [Riemannian geometry](../04-electives/riemannian-geometry/))

**6. The Poincaré–Hopf theorem and Gauss–Bonnet** ★★
The sum of indices of a vector field with isolated zeros on a compact manifold equals $\chi(M)$; for surfaces $\int_MK\,dA=2\pi\chi(M)$. Connect the two through the Gauss map.
*References:* J. W. Milnor, *Topology from the Differentiable Viewpoint*, §6; J. M. Lee, *Introduction to Riemannian Manifolds*, Ch. 9.

**7. Morse theory and handle decompositions** ★★★
A smooth manifold with a Morse function has the homotopy type of a CW complex with one cell for each critical point; Morse inequalities; application to $\mathbb{CP}^n$.
*References:* J. W. Milnor, *Morse Theory* (Annals of Mathematics Studies 51), Part I; Y. Matsumoto, *An Introduction to Morse Theory* (AMS).

**8. de Rham's theorem** ★★
$H^*_{dR}(M)\cong H^*(M;\mathbb{R})$ via integration over smooth simplices, using Mayer–Vietoris and good covers.
*References:* Bott and Tu, §§5–8; F. Warner, *Foundations of Differentiable Manifolds and Lie Groups*, Ch. 5.

**9. The Hodge theorem on compact Riemannian manifolds** ★★★
Every de Rham class on a compact oriented Riemannian manifold has a unique harmonic representative. Present the elliptic-regularity proof, or restrict to surfaces for a self-contained account.
*References:* Warner, Ch. 6; J. Jost, *Riemannian Geometry and Geometric Analysis*, Ch. 3.

**10. The Cartan–Hadamard theorem and nonpositive curvature** ★★
A complete, simply connected manifold of nonpositive sectional curvature is diffeomorphic to $\mathbb{R}^n$ via $\exp_p$; consequences for $\pi_1$ (torsion-free) of compact nonpositively curved manifolds.
*References:* Lee, *Introduction to Riemannian Manifolds*, Ch. 12; M. P. do Carmo, *Riemannian Geometry*, Ch. 7.

---

## Measure theory and functional analysis ([3.1](../03-masters-core/3.1-measure-integration/), [3.2](../03-masters-core/3.2-functional-analysis/))

**11. The Banach–Tarski paradox** ★
Paradoxical decompositions of the ball, using free subgroups of $SO(3)$ and the axiom of choice; why Lebesgue measure can't be extended to all subsets of $\mathbb{R}^3$; amenability and why the paradox fails in dimensions 1 and 2.
*References:* G. Tomkowicz and S. Wagon, *The Banach–Tarski Paradox*, 2nd ed. (Cambridge).

**12. Haar measure on locally compact groups** ★★
Existence and uniqueness of Haar measure; modular function; examples ($GL(n,\mathbb{R})$, $\mathbb{Q}_p$, compact groups).
*References:* G. B. Folland, *A Course in Abstract Harmonic Analysis*, Ch. 2; P. Halmos, *Measure Theory*, Ch. XI.

**13. The spectral theorem for compact self-adjoint operators and Sturm–Liouville theory** ★
Prove the spectral theorem, then apply it to the Green's operator of a Sturm–Liouville problem to obtain an orthonormal eigenfunction basis of $L^2$.
*References:* H. Brezis, *Functional Analysis, Sobolev Spaces and Partial Differential Equations*, Chs. 6 and 8; E. Kreyszig, *Introductory Functional Analysis with Applications*, Ch. 8.

**14. The Hardy–Littlewood maximal theorem and Lebesgue differentiation** ★
Vitali covering lemma, weak (1,1) bound, Marcinkiewicz interpolation, Lebesgue's differentiation theorem and density points.
*References:* E. M. Stein and R. Shakarchi, *Real Analysis*, Ch. 3; J. Duoandikoetxea, *Fourier Analysis*, Ch. 2.

---

## Algebra and number theory ([3.3](../03-masters-core/3.3-graduate-algebra/), [ANT](../04-electives/algebraic-number-theory/), [AG](../04-electives/algebraic-geometry/))

**15. Burnside's $p^aq^b$ theorem via character theory** ★
Groups of order $p^aq^b$ are solvable, with the character-theoretic proof (algebraic integers, the class equation, and a key lemma on character values).
*References:* J.-P. Serre, *Linear Representations of Finite Groups*, Parts I–II; I. M. Isaacs, *Character Theory of Finite Groups*, Ch. 3.

**16. Dirichlet's theorem on primes in arithmetic progressions** ★★
Characters of $(\mathbb{Z}/m)^\times$, Dirichlet $L$-functions, and the non-vanishing of $L(1,\chi)$.
*References:* J.-P. Serre, *A Course in Arithmetic*, Ch. VI; T. M. Apostol, *Introduction to Analytic Number Theory*, Ch. 7.

**17. Finiteness of the class number and Dirichlet's unit theorem** ★★
Geometry of numbers (Minkowski's theorem) applied to the ring of integers of a number field; explicit class group and unit computations for quadratic and cubic fields.
*References:* J. Neukirch, *Algebraic Number Theory*, Ch. I §§4–7; D. A. Marcus, *Number Fields*, Ch. 5.

**18. The group law on an elliptic curve and the Mordell–Weil theorem over $\mathbb{Q}$** ★★
Chord-and-tangent law, associativity (via Bézout or the Riemann–Roch-free proof), Nagell–Lutz, and the proof of Mordell's theorem via heights and descent.
*References:* J. H. Silverman and J. Tate, *Rational Points on Elliptic Curves*, Chs. I–III; J. H. Silverman, *The Arithmetic of Elliptic Curves*, Ch. VIII.

**19. The Riemann–Roch theorem for compact Riemann surfaces** ★★★
Divisors, line bundles, sheaf cohomology $H^0,H^1$, Serre duality and Riemann–Roch; consequences (every genus-0 surface is $\mathbb{P}^1$, genus-1 surfaces are complex tori).
*References:* R. Miranda, *Algebraic Curves and Riemann Surfaces* (AMS), Chs. V–VI; O. Forster, *Lectures on Riemann Surfaces* (Springer GTM 81), §§14–17.

---

## Probability, Lie theory, harmonic analysis ([electives](../04-electives/))

**20. Martingale methods: Radon–Nikodym, Kolmogorov's 0-1 law and Pólya's urn** ★
Prove the martingale convergence theorems, then use them to prove Radon–Nikodym (for separable σ-algebras), Kolmogorov's 0-1 law, the SLLN via backwards martingales, and the limit of Pólya's urn.
*References:* D. Williams, *Probability with Martingales*, Chs. 10–14; R. Durrett, *Probability: Theory and Examples*, Ch. 4.

**21. Construction and path properties of Brownian motion** ★★
Lévy's construction, continuity, nowhere differentiability, the strong Markov property and the reflection principle; law of the iterated logarithm (statement).
*References:* P. Mörters and Y. Peres, *Brownian Motion* (Cambridge), Chs. 1–2; Durrett, Ch. 7.

**22. The Peter–Weyl theorem for compact groups** ★★★
Matrix coefficients of irreducible unitary representations form an orthonormal basis of $L^2(G)$; consequences: every compact Lie group is a matrix group; Fourier series as the case $G=S^1$; spherical harmonics as the case $G=SO(3)$.
*References:* T. Bröcker and T. tom Dieck, *Representations of Compact Lie Groups* (Springer GTM 98), Ch. III; Folland, *A Course in Abstract Harmonic Analysis*, Ch. 5.

---

## How to use this list

1. Shortlist three topics in Week 1 of the [capstone timeline](README.md#timeline-16-weeks).
2. For each, find the main theorem in the reference and check you can read its proof's first page.
3. Prefer ★ or ★★ unless you have a reviewer lined up who knows the area.
4. You can also propose your own topic; check it against the "Choosing well" criteria in the capstone [README](README.md).
