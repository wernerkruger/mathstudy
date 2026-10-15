[← Back to O5 Algebra and inequalities](README.md)

# O5 Solutions: algebra and inequalities

Read a solution only after a serious attempt. Final answers are in bold. For proof problems, compare the *structure* of your proof with the one here: did you prove every step, state the equality case, and (for functional equations) check the answer?

---

## Level 1

### Problem 1

Cube both sides: $\left(x+\frac1x\right)^3=x^3+\frac1{x^3}+3\left(x+\frac1x\right)$. So $27=x^3+\frac1{x^3}+9$ and $x^3+\frac1{x^3}=18$. (Such an $x$ exists: $x=\frac{3\pm\sqrt5}{2}$.) Answer: **(B) 18**.

### Problem 2

Put $a=2026$, $b=-2025$, $c=-1$. Then $a+b+c=0$, so $a^3+b^3+c^3=3abc$:

$$
2026^3-2025^3-1=3\cdot2026\cdot(-2025)\cdot(-1)=3\cdot2025\cdot2026.
$$

So the fraction equals $3$. Answer: **(C) 3**.

(Without the identity: $2026^3-2025^3=(2025+1)^3-2025^3=3\cdot2025^2+3\cdot2025+1$, and subtracting $1$ gives $3\cdot2025\cdot2026$.)

### Problem 3

By the remainder theorem the remainder is $P(-1)=(-1)^{2030}+2\cdot(-1)+3=1-2+3=2$. Answer: **(C) 2**.

### Problem 4

By Vieta $a+b=7$ and $ab=3$, so $a^2+b^2=(a+b)^2-2ab=49-6=43$. Answer: **(B) 43**.

### Problem 5

For each $k$,

$$
\frac{1}{\sqrt k+\sqrt{k+1}}=\frac{\sqrt{k+1}-\sqrt k}{(k+1)-k}=\sqrt{k+1}-\sqrt k.
$$

The sum from $k=1$ to $99$ telescopes to $\sqrt{100}-\sqrt1=9$. Answer: **(A) 9**.

### Problem 6

From $a_3=a_1+2d=10$ and $a_{10}=a_1+9d=31$ we get $7d=21$, so $d=3$ and $a_1=4$. Then $a_{20}=4+19\cdot3=61$ and the sum is $\frac{20(4+61)}{2}=650$. Answer: **(C) 650**.

### Problem 7

$\frac{x^2+9}{x}=x+\frac9x\ge2\sqrt{x\cdot\frac9x}=6$ by AM-GM, with equality when $x=\frac9x$, that is $x=3$. So the minimum $6$ is actually reached. Answer: **(B) 6**.

### Problem 8

With $x=2$: $f(2)+2f\!\left(\frac12\right)=6$. With $x=\frac12$: $f\!\left(\frac12\right)+2f(2)=\frac32$. Multiply the second equation by $2$ and subtract the first: $3f(2)=3-6=-3$, so $f(2)=-1$. (A function with this property exists: solving the same system for general $x$ gives $f(x)=\frac2x-x$, and indeed $\frac2x-x+2\left(2x-\frac1x\right)=3x$.) Answer: **(A) $-1$**.

---

## Level 2

### Problem 9

By Sophie Germain (with $b=1$), or by completing the square,

$$
n^4+4=(n^2+2)^2-(2n)^2=(n^2-2n+2)(n^2+2n+2).
$$

For $n=1$ we get $5$, which is prime. For $n\ge2$ the smaller factor is $n^2-2n+2=(n-1)^2+1\ge2$, and the larger factor is bigger still, so $n^4+4$ is a product of two integers that are both at least $2$, hence not prime. Answer: **$n=1$ only**.

### Problem 10

Let $e_1=a+b+c=6$, $e_2=ab+bc+ca$, $e_3=abc$.

From $a^2+b^2+c^2=e_1^2-2e_2$: $14=36-2e_2$, so $e_2=11$.

The three-cube identity gives $a^3+b^3+c^3-3abc=e_1\big((a^2+b^2+c^2)-e_2\big)$, so $36-3e_3=6\cdot(14-11)=18$, and $e_3=6$.

For the fourth powers use Newton's sums, $p_4=e_1p_3-e_2p_2+e_3p_1$:

$$
p_4=6\cdot36-11\cdot14+6\cdot6=216-154+36=98.
$$

Answer: **$abc=6$ and $a^4+b^4+c^4=98$**.

Check: $a,b,c$ are the roots of $x^3-6x^2+11x-6=(x-1)(x-2)(x-3)$, so $\{a,b,c\}=\{1,2,3\}$, and indeed $1+16+81=98$. (This also shows that real numbers with the given properties exist.)

### Problem 11

Suppose the roots $r,s$ are integers. By Vieta $r+s=-a$ and $rs=2a=-2(r+s)$. So $rs+2r+2s=0$, and adding $4$:

$$
(r+2)(s+2)=4.
$$

The integer factorisations of $4$ (up to order) are $1\cdot4$, $2\cdot2$, $(-1)\cdot(-4)$ and $(-2)\cdot(-2)$. They give

| $\{r,s\}$ | $a=-(r+s)$ | equation |
|---|---|---|
| $\{-1,2\}$ | $-1$ | $x^2-x-2=(x+1)(x-2)$ |
| $\{0,0\}$ | $0$ | $x^2=0$ |
| $\{-3,-6\}$ | $9$ | $x^2+9x+18=(x+3)(x+6)$ |
| $\{-4,-4\}$ | $8$ | $x^2+8x+16=(x+4)^2$ |

The last column checks that each value of $a$ really works. Answer: **$a\in\{-1,0,8,9\}$**.

### Problem 12

Division by a polynomial of degree $2$ leaves a remainder of degree at most $1$: $P(x)=(x-1)(x-2)Q(x)+ax+b$. By the remainder theorem $P(1)=3$ and $P(2)=5$, so $a+b=3$ and $2a+b=5$. Hence $a=2$, $b=1$. Answer: **$2x+1$**. (For example $P(x)=2x+1$ itself satisfies the conditions, so the situation is possible.)

### Problem 13

**(a)** Let $b_n=a_n-1$. Then $b_{n+1}=a_n^2-2a_n+1=(a_n-1)^2=b_n^2$, and $b_1=2$. By induction $b_n=2^{2^{n-1}}$: true for $n=1$, and if $b_n=2^{2^{n-1}}$ then $b_{n+1}=2^{2\cdot2^{n-1}}=2^{2^n}$. So **$a_n=2^{2^{n-1}}+1$**. (These are the Fermat numbers $3,5,17,257,\dots$)

**(b)** Induction on $n$. For $n=1$: $a_1=3=5-2=a_2-2$. Suppose $a_1\cdots a_n=a_{n+1}-2$. Then

$$
a_{n+2}-2=a_{n+1}^2-2a_{n+1}=a_{n+1}(a_{n+1}-2)=a_{n+1}\cdot a_1\cdots a_n,
$$

which is the statement for $n+1$. $\square$

**(c)** Let $m<n$ and let $d$ be a positive common divisor of $a_m$ and $a_n$. By (b), $a_n-2=a_1\cdots a_{n-1}$ is a multiple of $a_m$, so $d\mid a_n-2$. Together with $d\mid a_n$ this gives $d\mid2$. But $a_n$ is odd by (a), so $d=1$. Hence $\gcd(a_m,a_n)=1$. $\square$

### Problem 14

Since

$$
\frac{1}{k(k+1)}-\frac{1}{(k+1)(k+2)}=\frac{(k+2)-k}{k(k+1)(k+2)}=\frac{2}{k(k+1)(k+2)},
$$

each term is $\frac12\left(\frac{1}{k(k+1)}-\frac{1}{(k+1)(k+2)}\right)$, and the sum telescopes:

$$
\sum_{k=1}^{n}\frac{1}{k(k+1)(k+2)}=\frac12\left(\frac12-\frac{1}{(n+1)(n+2)}\right)=\frac{(n+1)(n+2)-2}{4(n+1)(n+2)}.
$$

Since $(n+1)(n+2)-2=n^2+3n$, the answer is $\mathbf{\dfrac{n(n+3)}{4(n+1)(n+2)}}$. Check for $n=1$: $\frac{4}{24}=\frac16$. Correct.

### Problem 15

By AM-GM, $a+b\ge2\sqrt{ab}$, $b+c\ge2\sqrt{bc}$ and $c+a\ge2\sqrt{ca}$. All six sides are positive, so we may multiply:

$$
(a+b)(b+c)(c+a)\ge8\sqrt{a^2b^2c^2}=8abc.
$$

Equality in a product of inequalities between positive numbers holds only if each of them is an equality, that is $a=b$, $b=c$ and $c=a$. So **equality holds if and only if $a=b=c$**. $\square$

### Problem 16

By the Engel form of Cauchy–Schwarz,

$$
\frac{1^2}{x}+\frac{2^2}{y}+\frac{3^2}{z}\ge\frac{(1+2+3)^2}{x+y+z}=\frac{36}{1}=36.
$$

Equality holds if and only if $\frac1x=\frac2y=\frac3z$, so $y=2x$ and $z=3x$. With $x+y+z=1$ this gives $6x=1$. **Equality holds only for $(x,y,z)=\left(\frac16,\frac13,\frac12\right)$**, and indeed $6+12+18=36$. $\square$

### Problem 17

Write each fraction as $\frac{a^2}{a(b+c)}$ and apply the Engel form:

$$
\frac{a^2}{a(b+c)}+\frac{b^2}{b(c+a)}+\frac{c^2}{c(a+b)}\ge\frac{(a+b+c)^2}{2(ab+bc+ca)}.
$$

Now $(a+b+c)^2=a^2+b^2+c^2+2(ab+bc+ca)\ge3(ab+bc+ca)$, because $a^2+b^2+c^2\ge ab+bc+ca$ (sum of the three inequalities $\frac12(a-b)^2\ge0$ and so on). Hence the right side is at least $\frac{3(ab+bc+ca)}{2(ab+bc+ca)}=\frac32$. $\square$

*Equality.* The second step needs $a=b=c$. Conversely, if $a=b=c$ every fraction equals $\frac12$ and the sum is $\frac32$. So **equality holds if and only if $a=b=c$**.

### Problem 18

By AM-GM on the three numbers $a^3,a^3,b^3$:

$$
\frac{a^3+a^3+b^3}{3}\ge\sqrt[3]{a^6b^3}=a^2b.
$$

In the same way $\frac{2b^3+c^3}{3}\ge b^2c$ and $\frac{2c^3+a^3}{3}\ge c^2a$. Adding the three gives $a^3+b^3+c^3\ge a^2b+b^2c+c^2a$. $\square$

*Equality* needs equality in all three AM-GM steps: $a=b$, $b=c$, $c=a$. So **equality holds if and only if $a=b=c$**.

*Alternative (rearrangement).* The triples $(a^2,b^2,c^2)$ and $(a,b,c)$ are ordered the same way, so $a^2\cdot a+b^2\cdot b+c^2\cdot c$ is the largest of all sums $a^2\cdot u+b^2\cdot v+c^2\cdot w$ where $(u,v,w)$ is a permutation of $(a,b,c)$. Taking $(u,v,w)=(b,c,a)$ gives the inequality. (The equality case is easier to read off from the AM-GM proof.)

### Problem 19

By Cauchy–Schwarz,

$$
(x^2+y^2)(3^2+4^2)\ge(3x+4y)^2=100,
$$

so $x^2+y^2\ge4$. Equality holds if and only if $(x,y)=t(3,4)$ for some $t$; then $9t+16t=10$, so $t=\frac25$ and $(x,y)=\left(\frac65,\frac85\right)$. Check: $\frac{36+64}{25}=4$. Answer: **minimum $4$, reached only at $(x,y)=\left(\frac65,\frac85\right)$**.

(Geometrically: $x^2+y^2$ is the squared distance from the origin to a point on the line $3x+4y=10$, and that distance is at least $\frac{10}{5}=2$.)

### Problem 20

Suppose $f$ is a solution. Replacing $x$ by $1-x$ gives a second equation. For each fixed $x$ we have

$$
\begin{aligned}
f(x)+2f(1-x)&=x^2,\\
2f(x)+f(1-x)&=(1-x)^2.
\end{aligned}
$$

Subtract the first from twice the second: $3f(x)=2(1-x)^2-x^2=x^2-4x+2$. So the only candidate is

$$
f(x)=\frac{x^2-4x+2}{3}.
$$

*Check:* $f(1-x)=\frac{(1-x)^2-4(1-x)+2}{3}=\frac{x^2+2x-1}{3}$, so $f(x)+2f(1-x)=\frac{x^2-4x+2+2x^2+4x-2}{3}=x^2$. Correct. Answer: **$f(x)=\dfrac{x^2-4x+2}{3}$**.

### Problem 21

Put $x=y=0$: $f(0)^2-f(0)=0$, so $f(0)=0$ or $f(0)=1$.

Put $y=0$: $f(x)f(0)-f(0)=x$ for all $x$.

- If $f(0)=0$, this says $0=x$ for all $x$, which is false (take $x=1$).
- So $f(0)=1$, and then $f(x)-1=x$, that is $f(x)=x+1$.

*Check:* $(x+1)(y+1)-(xy+1)=x+y$. Correct. Answer: **$f(x)=x+1$**.

---

## Level 3

### Problem 22

Let $s=a+b+c$ and $q=ab+bc+ca$. Then $a^2+b^2+c^2=s^2-2q$, and the three-cube identity gives

$$
n=a^3+b^3+c^3-3abc=s\,(a^2+b^2+c^2-q)=s\,(s^2-3q).
$$

*Necessity.* Suppose $3\mid n$. If $3\nmid s$, then $3\nmid s^2$, so $3\nmid s^2-3q$ and $3\nmid n$, a contradiction. So $3\mid s$. Then also $3\mid s^2-3q$, so $9\mid n$. Hence no $n$ with $n\equiv3$ or $n\equiv6\pmod9$ can be written in this form.

*Sufficiency.* For every integer $k$ (these identities can be checked by expanding, or with the formula $n=s(s^2-3q)$):

$$
\begin{aligned}
(a,b,c)=(k,k,k+1):&\quad s=3k+1,\ s^2-3q=1,\ n=3k+1,\\
(a,b,c)=(k,k+1,k+1):&\quad s=3k+2,\ s^2-3q=1,\ n=3k+2,\\
(a,b,c)=(k-1,k,k+1):&\quad s=3k,\ s^2-3q=3,\ n=9k.
\end{aligned}
$$

(For the first: $q=k^2+2k(k+1)=3k^2+2k$, and $s^2-3q=9k^2+6k+1-9k^2-6k=1$. The others are similar.) So every $n\equiv1,2\pmod3$ and every multiple of $9$ is reachable.

Answer: **exactly the integers $n$ with $n\not\equiv3$ and $n\not\equiv6\pmod 9$**, that is, the integers that are not divisible by $3$ together with the multiples of $9$.

### Problem 23

*Method 1 (new polynomial).* Note that $1$ is not a root ($1-1-1=-1\neq0$), so all fractions are defined. For a root $x$, let $y=\frac{1+x}{1-x}$. Then $y\neq-1$ (otherwise $1+x=x-1$) and $x=\frac{y-1}{y+1}$. Substituting into $x^3-x-1=0$ and multiplying by $(y+1)^3$:

$$
(y-1)^3-(y-1)(y+1)^2-(y+1)^3=0.
$$

Expanding: $(y^3-3y^2+3y-1)-(y^3+y^2-y-1)-(y^3+3y^2+3y+1)=-y^3-7y^2+y-1$. So each $y$ satisfies

$$
y^3+7y^2-y+1=0.
$$

The three roots $a,b,c$ are distinct (the discriminant of $x^3-x-1$ is $-4\cdot(-1)^3-27\cdot1^2=-23\neq0$), and the map $x\mapsto\frac{1+x}{1-x}$ is injective, so the three values of $y$ are distinct and are exactly the three roots of this cubic. By Vieta their sum is $-7$.

*Method 2 (logarithmic derivative).* Since $\frac{1+x}{1-x}=-1+\frac{2}{1-x}$, the sum is $-3+2\sum\frac1{1-a}$. For $P(x)=(x-a)(x-b)(x-c)$ we have $\frac{P'(x)}{P(x)}=\frac1{x-a}+\frac1{x-b}+\frac1{x-c}$, so $\sum\frac1{1-a}=\frac{P'(1)}{P(1)}=\frac{3-1}{-1}=-2$. The sum is $-3-4=-7$.

Answer: **$-7$**.

### Problem 24

By AM-GM, $a+b+c\ge3\sqrt[3]{abc}=3$. By QM-AM (or Cauchy–Schwarz), $a^2+b^2+c^2\ge\frac{(a+b+c)^2}{3}$. Therefore

$$
a^2+b^2+c^2\ge(a+b+c)\cdot\frac{a+b+c}{3}\ge(a+b+c)\cdot1=a+b+c.
$$

$\square$

*Equality.* The QM-AM step needs $a=b=c$, and with $abc=1$ this means $a=b=c=1$. Conversely $a=b=c=1$ gives $3=3$. So **equality holds if and only if $a=b=c=1$**.

Note the idea: the inequality is not homogeneous (degree $2$ against degree $1$), and the condition $abc=1$ supplies the missing factor $\frac{a+b+c}{3}\ge1$.

### Problem 25

Let $f(x)=\frac{x}{1+x^2}$. Equality should hold at $a=b=c=\frac13$, where $f\!\left(\frac13\right)=\frac{1/3}{10/9}=\frac3{10}$. The derivative is $f'(x)=\frac{1-x^2}{(1+x^2)^2}$, so $f'\!\left(\frac13\right)=\frac{8/9}{100/81}=\frac{18}{25}$, and the tangent line at $x=\frac13$ is

$$
\ell(x)=\frac{3}{10}+\frac{18}{25}\left(x-\frac13\right)=\frac{36x+3}{50}.
$$

*Claim:* $f(x)\le\ell(x)$ for all $x>0$. Since $1+x^2>0$, the claim is equivalent to $50x\le(36x+3)(1+x^2)$, that is

$$
36x^3+3x^2-14x+3\ge0.
$$

The left side factors as $(3x-1)^2(4x+3)$ (expand to check: $(9x^2-6x+1)(4x+3)=36x^3+3x^2-14x+3$). For $x>0$ both factors are nonnegative, so the claim holds, with equality only at $x=\frac13$.

Adding the claim for $a$, $b$ and $c$:

$$
\sum\frac{a}{1+a^2}\le\frac{36(a+b+c)+9}{50}=\frac{45}{50}=\frac9{10}.
$$

$\square$ **Equality holds if and only if $a=b=c=\frac13$.**

### Problem 26

Substitute $x=\frac1a$, $y=\frac1b$, $z=\frac1c$; these are positive and $xyz=1$. Then

$$
\frac{1}{a^3(b+c)}=\frac{x^3}{\frac1y+\frac1z}=\frac{x^3yz}{y+z}=\frac{x^2\cdot xyz}{y+z}=\frac{x^2}{y+z},
$$

and similarly for the other terms. By the Engel form and then AM-GM,

$$
\frac{x^2}{y+z}+\frac{y^2}{z+x}+\frac{z^2}{x+y}\ge\frac{(x+y+z)^2}{2(x+y+z)}=\frac{x+y+z}{2}\ge\frac{3\sqrt[3]{xyz}}{2}=\frac32.
$$

$\square$

*Equality.* The AM-GM step needs $x=y=z$, so $x=y=z=1$; then each term is $\frac12$. So **equality holds if and only if $a=b=c=1$**. (This is a classic IMO problem from 1995, restated.)

### Problem 27

By induction all $a_n$ are positive. Squaring the recurrence,

$$
a_{k+1}^2=a_k^2+2+\frac1{a_k^2}.
$$

Adding this for $k=1,\dots,n-1$ gives

$$
a_n^2=1+2(n-1)+\sum_{k=1}^{n-1}\frac1{a_k^2}=2n-1+\sum_{k=1}^{n-1}\frac1{a_k^2}.
$$

In particular $a_n^2\ge2n-1$ for every $n\ge1$.

*Lower bound.* $a_{100}^2=199+S$ with $S=\sum_{k=1}^{99}\frac1{a_k^2}>0$. So $a_{100}^2>199>196$, and since $a_{100}>0$, $a_{100}>14$.

*Upper bound.* Using $a_k^2\ge2k-1\ge k$, we get $S\le\sum_{k=1}^{99}\frac1k$. Split $1,2,\dots,127$ into the seven blocks $[2^j,2^{j+1}-1]$ for $j=0,1,\dots,6$. Block $j$ has $2^j$ terms, each at most $\frac1{2^j}$, so its sum is at most $1$, and for $j\ge1$ it is strictly less than $1$. Hence

$$
S\le\sum_{k=1}^{99}\frac1k\le\sum_{k=1}^{127}\frac1k<7,
$$

so $a_{100}^2<199+7=206<225$ and $a_{100}<15$. $\square$

(Numerically $a_{100}\approx14.21$.)

### Problem 28

**Answer: $P=0$ and $P(x)=x^n$ for $n=0,1,2,\dots$** (so $n=0$ gives the constant $1$).

*Check:* $0=0^2$, and $(x^2)^n=(x^n)^2$.

*These are the only ones.* Let $P\neq0$. Two polynomials that agree for all real $x$ have the same coefficients, so we compare coefficients.

*Case 1: $P$ has one nonzero term,* $P(x)=cx^n$ with $c\neq0$. Then $cx^{2n}=c^2x^{2n}$, so $c=c^2$ and $c=1$.

*Case 2: $P$ has at least two nonzero terms.* Let $n=\deg P$ with leading coefficient $c_n\neq0$, and let $k<n$ be the largest index below $n$ with $c_k\neq0$. So $P(x)=c_nx^n+c_kx^k+R(x)$ with $\deg R<k$ (or $R=0$). Then

$$
P(x)^2=c_n^2x^{2n}+2c_nc_kx^{n+k}+\big(\text{terms of degree}<n+k\big),
$$

because the remaining products $c_k^2x^{2k}$, $2c_nx^nR(x)$, $2c_kx^kR(x)$ and $R(x)^2$ all have degree less than $n+k$. So the coefficient of $x^{n+k}$ in $P(x)^2$ is $2c_nc_k\neq0$.

On the other side, $P(x^2)=\sum_j c_jx^{2j}$. If $n+k$ is odd, $x^{n+k}$ does not appear at all. If $n+k$ is even, its coefficient is $c_{(n+k)/2}$, and $k<\frac{n+k}{2}<n$, so this coefficient is $0$ by the choice of $k$. In both cases the coefficients of $x^{n+k}$ differ, a contradiction. So Case 2 is impossible. $\square$

### Problem 29

Let $g(x)=f(x)-\frac{x^2}{2}$, a function $\mathbb{Q}\to\mathbb{Q}$. Then

$$
g(x+y)=f(x)+f(y)+xy-\frac{x^2+2xy+y^2}{2}=g(x)+g(y),
$$

so $g$ satisfies Cauchy's equation on $\mathbb{Q}$.

*Cauchy over $\mathbb{Q}$* (proof from the notes): $x=y=0$ gives $g(0)=0$; induction gives $g(mx)=mg(x)$ for positive integers $m$; $g(x)+g(-x)=g(0)=0$ extends this to all integers $m$; and for $x=\frac mn$ with $n>0$, $ng\!\left(\frac mn\right)=g(m)=mg(1)$. So $g(x)=cx$ with $c=g(1)=f(1)-\frac12$, which is rational because $f(1)$ is.

So $f(x)=\frac{x^2}{2}+cx$ for some rational $c$.

*Check:* for any rational $c$, $f$ maps $\mathbb{Q}$ to $\mathbb{Q}$, and

$$
f(x+y)=\frac{(x+y)^2}{2}+c(x+y)=\left(\frac{x^2}{2}+cx\right)+\left(\frac{y^2}{2}+cy\right)+xy=f(x)+f(y)+xy.
$$

Answer: **$f(x)=\dfrac{x^2}{2}+cx$, where $c$ is any rational number**.

### Problem 30

**Answer: $f(x)=x$.**

*Check:* $x^2+y=y+x^2$. Correct.

*Uniqueness.* Write $c=f(0)$.

**Step 1: $f$ is bijective.** Put $x=0$: $f(f(y))=y+c^2$ for all $y$. If $f(y_1)=f(y_2)$, then $y_1+c^2=f(f(y_1))=f(f(y_2))=y_2+c^2$, so $y_1=y_2$: $f$ is injective. For any real $t$, $f\big(f(t-c^2)\big)=t$: $f$ is surjective.

**Step 2: $f(0)=0$.** Comparing the equation for $x$ and for $-x$ (same left side, since $x^2=(-x)^2$) gives $f(x)^2=f(-x)^2$ for all $x$. By surjectivity there is an $a$ with $f(a)=0$. Then $f(-a)^2=f(a)^2=0$, so $f(-a)=0=f(a)$, and by injectivity $-a=a$, so $a=0$. Thus $f(0)=0$ and $c=0$.

**Step 3: two consequences.** Now Step 1 reads $f(f(y))=y$. Putting $y=0$ in the equation gives $f(x^2)=f(x)^2$. Hence for every $t\ge0$, $f(t)=f(\sqrt t)^2\ge0$.

**Step 4: $f$ is non-decreasing.** For $t\ge0$ put $x=\sqrt t$: $f(t+f(y))=y+f(\sqrt t)^2=y+f(t)$. Now put $y=f(z)$ and use $f(f(z))=z$:

$$
f(t+z)=f(z)+f(t)\qquad\text{for all } t\ge0 \text{ and all real } z.
$$

If $u\ge v$, take $t=u-v\ge0$ and $z=v$: $f(u)=f(v)+f(u-v)\ge f(v)$.

**Step 5: $f(x)=x$.** Suppose $f(x)>x$ for some $x$. Since $f$ is non-decreasing, $f(f(x))\ge f(x)>x$, but $f(f(x))=x$. Contradiction. If $f(x)<x$, then $f(f(x))\le f(x)<x$, again a contradiction. So $f(x)=x$ for all $x$. $\square$

(Notice that we never needed to solve Cauchy's equation over $\mathbb{R}$: monotonicity together with $f(f(x))=x$ finished the problem directly.)
