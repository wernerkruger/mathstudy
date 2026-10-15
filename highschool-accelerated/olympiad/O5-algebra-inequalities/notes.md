[← Back to O5 Algebra and inequalities](README.md)

# O5 Notes: algebra and inequalities (algebra en ongelijkheden)

These notes cover the five areas of olympiad algebra that appear in almost every NWO final and BxMO paper: algebraic manipulation, polynomials, sequences, inequalities and functional equations. Each section gives the idea, the key facts with short proofs, and worked examples. Try every example yourself for at least ten minutes before you read the solution.

Throughout, "positive" means strictly greater than zero, and $\mathbb{R}$, $\mathbb{Q}$, $\mathbb{Z}$ are the real, rational and integer numbers.

---

## 1. Algebraic manipulation (algebraïsch rekenen)

### Idea

Many competition problems hide a factorisation (ontbinding in factoren). Once you see it, a scary expression becomes a product, and products are easy to study: a product is zero when one factor is zero, a product of integers has divisors, and a product of positive numbers is positive. Learn the standard identities so well that you recognise them in disguise.

### Key facts

The basic identities (merkwaardige producten):

$$
\begin{aligned}
a^2-b^2 &= (a-b)(a+b),\\
a^3-b^3 &= (a-b)(a^2+ab+b^2),\\
a^3+b^3 &= (a+b)(a^2-ab+b^2),\\
a^n-b^n &= (a-b)(a^{n-1}+a^{n-2}b+\dots+b^{n-1}).
\end{aligned}
$$

**The three-cube identity.**

$$
a^3+b^3+c^3-3abc = (a+b+c)(a^2+b^2+c^2-ab-bc-ca) = \tfrac12(a+b+c)\big((a-b)^2+(b-c)^2+(c-a)^2\big).
$$

*Proof.* Expand the middle product: each of the nine products $a\cdot a^2$, $a\cdot(-ab)$, and so on, appears, and all mixed terms like $a^2b$ cancel in pairs, leaving $a^3+b^3+c^3-3abc$. The last form follows from $(a-b)^2+(b-c)^2+(c-a)^2 = 2(a^2+b^2+c^2-ab-bc-ca)$. $\square$

Two consequences you must know by heart:

- If $a+b+c=0$, then $a^3+b^3+c^3=3abc$.
- If $a,b,c\ge 0$, then $a^3+b^3+c^3\ge 3abc$, with equality only when $a=b=c$ (this is AM-GM for three cubes, see section 4).

**Sophie Germain's identity.**

$$
a^4+4b^4 = (a^2+2b^2+2ab)(a^2+2b^2-2ab).
$$

*Proof.* Complete the square: $a^4+4b^4 = (a^2+2b^2)^2 - 4a^2b^2$, which is a difference of two squares. $\square$

Note that the second factor equals $(a-b)^2+b^2$, so for integers $a,b$ with $b\neq0$ it is at least $1$, and it equals $1$ only when $a=b=\pm1$. Always check when a factor could be $1$.

**Symmetric expressions (symmetrische uitdrukkingen).** An expression in $a,b,c$ is symmetric if swapping any two variables does not change it. Every symmetric polynomial can be written in terms of the elementary symmetric polynomials (elementaire symmetrische veeltermen)

$$
e_1=a+b+c,\qquad e_2=ab+bc+ca,\qquad e_3=abc.
$$

For example $a^2+b^2+c^2 = e_1^2-2e_2$ and $a^3+b^3+c^3 = e_1^3-3e_1e_2+3e_3$ (check the second one using the three-cube identity). For two variables, use $s=a+b$ and $p=ab$: then $a^2+b^2=s^2-2p$ and $a^3+b^3=s^3-3sp$.

**Substitution (substitutie).** If an expression contains the same block several times, give the block a name. If a condition is awkward, such as $abc=1$, substitute something that makes it automatic, such as $a=x/y$, $b=y/z$, $c=z/x$, or replace each variable by its reciprocal.

### Worked examples

**Example 1.1.** Show that $545^4+4^{545}$ is not a prime number.

*Solution.* We want the form $a^4+4b^4$. Since $4^{545}=4\cdot 4^{544}=4\cdot(2^{272})^4$, take $a=545$ and $b=2^{272}$. Sophie Germain gives

$$
545^4+4^{545} = (a^2+2b^2+2ab)(a^2+2b^2-2ab).
$$

The second factor is $(a-b)^2+b^2\ge b^2 = 2^{544}>1$, and the first factor is even larger. So the number is a product of two integers bigger than $1$, hence not prime. $\square$

**Example 1.2.** Factor $(x-y)^3+(y-z)^3+(z-x)^3$.

*Solution.* Put $a=x-y$, $b=y-z$, $c=z-x$. Then $a+b+c=0$, so the sum of cubes equals $3abc$:

$$
(x-y)^3+(y-z)^3+(z-x)^3 = 3(x-y)(y-z)(z-x).
$$

Without the identity, this is a long expansion. $\square$

---

## 2. Polynomials (polynomen / veeltermen)

### Idea

A polynomial is determined by its coefficients, but also (up to a constant) by its roots (nulpunten / wortels). Competition problems move between these two descriptions. The tools are division with remainder, the factor theorem, the rational root test and Vieta's formulas.

### Key facts

**Division with remainder (deling met rest).** For polynomials $P$ and $D\neq 0$ there are unique polynomials $Q$ and $R$ with $P=QD+R$ and $\deg R<\deg D$.

**Remainder theorem (reststelling).** The remainder of $P(x)$ on division by $x-r$ is the number $P(r)$.

*Proof.* Write $P(x)=(x-r)Q(x)+R$ with $R$ a constant, and put $x=r$. $\square$

**Factor theorem (factorstelling).** $x-r$ divides $P(x)$ if and only if $P(r)=0$. A nonzero polynomial of degree $n$ has at most $n$ roots. So if two polynomials of degree at most $n$ agree at $n+1$ points, they are equal.

**Rational root theorem (stelling over rationale nulpunten).** Let $P(x)=a_nx^n+\dots+a_1x+a_0$ have integer coefficients, and let $p/q$ be a root in lowest terms. Then $p\mid a_0$ and $q\mid a_n$. In particular, if $a_n=1$, every rational root is an integer dividing $a_0$.

*Proof.* Multiply $P(p/q)=0$ by $q^n$: $a_np^n+a_{n-1}p^{n-1}q+\dots+a_0q^n=0$. Every term except $a_0q^n$ is divisible by $p$, so $p\mid a_0q^n$, and since $\gcd(p,q)=1$, $p\mid a_0$. In the same way $q\mid a_np^n$, so $q\mid a_n$. $\square$

**Vieta's formulas (formules van Vieta).** If $P(x)=a(x-r_1)(x-r_2)\cdots(x-r_n)$, expanding and comparing coefficients gives, for degree 2 and 3:

$$
\begin{aligned}
x^2+px+q:&\quad r_1+r_2=-p,\quad r_1r_2=q,\\
x^3+px^2+qx+r:&\quad r_1+r_2+r_3=-p,\quad r_1r_2+r_2r_3+r_3r_1=q,\quad r_1r_2r_3=-r.
\end{aligned}
$$

In general, the elementary symmetric polynomials of the roots are, up to sign, the coefficients divided by the leading coefficient. Roots may be complex (complex); Vieta still holds, and this is where your work with complex numbers pays off.

**Newton sums (formules van Newton), light version.** Let $p_k=r_1^k+r_2^k+r_3^k$ for the roots of $x^3-e_1x^2+e_2x-e_3$. Each root satisfies $r^3=e_1r^2-e_2r+e_3$; multiply by $r^{k-3}$ and add over the three roots:

$$
p_k = e_1p_{k-1}-e_2p_{k-2}+e_3p_{k-3}\qquad(k\ge 3,\ p_0=3).
$$

Also $p_1=e_1$ and $p_2=e_1^2-2e_2$.

### Worked examples

**Example 2.1.** Find the remainder of $x^{100}$ on division by $x^2-3x+2$.

*Solution.* The remainder has degree at most $1$, so $x^{100}=(x-1)(x-2)Q(x)+ax+b$. Putting $x=1$ and $x=2$ gives $a+b=1$ and $2a+b=2^{100}$. So $a=2^{100}-1$ and $b=2-2^{100}$. The remainder is $\mathbf{(2^{100}-1)x+2-2^{100}}$. $\square$

**Example 2.2.** Let $r_1,r_2,r_3$ be the roots of $x^3-2x^2+3x-4$. Compute $r_1^2+r_2^2+r_3^2$ and $r_1^3+r_2^3+r_3^3$.

*Solution.* Here $e_1=2$, $e_2=3$, $e_3=4$. So $p_2=e_1^2-2e_2=4-6=-2$. A sum of squares is negative, which tells you that not all roots are real (two are complex conjugates). Newton gives $p_3=e_1p_2-e_2p_1+3e_3 = 2\cdot(-2)-3\cdot 2+12 = 2$. The answers are $\mathbf{-2}$ and $\mathbf{2}$. $\square$

**Example 2.3.** Show that $x^3-3x+1$ has no rational root.

*Solution.* By the rational root theorem, a rational root must be an integer dividing $1$, so $\pm 1$. But $1-3+1=-1\neq 0$ and $-1+3+1=3\neq0$. $\square$

---

## 3. Sequences and series (rijen en reeksen)

### Idea

A sequence is given by a formula, by a recurrence (recursieve definitie), or by a property. You usually want a closed formula, a sum, or a bound. The three main tools are: known sums, telescoping, and induction (volledige inductie).

### Key facts

**Arithmetic sequence (rekenkundige rij):** $a_n=a_1+(n-1)d$, and

$$
a_1+a_2+\dots+a_n=\frac{n(a_1+a_n)}{2}.
$$

*Proof.* Write the sum forwards and backwards and add: each of the $n$ columns sums to $a_1+a_n$. $\square$

**Geometric sequence (meetkundige rij):** $a_n=a_1r^{n-1}$, and for $r\ne1$

$$
a_1+a_1r+\dots+a_1r^{n-1} = a_1\frac{r^n-1}{r-1}.
$$

*Proof.* Call the sum $S$; then $rS-S=a_1r^n-a_1$. $\square$

**Telescoping (telescoperen).** If you can write $u_k=v_{k+1}-v_k$, then

$$
\sum_{k=1}^{n}u_k = v_{n+1}-v_1,
$$

because all middle terms cancel. Typical tricks: partial fractions (breuksplitsen) such as $\frac{1}{k(k+1)}=\frac1k-\frac1{k+1}$, rationalising $\frac{1}{\sqrt{k+1}+\sqrt k}=\sqrt{k+1}-\sqrt k$, and $k\cdot k!=(k+1)!-k!$.

**Linear recurrences (lineaire recursies), light.** For $a_{n+2}=pa_{n+1}+qa_n$, try $a_n=x^n$. This works when $x^2=px+q$ (the characteristic equation, karakteristieke vergelijking). If this has two different roots $\alpha,\beta$, then every solution is $a_n=A\alpha^n+B\beta^n$, with $A,B$ fixed by the first two terms. (Check: the set of solutions is closed under adding and scaling, and two starting values determine the whole sequence.)

**Induction (volledige inductie).** To prove $S(n)$ for all $n\ge1$: prove $S(1)$, then prove that $S(n)$ implies $S(n+1)$. Strong induction may use all of $S(1),\dots,S(n)$. For recurrences, induction is the natural proof method. When an inequality does not survive the induction step, try proving a *stronger* statement.

### Worked examples

**Example 3.1.** Compute $1\cdot 1!+2\cdot 2!+\dots+n\cdot n!$.

*Solution.* Since $k\cdot k!=(k+1)\cdot k!-k!=(k+1)!-k!$, the sum telescopes to $\mathbf{(n+1)!-1}$. $\square$

**Example 3.2.** Let $a_0=0$, $a_1=1$ and $a_{n+2}=5a_{n+1}-6a_n$. Find $a_n$.

*Solution.* The characteristic equation $x^2=5x-6$ has roots $2$ and $3$, so $a_n=A\cdot3^n+B\cdot 2^n$. From $a_0=0$: $A+B=0$; from $a_1=1$: $3A+2B=1$. So $A=1$, $B=-1$ and $\mathbf{a_n=3^n-2^n}$. A quick check: $a_2=5$, $a_3=19$, and $9-4=5$, $27-8=19$. To be fully rigorous, prove by strong induction that $3^n-2^n$ satisfies the recurrence: $5(3^{n+1}-2^{n+1})-6(3^n-2^n)=3^n(15-6)-2^n(10-6)=3^{n+2}-2^{n+2}$. $\square$

**Example 3.3.** The Fibonacci numbers (rij van Fibonacci) are $F_1=F_2=1$, $F_{n+2}=F_{n+1}+F_n$. Prove $F_1+F_2+\dots+F_n=F_{n+2}-1$.

*Solution.* For $n=1$: $F_1=1=F_3-1$. If it holds for $n$, then $F_1+\dots+F_{n+1}=F_{n+2}-1+F_{n+1}=F_{n+3}-1$. $\square$ (It is also a telescoping sum, because $F_k=F_{k+2}-F_{k+1}$.)

---

## 4. Inequalities (ongelijkheden)

### Idea

Almost every olympiad inequality comes down to: *a square is never negative*. The named inequalities (AM-GM, Cauchy–Schwarz and the rest) are convenient packages of squares. Two habits matter as much as the tools:

1. **Find the equality case first** (gelijkheidsgeval). Try all variables equal, or one variable $0$. Every step of your proof must keep equality at that point; a step that loses it is a step that cannot work.
2. **Check homogeneity** (homogeniteit). If both sides have the same degree, you may scale the variables, for instance to make $a+b+c=1$ or $abc=1$.

### Key facts

**Trivial inequality (triviale ongelijkheid).** $x^2\ge0$ for all real $x$, with equality only at $x=0$. For example $a^2+b^2\ge 2ab$, because $(a-b)^2\ge0$, and summing three such inequalities gives

$$
a^2+b^2+c^2\ge ab+bc+ca,
$$

with equality exactly when $a=b=c$.

**AM-GM (ongelijkheid van het rekenkundig en meetkundig gemiddelde).** For nonnegative $x_1,\dots,x_n$:

$$
\frac{x_1+x_2+\dots+x_n}{n}\ \ge\ \sqrt[n]{x_1x_2\cdots x_n},
$$

with equality if and only if all $x_i$ are equal.

*Proof sketch.* For $n=2$: $\frac{x+y}{2}-\sqrt{xy}=\frac12(\sqrt x-\sqrt y)^2\ge0$. For $n=4$, apply $n=2$ twice: $\frac{x_1+x_2+x_3+x_4}{4}\ge\frac{\sqrt{x_1x_2}+\sqrt{x_3x_4}}{2}\ge\sqrt[4]{x_1x_2x_3x_4}$. In the same way you get every power of $2$. For $n=3$, apply the case $n=4$ to $x_1,x_2,x_3$ and $m=\frac{x_1+x_2+x_3}{3}$: this gives $m\ge\sqrt[4]{x_1x_2x_3m}$, so $m^4\ge x_1x_2x_3m$ and $m^3\ge x_1x_2x_3$. The same trick goes down from any power of $2$ to any $n$. Tracking the equality cases through each step shows equality needs all $x_i$ equal. $\square$

**Weighted use.** To prove $a^2b\le\frac{2a^3+b^3}{3}$, use AM-GM on $a^3,a^3,b^3$. Choosing *which* terms to repeat is the main skill.

**The mean chain (QM-AM-GM-HM).** For positive $x_1,\dots,x_n$:

$$
\sqrt{\frac{x_1^2+\dots+x_n^2}{n}}\ \ge\ \frac{x_1+\dots+x_n}{n}\ \ge\ \sqrt[n]{x_1\cdots x_n}\ \ge\ \frac{n}{\frac1{x_1}+\dots+\frac1{x_n}},
$$

that is, quadratic mean (kwadratisch gemiddelde) $\ge$ arithmetic mean (rekenkundig gemiddelde) $\ge$ geometric mean (meetkundig gemiddelde) $\ge$ harmonic mean (harmonisch gemiddelde). Equality holds in each step only if all $x_i$ are equal. The last step is AM-GM applied to $\frac1{x_1},\dots,\frac1{x_n}$. A very common corollary is

$$
(x_1+\dots+x_n)\left(\frac1{x_1}+\dots+\frac1{x_n}\right)\ge n^2.
$$

**Cauchy–Schwarz (ongelijkheid van Cauchy-Schwarz).** For real numbers $a_i,b_i$:

$$
(a_1^2+\dots+a_n^2)(b_1^2+\dots+b_n^2)\ \ge\ (a_1b_1+\dots+a_nb_n)^2,
$$

with equality if and only if the vectors $(a_i)$ and $(b_i)$ are proportional.

*Proof.* If all $a_i=0$ there is nothing to prove. Otherwise the quadratic function $f(t)=\sum (a_it-b_i)^2 = \left(\sum a_i^2\right)t^2-2\left(\sum a_ib_i\right)t+\sum b_i^2$ is never negative, so its discriminant is at most $0$: $4\left(\sum a_ib_i\right)^2-4\sum a_i^2\sum b_i^2\le0$. Equality means $f$ has a root $t$, so $b_i=a_it$ for all $i$. $\square$

**Engel form / Titu's lemma (vorm van Engel).** For real $u_i$ and positive $v_i$:

$$
\frac{u_1^2}{v_1}+\frac{u_2^2}{v_2}+\dots+\frac{u_n^2}{v_n}\ \ge\ \frac{(u_1+u_2+\dots+u_n)^2}{v_1+v_2+\dots+v_n},
$$

with equality if and only if $\frac{u_1}{v_1}=\frac{u_2}{v_2}=\dots=\frac{u_n}{v_n}$.

*Proof.* Apply Cauchy–Schwarz to $a_i=\frac{u_i}{\sqrt{v_i}}$ and $b_i=\sqrt{v_i}$. $\square$

This form is the workhorse for sums of fractions. A trick: to use it on $\sum\frac{x}{y}$, first write $\frac{x}{y}=\frac{x^2}{xy}$.

**Rearrangement inequality (herschikkingsongelijkheid), light.** If $a_1\le\dots\le a_n$ and $b_1\le\dots\le b_n$, then for every permutation $\sigma$,

$$
a_1b_1+\dots+a_nb_n\ \ge\ a_1b_{\sigma(1)}+\dots+a_nb_{\sigma(n)}\ \ge\ a_1b_n+a_2b_{n-1}+\dots+a_nb_1.
$$

"Same order gives the largest sum, opposite order the smallest."

*Proof idea.* If $i<j$ but $b_{\sigma(i)}>b_{\sigma(j)}$, swapping the two changes the sum by $(a_j-a_i)(b_{\sigma(i)}-b_{\sigma(j)})\ge0$. Repeat until the order is sorted. $\square$

**Smoothing and the tangent line trick (gladstrijken en de raaklijntruc), light.** If the inequality has the form $f(a)+f(b)+f(c)\ge 3f(m)$ under a condition $a+b+c=3m$, try to find a line $\ell(x)=f(m)+f'(m)(x-m)$ with $f(x)\ge\ell(x)$ on the whole allowed domain. Summing gives $\sum f(a)\ge\sum\ell(a)=3f(m)$, because the linear terms add up to $f'(m)(a+b+c-3m)=0$. Use your calculus to find $f'(m)$, then prove $f(x)\ge\ell(x)$ by factoring: it always contains $(x-m)^2$. Smoothing is the related idea that replacing two unequal variables by two closer ones (keeping the condition) moves the expression towards its extreme value; it is useful for guessing, and harder to make rigorous.

### Worked examples

**Example 4.1.** For positive $a,b,c$, prove $(a+b+c)\left(\frac1a+\frac1b+\frac1c\right)\ge9$.

*Solution 1 (AM-GM twice).* $a+b+c\ge3\sqrt[3]{abc}$ and $\frac1a+\frac1b+\frac1c\ge\frac{3}{\sqrt[3]{abc}}$. Multiply. Equality needs $a=b=c$.

*Solution 2 (Titu).* $\frac{1^2}{a}+\frac{1^2}{b}+\frac{1^2}{c}\ge\frac{(1+1+1)^2}{a+b+c}$. $\square$

**Example 4.2.** Let $a,b,c$ be positive with $a+b+c=3$. Prove

$$
\frac1{4-a}+\frac1{4-b}+\frac1{4-c}\ \ge\ 1.
$$

*Solution (tangent line trick).* Equality should be at $a=b=c=1$, where each term is $\frac13$. For $f(x)=\frac1{4-x}$ we have $f'(x)=\frac{1}{(4-x)^2}$, so $f'(1)=\frac19$ and the tangent line is $\ell(x)=\frac13+\frac{x-1}{9}=\frac{x+2}{9}$. For $0<x<3$ the number $4-x$ is positive, so

$$
\frac1{4-x}\ge\frac{x+2}{9}\iff 9\ge(x+2)(4-x)=-x^2+2x+8\iff (x-1)^2\ge0,
$$

which is true. Adding the three inequalities gives $\sum\frac{1}{4-a}\ge\frac{(a+b+c)+6}{9}=1$, with equality only when $a=b=c=1$. $\square$

**Example 4.3.** For positive $x,y,z$, prove $\frac{x}{y}+\frac{y}{z}+\frac{z}{x}\ge3$.

*Solution.* AM-GM: the sum is at least $3\sqrt[3]{\frac{x}{y}\cdot\frac{y}{z}\cdot\frac{z}{x}}=3$. Equality if and only if $\frac xy=\frac yz=\frac zx$, which (their product is $1$) means all three equal $1$, so $x=y=z$. $\square$

---

## 5. Functional equations (functievergelijkingen)

### Idea

You are asked for *all* functions satisfying an equation for all inputs. A complete solution has two parts:

1. **Necessity:** if $f$ is a solution, then $f$ must be one of the listed functions.
2. **Sufficiency (de controle):** each listed function really is a solution. Never skip this. Graders at the NWO final take points off if it is missing.

### Key facts and standard moves

- **Special values.** Put $x=0$, $y=0$, $x=y$, $y=-x$, $y=1$. Compute $f(0)$ and $f(1)$ first.
- **Swapping (verwisselen).** If the equation is not symmetric, swap $x$ and $y$ and compare the two versions.
- **Systems of equations.** If the equation links $f(x)$ with $f(1-x)$ or $f(1/x)$, substitute to get a second equation and solve the linear system for $f(x)$.
- **Injectivity (injectiviteit).** $f$ is injective if $f(a)=f(b)$ implies $a=b$. To prove it, assume $f(a)=f(b)$ and plug both into the equation where $f$ of the variable appears, until you get $a=b$. Injectivity lets you cancel $f$: from $f(\text{something})=f(\text{other})$ conclude something $=$ other.
- **Surjectivity (surjectiviteit).** $f$ is surjective if every value is taken. If the right-hand side contains a "free" term like $+y$, the left side takes all values. Surjectivity gives a point $a$ with $f(a)=0$, which is often very useful.
- **Cauchy's equation (functievergelijking van Cauchy) over $\mathbb{Q}$.** If $f:\mathbb{Q}\to\mathbb{R}$ satisfies $f(x+y)=f(x)+f(y)$ for all rational $x,y$, then $f(x)=cx$ with $c=f(1)$.

*Proof.* $x=y=0$ gives $f(0)=0$. By induction $f(nx)=nf(x)$ for positive integers $n$. From $f(x)+f(-x)=f(0)=0$, $f$ is odd, so $f(nx)=nf(x)$ for all integers $n$. For $x=\frac mn$ with $n>0$: $nf\!\left(\frac mn\right)=f(m)=mf(1)$, so $f\!\left(\frac mn\right)=\frac mn f(1)$. $\square$

Over $\mathbb{R}$ there are strange non-linear solutions, so you need one extra condition, for example that $f$ is monotonic (monotoon), or bounded on an interval, or $f(x)\ge0$ for $x\ge0$. Then $f(x)=cx$ again.

- **Reduce to a known equation.** Subtract a guessed solution: if $f(x+y)=f(x)+f(y)+xy$, then $g(x)=f(x)-\frac{x^2}{2}$ satisfies Cauchy's equation.

### Worked examples

**Example 5.1.** Find all $f:\mathbb{R}\to\mathbb{R}$ with $f(x-y)=f(x)+f(y)-2xy$ for all real $x,y$.

*Solution.* With $x=y=0$: $f(0)=2f(0)$, so $f(0)=0$. With $y=x$: $0=f(0)=2f(x)-2x^2$, so $f(x)=x^2$.

*Check:* $(x-y)^2=x^2+y^2-2xy$. True. The only solution is $\mathbf{f(x)=x^2}$. $\square$

**Example 5.2.** Find all $f:\mathbb{Q}\to\mathbb{Q}$ with $f(x+f(y))=f(x)+y$ for all rational $x,y$.

*Solution.* *Injective:* if $f(y_1)=f(y_2)$, then the left side is the same for $y_1$ and $y_2$, so $f(x)+y_1=f(x)+y_2$ and $y_1=y_2$.

*Surjective:* for any rational $t$, take $x=0$, $y=t-f(0)$; then $f(f(y))=t$.

So there is an $a$ with $f(a)=0$. Put $y=a$: $f(x)=f(x)+a$, so $a=0$ and $f(0)=0$. Then $x=0$ gives $f(f(y))=y$. Now for any rational $z$, write $z=f(y)$ (surjectivity; in fact $y=f(z)$). The equation becomes $f(x+z)=f(x)+f(f(z))=f(x)+f(z)$. By Cauchy over $\mathbb{Q}$, $f(x)=cx$. Then $f(f(x))=c^2x=x$, so $c=1$ or $c=-1$.

*Check:* $f(x)=x$: $x+y=x+y$. $f(x)=-x$: $-(x-y)=-x+y$. Both work, so the answers are $\mathbf{f(x)=x}$ and $\mathbf{f(x)=-x}$. $\square$

**Example 5.3 (a warning).** "Find all $f:\mathbb{R}\to\mathbb{R}$ with $f(x)^2=x^2$." From this you get $f(x)=x$ or $f(x)=-x$ *for each $x$ separately*. The functions $f(x)=x$ and $f(x)=-x$ are solutions, but so is $f(x)=|x|$, and in fact any mix. Do not conclude "$f(x)=x$ for all $x$ or $f(x)=-x$ for all $x$" without an extra argument. This is called the *pointwise trap* (puntsgewijze valkuil).

---

## Toolbox summary (gereedschapskist)

**Algebra**

- Look for $a^2-b^2$, $a^3\pm b^3$, $a^3+b^3+c^3-3abc$ and Sophie Germain $a^4+4b^4$ in disguise.
- $a+b+c=0\Rightarrow a^3+b^3+c^3=3abc$.
- Write symmetric expressions in $e_1,e_2,e_3$ (or $s=a+b$, $p=ab$).
- Name repeated blocks; substitute to remove awkward conditions.

**Polynomials**

- Remainder on division by $x-r$ is $P(r)$; on division by $(x-r)(x-s)$, solve for $ax+b$ using $P(r)$ and $P(s)$.
- Rational roots: $p\mid a_0$, $q\mid a_n$. Integer roots with a parameter: use Vieta and factor, e.g. $(r+2)(s+2)=4$.
- Vieta for symmetric functions of roots; Newton sums for power sums; to find $\sum g(r_i)$, substitute $y=g(x)$ and find the new polynomial.
- Compare leading and lowest coefficients when solving polynomial equations.

**Sequences**

- Arithmetic and geometric sums; telescoping via partial fractions, conjugates, factorials.
- Linear recurrence: characteristic equation.
- Induction; if the step fails, prove something stronger.
- To bound $a_n$, look at $a_n^2$ or another quantity that changes in a simple way.

**Inequalities**

- Find the equality case first; check homogeneity and normalise.
- Squares $\ge0$, then AM-GM (choose the terms to keep equality), then the mean chain.
- Sums of fractions: Titu, after writing $\frac{x}{y}=\frac{x^2}{xy}$ if needed.
- One-variable function with a linear condition: tangent line trick.
- Rearrangement when the variables can be sorted.

**Functional equations**

- $x=0$, $y=0$, $x=y$, swap; find $f(0)$, $f(1)$.
- Injectivity and surjectivity; find $a$ with $f(a)=0$.
- Cauchy over $\mathbb{Q}$; over $\mathbb{R}$ only with an extra condition such as monotonicity.
- Subtract a guessed solution to reduce to Cauchy.
- Watch for the pointwise trap.
- **Always check the answer in the original equation.**
