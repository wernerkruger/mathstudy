# A1 Problems: Numbers and divisibility

[← Module overview](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

No calculator, unless a problem says otherwise. For the proofs, write full sentences: a reader should be able to follow every step.

---

## Practice

**1.** Calculate.
(a) $-7 + 12 - (-5)$
(b) $(-3)\cdot(-4)\cdot(-2)$
(c) $24 \div (-6) + (-2)^2$
(d) $-2^2$ and $(-2)^2$. Explain why they are different.
(e) $(-1)^{2027} + (-1)^{2026}$

**2.** Calculate, showing the order of operations (*rekenvolgorde*) you use.
(a) $3 + 4 \cdot 5 - 6 \div 2$
(b) $2\cdot(3 + 4)^2 - 10 \div 5$
(c) $48 \div 4 \div 2 \cdot 3$
(d) $-3^2 + 4\cdot(-1)^3 - (5 - 8)$

**3.** Without dividing, decide whether $7356$ is divisible by 2, 3, 4, 5, 6, 8, 9 and 11. Give the rule you used each time.

**4.** Write as a product of primes (*ontbind in priemfactoren*), using powers where possible.
(a) $360$  (b) $1001$  (c) $2310$  (d) $4096$  (e) $2024$

**5.** Use prime factorisations to find $\gcd(84, 120)$ and $\operatorname{lcm}(84, 120)$. Check that $\gcd \cdot \operatorname{lcm} = 84 \cdot 120$.

**6.** Use Euclid's algorithm to find
(a) $\gcd(2024, 1771)$  (b) $\gcd(252, 198)$.

**7.** Use the sieve of Eratosthenes to list all primes below 100. How many are there? Explain why you only needed to cross out multiples of 2, 3, 5 and 7.

**8.** (a) Write $72$ as a product of primes. (b) Use it to say how many divisors 72 has, **before** listing them. (c) List them all.

**9.** Find the smallest positive whole number that is divisible by every number from 1 to 10.

---

## School-exam level

**10.** Two buses leave the station at 08:00. Line 3 leaves every 12 minutes, line 7 every 18 minutes. When do they next leave at the same time? How many times do they leave together between 08:00 and 12:00 (both included)?

**11.** A floor of $84$ cm by $60$ cm is to be covered with equal square tiles, without cutting any tile. What is the largest possible tile, and how many such tiles are needed?

**12.** (a) The number $4\square 52$ is divisible by 9. Which digit is $\square$?
(b) The five-digit number $2a63b$ (digits $a$ and $b$) is divisible by 72. Find $a$ and $b$.

**13.** (a) Show that the sum of any three consecutive integers is divisible by 3. (Hint: call the middle one $n$.)
(b) Show that the product of two consecutive integers is always even.
(c) Is the sum of four consecutive integers ever divisible by 4? Explain.

**14.** Prove the rule for 4: a whole number is divisible by 4 exactly when the number formed by its last two digits is divisible by 4. (Use $100 = 4 \cdot 25$.)

**15.** At 06:00 the temperature is $-8\,^\circ$C. It rises $3$ degrees per hour until 13:00, then falls $2$ degrees per hour.
(a) What is the temperature at 13:00 and at 22:00?
(b) At what two times is the temperature exactly $0\,^\circ$C?

**16.** (a) Find $\gcd(36, 60)$ and $\operatorname{lcm}(36, 60)$, and check that their product is $36 \cdot 60$.
(b) Explain, using prime factorisations, why $\gcd(a,b)\cdot\operatorname{lcm}(a,b) = ab$ always.
(c) Two numbers have gcd 6 and lcm 180. One of them is 36. What is the other?

**17.** A number leaves remainder 1 when divided by 2, by 3, by 4, by 5 and by 6, and it is divisible by 7. What is the smallest such number?

---

## Challenge

**18.** Prove that $n^3 - n$ is divisible by 6 for every integer $n$. (Hint: factorise $n^3 - n = (n - 1)\,n\,(n + 1)$.)

**19.** Prove the rule for 11: a number is divisible by 11 exactly when its alternating digit sum (from the right: $+, -, +, -, \dots$) is divisible by 11. Do it for six-digit numbers; explain why the same proof works for any length. (Hint: $10 = 11 - 1$, $100 = 99 + 1$, $1000 = 1001 - 1$, …)

**20.** (a) Show that every odd number is of the form $4k + 1$ or $4k + 3$, and that the product of two numbers of the form $4k + 1$ is again of the form $4k + 1$.
(b) Prove that there are infinitely many primes of the form $4k + 3$. (Hint: given a list of such primes $p_1, \dots, p_m$, look at $N = 4p_1 p_2 \cdots p_m - 1$.)

**21.** Prove that if $p$ is a prime greater than 3, then $p^2 - 1$ is divisible by 24.

**22.** How many zeros does $100! = 1 \cdot 2 \cdot 3 \cdots 100$ end in? Explain your reasoning.

**23.** Find all whole numbers $n \ge 0$ such that $n + 1$ divides $n^2 + 1$. (Hint: $n^2 + 1 = (n + 1)(n - 1) + 2$.)

**24.** The Fibonacci numbers are $1, 1, 2, 3, 5, 8, 13, \dots$, each the sum of the two before.
(a) Use Euclid's algorithm to find $\gcd(377, 233)$. What do you notice about the quotients?
(b) Prove that any two consecutive Fibonacci numbers are coprime.

**25.** (a) Show that every perfect square leaves remainder 0 or 1 when divided by 4.
(b) Deduce that $2027$ is not the sum of two perfect squares.
(c) Can a number ending in the digits $\dots 11$ (such as $111$, $2011$, $34\,511$) be a perfect square?

**26.** A school has 100 lockers, numbered 1 to 100, all closed. Pupil 1 opens every locker. Pupil 2 changes (closes if open, opens if closed) every 2nd locker. Pupil 3 changes every 3rd locker, and so on, up to pupil 100. Which lockers are open at the end? Explain why.

**27.** (a) Use Euclid's algorithm to find $d = \gcd(1001, 221)$.
(b) Run the algorithm backwards to find integers $x$ and $y$ with $1001x + 221y = d$.
(c) Explain why there are no integers $x, y$ with $1001x + 221y = 20$.
