# A1 Solutions: Numbers and divisibility

[← Module overview](README.md) · [Notes](notes.md) · [Problems](problems.md)

Try every problem properly before reading its solution. For proofs, other correct arguments exist: compare the structure, not the wording.

---

## Practice

### 1.

(a) $-7 + 12 - (-5) = 5 + 5 = 10$.

(b) $(-3)\cdot(-4) = 12$, then $12 \cdot (-2) = -24$. (Three negative factors: odd, so the result is negative.)

(c) $24 \div (-6) = -4$ and $(-2)^2 = 4$, so the answer is $-4 + 4 = 0$.

(d) $-2^2 = -(2^2) = -4$, but $(-2)^2 = (-2)\cdot(-2) = 4$. The power is done before the minus sign (powers come before multiplication, and $-2^2$ means $-1\cdot 2^2$). In $(-2)^2$ the brackets say the whole of $-2$ is squared.

(e) 2027 is odd and 2026 is even, so $(-1)^{2027} + (-1)^{2026} = -1 + 1 = 0$.

### 2.

(a) Multiply and divide first: $4\cdot 5 = 20$ and $6 \div 2 = 3$. Then $3 + 20 - 3 = 20$.

(b) Brackets: $3 + 4 = 7$. Power: $7^2 = 49$. Multiply/divide: $2\cdot 49 = 98$ and $10 \div 5 = 2$. Subtract: $98 - 2 = 96$.

(c) Left to right: $48 \div 4 = 12$, $12 \div 2 = 6$, $6 \cdot 3 = 18$.

(d) Brackets: $5 - 8 = -3$. Powers: $3^2 = 9$ (so $-3^2 = -9$) and $(-1)^3 = -1$. Multiply: $4\cdot(-1) = -4$. So $-9 + (-4) - (-3) = -9 - 4 + 3 = -10$.

### 3.

- **2: yes.** Last digit 6 is even.
- **3: yes.** Digit sum $7 + 3 + 5 + 6 = 21$, divisible by 3.
- **4: yes.** Last two digits: $56 = 4 \cdot 14$.
- **5: no.** Last digit is not 0 or 5.
- **6: yes.** Divisible by 2 and by 3, which are coprime.
- **8: no.** Last three digits: $356 = 8 \cdot 44 + 4$.
- **9: no.** Digit sum 21 is not divisible by 9.
- **11: no.** Alternating sum from the right: $6 - 5 + 3 - 7 = -3$, not divisible by 11.

### 4.

(a) $360 = 2 \cdot 180 = 2\cdot 2\cdot 90 = 2\cdot 2\cdot 2\cdot 45 = 2^3\cdot 3^2\cdot 5$.

(b) $1001 = 7 \cdot 143 = 7 \cdot 11 \cdot 13$. (Try 7: $7\cdot 143 = 1001$. Then $143 = 11 \cdot 13$.)

(c) $2310 = 2\cdot 1155 = 2\cdot 3\cdot 385 = 2\cdot 3\cdot 5\cdot 77 = 2\cdot 3\cdot 5\cdot 7\cdot 11$. (The product of the first five primes.)

(d) $4096 = 2^{12}$. (Halve repeatedly: $4096, 2048, 1024, 512, \dots, 2, 1$: twelve halvings.)

(e) $2024 = 2\cdot 1012 = 2^2\cdot 506 = 2^3\cdot 253 = 2^3 \cdot 11 \cdot 23$.

### 5.

$84 = 2^2\cdot 3\cdot 7$ and $120 = 2^3\cdot 3\cdot 5$.

- gcd: smaller exponent of each prime: $2^2\cdot 3 = 12$.
- lcm: larger exponent of each prime: $2^3\cdot 3\cdot 5\cdot 7 = 840$.

Check: $12 \cdot 840 = 10\,080$ and $84\cdot 120 = 10\,080$. ✓

### 6.

(a)

$$
\begin{aligned}
2024 &= 1\cdot 1771 + 253\\
1771 &= 7\cdot 253 + 0
\end{aligned}
$$

So $\gcd(2024, 1771) = 253$. (Check: $2024 = 8\cdot 253$ and $1771 = 7\cdot 253$, with $253 = 11\cdot 23$.)

(b)

$$
\begin{aligned}
252 &= 1\cdot 198 + 54\\
198 &= 3\cdot 54 + 36\\
54 &= 1\cdot 36 + 18\\
36 &= 2\cdot 18 + 0
\end{aligned}
$$

So $\gcd(252, 198) = 18$.

### 7.

The primes below 100 are

2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97.

There are **25**. If $n < 100$ is composite, $n = ab$ with $1 < a \le b$, then $a^2 \le ab = n < 100$, so $a < 10$. Then any prime factor of $a$ is less than 10, so it is 2, 3, 5 or 7. So every composite number below 100 has already been crossed out as a multiple of 2, 3, 5 or 7.

### 8.

(a) $72 = 2^3\cdot 3^2$.

(b) A divisor is $2^a 3^b$ with $a \in \lbrace 0,1,2,3\rbrace$ and $b \in \lbrace 0,1,2\rbrace$: $4\cdot 3 = 12$ divisors.

(c) 1, 2, 3, 4, 6, 8, 9, 12, 18, 24, 36, 72. (Listing in pairs that multiply to 72 helps: $1\cdot 72$, $2\cdot 36$, $3 \cdot 24$, $4\cdot 18$, $6\cdot 12$, $8\cdot 9$.)

### 9.

We need $\operatorname{lcm}(1, 2, \dots, 10)$. Take the highest power of each prime that appears: $2^3$ (from 8), $3^2$ (from 9), $5$, $7$. So the answer is $8\cdot 9\cdot 5\cdot 7 = 2520$.

---

## School-exam level

### 10.

They leave together after a number of minutes that is a common multiple of 12 and 18. $12 = 2^2 \cdot 3$ and $18 = 2\cdot 3^2$, so $\operatorname{lcm}(12, 18) = 2^2\cdot 3^2 = 36$. They next leave together at **08:36**.

Between 08:00 and 12:00 (240 minutes) the common times are $0, 36, 72, \dots$ minutes after 08:00, as long as the number is at most 240. $6\cdot 36 = 216 \le 240 < 252 = 7\cdot 36$, so the multiples $0, 36, \dots, 216$ count: **7 times** (08:00, 08:36, 09:12, 09:48, 10:24, 11:00, 11:36).

### 11.

The side of the tile must divide both 84 and 60, and we want the largest: $\gcd(84, 60) = 12$ ($84 = 2^2\cdot 3\cdot 7$, $60 = 2^2\cdot 3\cdot 5$). Tiles of **12 cm by 12 cm**; the floor takes $84 \div 12 = 7$ by $60\div 12 = 5$ tiles: **35 tiles**.

### 12.

(a) Digit sum $4 + \square + 5 + 2 = 11 + \square$ must be divisible by 9. With $0 \le \square \le 9$, that means $11 + \square = 18$, so $\square = 7$. (Check: $4752 = 9\cdot 528$.)

(b) $72 = 8\cdot 9$, and 8 and 9 are coprime, so the number must be divisible by 8 and by 9.

- **By 8:** the last three digits $63b$ must be divisible by 8. Now $632 = 8\cdot 79$, and the next multiples of 8 are $624$ and $640$, so $b = 2$ is the only digit that works.
- **By 9:** digit sum $2 + a + 6 + 3 + 2 = 13 + a$ must be divisible by 9, so $13 + a = 18$, $a = 5$.

The number is $25\,632 = 72\cdot 356$. So $a = 5$, $b = 2$.

### 13.

(a) Three consecutive integers are $n - 1$, $n$, $n + 1$. Their sum is $(n - 1) + n + (n + 1) = 3n$, which is divisible by 3. $\square$

(b) Of two consecutive integers $n$ and $n+1$, one is even (even and odd numbers alternate). A product with an even factor is even: if $n = 2k$ then $n(n+1) = 2\cdot k(n+1)$, and if $n + 1 = 2k$ then $n(n+1) = 2\cdot nk$. $\square$

(c) **Never.** The sum is $n + (n+1) + (n+2) + (n+3) = 4n + 6 = 4(n + 1) + 2$. That leaves remainder 2 when divided by 4, so it is never divisible by 4.

### 14.

Let $N$ be a whole number and let $t$ be the number formed by its last two digits, so $0 \le t \le 99$. Then $N = 100m + t$ for some whole number $m$ (the digits before the last two).

Since $100 = 4\cdot 25$, $4 \mid 100m$.

- If $4 \mid t$, then $4$ divides $100m + t = N$ (sum of two multiples of 4).
- If $4 \mid N$, then $4$ divides $N - 100m = t$ (difference of two multiples of 4).

So $4 \mid N$ exactly when $4 \mid t$. $\square$

### 15.

(a) From 06:00 to 13:00 is 7 hours: $-8 + 7\cdot 3 = 13\,^\circ$C at 13:00. From 13:00 to 22:00 is 9 hours: $13 - 9\cdot 2 = -5\,^\circ$C at 22:00.

(b) **Rising:** it must rise 8 degrees at 3 per hour: $8 \div 3 = 2\tfrac23$ hours $= 2$ hours 40 minutes, so at **08:40**.
**Falling:** from $13$ down to $0$ at 2 per hour: $13 \div 2 = 6\tfrac12$ hours, so at **19:30**.

### 16.

(a) $36 = 2^2\cdot 3^2$, $60 = 2^2\cdot 3\cdot 5$. $\gcd = 2^2\cdot 3 = 12$, $\operatorname{lcm} = 2^2\cdot 3^2\cdot 5 = 180$. $12\cdot 180 = 2160 = 36\cdot 60$. ✓

(b) Write $a$ and $b$ using the same primes $p_1, \dots, p_k$ (with exponent 0 where a prime is missing): $a = p_1^{e_1}\cdots p_k^{e_k}$, $b = p_1^{f_1}\cdots p_k^{f_k}$. The gcd has exponent $\min(e_i, f_i)$ for each prime and the lcm has $\max(e_i, f_i)$. For any two numbers, $\min + \max$ is just the sum of the two: $\min(e, f) + \max(e, f) = e + f$. So in $\gcd\cdot\operatorname{lcm}$ each prime $p_i$ has exponent $e_i + f_i$, the same as in $ab$. $\square$

(c) By (b), the other number is $\dfrac{6\cdot 180}{36} = 30$. Check: $\gcd(36, 30) = 6$ and $\operatorname{lcm}(36, 30) = 180$. ✓

### 17.

If $n$ leaves remainder 1 on division by 2, 3, 4, 5 and 6, then $n - 1$ is divisible by all of them, so $n - 1$ is a multiple of $\operatorname{lcm}(2,3,4,5,6) = 60$. So $n$ is one of $1, 61, 121, 181, 241, 301, \dots$. Test for divisibility by 7: $1, 61, 121, 181, 241$ are not ($61 = 56 + 5$, $121 = 119 + 2$, $181 = 175 + 6$, $241 = 238 + 3$), but $301 = 7\cdot 43$. The answer is **301**.

---

## Challenge

### 18.

$n^3 - n = n(n^2 - 1) = (n-1)\,n\,(n+1)$, a product of three consecutive integers.

- Among any two consecutive integers one is even, so the product is divisible by 2.
- Among any three consecutive integers one is divisible by 3 (the remainders on division by 3 of three consecutive numbers are 0, 1, 2 in some order). So the product is divisible by 3.

A number divisible by both 2 and 3 is divisible by $\operatorname{lcm}(2, 3) = 6$. So $6 \mid n^3 - n$ for every integer $n$. $\square$

### 19.

Write a six-digit number with digits $a, b, c, d, e, f$:

$$
N = 100000a + 10000b + 1000c + 100d + 10e + f.
$$

Now use

$$
10 = 11 - 1,\quad 100 = 99 + 1,\quad 1000 = 1001 - 1,\quad 10\,000 = 9999 + 1,\quad 100\,000 = 100\,001 - 1,
$$

and note that $11$, $99 = 9\cdot 11$, $1001 = 91\cdot 11$, $9999 = 909\cdot 11$, $100\,001 = 9091\cdot 11$ are all multiples of 11. Then

$$
N = \underbrace{100001a + 9999b + 1001c + 99d + 11e}_{\text{multiple of } 11} + \underbrace{(f - e + d - c + b - a)}_{\text{alternating sum}}.
$$

The first part is divisible by 11, so (Fact 1) $N$ is divisible by 11 exactly when the alternating sum $f - e + d - c + b - a$ is. $\square$

**Any length.** We need: $10^k$ is one more than a multiple of 11 when $k$ is even, and one less when $k$ is odd. This is true for $k = 0$ ($1 = 0 + 1$). Going from $10^k$ to $10^{k+1}$ multiplies by $10 = 11 - 1$. If $10^k = 11m + 1$ then $10^{k+1} = 110m + 10 = 11(10m + 1) - 1$; if $10^k = 11m - 1$ then $10^{k+1} = 110m - 10 = 11(10m - 1) + 1$. So the pattern $+1, -1, +1, \dots$ continues for ever, and the proof above works for any number of digits.

### 20.

(a) An odd number leaves remainder 1 or 3 on division by 4 (remainder 0 or 2 would make it even), so it is $4k + 1$ or $4k + 3$. And

$$
(4a + 1)(4b + 1) = 16ab + 4a + 4b + 1 = 4(4ab + a + b) + 1,
$$

which is of the form $4k + 1$. By repeating, a product of any number of factors of the form $4k+1$ is again of the form $4k+1$.

(b) Suppose $p_1, \dots, p_m$ is any finite list of primes of the form $4k + 3$. Let

$$
N = 4p_1p_2\cdots p_m - 1.
$$

$N = 4(p_1\cdots p_m - 1) + 3$, so $N$ is of the form $4k + 3$; in particular it is odd and greater than 1.

Write $N$ as a product of primes. They are all odd (since $N$ is odd), so each is of the form $4k + 1$ or $4k + 3$. If they were *all* of the form $4k+1$, then by (a) $N$ would be of the form $4k+1$, which it isn't. So $N$ has a prime factor $q$ of the form $4k + 3$.

Could $q$ be one of the $p_i$? Then $q$ divides $4p_1\cdots p_m$ and $q$ divides $N$, so $q$ divides their difference, which is $1$. Impossible. So $q$ is a prime of the form $4k + 3$ that is not on the list.

No finite list contains all primes of the form $4k + 3$, so there are infinitely many. $\square$

(Why not use $4p_1\cdots p_m + 3$? That works too if you're careful, but then you must check that 3 itself doesn't cause trouble. The "$-1$" version avoids this.)

### 21.

$p^2 - 1 = (p - 1)(p + 1)$. We show it is divisible by 8 and by 3; since $\gcd(8, 3) = 1$, it is then divisible by 24.

**By 8.** $p$ is odd (it's a prime bigger than 2), so $p - 1$ and $p + 1$ are two consecutive even numbers. Of two consecutive even numbers, one is a multiple of 4 (the even numbers alternate between multiples of 4 and non-multiples). So the product contains a factor 2 from one and a factor 4 from the other: it is divisible by 8.

**By 3.** Of the three consecutive numbers $p - 1$, $p$, $p + 1$, one is divisible by 3. It isn't $p$ (a prime bigger than 3). So 3 divides $p - 1$ or $p + 1$, hence $(p-1)(p+1)$.

So $24 \mid p^2 - 1$. $\square$ (Examples: $5^2 - 1 = 24$, $7^2 - 1 = 48$, $11^2 - 1 = 120$.)

### 22.

Each zero at the end comes from a factor $10 = 2\cdot 5$. There are far more factors 2 than 5 in $100!$, so we count the factors 5.

- Multiples of 5 up to 100: $100 \div 5 = 20$ numbers, each giving at least one 5.
- Multiples of 25 give a *second* 5: $100\div 25 = 4$ numbers (25, 50, 75, 100).
- Multiples of 125 would give a third, but there are none below 100.

Total: $20 + 4 = 24$ factors 5. So $100!$ ends in **24 zeros**.

### 23.

$(n + 1)(n - 1) = n^2 - 1$, so $n^2 + 1 = (n+1)(n-1) + 2$. Since $n + 1$ divides $(n+1)(n-1)$, it divides $n^2 + 1$ exactly when it divides $2$ (Fact 1, both directions).

So $n + 1 \in \lbrace 1, 2\rbrace$, giving $n = 0$ or $n = 1$. Check: $n = 0$: $1 \mid 1$ ✓; $n = 1$: $2 \mid 2$ ✓. **Answer: $n = 0$ and $n = 1$.**

(If negative $n$ are allowed, $n + 1 \in \lbrace -1, -2\rbrace$ also works, giving $n = -2$ and $n = -3$.)

### 24.

(a)

$$
\begin{aligned}
377 &= 1\cdot 233 + 144\\
233 &= 1\cdot 144 + 89\\
144 &= 1\cdot 89 + 55\\
89 &= 1\cdot 55 + 34\\
&\ \ \vdots\\
3 &= 1\cdot 2 + 1\\
2 &= 2\cdot 1 + 0
\end{aligned}
$$

So $\gcd(377, 233) = 1$. Every quotient is 1 (until the last), and the remainders are the Fibonacci numbers going down: 144, 89, 55, 34, 21, 13, 8, 5, 3, 2, 1. (In fact, consecutive Fibonacci numbers make Euclid's algorithm take as many steps as possible for numbers of their size.)

(b) Write $F_1 = F_2 = 1$ and $F_{n+1} = F_n + F_{n-1}$. By Euclid's key idea, since $F_{n+1} = 1\cdot F_n + F_{n-1}$,

$$
\gcd(F_{n+1}, F_n) = \gcd(F_n, F_{n-1}).
$$

Repeating, $\gcd(F_{n+1}, F_n) = \gcd(F_n, F_{n-1}) = \dots = \gcd(F_2, F_1) = \gcd(1, 1) = 1$. So consecutive Fibonacci numbers are coprime. $\square$

(Another way: any common divisor $d$ of $F_{n+1}$ and $F_n$ divides $F_{n+1} - F_n = F_{n-1}$, and so on down to $F_1 = 1$. So $d = 1$.)

### 25.

(a) Every integer is even or odd.
- If $n = 2k$, then $n^2 = 4k^2$: remainder 0.
- If $n = 2k + 1$, then $n^2 = 4k^2 + 4k + 1 = 4(k^2 + k) + 1$: remainder 1. $\square$

(b) A sum of two squares has remainder $0 + 0$, $0 + 1$ or $1 + 1$, that is 0, 1 or 2, on division by 4. But $2027 = 4\cdot 506 + 3$ has remainder 3. So 2027 is not a sum of two squares.

(c) **No.** Since $100$ is divisible by 4, a number's remainder on division by 4 is determined by its last two digits. A number ending in $11$ has the same remainder as $11$, which is 3. By (a), squares have remainder 0 or 1. So no square ends in 11.

### 26.

Locker $n$ is changed once by each pupil whose number divides $n$, so it is changed as many times as $n$ has divisors. It ends up open exactly when it was changed an **odd** number of times.

Divisors come in pairs $d$ and $n/d$ (for example for 12: $1\cdot 12$, $2\cdot 6$, $3\cdot 4$). The pairs give an even count, **unless** some divisor is paired with itself, $d = n/d$, which means $n = d^2$. So $n$ has an odd number of divisors exactly when $n$ is a perfect square.

The open lockers are **1, 4, 9, 16, 25, 36, 49, 64, 81, 100**: ten lockers.

### 27.

(a)

$$
\begin{aligned}
1001 &= 4\cdot 221 + 117\\
221 &= 1\cdot 117 + 104\\
117 &= 1\cdot 104 + 13\\
104 &= 8\cdot 13 + 0
\end{aligned}
$$

So $d = 13$.

(b) Work back up, writing each remainder in terms of the two numbers above it:

$$
\begin{aligned}
13 &= 117 - 104\\
&= 117 - (221 - 117) = 2\cdot 117 - 221\\
&= 2\cdot(1001 - 4\cdot 221) - 221 = 2\cdot 1001 - 9\cdot 221.
\end{aligned}
$$

So $x = 2$, $y = -9$. Check: $2002 - 1989 = 13$. ✓

(c) $13$ divides $1001$ and $221$, so it divides $1001x + 221y$ for all integers $x, y$. But $13 \nmid 20$. So $1001x + 221y = 20$ has no integer solutions.
