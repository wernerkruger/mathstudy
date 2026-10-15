# A1 Notes: Numbers and divisibility

[← Module overview](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

This module is about whole numbers: positive, negative and zero. You have used them for years, so why spend six weeks on them? Because whole numbers hide some of the most beautiful ideas in mathematics, and because this is where you learn to ask the question that matters most: **why is this true?** By the end you will have proved several things that people have known for over 2,000 years, including a proof by Euclid that is still one of the most famous arguments ever written.

---

## 1. Integers and negative numbers

The **natural numbers** (*natuurlijke getallen*) are $0, 1, 2, 3, \dots$ (Dutch schools usually include 0; some books start at 1). The **integers** (*gehele getallen*) add the negative numbers (*negatieve getallen*):

$$
\dots, -3, -2, -1, 0, 1, 2, 3, \dots
$$

Mathematicians call the set of integers $\mathbb{Z}$, from the German *Zahlen*, "numbers".

Think of the integers on a number line. Every number $a$ has an **opposite** (*tegengestelde*) $-a$, the same distance from 0 on the other side, so that $a + (-a) = 0$. Note that $-a$ is not always negative: if $a = -5$ then $-a = 5$.

### Adding and subtracting

- Adding a positive number moves right; adding a negative number moves left.
- **Subtracting a number is the same as adding its opposite:** $a - b = a + (-b)$. So $7 - (-3) = 7 + 3 = 10$.

Why is subtracting $-3$ the same as adding 3? Subtraction answers the question "what do I add to $b$ to get $a$?" What must you add to $-3$ to reach $7$? You walk from $-3$ up to $7$: that's 10 steps. So $7 - (-3) = 10$.

### Multiplying: why is minus times minus plus?

Everyone learns the rule "minus times minus is plus". Here is why it **has** to be true, if we want the usual rules of arithmetic to keep working.

We want the **distributive law** (*verdeelwet*) $a(b + c) = ab + ac$ to hold for all integers. We also agree that $(-1) \cdot 1 = -1$ and that anything times 0 is 0. Now look at

$$
(-1)\cdot\bigl(1 + (-1)\bigr).
$$

On the one hand, $1 + (-1) = 0$, so this is $(-1)\cdot 0 = 0$. On the other hand, by the distributive law it equals

$$
(-1)\cdot 1 + (-1)\cdot(-1) = -1 + (-1)\cdot(-1).
$$

So $-1 + (-1)\cdot(-1) = 0$, which means $(-1)\cdot(-1)$ is the number you add to $-1$ to get 0. That number is $1$. So $(-1)\cdot(-1) = 1$. $\square$

Nobody "decided" that minus times minus is plus. It is forced on us by the distributive law. That's a pattern you'll see again and again: a rule that looks arbitrary is often the only choice that keeps everything else consistent.

From this, $(-a)\cdot(-b) = (-1)a\cdot(-1)b = (-1)(-1)\cdot ab = ab$. In short:

| Signs | Product or quotient |
|---|---|
| $+$ and $+$ | $+$ |
| $+$ and $-$ | $-$ |
| $-$ and $-$ | $+$ |

The same signs rule holds for division, because division is multiplication "undone": $(-12) \div (-3) = 4$ because $(-3)\cdot 4 = -12$.

A product of several factors is negative exactly when an **odd** number of them are negative. So $(-1)^{100} = 1$ and $(-1)^{101} = -1$.

> **Common mistake.** $-3^2$ is **not** $9$. The power belongs to the $3$ only: $-3^2 = -(3^2) = -9$. If you want the square of $-3$, write $(-3)^2 = 9$. Calculators and exams follow this convention strictly.

---

## 2. Order of operations

When you see $3 + 4 \cdot 5$, is it $35$ or $23$? We need an agreement. The Dutch agreement (*rekenvolgorde*) is the same as everywhere:

1. **Haakjes** (brackets) first, innermost first;
2. then **machten en wortels** (powers and roots);
3. then **vermenigvuldigen en delen** (multiply and divide), from left to right;
4. then **optellen en aftrekken** (add and subtract), from left to right.

So $3 + 4\cdot 5 = 3 + 20 = 23$.

**Worked example.** Calculate $2 - 3\cdot(4-6)^2 \div 6$.

- Brackets: $4 - 6 = -2$.
- Power: $(-2)^2 = 4$.
- Multiply and divide left to right: $3 \cdot 4 = 12$, then $12 \div 6 = 2$.
- Subtract: $2 - 2 = 0$.

"Left to right" matters for division: $12 \div 6 \div 2 = 2 \div 2 = 1$, **not** $12 \div 3 = 4$. Division is not associative. If you think of $a \div b$ as $a \cdot \tfrac{1}{b}$, the problem disappears: $12 \cdot \tfrac16 \cdot \tfrac12 = 1$.

> **Why this order?** It isn't a law of nature; it's a convention that makes the most common expressions short. Polynomials like $3x^2 + 2x + 1$ would need many brackets otherwise. Once you write algebra in A3 you'll be glad of it.

---

## 3. Divisibility

We say $a$ **divides** $b$, written $a \mid b$, if $b = a\cdot k$ for some integer $k$. In Dutch: $b$ is *deelbaar door* $a$, $a$ is a *deler* of $b$, and $b$ is a *veelvoud* of $a$. For example $3 \mid 12$ and $5 \nmid 12$.

Two facts we'll use all the time:

**Fact 1.** If $d \mid a$ and $d \mid b$, then $d \mid a + b$ and $d \mid a - b$.

*Proof.* Write $a = dk$ and $b = dm$. Then $a + b = d(k + m)$ and $a - b = d(k - m)$, and $k + m$ and $k - m$ are integers. $\square$

**Fact 2.** If $d \mid a$ then $d \mid a\cdot c$ for any integer $c$. (Because $ac = d(kc)$.)

### Rules for 2, 5, 10, 4 and 8

Every whole number can be split as "last digit + a multiple of 10": for example $7356 = 7350 + 6 = 735\cdot 10 + 6$. Since $2 \mid 10$ and $5 \mid 10$, Fact 1 tells us:

- $n$ is divisible by 2 exactly when its **last digit** is (0, 2, 4, 6, 8);
- $n$ is divisible by 5 exactly when its last digit is 0 or 5;
- $n$ is divisible by 10 exactly when its last digit is 0.

Similarly, $7356 = 73\cdot 100 + 56$, and $4 \mid 100$, so $4 \mid 7356$ exactly when $4 \mid 56$. It does ($56 = 4\cdot 14$). **Rule for 4: look at the last two digits.** And because $8 \mid 1000$: **rule for 8: look at the last three digits.**

### Rules for 9 and 3: the digit sum

**Rule.** A number is divisible by 9 exactly when its digit sum (*cijfersom*) is divisible by 9. The same holds for 3.

Try it: $7356$ has digit sum $7 + 3 + 5 + 6 = 21$, which is divisible by 3 but not by 9. So $3 \mid 7356$ but $9 \nmid 7356$. Check: $7356 = 3\cdot 2452$.

Why on earth should adding the digits tell you anything about dividing by 9? Here is the proof. Look at the powers of 10:

$$
10 = 9 + 1,\quad 100 = 99 + 1,\quad 1000 = 999 + 1,\quad \dots
$$

Each power of 10 is **one more than a multiple of 9**. Now write a four-digit number with digits $a, b, c, d$:

$$
\begin{aligned}
n &= 1000a + 100b + 10c + d \\
&= (999 + 1)a + (99 + 1)b + (9 + 1)c + d \\
&= \underbrace{999a + 99b + 9c}_{\text{multiple of } 9} + \underbrace{(a + b + c + d)}_{\text{digit sum}}.
\end{aligned}
$$

The first part is always divisible by 9. By Fact 1, $n$ is divisible by 9 exactly when the digit sum is. And since $3 \mid 9$, the first part is also divisible by 3, so the same argument works for 3. $\square$

The same proof works for any number of digits. In fact it proves more: **$n$ and its digit sum leave the same remainder when divided by 9.** That's the basis of the old check called "casting out nines".

### Rule for 6

$6 = 2 \cdot 3$, and a number divisible by both 2 and 3 is divisible by 6. (Why? This needs that 2 and 3 have no common factor; you'll see why in §5.) So: **even, and digit sum divisible by 3.**

> **Common mistake.** It is *not* true that "divisible by 4 and by 6" means "divisible by 24". The number 12 is divisible by 4 and by 6, but not by 24. The trick only works when the two divisors have no common factor (like 3 and 8). The correct statement uses the lcm: divisible by 4 and 6 means divisible by $\mathrm{lcm}(4, 6) = 12$.

### Rule for 11: the alternating sum

**Rule.** Take the digits from the right, alternately adding and subtracting: for $7356$ that gives $6 - 5 + 3 - 7 = -3$. The number is divisible by 11 exactly when this **alternating sum** is divisible by 11. Here $-3$ isn't, so $11 \nmid 7356$. But for $918\,082$: $2 - 8 + 0 - 8 + 1 - 9 = -22$, which is divisible by 11, and indeed $918\,082 = 11 \cdot 83\,462$.

The proof is like the one for 9, but now the powers of 10 are alternately one more and one less than a multiple of 11: $10 = 11 - 1$, $100 = 99 + 1$, $1000 = 1001 - 1$, $10\,000 = 9999 + 1$, and so on. You'll prove it yourself in problem 19.

---

## 4. Primes and prime factorisation

A **prime** (*priemgetal*) is a whole number greater than 1 whose only positive divisors are 1 and itself. The first few are

$$
2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, \dots
$$

A whole number greater than 1 that is not prime is **composite** (*samengesteld*). The number **1 is not prime**. That is not just fussiness: if 1 were prime, the factorisation theorem below would fail, because $6 = 2\cdot 3 = 1 \cdot 2\cdot 3 = 1\cdot 1\cdot 2\cdot 3$ would all be different "prime factorisations".

### The sieve of Eratosthenes

To find all primes up to 100: write the numbers 2 to 100. Circle 2 and cross out all its other multiples. The next number not crossed out (3) is prime: circle it and cross out its multiples. Continue with 5 and 7. Now you can stop: **every number left is prime.**

Why can you stop at 7? Suppose $n \le 100$ is composite, say $n = a \cdot b$ with $1 < a \le b$. Then $a \cdot a \le a \cdot b = n \le 100$, so $a \le 10$. So every composite number up to 100 has a factor of at most 10, and therefore a **prime** factor of at most 10 (a factor's own prime factors are smaller): 2, 3, 5 or 7. It's already crossed out.

The general lesson is useful: **to test whether $n$ is prime, you only need to try primes up to $\sqrt{n}$.** For example, to check that 97 is prime, try 2, 3, 5, 7 (since $11^2 = 121 > 97$). None divides 97, so 97 is prime.

### Every number is a product of primes

**Theorem.** Every whole number greater than 1 can be written as a product of primes.

*Proof idea.* Take $n > 1$. If $n$ is prime, we're done. If not, $n = a\cdot b$ with $a$ and $b$ both smaller than $n$ and bigger than 1. Now split $a$ and $b$ the same way, if they are not prime. The numbers keep getting smaller, and whole numbers can't keep getting smaller for ever, so the process stops, and when it stops all the pieces are prime. $\square$

Use a **factor tree** or **repeated division**:

$$
\begin{array}{r|l}
360 & 2 \\
180 & 2 \\
90 & 2 \\
45 & 3 \\
15 & 3 \\
5 & 5 \\
1 &
\end{array}
\qquad\Rightarrow\qquad 360 = 2^3 \cdot 3^2 \cdot 5.
$$

The **Fundamental Theorem of Arithmetic** (*hoofdstelling van de rekenkunde*) says more: the factorisation is **unique**, apart from the order of the factors. However you split 360, you always end up with three 2s, two 3s and one 5. That uniqueness is surprisingly hard to prove, and you'll see a proof later in the track. For now, notice that it is *not* obvious. (In some number systems other than the integers it is false.)

### Counting divisors

The factorisation tells you exactly what the divisors are. A divisor of $360 = 2^3\cdot 3^2\cdot 5$ must be built from the same primes, with no more of each: it looks like $2^a \cdot 3^b \cdot 5^c$ with

$$
a \in \lbrace 0,1,2,3\rbrace,\quad b \in \lbrace 0,1,2\rbrace,\quad c \in \lbrace 0,1\rbrace.
$$

That is $4 \cdot 3 \cdot 2 = 24$ choices, so 360 has **24 divisors**. In general:

$$
n = p_1^{e_1} p_2^{e_2} \cdots p_k^{e_k} \quad\Longrightarrow\quad \text{number of divisors} = (e_1 + 1)(e_2 + 1)\cdots(e_k + 1).
$$

---

## 5. gcd and lcm

The **greatest common divisor** (*grootste gemene deler*, ggd) of $a$ and $b$, written $\gcd(a, b)$, is the largest number dividing both. The **least common multiple** (*kleinste gemene veelvoud*, kgv), $\mathrm{lcm}(a, b)$, is the smallest positive number that both divide.

**From prime factorisations.** Write both numbers with the same primes (use exponent 0 where needed):

$$
84 = 2^2 \cdot 3^1 \cdot 5^0 \cdot 7^1, \qquad 120 = 2^3 \cdot 3^1 \cdot 5^1 \cdot 7^0.
$$

- For the gcd, take each prime to the **smaller** exponent: $2^2 \cdot 3 = 12$.
- For the lcm, take each prime to the **larger** exponent: $2^3\cdot 3\cdot 5\cdot 7 = 840$.

Check: $12 \cdot 840 = 10\,080 = 84 \cdot 120$. That's no coincidence. For each prime, the smaller exponent plus the larger exponent is the sum of the two exponents. So

$$
\gcd(a,b)\cdot \mathrm{lcm}(a,b) = a\cdot b.
$$

Two numbers with $\gcd(a, b) = 1$ are called **coprime** (*relatief priem*, *onderling ondeelbaar*). For coprime numbers, $\mathrm{lcm}(a, b) = ab$. That's why "divisible by 2 and by 3" means "divisible by 6", but "divisible by 4 and by 6" only means "divisible by 12".

### Which one does a word problem need?

- **Splitting things into equal largest pieces**, tiling with the biggest square: **gcd**.
- **Events that repeat**, finding when things happen together again: **lcm**.

**Worked example.** One lighthouse flashes every 12 seconds, another every 18 seconds. They flash together at midnight. When do they next flash together? We need a number of seconds that is a multiple of both 12 and 18: the smallest is $\mathrm{lcm}(12, 18) = 36$. So at 36 seconds past midnight.

---

## 6. Euclid's algorithm

Factorising big numbers is slow. Try finding $\gcd(1071, 462)$ by factorising. Euclid (around 300 BC) found a much faster way, and it is one of the oldest algorithms still in use: your phone uses it when it encrypts messages.

**Key idea.** If $a = q\cdot b + r$ (divide $a$ by $b$, quotient $q$, remainder $r$), then

$$
\gcd(a, b) = \gcd(b, r).
$$

*Proof.* We show $a, b$ and $b, r$ have exactly the same common divisors; then their greatest common divisors are equal.

- If $d \mid a$ and $d \mid b$, then $d \mid q b$ and so $d \mid a - qb = r$ (Fact 1 and Fact 2). So $d$ divides $b$ and $r$.
- If $d \mid b$ and $d \mid r$, then $d \mid qb + r = a$. So $d$ divides $a$ and $b$. $\square$

So replace the pair $(a, b)$ by the smaller pair $(b, r)$, and repeat until the remainder is 0. The last non-zero remainder is the gcd.

**Worked example.** $\gcd(1071, 462)$:

$$
\begin{aligned}
1071 &= 2\cdot 462 + 147 \\
462 &= 3\cdot 147 + 21 \\
147 &= 7\cdot 21 + 0
\end{aligned}
$$

So $\gcd(1071, 462) = \gcd(462, 147) = \gcd(147, 21) = \gcd(21, 0) = 21$. Three divisions!

Why must it stop? Each remainder is smaller than the number you divided by, so the remainders form a decreasing list of non-negative whole numbers, and such a list can't go on for ever.

> **Going further: Bézout's identity.** Run Euclid's algorithm backwards:
> $21 = 462 - 3\cdot 147 = 462 - 3\cdot(1071 - 2\cdot 462) = 7\cdot 462 - 3\cdot 1071.$
> So $21 = 7 \cdot 462 + (-3)\cdot 1071$. In general, $\gcd(a, b)$ can always be written as $ax + by$ for some integers $x$ and $y$. This fact (*Bézout's identity*) is the key to proving that prime factorisation is unique. Try problem 27.

---

## 7. There are infinitely many primes

The primes get rarer as numbers grow: there are 25 below 100 but only 21 between 100 and 200, and long gaps appear (there are no primes between 114 and 126). Could they eventually stop? Euclid answered this around 300 BC, in Book IX of his *Elements*.

**Theorem.** There are infinitely many primes.

*Proof.* Suppose you give me any finite list of primes, $p_1, p_2, \dots, p_k$. I will find a prime that is **not** on your list. Consider

$$
N = p_1 \cdot p_2 \cdots p_k + 1.
$$

$N$ is bigger than 1, so it has at least one prime factor $q$ (§4). Could $q$ be one of $p_1, \dots, p_k$? If it were, then $q$ would divide the product $p_1 p_2 \cdots p_k$ and also divide $N$, so by Fact 1 it would divide their difference, which is $1$. No prime divides 1. So $q$ is a prime **not on the list**.

So no finite list contains all the primes: there are infinitely many. $\square$

Take a moment with this. We never found "the next prime" explicitly, and we didn't need to. We showed that *every* finite list is incomplete.

> **Common mistake.** People sometimes say "$N$ itself is prime". It needn't be! Take the list $2, 3, 5, 7, 11, 13$: then $N = 30\,031 = 59 \cdot 509$, not prime. But its prime factors 59 and 509 are not on the list, which is all the proof needs.

> **Going further.** Similar ideas show there are infinitely many primes of the form $4k + 3$ (problem 20). Infinitely many of the form $4k+1$ is also true but harder. A famous theorem of Dirichlet (1837) says every sequence $a, a + d, a + 2d, \dots$ with $\gcd(a, d) = 1$ contains infinitely many primes. And nobody knows whether there are infinitely many **twin primes** like 11 and 13, 17 and 19, 41 and 43: that's one of the great unsolved problems.

---

## 8. Writing a proof

You've now seen several proofs. Here's what they have in common, and what yours should look like.

1. **Say what you're proving.** "We prove that $n^3 - n$ is divisible by 6 for every integer $n$."
2. **Name things.** "Write $a = dk$ with $k$ an integer." Letters let you talk about *every* number at once, not just examples.
3. **Every step has a reason**, and the reason is either a definition, a fact proved earlier, or simple algebra.
4. **Use full sentences.** A proof is an argument written for a reader, not a list of equations.
5. **Examples are not proofs.** Checking $n = 1, 2, 3, \dots, 100$ shows a statement is *probably* true; it doesn't prove it for $n = 101$. (But examples are the best way to *find* a proof, and one counterexample is enough to *disprove* a statement.)
6. **End clearly.** Mathematicians often finish with $\square$ or "QED" (*quod erat demonstrandum*, "which was to be shown").

A good test: read your proof aloud to a parent. If they stop and say "why?", that line needs a reason.
