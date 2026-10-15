# O2 Number theory — solutions

[← Back to the module README](README.md) · [Problems](problems.md)

Try each problem for at least 15 minutes (Level 1: 5 minutes) before reading its solution. After reading, close this file and write the solution again in your own words.

All numerical answers and every "find all" list below were checked by computer search.

---

## Level 1

**1.** $720 = 2^4 \cdot 3^2 \cdot 5$, so the number of divisors is $(4+1)(2+1)(1+1) = 5 \cdot 3 \cdot 2$. **Answer: 30.**

**2.** The last digits of $7^1, 7^2, 7^3, 7^4$ are $7, 9, 3, 1$, and then the pattern repeats with period 4 (because $7^4 \equiv 1 \pmod{10}$). Since $2028 = 4 \cdot 507$, $7^{2028} = (7^4)^{507} \equiv 1 \pmod{10}$. **Answer: 1.**

**3.** $2^3 = 8 \equiv 1 \pmod 7$. $100 = 3 \cdot 33 + 1$, so $2^{100} = (2^3)^{33} \cdot 2 \equiv 2 \pmod 7$. **Answer: 2.**

**4.** $n - 1$ is divisible by 2, 3, 4, 5 and 6, so by $\mathrm{lcm}(2,3,4,5,6) = 60$: $n = 60k + 1$. We need $7 \mid 60k + 1$. Since $60 \equiv 4 \pmod 7$, this is $4k + 1 \equiv 0$, i.e. $4k \equiv 6 \pmod 7$. Try $k = 0, 1, 2, \dots$: $4k \bmod 7$ is $0, 4, 1, 5, 2, 6$, so the smallest is $k = 5$, giving $n = 301 = 7 \cdot 43$. **Answer: 301.**

**5.** Squares of $0, 1, \dots, 9$ end in $0, 1, 4, 9, 6, 5, 6, 9, 4, 1$. The last digit of $n^2$ depends only on the last digit of $n$, so a square ends in $0, 1, 4, 5, 6$ or $9$. **Answer: (C) 6** (for example $16$).

**6.** $2047 = 2^{11} - 1 = 11111111111_2$ (eleven 1s). $20 = 16 + 4 = 10100_2$, and subtracting it just turns two of those 1s into 0s (no borrowing): $2027 = 11111101011_2$. **Answer: 9.**

**7.** By Legendre's formula, the number of trailing zeros is

$$
\left\lfloor \frac{2027}{5} \right\rfloor + \left\lfloor \frac{2027}{25} \right\rfloor + \left\lfloor \frac{2027}{125} \right\rfloor + \left\lfloor \frac{2027}{625} \right\rfloor = 405 + 81 + 16 + 3 = 505
$$

(and $3125 > 2027$). **Answer: 505.**

**8.** Write $a = 12x$, $b = 12y$ with $\gcd(x, y) = 1$. Then $\mathrm{lcm}(a,b) = 12xy = 360$, so $xy = 30 = 2 \cdot 3 \cdot 5$. Since $x$ and $y$ are coprime, each of the primes 2, 3, 5 goes entirely into $x$ or entirely into $y$: $2^3 = 8$ choices, each giving one ordered pair. **Answer: 8.**

**9.** $2028 = 2^2 \cdot 3 \cdot 13^2$. In a cube every exponent is a multiple of 3, so $n$ must contain at least $2^1 \cdot 3^2 \cdot 13^1$, and $n = 2 \cdot 9 \cdot 13 = 234$ works: $2028 \cdot 234 = 2^3 \cdot 3^3 \cdot 13^3 = 78^3$. **Answer: 234.**

**10.** $36 = 4 \cdot 9$ with $\gcd(4, 9) = 1$.
Divisible by 4: the last two digits $\overline{8b}$ form a multiple of 4, so $b \in \{0, 4, 8\}$.
Divisible by 9: the digit sum $2 + 0 + a + 2 + 8 + b = 12 + a + b$ is a multiple of 9, so $a + b \in \{6, 15\}$.
$b = 0$: $a = 6$. $b = 4$: $a = 2$ ($a = 11$ is not a digit). $b = 8$: $a = 7$ ($a = -2$ is impossible).
So $(a, b) \in \{(6,0), (2,4), (7,8)\}$. **Answer: 3.**

---

## Level 2

**11.** Add 6 to both sides: $xy + 2x + 3y + 6 = 36$, i.e. $(x + 3)(y + 2) = 36$. Since $x, y \ge 1$, we need $x + 3 \ge 4$ and $y + 2 \ge 3$, so $x + 3$ is a divisor $d$ of 36 with $d \ge 4$ and $36/d \ge 3$, i.e. $4 \le d \le 12$: $d \in \{4, 6, 9, 12\}$.

| $x + 3$ | $y + 2$ | $(x, y)$ |
|---|---|---|
| 4 | 9 | (1, 7) |
| 6 | 6 | (3, 4) |
| 9 | 4 | (6, 2) |
| 12 | 3 | (9, 1) |

**Answer: $(1,7), (3,4), (6,2), (9,1)$.**

**12.** Multiply by $6xy$: $6y + 6x = xy$, so $xy - 6x - 6y + 36 = 36$, i.e. $(x - 6)(y - 6) = 36$. Since $\frac1x < \frac16$, we have $x > 6$, and likewise $y > 6$; so both factors are positive divisors of 36. The divisors are $1, 2, 3, 4, 6, 9, 12, 18, 36$, giving 9 ordered pairs:
**Answer: $(7, 42), (8, 24), (9, 18), (10, 15), (12, 12), (15, 10), (18, 9), (24, 8), (42, 7)$.**

**13.** We need non-negative integers $x, y$ with $7x + 11y = 200$. Modulo 7: $11y \equiv 4y$ and $200 = 7 \cdot 28 + 4 \equiv 4$, so $4y \equiv 4$, and since $\gcd(4, 7) = 1$ we may cancel: $y \equiv 1 \pmod 7$. Also $11y \le 200$ gives $y \le 18$. So $y \in \{1, 8, 15\}$, with $x = (200 - 11y)/7 = 27, 16, 5$. **Answer: 3 ways: $(x, y) = (27, 1), (16, 8), (5, 15)$** (27 sevens and 1 eleven, and so on).

**14.** $n^5 - n = n(n^4 - 1) = (n - 1)\,n\,(n + 1)\,(n^2 + 1)$.
- Among the consecutive integers $n - 1, n, n + 1$ one is even and one is a multiple of 3, so $2 \mid n^5 - n$ and $3 \mid n^5 - n$.
- By Fermat's little theorem with $p = 5$, $n^5 \equiv n \pmod 5$, so $5 \mid n^5 - n$. (Without Fermat: check $n \equiv 0, \pm1, \pm 2 \pmod 5$; for $\pm 2$ the factor $n^2 + 1 \equiv 5 \equiv 0$.)

Since 2, 3, 5 are distinct primes, $30 = 2 \cdot 3 \cdot 5$ divides $n^5 - n$. $\blacksquare$

**15.** $n^2 + 3 = (n - 2)(n + 2) + 7$. By the key lemma of Euclid's algorithm,

$$
\gcd(n^2 + 3,\ n + 2) = \gcd(7,\ n + 2),
$$

which is 7 if $7 \mid n + 2$ and 1 otherwise. Both happen: $n = 1$ gives $\gcd(4, 3) = 1$, and $n = 5$ gives $\gcd(28, 7) = 7$. **Answer: 1 and 7** (the gcd is 7 exactly when $n \equiv 5 \pmod 7$).

**16.** Work modulo 13. By Fermat, $2^{12} \equiv 1$, and $70 = 5 \cdot 12 + 10$, so $2^{70} \equiv 2^{10} = 1024 = 13 \cdot 78 + 10 \equiv 10$. Also $3^3 = 27 \equiv 1$, and $70 = 3 \cdot 23 + 1$, so $3^{70} \equiv 3$. Hence $2^{70} + 3^{70} \equiv 10 + 3 = 13 \equiv 0 \pmod{13}$. $\blacksquare$

**17.** $p = 2$: $2 \cdot 4 + 1 = 9$, not prime. $p = 3$: $2 \cdot 9 + 1 = 19$, prime. If $p > 3$ then $3 \nmid p$, so $p \equiv \pm 1 \pmod 3$ and $p^2 \equiv 1$. Then $2p^2 + 1 \equiv 3 \equiv 0 \pmod 3$, and $2p^2 + 1 > 3$, so it is not prime. **Answer: $p = 3$.**

**18.** "Exactly three digits in base $b$" means $b^2 \le 2028 < b^3$. Since $12^3 = 1728 < 2028 < 2197 = 13^3$ and $45^2 = 2025 \le 2028 < 2116 = 46^2$, this holds exactly for $13 \le b \le 45$. "Last digit 0" means $b \mid 2028$. Now $2028 = 2^2 \cdot 3 \cdot 13^2$ has divisors $1, 2, 3, 4, 6, 12, 13, 26, 39, 52, \dots$ (the next one after 39 is 52). So the divisors between 13 and 45 are 13, 26 and 39. Check (writing a digit larger than 9 in brackets): $2028 = 12 \cdot 169 + 0 \cdot 13 + 0 = (12)(0)(0)_{13}$, $2028 = 3 \cdot 676 + 0 \cdot 26 + 0 = 300_{26}$, $2028 = 1 \cdot 1521 + 13 \cdot 39 + 0 = (1)(13)(0)_{39}$. **Answer: $b = 13, 26, 39$.**

**19.** Since $n < 2027$, $n$ has at most four digits and $S(n) \le 1 + 9 + 9 + 9 = 28$ (for $n \le 1999$ this is clear; for $2000 \le n \le 2026$ the digit sum is at most $2 + 0 + 1 + 9 = 12$). So $n \ge 2027 - 28 = 1999$.
Modulo 9: $n + S(n) \equiv 2n$, and $2027 \equiv 2 + 0 + 2 + 7 = 11 \equiv 2$. So $2n \equiv 2$, and since $\gcd(2, 9) = 1$, $n \equiv 1 \pmod 9$.
The numbers in $[1999, 2026]$ with $n \equiv 1 \pmod 9$ are $1999, 2008, 2017, 2026$. Check: $1999 + 28 = 2027$ (yes), $2008 + 10 = 2018$ (no), $2017 + 10 = 2027$ (yes), $2026 + 10 = 2036$ (no). **Answer: $n = 1999$ and $n = 2017$.**

**20.** $(x - y)(x + y) = 2028$. Because $x, y > 0$, both factors are positive and $x - y < x + y$. They have the same parity (their sum $2x$ is even); since the product is even, both are even. Write $x - y = 2u$, $x + y = 2v$ with $uv = 507 = 3 \cdot 13^2$ and $u < v$. The divisor pairs of 507 are $(1, 507), (3, 169), (13, 39)$, giving $x = u + v$, $y = v - u$:
**Answer: $(x, y) = (508, 506), (172, 166), (52, 26)$.**

**21.** If $n = p_1^{e_1} \cdots p_k^{e_k}$ has 12 divisors, then $(e_1 + 1) \cdots (e_k + 1) = 12$. Ways to write 12 as a product of factors $\ge 2$: $12$, $6 \cdot 2$, $4 \cdot 3$, $3 \cdot 2 \cdot 2$. So $n$ has one of the shapes $p^{11}$, $p^5 q$, $p^3 q^2$, $p^2 q r$ (distinct primes). The smallest number of each shape (big exponents on small primes):
- $p^{11}$: $2^{11} = 2048$.
- $p^5 q$: $2^5 \cdot 3 = 96$ (the alternative $3^5 \cdot 2 = 486$ is bigger; any other primes are bigger still).
- $p^3 q^2$: $2^3 \cdot 3^2 = 72$ (alternative $3^3 \cdot 2^2 = 108$).
- $p^2 q r$: $2^2 \cdot 3 \cdot 5 = 60$.

The minimum is 60, and $60$ indeed has divisors $1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60$. Every number with 12 divisors has one of the four shapes, so it is at least 60. **Answer: 60.**

**22.** Let $T_n = 1! + 2! + \dots + n!$. Then $T_1 = 1 = 1^2$, $T_2 = 3$, $T_3 = 9 = 3^2$, $T_4 = 33$. For $k \ge 5$, $k!$ is a multiple of 5 (it contains the factor 5), so for $n \ge 4$, $T_n \equiv T_4 = 33 \equiv 3 \pmod 5$. But squares are $0, 1, 4 \pmod 5$. So $T_n$ is not a square for $n \ge 4$, and among $n \le 3$ only $n = 1, 3$ work. **Answer: $n = 1$ and $n = 3$.**

---

## Level 3

**23.** Suppose there is a solution other than $(0, 0, 0)$. Among all such solutions, choose one with $|x| + |y| + |z|$ as small as possible; this sum is a positive integer.

Squares are $\equiv 0$ or $1 \pmod 3$. From $x^2 + y^2 = 3z^2 \equiv 0 \pmod 3$, the only possibility is $x^2 \equiv y^2 \equiv 0$, so $3 \mid x$ and $3 \mid y$ (if $3 \nmid x$ then $x^2 \equiv 1$). Write $x = 3x_1$, $y = 3y_1$. Then $9x_1^2 + 9y_1^2 = 3z^2$, so $z^2 = 3(x_1^2 + y_1^2)$ and $3 \mid z^2$, hence $3 \mid z$; write $z = 3z_1$. Dividing the equation by 9 gives $x_1^2 + y_1^2 = 3z_1^2$.

So $(x_1, y_1, z_1)$ is again a solution, not $(0,0,0)$, with $|x_1| + |y_1| + |z_1| = \frac13 (|x| + |y| + |z|)$, which is smaller. This contradicts the minimal choice. Hence the only solution is $x = y = z = 0$. $\blacksquare$

**24.** *Case $y = 1$:* $3^x = 3$, so $x = 1$.

*Case $y \ge 2$:* then $4 \mid 2^y$, so $3^x \equiv 1 \pmod 4$. Since $3 \equiv -1 \pmod 4$, $3^x \equiv (-1)^x$, so $x$ is even: $x = 2k$ with $k \ge 1$. Then

$$
2^y = 3^{2k} - 1 = (3^k - 1)(3^k + 1).
$$

Both factors are positive divisors of a power of 2, so both are powers of 2: $3^k - 1 = 2^s$ and $3^k + 1 = 2^t$ with $s < t$, and $2^t - 2^s = 2$. If $s \ge 2$ the left side is a multiple of 4, impossible. If $s = 0$ then $2^t = 3$, impossible. So $s = 1$, $2^t = 4$: $3^k = 3$, $k = 1$, $x = 2$, and $2^y = 9 - 1 = 8$, $y = 3$.

**Answer: $(x, y) = (1, 1)$ and $(2, 3)$.**

**25.** $n = 1$ works, because $1$ divides $2^1 - 1 = 1$. We show no $n > 1$ works.

Suppose $n > 1$ and $n \mid 2^n - 1$. Let $p$ be the smallest prime divisor of $n$. Then $p \mid 2^n - 1$, which is odd, so $p \ne 2$. Let $d$ be the order of 2 modulo $p$: the smallest positive integer with $2^d \equiv 1 \pmod p$.

*Lemma.* If $2^m \equiv 1 \pmod p$ then $d \mid m$. (Write $m = qd + r$ with $0 \le r < d$. Then $1 \equiv 2^m = (2^d)^q \cdot 2^r \equiv 2^r$, and by minimality of $d$, $r = 0$.)

From $2^n \equiv 1$ we get $d \mid n$. From Fermat's little theorem ($p$ is odd, so $p \nmid 2$) we get $2^{p-1} \equiv 1$, so $d \mid p - 1$. Hence $d$ divides both $n$ and $p - 1$. Every prime factor of $p - 1$ is less than $p$, while every prime factor of $n$ is at least $p$; so $\gcd(n, p - 1) = 1$ and therefore $d = 1$. But then $p \mid 2^1 - 1 = 1$, a contradiction.

**Answer: $n = 1$ only.**

**26.** Let $2^k$ be the largest power of 2 with $2^k \le n$; since $n \ge 2$, $k \ge 1$. Then $2^{k+1} > n$, so:

- among $1, 2, \dots, n$, the number $2^k$ is the **only** one divisible by $2^k$ (the next multiple, $2 \cdot 2^k$, is larger than $n$);
- every other $j \le n$ has at most $k - 1$ factors 2.

Let $m$ be the product of all odd numbers $\le n$ and put $M = 2^{k-1} m$. For $j \le n$, $j \ne 2^k$, write $j = 2^e \cdot o$ with $o$ odd; then $e \le k - 1$ and $o \le n$ is one of the factors of $m$, so $M / j = 2^{k-1-e} \cdot (m / o)$ is an integer. For $j = 2^k$, $M / 2^k = m / 2$, which is **not** an integer because $m$ is odd.

So $M \cdot H_n = \sum_{j \le n} M/j$ equals (an integer) $+ \frac{m}{2}$, which is not an integer. If $H_n$ were an integer, $M \cdot H_n$ would be an integer. Contradiction; $H_n$ is not an integer. $\blacksquare$

**27.** We use strong induction on $a + b$. If $a = b$ both sides equal $2^a - 1$ (this includes the start $a + b = 2$). Now let $a \ne b$, say $a > b$ (the statement is symmetric). Since

$$
2^a - 1 = 2^{a-b}(2^b - 1) + (2^{a-b} - 1),
$$

the key lemma of Euclid's algorithm ($\gcd(A, B) = \gcd(A - qB, B)$) gives

$$
\gcd(2^a - 1,\ 2^b - 1) = \gcd(2^{a-b} - 1,\ 2^b - 1).
$$

Here $a - b$ and $b$ are positive with $(a - b) + b < a + b$, so by the induction hypothesis the right side equals $2^{\gcd(a-b,\,b)} - 1$. Finally $\gcd(a - b, b) = \gcd(a, b)$ (the same lemma). Hence $\gcd(2^a - 1, 2^b - 1) = 2^{\gcd(a,b)} - 1$. $\blacksquare$

**28.** Let $Z(n) = \lfloor n/5 \rfloor + \lfloor n/25 \rfloor + \lfloor n/125 \rfloor + \dots$, the number of trailing zeros of $n!$ (notes, section 12). Two observations:

- $Z$ never decreases, and $Z(n) = Z(n - 1)$ unless $5 \mid n$, because $n!$ has the same number of factors 5 as $(n-1)!$ unless $n$ itself is a multiple of 5.
- If $5 \mid n$, then $Z(n) - Z(n-1) = v_5(n)$, the number of factors 5 in $n$.

*Locating the region.* $Z(n) < \frac n5 + \frac n{25} + \dots = \frac n4$, so $Z(n) \ge 2026$ forces $n > 4 \cdot 2026 = 8104$. Compute

$$
Z(8120) = 1624 + 324 + 64 + 12 + 2 = 2026, \qquad Z(8125) = 1625 + 325 + 65 + 13 + 2 = 2030.
$$

Since $8121, \dots, 8124$ are not multiples of 5, $Z(n) = 2026$ for $8120 \le n \le 8124$, and $Z(8125) = 2030$ — a jump of 4 because $8125 = 5^4 \cdot 13$. Also $Z(8119) = Z(8120) - v_5(8120) = 2026 - 1 = 2025$ (as $8120 = 5 \cdot 1624$ and $5 \nmid 1624$).

(a) Because $Z$ is non-decreasing, $Z(n) \le 2026$ for $n \le 8124$ and $Z(n) \ge 2030$ for $n \ge 8125$. So the value 2027 (and also 2028, 2029) is never taken. $\blacksquare$

(b) Similarly $Z(n) \le 2025$ for $n \le 8119$. **Answer: $n = 8120, 8121, 8122, 8123, 8124$.**

**29.** (a) Suppose $ab - a - b = ax + by$ with $x, y \ge 0$. Then $ab = a(x + 1) + b(y + 1)$. Modulo $a$: $a \mid b(y + 1)$, and $\gcd(a, b) = 1$, so by Euclid's lemma $a \mid y + 1$; as $y + 1 \ge 1$, this gives $y + 1 \ge a$. In the same way $b \mid x + 1$, so $x + 1 \ge b$. Then $a(x + 1) + b(y + 1) \ge ab + ab = 2ab > ab$, a contradiction. So $ab - a - b$ is not reachable. $\blacksquare$

(b) Let $N > ab - a - b$. Look at the $a$ numbers $N, N - b, N - 2b, \dots, N - (a - 1)b$. No two of them are congruent modulo $a$: if $N - ib \equiv N - jb$, then $a \mid (j - i)b$, so $a \mid j - i$ (as $\gcd(a, b) = 1$), so $i = j$ because $|j - i| < a$. Hence these $a$ numbers have $a$ different remainders modulo $a$, and exactly one of them, say $N - yb$ with $0 \le y \le a - 1$, is divisible by $a$: $N - yb = ax$. Moreover

$$
ax = N - yb \ge N - (a - 1)b > (ab - a - b) - (a - 1)b = -a,
$$

so $x > -1$, i.e. $x \ge 0$. Thus $N = ax + by$ with $x, y \ge 0$: $N$ is reachable. $\blacksquare$

(c) $\gcd(5, 8) = 1$, so by (a) and (b) the largest amount that cannot be paid is $5 \cdot 8 - 5 - 8 = 27$. **Answer: 27 cent.** (Check: the unreachable amounts are $1, 2, 3, 4, 6, 7, 9, 11, 12, 14, 17, 19, 22, 27$.)
