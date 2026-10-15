# O2 Number theory — problems

[← Back to the module README](README.md)

Problems are graded in three levels. Level 1 problems should take 2–5 minutes each, Level 2 problems 10–20 minutes, Level 3 problems can take a whole session. For every "find all" problem, prove that your list is complete. Write full sentences in proofs, as you would at the NWO second round.

Complete solutions are in [solutions.md](solutions.md). One-line hints are at the bottom of this page.

---

## Level 1 — Kangoeroe style (wizBRAIN)

**1.** *(number of divisors)* How many positive divisors does $720$ have?

**2.** *(modular arithmetic)* What is the last digit of $7^{2028}$?

**3.** *(modular arithmetic)* What is the remainder when $2^{100}$ is divided by $7$?

**4.** *(lcm, remainders)* Find the smallest positive integer that leaves remainder 1 when divided by each of $2, 3, 4, 5$ and $6$, and that is divisible by $7$.

**5.** *(squares mod 10)* A perfect square (kwadraat) ends in one of the digits below. Which one can it be?
(A) 2  (B) 3  (C) 6  (D) 7  (E) 8

**6.** *(number bases)* When $2027$ is written in base 2 (binary, tweetallig stelsel), how many of its digits are 1?

**7.** *(Legendre, trailing zeros)* How many zeros does $2027!$ end in?

**8.** *(gcd and lcm)* How many ordered pairs $(a, b)$ of positive integers have $\gcd(a,b) = 12$ and $\mathrm{lcm}(a,b) = 360$?

**9.** *(prime factorisation)* What is the smallest positive integer $n$ for which $2028n$ is a perfect cube (derde macht)?

**10.** *(divisibility rules)* $a$ and $b$ are digits such that the six-digit number $\overline{20a28b}$ is divisible by $36$. How many pairs $(a, b)$ are possible?

---

## Level 2 — NWO first/second round style

**11.** *(Diophantine, SFFT)* Find all pairs of positive integers $(x, y)$ with $xy + 2x + 3y = 30$.

**12.** *(Diophantine, factoring)* Find all pairs of positive integers $(x, y)$ with $\dfrac{1}{x} + \dfrac{1}{y} = \dfrac{1}{6}$.

**13.** *(linear Diophantine)* A shop sells boxes of 7 and boxes of 11 pencils. In how many ways can you buy exactly 200 pencils? List them.

**14.** *(divisibility, Fermat)* Prove that $n^5 - n$ is divisible by $30$ for every integer $n$.

**15.** *(gcd, Euclid)* For positive integers $n$, which values can $\gcd(n^2 + 3,\ n + 2)$ take? Give an example of each.

**16.** *(Fermat's little theorem)* Prove that $2^{70} + 3^{70}$ is divisible by $13$.

**17.** *(primes, mod 3)* Find all primes $p$ for which $2p^2 + 1$ is also prime.

**18.** *(number bases)* Find all bases $b \ge 2$ in which the number $2028$ has exactly three digits and its last digit is $0$.

**19.** *(digit sums)* Find all positive integers $n$ such that $n + S(n) = 2027$, where $S(n)$ is the digit sum of $n$.

**20.** *(Diophantine, factoring)* Find all pairs of positive integers $(x, y)$ with $x^2 - y^2 = 2028$.

**21.** *(number of divisors)* What is the smallest positive integer that has exactly $12$ positive divisors? Prove that no smaller number works.

**22.** *(squares mod 5)* Find all positive integers $n$ for which $1! + 2! + 3! + \dots + n!$ is a perfect square.

---

## Level 3 — NWO final / BxMO (Benelux Mathematical Olympiad) style

**23.** *(infinite descent)* Prove that the only integers $x, y, z$ with $x^2 + y^2 = 3z^2$ are $x = y = z = 0$.

**24.** *(Diophantine, powers)* Find all pairs of positive integers $(x, y)$ with $3^x - 2^y = 1$.

**25.** *(Fermat, order)* Find all positive integers $n$ such that $n$ divides $2^n - 1$.

**26.** *(powers of 2, divisibility)* Prove that for every integer $n \ge 2$ the number

$$
H_n = 1 + \frac{1}{2} + \frac{1}{3} + \dots + \frac{1}{n}
$$

is not an integer.

**27.** *(Euclid's algorithm)* Prove that for all positive integers $a$ and $b$,

$$
\gcd(2^a - 1,\ 2^b - 1) = 2^{\gcd(a,b)} - 1.
$$

**28.** *(Legendre, trailing zeros)* (a) Prove that there is no positive integer $n$ for which $n!$ ends in exactly $2027$ zeros. (b) Find all $n$ for which $n!$ ends in exactly $2026$ zeros.

**29.** *(Bézout, linear Diophantine)* Let $a$ and $b$ be coprime positive integers. Call a non-negative integer $N$ *reachable* if $N = ax + by$ for some non-negative integers $x, y$.
(a) Prove that $ab - a - b$ is not reachable.
(b) Prove that every integer $N > ab - a - b$ is reachable.
(c) With stamps of 5 cent and 8 cent, what is the largest amount (in cents) you cannot pay exactly?

---

## Hints

1. Factorise $720$ into primes first.
2. Look at the last digits of $7, 7^2, 7^3, 7^4$.
3. $2^3 = 8 \equiv 1 \pmod 7$.
4. The number is $1$ more than a multiple of $\mathrm{lcm}(2,3,4,5,6)$.
5. List $0^2, 1^2, \dots, 9^2$ modulo 10.
6. $2047 = 2^{11} - 1$ is eleven 1s in binary, and $2027 = 2047 - 20$. Or divide by 2 repeatedly.
7. Legendre with $p = 5$.
8. Write $a = 12x$, $b = 12y$ with $x, y$ coprime.
9. $2028 = 2^2 \cdot 3 \cdot 13^2$; every exponent must become a multiple of 3.
10. $36 = 4 \cdot 9$: last two digits and digit sum.
11. Add $6$ to both sides and factor.
12. Clear denominators, then use SFFT.
13. Work modulo 7.
14. Check divisibility by 2, 3 and 5 separately; Fermat for 5.
15. Divide $n^2 + 3$ by $n + 2$ with remainder.
16. $3^3 \equiv 1$ and $2^{12} \equiv 1 \pmod{13}$.
17. What is $2p^2 + 1$ modulo 3 when $p \ne 3$?
18. Three digits means $b^2 \le 2028 < b^3$; last digit 0 means $b$ divides $2028$.
19. How large can $S(n)$ be? Then look modulo 9.
20. Both factors $x - y$ and $x + y$ must be even.
21. $12 = 12 = 6 \cdot 2 = 4 \cdot 3 = 3 \cdot 2 \cdot 2$.
22. For $k \ge 5$, $k!$ ends in 0.
23. Squares modulo 3, then divide everything by 3.
24. Treat $y = 1$ separately; for $y \ge 2$ work modulo 4, then factor a difference of squares.
25. Let $p$ be the smallest prime divisor of $n$ and use the order of 2 modulo $p$.
26. Look at the largest power of 2 that is at most $n$.
27. Mimic one step of Euclid: $2^a - 1 = 2^{a-b}(2^b - 1) + (2^{a-b} - 1)$.
28. Find where $Z(n) = v_5(n!)$ jumps by more than 1.
29. (a) Suppose it is reachable and look modulo $a$ and modulo $b$. (b) Look at $N, N - b, N - 2b, \dots, N - (a-1)b$ modulo $a$.
