# 1.3 Linear Algebra

**Phase:** 1 — Refresher
**Estimated length:** 10 weeks at about 6 hours/week (about 60 hours)

Linear algebra is the module you will use most often for the rest of the course. Functional analysis is linear algebra in infinite dimensions. Representation theory and much of graduate algebra is linear algebra with a group acting on it. Differential geometry is linear algebra done one point at a time. The aim here is to go beyond matrix computation: think in terms of **vector spaces and linear maps**, and treat matrices as coordinates you pick when you need them.

## Prerequisites

- [1.1 Proofs, Logic and Sets](../1.1-proofs-logic-sets/README.md): you need to be comfortable with proof by induction, contradiction and contrapositive, and with functions (injective, surjective, bijective).
- Some exposure to matrices and Gaussian elimination helps. If it has faded, Hefferon Chapter One brings it back quickly.
- You can study this module in parallel with [1.2 Real Analysis I](../1.2-real-analysis-I/README.md). [1.4 Abstract Algebra I](../1.4-abstract-algebra-I/README.md) and [1.5 Multivariable Calculus](../1.5-multivariable-calculus/README.md) both use this module.

## Learning objectives

By the end of this module you should be able to:

1. Work with abstract vector spaces over a field $\mathbb{F}$: subspaces, sums, direct sums, span, linear independence, bases and dimension. Prove the standard results from scratch.
2. State, prove and apply the rank–nullity theorem and its corollaries.
3. Move between linear maps and matrices, including change of basis and similarity.
4. Compute determinants and explain them as the (unique) alternating multilinear volume form.
5. Find eigenvalues and eigenvectors, the minimal polynomial and the characteristic polynomial. Decide whether an operator is diagonalisable.
6. Use inner products: orthonormal bases, Gram–Schmidt, orthogonal projection and least squares, adjoints.
7. State and prove the spectral theorem (real and complex versions) and know the singular value decomposition (SVD).
8. Compute the Jordan canonical form of small matrices and use it, for example for powers or to decide whether two matrices are similar.
9. Work with dual spaces, dual bases, dual maps and annihilators, and with quotient spaces and the first isomorphism theorem for vector spaces.

## Texts

**Primary (free, legal):** Sheldon Axler, *Linear Algebra Done Right*, 4th edition (Springer, 2024; Open Access, CC BY-NC). Free PDF at <https://linear.axler.net/>. This is the main text for the module.

**Computational companion (free):** Jim Hefferon, *Linear Algebra* (4th edition). Free PDF at <https://hefferon.net/linearalgebra/>, with a complete book of worked answers. Use it for concrete computations (Gaussian elimination, determinants) and extra drill.

**Standard paid alternative:** Friedberg, Insel and Spence, *Linear Algebra* (Pearson, 5th edition). It is more matrix-based than Axler and has a thorough treatment of Jordan form and dual spaces.

**Supplementary:**
- Paul Halmos, *Finite-Dimensional Vector Spaces* (Springer UTM). A classic written with infinite dimensions in mind. It is good for duality and quotients.
- Gilbert Strang, *Introduction to Linear Algebra*. Read it alongside the MIT lectures if you want more computation.

## Video lectures

- **3Blue1Brown, *Essence of Linear Algebra*** (16 short videos, for geometric intuition): <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>
- **MIT 18.06 Linear Algebra, Gilbert Strang** (for computation): <https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/>. The lecture numbers below refer to its video list.
- **Sheldon Axler's *Linear Algebra Done Right* videos**: <https://linear.axler.net/LADRvideos.html>. These follow the sections of the 3rd edition, and the section names map almost one-to-one onto the 4th.

## Week-by-week schedule

Section numbers are from Axler, 4th edition (for example, 3B means Chapter 3, Section B). "3b1b n" means episode n of *Essence of Linear Algebra*.

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Axler 1A–1C (fields, $\mathbb{F}^n$, vector spaces, subspaces, sums, direct sums). Hefferon Ch. Two §I. | 3b1b 1–2, 16. Axler videos for Ch. 1. | Axler 1B: 1–6. 1C: 1–12, 20–24. Problems 1–2. | Prove for yourself that a sum $U+W$ is direct iff $U\cap W=\lbrace 0\rbrace$, and why this fails for three subspaces. |
| 2 | Axler 2A–2C (span, independence, bases, dimension). | 3b1b 2. MIT 18.06 L9–L10. Axler videos for Ch. 2. | 2A: 1–12. 2B: 1–8. 2C: 1–16. Problem 7. | Key tool: the Steinitz exchange lemma (length of an independent list ≤ length of a spanning list). |
| 3 | Axler 3A–3B (linear maps, null space and range, the fundamental theorem of linear maps). | 3b1b 3, 7–8. MIT 18.06 L30. | 3A: 1–12. 3B: 1–20. Problems 3, 8. | Rank–nullity is the "fundamental theorem of linear maps" in Axler. Know at least two proofs. |
| 4 | Axler 3C–3D (matrices, invertibility, isomorphisms, change of basis). Hefferon Ch. Three §V. | 3b1b 4, 13. MIT 18.06 L31. | 3C: 1–12. 3D: 1–20. Problems 9, 19. | Do several change-of-basis computations by hand until the formula $[T]_{\mathcal{C}} = P^{-1}[T]_{\mathcal{B}}P$ is automatic. |
| 5 | Axler 3E–3F (products, quotients, duality). Halmos §§13–17 and 21–22 optional. | 3b1b 9 (duality). Axler videos 3E–3F. | 3E: 1–10, 12–16. 3F: 1–20. Problems 10, 17, 18. | Duality is where many people's undergraduate linear algebra stops. Take your time here: the dual space returns in functional analysis (3.2) and manifolds (3.5). |
| 6 | Determinants: Hefferon Ch. Four §§I–III for computation. Axler 9A–9C (multilinear forms, alternating forms, determinants). | 3b1b 6, 12. MIT 18.06 L18–L20. | Hefferon Four.I: selected problems. Axler 9C: 1–10. Problem 4. | Axler's definition: $\det T$ is the scalar by which $T$ acts on the 1-dimensional space of alternating $n$-forms. |
| 7 | Axler Ch. 4 (polynomials, skim). 5A–5C (invariant subspaces, eigenvalues, minimal polynomial, upper-triangular matrices). | 3b1b 14–15. MIT 18.06 L21. Axler videos 5A–5B. | 5A: 1–20. 5B: 1–16. 5C: 1–10. Problems 5, 11, 13, 20. | The minimal polynomial matters more than the characteristic polynomial. Its roots are exactly the eigenvalues. |
| 8 | Axler 5D (diagonalisable operators), 5E optional. 6A–6C (inner products, norms, orthonormal bases, Gram–Schmidt, orthogonal complements, minimisation). | MIT 18.06 L14–L17, L22. | 5D: 1–15. 6A: 1–15. 6B: 1–15. 6C: 1–14. Problems 6, 12, 21. | Gram–Schmidt and orthogonal projection give least squares and best approximation. These are the finite-dimensional versions of Hilbert-space projection. |
| 9 | Axler 7A–7E (self-adjoint and normal operators, spectral theorem, positive operators, isometries, SVD). | MIT 18.06 L25, L27, L29. | 7A: 1–15. 7B: 1–12. 7C: 1–10. 7E: 1–8. Problems 14, 15, 22. | Learn the spectral theorem proof well. It is a model for the compact self-adjoint operator theorem in 3.2. |
| 10 | Axler 8A–8C (generalised eigenvectors, nilpotent operators, generalised eigenspace decomposition, Jordan form). Review. | MIT 18.06 L28. Axler videos 8A–8B. | 8A: 1–12. 8B: 1–10. 8C: selected problems. Problems 16, 23, 24. | Exit check: do problems 20–24 without notes. |

## Checklist of key definitions and theorems

- [ ] Vector space over a field $\mathbb{F}$; subspace; sum and direct sum
- [ ] Span, linear independence, basis, dimension; Steinitz exchange lemma
- [ ] Every finite-dimensional space has a basis; every independent list extends to a basis; every spanning list contains a basis
- [ ] $\dim(U+W) = \dim U + \dim W - \dim(U\cap W)$
- [ ] Linear map; null space; range; rank–nullity
- [ ] Injective ⇔ null space is $\lbrace 0\rbrace$; for an operator on a finite-dimensional space, injective ⇔ surjective ⇔ invertible
- [ ] Matrix of a linear map; matrix of a composition; change-of-basis formula; similarity
- [ ] Isomorphism $\mathcal{L}(V,W) \cong \mathbb{F}^{m\times n}$
- [ ] Quotient space $V/U$; $\dim V/U = \dim V - \dim U$; $V/\mathrm{null}\,T \cong \mathrm{range}\,T$
- [ ] Dual space, dual basis, dual map; annihilator; $\dim U^0 = \dim V - \dim U$; row rank = column rank
- [ ] Determinant: alternating multilinear characterisation; $\det(AB)=\det A\det B$; $A$ invertible ⇔ $\det A\neq 0$
- [ ] Eigenvalue, eigenvector, eigenspace; eigenvectors for distinct eigenvalues are independent
- [ ] Every operator on a finite-dimensional complex space has an eigenvalue
- [ ] Minimal polynomial; its zeros are the eigenvalues; Cayley–Hamilton theorem
- [ ] Upper-triangular form over $\mathbb{C}$
- [ ] Diagonalisable ⇔ minimal polynomial has distinct linear factors ⇔ $V$ is the direct sum of the eigenspaces
- [ ] Inner product; Cauchy–Schwarz; triangle inequality; Gram–Schmidt; orthogonal complement; orthogonal projection as best approximation
- [ ] Adjoint; self-adjoint; normal; unitary/orthogonal (isometry)
- [ ] Spectral theorem (real: self-adjoint; complex: normal)
- [ ] Positive operators and square roots; SVD (statement and meaning)
- [ ] Generalised eigenspaces; $V = \bigoplus_\lambda G(\lambda,T)$ over $\mathbb{C}$; nilpotent operators
- [ ] Jordan canonical form (statement, computation, uniqueness up to block order)

## Exit criteria

Move on when you can do all of the following without notes:

1. Prove rank–nullity from the definition of dimension, and use it to prove that $\dim(U+W) = \dim U+\dim W-\dim(U\cap W)$.
2. Given a linear map and two bases, write down its matrix and convert between bases correctly the first time.
3. Prove that every operator on a finite-dimensional complex vector space has an eigenvalue, without using determinants.
4. Decide whether a given $3\times 3$ or $4\times 4$ matrix is diagonalisable, using the minimal polynomial, and find its Jordan form if it is not.
5. State and prove the real spectral theorem, and orthogonally diagonalise a symmetric $3\times 3$ matrix.
6. Explain the dual space and the dual map. Prove $\dim U^0 = \dim V - \dim U$ and deduce that row rank = column rank.
7. Score at least 75% on [problems.md](problems.md) and complete at least three of the Challenge problems.
