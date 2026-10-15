# O2 Number theory — notes

[← Back to the module README](README.md)

Number theory (getaltheorie) is about the integers (gehele getallen): which numbers divide which, what remainders are left over, and which equations have whole-number solutions. Olympiad number theory uses a small set of tools, introduced here one by one. Try each worked example yourself before reading its solution.

Notation: $a \mid b$ means "$a$ divides $b$" (that is, $b = ak$ for some integer $k$). $\gcd(a,b)$ is the greatest common divisor and $\mathrm{lcm}(a,b)$ the least common multiple. $S(n)$ is the digit sum (cijfersom) of $n$.

---

## 1. Divisibility (deelbaarheid)

**Idea.** Divisibility statements can be added, subtracted and multiplied, just like equations. That is the engine behind most of this module.

**Key facts.**

1. If $d \mid a$ and $d \mid b$, then $d \mid ax + by$ for all integers $x, y$.
   *Proof.* $a = dk$, $b = dl$, so $ax + by = d(kx + ly)$.
2. If $a \mid b$ and $b \mid c$ then $a \mid c$.
3. If $a \mid b$ and $b \neq 0$ then $|a| \le |b|$. (This "size" fact is often how a proof finishes.)

**Divisibility rules (deelbaarheidsregels).** Write $n = \overline{a_k \dots a_1 a_0}$ in decimal, so $n = a_0 + 10a_1 + 100a_2 + \dots$

- By 2, 5, 10: look at the last digit (because $10 \mid n - a_0$).
- By 4, 25: the last two digits; by 8, 125: the last three digits (because $100 = 4\cdot 25$ and $1000 = 8 \cdot 125$).
- By 3 and 9: the digit sum. *Proof.* $10 = 9 + 1$, so $10^j - 1 = 99\dots9$ is a multiple of 9. Hence $n - S(n) = a_1(10-1) + a_2(100-1) + \dots$ is a multiple of 9. So $n$ and $S(n)$ leave the same remainder on division by 9 (and by 3).
- By 11: the alternating digit sum $a_0 - a_1 + a_2 - \dots$ *Proof.* $10 = 11 - 1$, so $10^j - (-1)^j$ is a multiple of 11 (check: $10 + 1 = 11$, $100 - 1 = 99$, $1000 + 1 = 1001 = 7 \cdot 11 \cdot 13$).
- By a composite number like 36: split it into coprime factors, $36 = 4 \cdot 9$, and test each.

**Example 1.1 (classic).** Take any three-digit number $\overline{abc}$ and write it twice: $\overline{abcabc}$. Show the result is always divisible by 7, 11 and 13.

*Solution.* $\overline{abcabc} = 1000 \cdot \overline{abc} + \overline{abc} = 1001 \cdot \overline{abc}$, and $1001 = 7 \cdot 11 \cdot 13$.

---

## 2. Primes and prime factorisation (priemgetallen en priemfactorontbinding)

**Idea.** A prime (priemgetal) is an integer $p > 1$ whose only positive divisors are 1 and $p$. Primes are the atoms: every integer is built from them in exactly one way.

**Fundamental theorem of arithmetic (hoofdstelling van de rekenkunde).** Every integer $n > 1$ can be written as a product of primes, and this product is unique apart from the order of the factors.

*Existence.* If $n$ is prime we are done. Otherwise $n = ab$ with $1 < a, b < n$, and we factor $a$ and $b$ (strong induction).
*Uniqueness* needs Euclid's lemma (section 5): if a prime $p$ divides $ab$, then $p \mid a$ or $p \mid b$. Given two factorisations of $n$, a prime in the first one divides the product of the second, so by Euclid's lemma it equals one of those primes; cancel it and repeat.

**Theorem (Euclid).** There are infinitely many primes.
*Proof.* Suppose $p_1, \dots, p_k$ were all the primes. Look at $N = p_1 p_2 \cdots p_k + 1$. It has some prime factor $q$. But $N$ leaves remainder 1 when divided by each $p_i$, so $q$ is not on the list. Contradiction.

**Useful facts.**

- To test whether $n$ is prime, it is enough to try primes $p \le \sqrt{n}$ (if $n = ab$ with $a \le b$, then $a \le \sqrt n$).
- Every prime $p > 3$ is of the form $6k \pm 1$, because $6k, 6k \pm 2, 6k+3$ are divisible by 2 or 3.
- "Look modulo 3" is the standard first move when a problem asks for primes $p$ such that several expressions in $p$ are prime.

**Example 2.1.** Find all primes $p$ such that $p + 10$ and $p + 14$ are also prime.

*Solution.* Look at remainders on division by 3. If $p$ leaves remainder 1, then $p + 14$ leaves remainder 0, so $3 \mid p + 14$, and $p + 14 > 3$, not prime. If $p$ leaves remainder 2, then $3 \mid p + 10$, not prime. So $3 \mid p$, which means $p = 3$, and indeed $13$ and $17$ are prime. **Answer: $p = 3$.**

---

## 3. Number of divisors (aantal delers)

**Idea.** Once you know the prime factorisation, every divisor is a choice of exponents.

**Formula.** If $n = p_1^{e_1} p_2^{e_2} \cdots p_k^{e_k}$, then the divisors of $n$ are exactly the numbers $p_1^{f_1} \cdots p_k^{f_k}$ with $0 \le f_i \le e_i$. There are $e_i + 1$ choices for each $f_i$, so

$$
\tau(n) = (e_1 + 1)(e_2 + 1)\cdots(e_k + 1).
$$

(The letter $\tau$ is "tau"; some books write $d(n)$.) For example $72 = 2^3 \cdot 3^2$ has $4 \cdot 3 = 12$ divisors.

**Fact.** $\tau(n)$ is odd exactly when $n$ is a perfect square. *Proof 1:* all $e_i + 1$ odd means all $e_i$ even. *Proof 2 (pairing):* divisors come in pairs $d \leftrightarrow n/d$; a divisor is paired with itself only if $d^2 = n$.

**Example 3.1 (locker problem, classic).** A corridor has 100 closed lockers. Student $k$ (for $k = 1, \dots, 100$) toggles every $k$-th locker. Which lockers are open at the end?

*Solution.* Locker $n$ is toggled once for each divisor of $n$. It ends open when $\tau(n)$ is odd, i.e. when $n$ is a square: lockers $1, 4, 9, \dots, 100$ — ten lockers.

---

## 4. gcd, lcm and Euclid's algorithm (ggd, kgv en het algoritme van Euclides)

**Idea.** The greatest common divisor (grootste gemene deler, ggd) and least common multiple (kleinste gemene veelvoud, kgv) can be read off from prime factorisations: take the minimum, respectively the maximum, of each exponent. Since $\min(e,f) + \max(e,f) = e + f$,

$$
\gcd(a,b) \cdot \mathrm{lcm}(a,b) = ab.
$$

For large numbers, factorising is slow. Euclid's algorithm is fast and needs no factorisation.

**Key lemma.** $\gcd(a, b) = \gcd(a - qb, b)$ for every integer $q$.
*Proof.* By fact 1 of section 1, any common divisor of $a$ and $b$ divides $a - qb$; and any common divisor of $a - qb$ and $b$ divides $(a - qb) + qb = a$. So the two pairs have the same common divisors.

**Euclid's algorithm.** Divide with remainder repeatedly; the last non-zero remainder is the gcd.

**Example 4.1.** Compute $\gcd(1071, 462)$.

$$
\begin{aligned}
1071 &= 2 \cdot 462 + 147 \\
462 &= 3 \cdot 147 + 21 \\
147 &= 7 \cdot 21 + 0
\end{aligned}
$$

So $\gcd(1071, 462) = 21$.

**Example 4.2 (classic, IMO 1959).** Prove that the fraction $\dfrac{21n + 4}{14n + 3}$ cannot be simplified for any positive integer $n$.

*Solution.* Use the key lemma with algebraic expressions:

$$
\gcd(21n+4,\ 14n+3) = \gcd(7n+1,\ 14n+3) = \gcd(7n+1,\ 1) = 1.
$$

(First subtract the second from the first; then subtract $2 \cdot (7n+1)$ from $14n+3$.)

**Example 4.3.** Two positive integers have gcd 6 and lcm 72. What can they be?

*Solution.* Write $a = 6x$, $b = 6y$ with $\gcd(x,y) = 1$. Then $\mathrm{lcm}(a,b) = 6xy = 72$, so $xy = 12 = 2^2 \cdot 3$. Because $x, y$ are coprime, each prime power goes wholly to one of them: $\{x,y\} = \{1, 12\}$ or $\{3, 4\}$. **Answer: $\{6, 72\}$ or $\{18, 24\}$.** This "write $a = gx$, $b = gy$ with $x, y$ coprime" trick is worth memorising.

---

## 5. Bézout's identity and linear Diophantine equations (stelling van Bézout)

**Theorem (Bézout).** For integers $a, b$, not both 0, there are integers $x, y$ with $ax + by = \gcd(a,b)$. More precisely: the numbers of the form $ax + by$ are exactly the multiples of $\gcd(a,b)$.

*Proof.* Let $d$ be the smallest positive number of the form $ax + by$. Divide $a$ by $d$: $a = qd + r$ with $0 \le r < d$. Then $r = a - q(ax + by)$ is again of the form $ax' + by'$, and $r < d$, so by minimality $r = 0$, i.e. $d \mid a$. Likewise $d \mid b$. On the other hand every common divisor of $a, b$ divides $ax + by = d$. So $d = \gcd(a,b)$. Every multiple of $d$ is then also of the form $ax + by$, and every number $ax + by$ is a multiple of $\gcd(a,b)$.

**Finding $x, y$: run Euclid backwards (extended Euclid).** For $\gcd(1071, 462) = 21$:

$$
21 = 462 - 3 \cdot 147 = 462 - 3(1071 - 2 \cdot 462) = 7 \cdot 462 - 3 \cdot 1071.
$$

**Euclid's lemma.** If $p$ is prime and $p \mid ab$, then $p \mid a$ or $p \mid b$. More generally: if $n \mid ab$ and $\gcd(n, a) = 1$ then $n \mid b$.
*Proof.* Write $1 = nx + ay$. Multiply by $b$: $b = nbx + (ab)y$. Both terms are multiples of $n$, so $n \mid b$. (For the prime case: if $p \nmid a$ then $\gcd(p, a) = 1$.)

**Linear Diophantine equations (lineaire diophantische vergelijkingen).** The equation $ax + by = c$ has integer solutions if and only if $\gcd(a,b) \mid c$. If $(x_0, y_0)$ is one solution and $g = \gcd(a,b)$, then all solutions are

$$
x = x_0 + \frac{b}{g}t, \qquad y = y_0 - \frac{a}{g}t, \qquad t \in \mathbb{Z}.
$$

*Why all?* If $ax + by = c = ax_0 + by_0$, then $a(x - x_0) = b(y_0 - y)$. Divide by $g$ and use Euclid's lemma ($a/g$ and $b/g$ are coprime): $\frac{b}{g} \mid x - x_0$.

**Example 5.1.** Solve $17x + 29y = 1$ in integers.

*Solution.* Euclid: $29 = 1 \cdot 17 + 12$, $17 = 1 \cdot 12 + 5$, $12 = 2 \cdot 5 + 2$, $5 = 2 \cdot 2 + 1$. Backwards:
$1 = 5 - 2\cdot 2 = 5 - 2(12 - 2\cdot 5) = 5 \cdot 5 - 2 \cdot 12 = 5(17 - 12) - 2 \cdot 12 = 5 \cdot 17 - 7 \cdot 12 = 5 \cdot 17 - 7(29 - 17) = 12 \cdot 17 - 7 \cdot 29.$
So $(x_0, y_0) = (12, -7)$ and **all solutions are $x = 12 + 29t$, $y = -7 - 17t$.**

**Small coefficients in a contest?** Often it is quicker to reduce modulo the smaller coefficient: in $5x + 8y = 100$, look mod 5: $8y \equiv 0$, so $5 \mid y$; try $y = 0, 5, 10$ to get the non-negative solutions $(20, 0), (12, 5), (4, 10)$.

---

## 6. Modular arithmetic (modulorekenen, restklassen)

**Idea.** Often we only care about remainders. Write $a \equiv b \pmod{n}$ ("$a$ is congruent to $b$ modulo $n$") when $n \mid a - b$, i.e. $a$ and $b$ leave the same remainder on division by $n$.

**Rules.** If $a \equiv b$ and $c \equiv d \pmod n$, then

$$
a + c \equiv b + d, \qquad a - c \equiv b - d, \qquad ac \equiv bd, \qquad a^k \equiv b^k \pmod n.
$$

*Proof of the product rule.* $ac - bd = a(c - d) + d(a - b)$, and both terms are multiples of $n$.

**Warning: division.** $2 \cdot 3 \equiv 2 \cdot 8 \pmod{10}$ but $3 \not\equiv 8 \pmod{10}$. You may cancel a factor $c$ only if $\gcd(c, n) = 1$ (by Euclid's lemma). If $\gcd(a, n) = 1$, Bézout gives $ax + ny = 1$, so $ax \equiv 1 \pmod n$: $x$ is the inverse of $a$ modulo $n$.

**The power trick.** To compute $a^N \bmod n$, find a small power with $a^k \equiv \pm 1$ and use $a^{qk + r} = (a^k)^q \cdot a^r$.

**Example 6.1.** Find the remainder of $3^{100}$ on division by 7.

*Solution.* Powers of 3 mod 7: $3, 2, 6, 4, 5, 1$. So $3^6 \equiv 1$, and $3^{100} = (3^6)^{16} \cdot 3^4 \equiv 3^4 = 81 \equiv 4$. **Answer: 4.**

**Example 6.2.** Find the last two digits of $7^{100}$.

*Solution.* "Last two digits" means "modulo 100". $7^2 = 49$, $7^4 = 2401 \equiv 1 \pmod{100}$. So $7^{100} = (7^4)^{25} \equiv 1$. **Answer: 01.**

---

## 7. Squares and cubes modulo small numbers (kwadraten en derde machten modulo kleine getallen)

**Idea.** Squares can only leave certain remainders. If an equation forces a forbidden remainder, it has no solutions. Checking every residue class takes a minute; memorise this table:

| modulus | possible remainders of $x^2$ |
|---|---|
| 3 | 0, 1 |
| 4 | 0, 1 |
| 5 | 0, 1, 4 |
| 8 | 0, 1, 4 (odd squares are $\equiv 1$) |
| 9 | 0, 1, 4, 7 |
| 10 | 0, 1, 4, 5, 6, 9 (last digit of a square) |

Cubes modulo 9 are only $0, 1, 8$ (that is $0, \pm 1$). Cubes modulo 7 are only $0, 1, 6$.

*Proof that odd squares are $\equiv 1 \pmod 8$.* $(2k+1)^2 = 4k(k+1) + 1$, and $k(k+1)$ is even.

**How to pick the modulus.** Squares: try 3, 4, 8, 5. Cubes: try 9 or 7. Powers of 2 or 3 in the equation: try a modulus where those powers repeat quickly (3, 4, 7, 8, 9).

**Example 7.1.** Show that $x^2 + y^2 = 2027$ has no integer solutions.

*Solution.* $x^2 + y^2 \pmod 4$ is one of $0 + 0, 0 + 1, 1 + 1$, so $0, 1$ or $2$. But $2027 = 4 \cdot 506 + 3 \equiv 3$. Impossible.

**Example 7.2.** Show that $x^3 + y^3 + z^3 = 2030$ has no integer solutions.

*Solution.* Each cube is $\equiv 0, 1$ or $-1 \pmod 9$, so a sum of three cubes is between $-3$ and $3$ modulo 9: remainders $0, 1, 2, 3, 6, 7, 8$. But $2030 \equiv 2 + 0 + 3 + 0 = 5 \pmod 9$.

**Example 7.3.** Can a number whose digit sum is 2027 be a perfect square?

*Solution.* No: such a number is $\equiv 2027 \equiv 2 \pmod 9$ (section 1), and squares are $0, 1, 4, 7 \pmod 9$.

---

## 8. Fermat's little theorem (kleine stelling van Fermat)

**Theorem.** If $p$ is prime and $p \nmid a$, then $a^{p-1} \equiv 1 \pmod p$. Equivalently, $a^p \equiv a \pmod p$ for every integer $a$.

*Proof.* Look at the $p - 1$ numbers $a, 2a, 3a, \dots, (p-1)a$ modulo $p$.

- None of them is $\equiv 0$: $p \mid ka$ with $p \nmid a$ would need $p \mid k$ (Euclid's lemma), but $1 \le k \le p-1$.
- No two are congruent: $ia \equiv ja$ means $p \mid (i - j)a$, so $p \mid i - j$, so $i = j$.

So their remainders are exactly $1, 2, \dots, p-1$ in some order. Multiply all of them:

$$
a \cdot 2a \cdots (p-1)a \equiv 1 \cdot 2 \cdots (p-1) \pmod p, \quad\text{i.e.}\quad (p-1)! \, a^{p-1} \equiv (p-1)! \pmod p.
$$

Since $(p-1)!$ is coprime to $p$, we may cancel it: $a^{p-1} \equiv 1$. $\blacksquare$

**Example 8.1.** Find the remainder of $2^{2027}$ on division by 11.

*Solution.* Fermat: $2^{10} \equiv 1 \pmod{11}$. $2027 = 202 \cdot 10 + 7$, so $2^{2027} \equiv 2^7 = 128 = 11 \cdot 11 + 7$. **Answer: 7.**

**Example 8.2.** Prove that $n^7 - n$ is divisible by 42 for every integer $n$.

*Solution.* $42 = 2 \cdot 3 \cdot 7$. By Fermat ($a^p \equiv a$) with $p = 7$: $7 \mid n^7 - n$. For 3: $n^3 \equiv n$, so $n^7 = (n^3)^2 \cdot n \equiv n^2 \cdot n = n^3 \equiv n \pmod 3$. For 2: $n^7$ and $n$ have the same parity. Since 2, 3, 7 are distinct primes, their product divides $n^7 - n$.

**A taste of order (orde).** If $\gcd(a, n) = 1$, the order of $a$ modulo $n$ is the smallest $d \ge 1$ with $a^d \equiv 1$. Key fact: $a^m \equiv 1 \pmod n$ if and only if $d \mid m$. (*Proof:* write $m = qd + r$ with $0 \le r < d$; then $a^m \equiv a^r$, and $a^r \equiv 1$ with $r < d$ forces $r = 0$.) Combined with Fermat: the order of $a$ modulo a prime $p$ divides $p - 1$.

---

## 9. Digits and number bases (cijfers en talstelsels)

**Idea.** In base $b$ (grondtal $b$), the string $\overline{a_k \dots a_1 a_0}_b$ with digits $0 \le a_i \le b - 1$ means $a_k b^k + \dots + a_1 b + a_0$. Every positive integer has exactly one such representation.

**Converting.** Divide repeatedly by $b$ and read the remainders from bottom to top. For 2026 in base 3:
$2026 = 3 \cdot 675 + 1$, $675 = 3 \cdot 225 + 0$, $225 = 3 \cdot 75 + 0$, $75 = 3 \cdot 25 + 0$, $25 = 3 \cdot 8 + 1$, $8 = 3 \cdot 2 + 2$, $2 = 3 \cdot 0 + 2$. So $2026 = 2210001_3$. In base 2, $2026 = 11111101010_2$.

**Facts.**

- The last digit in base $b$ is $n \bmod b$. The last $k$ digits encode $n \bmod b^k$.
- $n$ has exactly $k$ digits in base $b$ if and only if $b^{k-1} \le n < b^k$.
- In base $b$, the number and its digit sum are congruent modulo $b - 1$ (same proof as for 9 in base 10).
- $S(n) \equiv n \pmod 9$, and $S(n) \le 9 \cdot (\text{number of digits})$. These two facts together solve most digit-sum problems: the congruence narrows down the residue class and the bound narrows down the size.

**Example 9.1.** Find all positive integers $n$ with $n + S(n) = 100$.

*Solution.* $n < 100$ so $S(n) \le 18$ and $n \ge 82$. Mod 9: $n + S(n) \equiv 2n \equiv 100 \equiv 1$, so $n \equiv 5 \pmod 9$ (because $2 \cdot 5 = 10 \equiv 1$). Candidates in $[82, 99]$: $86, 95$. Check: $86 + 14 = 100$ works; $95 + 14 = 109$ does not. **Answer: $n = 86$.**

---

## 10. Diophantine equations (diophantische vergelijkingen)

A Diophantine equation asks for integer solutions. Four standard weapons:

1. **Factoring.** Turn the equation into (product) = (fixed number), then list divisor pairs.
2. **Simon's favourite factoring trick (SFFT).** $xy + ax + by = c$ becomes $(x + b)(y + a) = c + ab$ by adding $ab$ to both sides.
3. **Modular obstruction.** Show the two sides can never be congruent modulo some $n$ (section 7).
4. **Bounding.** Show that large values make one side too big, then check the small cases.

**Example 10.1.** Find all positive integers $x, y$ with $xy = x + y + 5$.

*Solution.* $xy - x - y + 1 = 6$, i.e. $(x - 1)(y - 1) = 6$. Both factors are $\ge 0$ and their product is positive, so they are a positive divisor pair of 6: $(1,6), (2,3), (3,2), (6,1)$. **Answer: $(x,y) = (2,7), (3,4), (4,3), (7,2)$.**

**Example 10.2.** Find all non-negative integers $x$ and positive integers $y$ with $2^x + 7 = y^2$.

*Solution.* If $x \ge 2$, then $2^x + 7 \equiv 3 \pmod 4$, but squares are $0$ or $1 \pmod 4$. So $x \in \{0, 1\}$. $x = 0$ gives $8$, not a square; $x = 1$ gives $9 = 3^2$. **Answer: $(x, y) = (1, 3)$.**

---

## 11. Infinite descent (oneindige afdaling)

**Idea (Fermat).** Suppose a solution in positive integers exists. Build from it a strictly *smaller* solution. Then you could keep going forever, giving an infinite decreasing sequence of positive integers — impossible. Formally: take a solution with the smallest possible value of some positive quantity, and produce an even smaller one. This is the well-ordering principle you met in O1 (extremal principle).

**Example 11.1.** Prove that $\sqrt 2$ is irrational.

*Solution.* Suppose $\sqrt 2 = a/b$ with positive integers $a, b$, and choose the solution of $a^2 = 2b^2$ with $b$ as small as possible. Then $a^2$ is even, so $a$ is even: $a = 2c$. Then $4c^2 = 2b^2$, so $b^2 = 2c^2$: now $(b, c)$ is a solution with $c < b$. Contradiction with minimality.

The same pattern — "a modulus forces every variable to be divisible by $p$, divide everything by $p$" — appears in problem 23.

---

## 12. Legendre's formula and trailing zeros (formule van Legendre, nullen aan het eind)

**Idea.** How many times does a prime $p$ divide $n! = 1 \cdot 2 \cdots n$? Count, for each $k$, how many of $1, \dots, n$ are multiples of $p^k$.

**Legendre's formula.** The exponent of $p$ in $n!$ is

$$
v_p(n!) = \left\lfloor \frac{n}{p} \right\rfloor + \left\lfloor \frac{n}{p^2} \right\rfloor + \left\lfloor \frac{n}{p^3} \right\rfloor + \cdots
$$

where $\lfloor x \rfloor$ is $x$ rounded down. *Proof.* A number $m \le n$ with $p^j \mid m$ but $p^{j+1} \nmid m$ contributes $j$ factors $p$. It is counted exactly $j$ times on the right: once in each of the first $j$ terms (there are $\lfloor n/p^k \rfloor$ multiples of $p^k$ up to $n$).

**Trailing zeros (nullen aan het eind).** Each final zero of $n!$ needs a factor $10 = 2 \cdot 5$. There are always more 2s than 5s, so the number of trailing zeros of $n!$ is $v_5(n!)$.

**Example 12.1.** How many zeros does $100!$ end in, and what is the largest power of 3 dividing $100!$?

*Solution.* $v_5(100!) = 20 + 4 = 24$ zeros. $v_3(100!) = 33 + 11 + 3 + 1 = 48$, so $3^{48}$.

---

## Toolbox summary

| Situation | First thing to try |
|---|---|
| Divisibility of a number written with digits | Digit rules: 9/3 (digit sum), 11 (alternating sum), 4/8 (last digits) |
| "Find all primes $p$ such that ..." | Look modulo 3 (or 2, 5); the small prime is usually the only answer |
| Counting divisors / smallest number with $k$ divisors | $\tau(n) = \prod (e_i + 1)$; large exponents on small primes |
| gcd of two expressions in $n$ | Euclid: subtract multiples until a constant remains |
| Given gcd and lcm | Write $a = gx$, $b = gy$ with $\gcd(x,y) = 1$ |
| $ax + by = c$ | Solvable iff $\gcd(a,b)$ divides $c$; one solution plus $(b/g, -a/g)t$; or reduce mod the small coefficient |
| Remainder of a huge power | Find $a^k \equiv \pm 1$; Fermat gives $a^{p-1} \equiv 1 \pmod p$ |
| "Show $m$ divides $f(n)$ for all $n$" | Factor $m$ into prime powers; check each residue class or use Fermat |
| Equation with squares or cubes, "no solutions" | Squares mod 3, 4, 5, 8; cubes mod 7, 9 |
| $xy + ax + by = c$ | SFFT: $(x+b)(y+a) = c + ab$ |
| $x^2 - y^2 = c$ or powers of 2 | Factor; the factors have the same parity / must be powers of 2 |
| Digit sums | $S(n) \equiv n \pmod 9$ plus the bound $S(n) \le 9 \cdot$ (number of digits) |
| Numbers in base $b$ | Expand as a polynomial in $b$; last digit $= n \bmod b$ |
| Only the zero solution seems possible | Infinite descent: divide all variables by $p$ |
| Powers of a prime in $n!$, trailing zeros | Legendre: $\sum \lfloor n/p^k \rfloor$ |
| Stuck | Small cases, find the pattern, prove it (O1) |
