[← Back to O5 Algebra and inequalities](README.md)

# O5 Problems: algebra and inequalities

Thirty problems in three levels. The topic of each problem is given in italics. For Level 2 and Level 3, write a complete solution: for "find all" problems, prove that your list is complete *and* check that every item on it works; for inequalities, state when equality holds. Hints are at the end, one line per problem. Solutions are in [solutions.md](solutions.md).

---

## Level 1 — Kangoeroe style (wizPROF)

Multiple choice. Aim for about 5 minutes per problem, but write down *why* your answer is right.

**1.** *Algebraic manipulation.* The real number $x$ satisfies $x+\dfrac1x=3$. What is $x^3+\dfrac1{x^3}$?

(A) $15$ (B) $18$ (C) $21$ (D) $24$ (E) $27$

**2.** *Factoring identities.* What is the value of

$$
\frac{2026^3-2025^3-1}{2025\cdot 2026}\,?
$$

(A) $1$ (B) $2$ (C) $3$ (D) $2025$ (E) $4051$

**3.** *Remainder theorem.* What is the remainder when $x^{2030}+2x+3$ is divided by $x+1$?

(A) $0$ (B) $1$ (C) $2$ (D) $4$ (E) $6$

**4.** *Vieta's formulas.* The equation $x^2-7x+3=0$ has roots $a$ and $b$. What is $a^2+b^2$?

(A) $37$ (B) $43$ (C) $46$ (D) $49$ (E) $55$

**5.** *Telescoping.* What is the value of

$$
\frac{1}{\sqrt1+\sqrt2}+\frac{1}{\sqrt2+\sqrt3}+\frac{1}{\sqrt3+\sqrt4}+\dots+\frac{1}{\sqrt{99}+\sqrt{100}}\,?
$$

(A) $9$ (B) $10$ (C) $\sqrt{99}$ (D) $99$ (E) $\frac{99}{10}$

**6.** *Arithmetic sequence.* In an arithmetic sequence (rekenkundige rij) the third term is $10$ and the tenth term is $31$. What is the sum of the first $20$ terms?

(A) $610$ (B) $630$ (C) $650$ (D) $670$ (E) $690$

**7.** *AM-GM.* What is the smallest possible value of $\dfrac{x^2+9}{x}$ for positive real $x$?

(A) $3$ (B) $6$ (C) $9$ (D) $10$ (E) there is no smallest value

**8.** *Functional equation.* A function $f$ is defined for all nonzero real numbers and satisfies $f(x)+2f\!\left(\dfrac1x\right)=3x$ for every $x\neq0$. What is $f(2)$?

(A) $-1$ (B) $0$ (C) $1$ (D) $2$ (E) $3$

---

## Level 2 — NWO first/second round style

Short answers with a full justification. About 20–30 minutes per problem.

**9.** *Sophie Germain identity.* Find all positive integers $n$ for which $n^4+4$ is a prime number.

**10.** *Symmetric expressions, Newton sums.* Real numbers $a,b,c$ satisfy $a+b+c=6$, $a^2+b^2+c^2=14$ and $a^3+b^3+c^3=36$. Find $abc$ and $a^4+b^4+c^4$.

**11.** *Integer roots, Vieta.* Find all integers $a$ for which both roots of $x^2+ax+2a=0$ are integers. (A double root counts, as two equal integer roots.)

**12.** *Remainder theorem.* A polynomial $P(x)$ leaves remainder $3$ when divided by $x-1$, and remainder $5$ when divided by $x-2$. What is the remainder when $P(x)$ is divided by $(x-1)(x-2)$?

**13.** *Recurrence, induction.* The sequence $a_1,a_2,\dots$ is given by $a_1=3$ and $a_{n+1}=a_n^2-2a_n+2$.

(a) Find a closed formula for $a_n$.

(b) Prove that $a_1a_2\cdots a_n=a_{n+1}-2$ for every $n\ge1$.

(c) Deduce that any two different terms of the sequence are coprime (relatief priem).

**14.** *Telescoping.* Find a closed formula for

$$
\frac{1}{1\cdot2\cdot3}+\frac{1}{2\cdot3\cdot4}+\dots+\frac{1}{n(n+1)(n+2)}.
$$

**15.** *AM-GM.* Prove that $(a+b)(b+c)(c+a)\ge8abc$ for all positive reals $a,b,c$. When does equality hold?

**16.** *Cauchy–Schwarz, Engel form.* Positive reals $x,y,z$ satisfy $x+y+z=1$. Prove that

$$
\frac1x+\frac4y+\frac9z\ge36,
$$

and find all cases of equality.

**17.** *Cauchy–Schwarz, Engel form.* Prove Nesbitt's inequality (ongelijkheid van Nesbitt): for positive reals $a,b,c$,

$$
\frac{a}{b+c}+\frac{b}{c+a}+\frac{c}{a+b}\ge\frac32.
$$

When does equality hold?

**18.** *Rearrangement, AM-GM.* Prove that $a^3+b^3+c^3\ge a^2b+b^2c+c^2a$ for all positive reals $a,b,c$, and find the equality cases.

**19.** *Cauchy–Schwarz.* Real numbers $x,y$ satisfy $3x+4y=10$. Find the smallest possible value of $x^2+y^2$, and the pair $(x,y)$ where it is reached.

**20.** *Functional equation.* Find all functions $f:\mathbb{R}\to\mathbb{R}$ such that $f(x)+2f(1-x)=x^2$ for all real $x$.

**21.** *Functional equation.* Find all functions $f:\mathbb{R}\to\mathbb{R}$ such that $f(x)f(y)-f(xy)=x+y$ for all real $x,y$.

---

## Level 3 — NWO final / BxMO style

Full proofs. Allow 45–90 minutes per problem, possibly spread over two sessions.

**22.** *Three-cube identity, number theory.* Determine all integers $n$ that can be written as $n=a^3+b^3+c^3-3abc$ with $a,b,c$ integers.

**23.** *Vieta, substitution.* Let $a,b,c$ be the three (complex) roots of $x^3-x-1=0$. Compute

$$
\frac{1+a}{1-a}+\frac{1+b}{1-b}+\frac{1+c}{1-c}.
$$

**24.** *AM-GM, QM-AM.* Positive reals $a,b,c$ satisfy $abc=1$. Prove that $a^2+b^2+c^2\ge a+b+c$, and find the equality cases.

**25.** *Tangent line trick.* Positive reals $a,b,c$ satisfy $a+b+c=1$. Prove that

$$
\frac{a}{1+a^2}+\frac{b}{1+b^2}+\frac{c}{1+c^2}\le\frac{9}{10}.
$$

**26.** *Substitution, Engel form, AM-GM.* Positive reals $a,b,c$ satisfy $abc=1$. Prove that

$$
\frac{1}{a^3(b+c)}+\frac{1}{b^3(c+a)}+\frac{1}{c^3(a+b)}\ge\frac32.
$$

**27.** *Sequences, bounding.* The sequence $a_1,a_2,\dots$ is given by $a_1=1$ and $a_{n+1}=a_n+\dfrac1{a_n}$. Prove that $14<a_{100}<15$.

**28.** *Polynomials, comparing coefficients.* Find all polynomials $P$ with real coefficients such that $P(x^2)=P(x)^2$ for all real $x$.

**29.** *Cauchy's equation over $\mathbb{Q}$.* Find all functions $f:\mathbb{Q}\to\mathbb{Q}$ such that $f(x+y)=f(x)+f(y)+xy$ for all rational $x,y$.

**30.** *Functional equation, injectivity, surjectivity.* Find all functions $f:\mathbb{R}\to\mathbb{R}$ such that

$$
f\big(x^2+f(y)\big)=y+f(x)^2
$$

for all real $x,y$.

---

## Hints

1. Cube both sides of $x+\frac1x=3$.
2. Put $a=2026$, $b=-2025$, $c=-1$; what is $a+b+c$?
3. Use the remainder theorem with $x=-1$.
4. $a^2+b^2=(a+b)^2-2ab$.
5. Multiply each fraction by $\sqrt{k+1}-\sqrt k$ over itself.
6. Find the common difference $d$ from the two given terms.
7. Split the fraction as $x+\frac9x$.
8. Also substitute $x=\frac12$ and solve two equations in two unknowns.
9. Write $n^4+4$ as a difference of two squares.
10. First find $ab+bc+ca$, then use the three-cube identity or Newton's sums.
11. If the roots are $r,s$, Vieta gives $rs=-2(r+s)$; add $4$ to both sides and factor.
12. The remainder is $ax+b$; plug in $x=1$ and $x=2$.
13. Look at $a_n-1$; then use $a_{n+1}-2=a_n(a_n-2)$.
14. Write $\frac{1}{k(k+1)(k+2)}$ as $\frac12$ times a difference of two fractions.
15. Use AM-GM on each bracket.
16. Write the numerators as $1^2,2^2,3^2$ and use the Engel form.
17. Write $\frac{a}{b+c}=\frac{a^2}{a(b+c)}$.
18. Apply AM-GM to $a^3,a^3,b^3$.
19. Use Cauchy–Schwarz with the vectors $(3,4)$ and $(x,y)$.
20. Replace $x$ by $1-x$ and solve the system for $f(x)$.
21. Find $f(0)$ first, then put $y=0$.
22. Write the expression as $s(s^2-3q)$ with $s=a+b+c$, $q=ab+bc+ca$, and look modulo $3$ and $9$.
23. Put $y=\frac{1+x}{1-x}$, solve for $x$, and find the cubic equation satisfied by $y$.
24. First show $a+b+c\ge3$; then use QM-AM.
25. Find the tangent line of $f(x)=\frac{x}{1+x^2}$ at $x=\frac13$ and show $f$ lies below it.
26. Substitute $x=\frac1a$, $y=\frac1b$, $z=\frac1c$.
27. Study $a_n^2$; for the upper bound, compare $\sum\frac1k$ with blocks between powers of $2$.
28. If $P$ is not of the form $cx^n$, look at the two highest nonzero terms.
29. Subtract $\frac{x^2}{2}$ from $f$.
30. Put $x=0$ to get bijectivity, then show $f(0)=0$, $f(x^2)=f(x)^2$, and that $f$ is increasing.
