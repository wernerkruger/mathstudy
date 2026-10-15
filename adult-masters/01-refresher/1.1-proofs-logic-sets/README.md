# 1.1 — Proofs, logic and sets

**Phase:** 1 (Refresher)
**Estimated length:** 6 weeks at about 6 hours a week (about 36 hours)
**Prerequisites:** none. Take the [diagnostic](../../00-diagnostic/README.md) first; if you scored 80%+ on section A, use the *Skim* route.
**Next:** [1.2 Real analysis I](../1.2-real-analysis-I/) and [1.3 Linear algebra](../1.3-linear-algebra/), which can be interleaved (see the [Phase 1 overview](../README.md)).

## Learning objectives

By the end of this module you should be able to:

1. Translate mathematical statements between English and symbolic logic, and negate statements with several nested quantifiers correctly and automatically.
2. Choose and execute the right proof technique: direct, contrapositive, contradiction, cases, induction (ordinary and strong), existence and uniqueness, and disproof by counterexample.
3. Prove set identities by element-chasing, and work with indexed unions and intersections, power sets and Cartesian products.
4. Work with functions: injective, surjective and bijective maps, compositions, inverses, images and preimages.
5. Work with relations: prove a relation is an equivalence relation or a partial order, describe equivalence classes, and build quotient sets such as $\mathbb{Z}/n\mathbb{Z}$ and $\mathbb{Q}$.
6. Compare cardinalities: prove sets countable or uncountable, use Cantor's diagonal argument, and prove and apply the Schröder–Bernstein theorem.
7. State Zorn's lemma, recognise when it is needed, and use it in a standard argument (every vector space has a basis).

## Texts

**Primary (free):** Richard Hammack, *Book of Proof*, 3rd edition (2018), free PDF under a Creative Commons licence: <https://richardhammack.github.io/BookOfProof/>. Very clear, with many exercises and solutions to the odd-numbered ones.

**Primary (paid, standard):** Daniel J. Velleman, *How to Prove It: A Structured Approach*, 3rd edition, Cambridge University Press, 2019. Stronger than Hammack on the *logic* of proof structure: how the form of the goal and the hypotheses dictate the shape of the proof.

**Supplementary:**

- Paul R. Halmos, *Naive Set Theory* (Springer UTM). Short and elegant. Read the chapters on the axiom of choice and Zorn's lemma in week 6.
- Lebl, *Basic Analysis I*, chapter 0 (free, <https://www.jirka.org/ra/>). A compact review of sets, functions and induction from an analyst's point of view, useful as a bridge into 1.2.

**Optional (interactive):** the *Natural Number Game* on the Lean Game Server (<https://adam.math.hhu.de/>; choose "Natural Number Game"). You prove the basic properties of $\mathbb{N}$ from Peano's axioms in the Lean proof assistant. It is very good for making induction and the exact structure of a proof precise, and it is fun. Do it in short sessions alongside weeks 2–3. It is not required.

## Video lectures

- **MIT 18.100A Real Analysis (Fall 2020), Dr. Casey Rodriguez**, MIT OpenCourseWare: <https://ocw.mit.edu/courses/18-100a-real-analysis-fall-2020/video_galleries/video-lectures/> (also on YouTube: <https://www.youtube.com/playlist?list=PLUl4u3cNGP61O7HkcF7UImpM0cR_L2gSw>). Lectures 1–3 cover sets, induction and Cantor's theory of cardinality. They are a good model of proof-writing at the board and also start 1.2.
- **Francis Su, Real Analysis lectures (Harvey Mudd Math 131, Spring 2010)**: <https://www.youtube.com/playlist?list=PL0E754696F72137EC>. The course follows Rudin's *Principles of Mathematical Analysis*, and its early lectures cover the set-theoretic preliminaries, including countable and uncountable sets.

There is no single standard video course for "intro to proofs" at this level, and you do not need one. The books are the main resource for this module.

## Week-by-week schedule

Hammack chapter numbers refer to the 3rd edition; Velleman chapter numbers to the 3rd edition.

| Week | Reading | Videos | Exercises | Notes |
|---|---|---|---|---|
| 1 | Hammack ch. 2 (Logic). Velleman ch. 1–2 (sentential and quantificational logic) | — | Hammack ch. 2 odd exercises, especially 2.7–2.10 (quantifiers, negation). [problems.md](problems.md) 1–2 | [notes.md §1](notes.md#1-logic). Practise negating long statements until it is automatic. |
| 2 | Hammack ch. 4–7 and 9 (direct, contrapositive, contradiction, non-conditional statements, disproof). Velleman ch. 3 | — | Hammack ch. 4–7, a selection of about 15 problems. [problems.md](problems.md) 3, 7, 8 | [notes.md §2](notes.md#2-proof-techniques). Optional: start the Natural Number Game. |
| 3 | Hammack ch. 1, 8, 10 (sets, proofs involving sets, induction). Velleman ch. 6 | MIT 18.100A lecture 1 | [problems.md](problems.md) 4, 6, 9, 22 | [notes.md §3–4](notes.md#3-induction). Strong induction and well-ordering. |
| 4 | Hammack ch. 11 (relations). Velleman ch. 4 | — | [problems.md](problems.md) 12, 13, 14 | [notes.md §6](notes.md#6-relations). Equivalence relations and partial orders; quotient constructions. |
| 5 | Hammack ch. 12 (functions). Velleman ch. 5 | — | [problems.md](problems.md) 5, 10, 11 | [notes.md §5](notes.md#5-functions). Image and preimage identities. |
| 6 | Hammack ch. 14 (cardinality). Velleman ch. 8. Halmos, *Naive Set Theory*, chapters on the axiom of choice and Zorn's lemma | MIT 18.100A lectures 2–3; Su, early lectures on countability | [problems.md](problems.md) 15–21 | [notes.md §7–8](notes.md#7-cardinality). Then check the exit criteria below. |

**Time split per week (guide):** about 2.5 h reading, about 3 h exercises, about 0.5 h writing up one or two solutions neatly (see [HOW_TO_STUDY.md](../../HOW_TO_STUDY.md)).

## Checklist of key definitions and theorems

Logic

- [ ] Connectives, truth tables, logical equivalence; $P \Rightarrow Q \equiv \neg P \vee Q \equiv \neg Q \Rightarrow \neg P$
- [ ] Converse and contrapositive; the biconditional
- [ ] Quantifiers; negation rules; why quantifier order matters ($\forall\exists$ versus $\exists\forall$)
- [ ] De Morgan's laws (for propositions and for sets)

Proof

- [ ] Direct proof, contrapositive, contradiction, proof by cases
- [ ] Existence and uniqueness proofs; constructive versus non-constructive proofs
- [ ] Disproof by counterexample
- [ ] Ordinary induction, strong induction, the well-ordering principle (and their equivalence)
- [ ] $\sqrt 2$ is irrational; there are infinitely many primes

Sets and functions

- [ ] Subset, equality by double inclusion, power set, Cartesian product, indexed families
- [ ] Image $f(A)$ and preimage $f^{-1}(B)$; which operations each preserves
- [ ] Injective, surjective, bijective; left and right inverses
- [ ] Composition; $g\circ f$ injective $\Rightarrow f$ injective; $g \circ f$ surjective $\Rightarrow g$ surjective

Relations

- [ ] Reflexive, symmetric, antisymmetric, transitive
- [ ] Equivalence relations $\leftrightarrow$ partitions; quotient sets; $\mathbb{Z}/n\mathbb{Z}$; the construction of $\mathbb{Q}$
- [ ] Partial and total orders; maximal versus greatest elements; upper bounds; chains

Cardinality

- [ ] Equal cardinality; finite, countable and uncountable sets
- [ ] $\mathbb{N}\times\mathbb{N}$, $\mathbb{Z}$ and $\mathbb{Q}$ are countable; a countable union of countable sets is countable
- [ ] Cantor's diagonal argument: $\mathbb{R}$ is uncountable
- [ ] Cantor's theorem: there is no surjection $A \to \mathcal{P}(A)$
- [ ] Schröder–Bernstein theorem, with proof
- [ ] $\lvert\mathbb{R}\rvert = \lvert\mathcal{P}(\mathbb{N})\rvert$
- [ ] Axiom of choice and Zorn's lemma (statement); every vector space has a basis

## Exit criteria

You are ready to move on when you can do all of the following **closed-book**:

1. Negate any statement with three or more nested quantifiers correctly in under a minute, for example the definitions of uniform continuity or of a Cauchy sequence.
2. Write clean proofs by contrapositive, contradiction and strong induction, and explain why you chose each technique.
3. Prove that a given relation is an equivalence relation and describe its classes, and show that an operation on equivalence classes is well defined.
4. State and prove: $\mathbb{Q}$ is countable, $\mathbb{R}$ is uncountable, Cantor's theorem, and the Schröder–Bernstein theorem.
5. Prove $f(f^{-1}(B)) \subseteq B$ and $A \subseteq f^{-1}(f(A))$, and say exactly when each is an equality.
6. Score at least 70% on the Core problems in [problems.md](problems.md) without looking at the solutions, and make a serious attempt at two Challenge problems.
