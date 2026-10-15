# Exam technique for the VWO mathematics central exam

[← E4 README](README.md) · [Mock paper](mock-paper.md) · [Mock paper solutions](mock-paper-solutions.md)

A strong mathematician can still lose 15–20% of the points on a Dutch central exam by not writing down what the marker needs. This page explains how points are awarded and how to collect all of them.

---

## 1. How marks are awarded

Each question has a fixed number of points (usually 3–6). The *correctievoorschrift* (marking scheme) splits them into bullets, one point each, for example:

> - inzicht dat $f'(x) = 0$ moet worden opgelost — **1**
> - $f'(x)$ correct — **1**
> - beschrijven hoe de vergelijking met de GR wordt opgelost — **1**
> - het antwoord — **1**

Consequences:

- **The final answer is often worth only one point.** Most points are for visible steps.
- **"Inzicht" (insight) points** are given for writing down the plan: "the tangent is horizontal, so $f'(x) = 0$".
- Each paper is marked by your own teacher and by a second marker from another school (*tweede corrector*). Neither can give points for steps that are only in your head.
- The general rules at the start of each *correctievoorschrift* apply to every question: no working means no points (even with a correct answer); wrong rounding costs a point; missing calculator explanation costs a point.

---

## 2. Command words

The command word (*opdrachtwoord*) tells you what kind of answer is required. These are the ones in VWO mathematics exams.

| Dutch | Meaning | What you must write | Calculator? |
|---|---|---|---|
| **Bereken** | calculate | The method, the equation or expression, what you entered in the GR, and the result rounded as asked | Allowed |
| **Bereken exact** / **exact** | calculate exactly | An algebraic derivation; the answer contains fractions, roots, $\pi$, $e$, $\ln$, etc., not decimals | Only to check; a GR result earns no points |
| **Toon aan** | show that | A complete derivation of the given result. Every step that leads to it must be on paper | Allowed, unless "exact" or "algebraïsch" is added; see below |
| **Bewijs** | prove | A logical argument with reasons (geometry: *gegeven / te bewijzen / bewijs*, a reason for each step) | Not useful |
| **Benader** | approximate | A numerical method (calculator, Euler's method, a table), with the method described | Allowed |
| **Beredeneer** / **Licht toe** / **Verklaar** | reason / explain | A short argument in words (and formulas), without necessarily computing everything | Usually not needed |
| **Onderzoek** | investigate | Find out whether something holds, and give a conclusion with justification | Allowed unless "exact" |
| **Stel een formule op** / **Druk uit in** | set up a formula / express in | A formula, derived and simplified as asked, using the given variables | No |
| **Geef** / **Schrijf** | give / write | The answer; little or no working needed (read the question carefully) | — |
| **Teken** / **Schets** | draw / sketch | A clear figure, with the relevant points labelled | — |
| **Algebraïsch** | algebraically | Like "exact": solve by algebra, not by GR | Only to check |

### Special rules for "toon aan"

- **The given answer must not be used.** Starting from what you are asked to show (and "checking" it) is circular and earns little.
- **Approximate values:** if asked to show that something is "ongeveer 2,3" (about 2.3), give your result **in more decimals** than given (e.g. 2,31...). Otherwise the marker cannot see that you computed it and did not copy it.
- **Equations:** if asked to show that a solution is $x = 3$, it is not enough to substitute $x = 3$ unless the question asks "toon aan dat $x = 3$ een oplossing is". Solve the equation.

### "Exact" questions

- Use the GR only to check (and to see what the answer should be).
- Simplifying is good but rarely required: $\frac{2}{\sqrt 2}$ is accepted, $1.414$ is not.
- Exact trig values: know $\sin$ and $\cos$ of multiples of $\frac\pi6$ and $\frac\pi4$ by heart.
- An exact answer may still need a final decimal approximation if the question asks for one ("bereken exact en rond af op…" is rare, but read it).

---

## 3. Writing down calculator work

For every *bereken* question solved with the GR, write:

1. **What you are solving**, in mathematical form: "$f(x) = 3$" or "$f'(x) = 0$" or "$\int_0^4 g(x)\,dx$".
2. **What you entered**: "$Y_1 = x e^{-0.5x}$, $Y_2 = 0.5$, intersect" or "fMin on $[0, 5]$" or "normalcdf(9.9, 10.1, 10, 0.05)". Use mathematical notation where you can; exact key names are not required.
3. **The result**, with enough decimals, then rounded as asked.

Missing step 2 typically costs one point. Writing only "GR: $x = 2.35$" is not enough.

**Common calculator traps.**

- **Degrees vs radians.** Trigonometric functions in radians unless the question uses degrees. Check the mode at the start of the exam.
- **Window.** An intersection or zero outside the window is missed. Read off the domain from the question and set the window accordingly; look at a table to find all solutions.
- **Numerical derivative** (nDeriv, $\frac{d}{dx}$) is fine for *bereken*, never for *exact* or *toon aan* where the derivative itself is asked.
- **Storing values.** Store intermediate results in variables (A, B, …) instead of retyping rounded values.

---

## 4. Rounding

- **Round only at the end.** Use unrounded intermediate values (stored in the calculator).
- **Round to what is asked**: "op één decimaal" (one decimal), "in hele graden" (whole degrees), "op duizendsten" (three decimals). If nothing is asked, use the context: money in cents, people as whole numbers, probabilities in three or four decimals.
- **Context matters for direction.** "How many whole minutes until the level is *below* 40?" means rounding *up*, even if the decimal part is small.
- **Dutch decimal comma.** Exams use $2{,}35$. Either notation is accepted in your own work, but read the paper carefully: "1,5" means one and a half, and "1.500" can mean one thousand five hundred.

---

## 5. Showing work in common question types

| Question type | Minimum working |
|---|---|
| Extreme value | $f'(x) = 0$ stated; $f'(x)$ written out; solution; why it is a max/min (sign change, graph, or GR); the requested value (often the $y$-value, not $x$) |
| Tangent line | $f'(a)$ as slope; point $(a, f(a))$; equation $y = mx + b$ with $b$ computed |
| Area / volume | The integral written with limits; for exact: the antiderivative; for bereken: GR input |
| Trig equation | Isolate $\sin$/$\cos$; **all** solutions in the domain (use the unit circle, $+ k\cdot 2\pi$, then select) |
| Angle between lines/vectors | Direction or normal vectors; the inner product formula filled in; the acute angle if lines |
| Parameter questions | Equation in the parameter; solve; check that each solution actually satisfies the condition |
| Probability | Name the distribution and parameters ("$X$ binomial, $n = 50$, $p = 0.046$"); write the probability as $P(X \ge 3) = 1 - P(X \le 2)$; the GR command |
| Proof | *Gegeven*, *te bewijzen*, numbered steps each with a reason |

---

## 6. The most common ways to lose points

1. **No working for a correct answer.** Especially in *bereken* questions solved entirely on the GR.
2. **Approximating in an *exact* question**, e.g. using $1.414$ for $\sqrt2$ in the middle of a derivation.
3. **Missing solutions** of trig equations or of $\lvert x\rvert$-type equations; or not selecting solutions in the given domain.
4. **Answering a different question.** Asked for the $y$-coordinate, gave the $x$-value. Asked for "the time", gave the volume. Underline what is asked before you start.
5. **Rounding too early**, so the last decimal is wrong.
6. **Wrong rounding direction** in context ("at least", "less than").
7. **Circular *toon aan*** that starts from the given result.
8. **Radians/degrees mix-up.**
9. **Forgetting units** in context questions (minutes, cm², euros).
10. **Spending 25 minutes on one 4-point question** and not reaching the last two pages. Use the time budget (about 2.4 minutes per point).
11. **Not checking the domain** (e.g. $\ln$ of a negative number, a zero outside $[0, 2\pi]$).
12. **Messy layout.** If the marker cannot follow it, points are lost. Write one step per line, and cross out cleanly (a single line) instead of overwriting.

---

## 7. On the day

- Check the calculator (exam mode, batteries, radians) before the exam starts.
- Read the whole paper first; start with a part you like to build confidence.
- Keep track of time at each part boundary: after 60 minutes you should be about one third of the way through the points.
- Leave the last 10 minutes to check: every question answered? Every answer rounded as asked? Units?
- A partly answered question still earns points: never leave a question blank. Write the plan ("$f'(x) = 0$ solve…") even if you cannot finish it.
