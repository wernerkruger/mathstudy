# C2 Notes: exponential and logarithmic functions

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

Exponential functions describe anything that grows or shrinks by the same *factor* in equal time steps: bacteria, money with interest, radioactive material, the cooling of tea. Logarithms answer the reverse question: *how long* until a given amount is reached? Together they also explain why scales like decibels and pH work the way they do.

**Notation.** Dutch books write the logarithm with base $g$ as ${}^g\!\log x$ (*grondtal* $g$). English books write $\log_g x$. Both mean the same. On the calculator, $\log$ is ${}^{10}\!\log$ and $\ln$ is ${}^{e}\!\log$.

---

## 1. Exponential functions

An **exponential function** has the form
$$
f(x) = b\cdot g^x, \qquad g>0,\ g\neq1 .
$$
- $b=f(0)$ is the **initial value** (*beginwaarde*).
- $g$ is the **growth factor** (*groeifactor*): each time $x$ increases by 1, $f$ is multiplied by $g$, because $f(x+1) = b g^{x+1} = g\cdot f(x)$.
- $g>1$: exponential growth; $0<g<1$: exponential decay.
- Domain $\mathbb R$; for $b>0$ the range is $(0,\infty)$; the $x$-axis is a horizontal asymptote.

Growth of $p\%$ per step means $g = 1 + \frac{p}{100}$; a decrease of $p\%$ means $g = 1-\frac p{100}$.

### Why exponential and not linear?

A linear function adds the same *amount* each step: $f(x+1)-f(x)$ is constant. An exponential function multiplies by the same *factor*: $\frac{f(x+1)}{f(x)}$ is constant. To decide which model fits a table, check differences and ratios.

### Changing the time unit

If the growth factor per year is $g$, then over $n$ years it is $g^n$ and per month it is $g^{1/12}$, since twelve months multiplied together must give $g$: $(g^{1/12})^{12}=g$.

**Example 1.** A population grows by 4% per year. Growth factor per decade: $1.04^{10}\approx1.480$ (48% per decade, not 40%). Growth factor per month: $1.04^{1/12}\approx1.00327$ (about 0.327% per month, not 0.333%).

### Transformations

$f(x)= 2\cdot3^{x-1}-6$ is $3^x$ translated $1$ right, stretched by 2 from the $x$-axis, translated $6$ down. So the horizontal asymptote is $y=-6$ and the range is $(-6,\infty)$. Note that $3^{x-1} = \tfrac13\cdot3^x$: a horizontal translation of an exponential is the same as a vertical stretch. That is special to exponentials.

---

## 2. Definition of the logarithm

$2^x=8$ has the solution $x=3$. But what about $2^x=5$? The function $x\mapsto 2^x$ is increasing and takes every positive value exactly once, so it has an inverse function. That inverse is the logarithm.

> **Definition.** For $g>0$, $g\neq1$ and $x>0$:
> $$ {}^g\!\log x = y \iff g^y = x .$$
> In words: ${}^g\!\log x$ is *the exponent you must put on $g$ to get $x$*.

Consequences, straight from the definition:
$$
g^{\,{}^g\!\log x} = x \ (x>0), \qquad {}^g\!\log (g^y) = y, \qquad {}^g\!\log 1 = 0,\qquad {}^g\!\log g = 1 .
$$

**Example 2.**
- ${}^2\!\log 32 = 5$ because $2^5=32$.
- ${}^3\!\log\frac19 = -2$ because $3^{-2}=\frac19$.
- ${}^4\!\log 8 = \frac32$ because $4^{3/2} = (\sqrt4)^3 = 8$.
- ${}^{1/2}\!\log 8 = -3$ because $\left(\frac12\right)^{-3}=8$.

The function $f(x)={}^g\!\log x$ has domain $(0,\infty)$ and range $\mathbb R$. Its graph is the reflection of $y=g^x$ in $y=x$, so it has the $y$-axis as **vertical** asymptote and passes through $(1,0)$ and $(g,1)$. For $g>1$ it is increasing; for $0<g<1$ decreasing.

### Transformed logarithmic functions and inverses

Everything from C1 about transformations and inverses applies.

**Example 2b.** $f(x)=2+{}^3\!\log(x-1)$.
- It is $y={}^3\!\log x$ translated by $(1,2)$. The vertical asymptote moves with it: $x=1$. Domain $x>1$, range $\mathbb R$.
- Zero: ${}^3\!\log(x-1)=-2\iff x-1=3^{-2}=\frac19\iff x=1\frac19$.
- Inverse: $y=2+{}^3\!\log(x-1)\iff{}^3\!\log(x-1)=y-2\iff x-1=3^{y-2}$. So $f^{-1}(x)=1+3^{x-2}$, with horizontal asymptote $y=1$: the mirror image of the vertical asymptote $x=1$, as it should be.

**A logarithmic graph has no horizontal asymptote**, even though it rises very slowly: ${}^{10}\!\log x$ reaches $6$ only at $x=1\,000\,000$, but it does reach every value eventually, because ${}^{10}\!\log(10^N)=N$. Slow growth is not the same as levelling off.

**Why logarithms with base $g>1$ are increasing.** If $0<a<b$ and we had ${}^g\!\log a\ge{}^g\!\log b$, then raising $g$ to both sides (and $g^x$ is increasing for $g>1$) would give $a\ge b$, a contradiction. The same argument with the inequality reversed shows that for $0<g<1$ the logarithm is decreasing. This is the fact behind every inequality in §7.

> **Common mistake.** ${}^g\!\log x$ only exists for $x>0$. Every time you solve a log equation, the domain conditions must be checked at the end.

---

## 3. Rules of logarithms, with proofs

For $g>0$, $g\neq 1$, $a>0$, $b>0$ and any real $p$:

1. **Product rule:** ${}^g\!\log(ab) = {}^g\!\log a + {}^g\!\log b$
2. **Quotient rule:** ${}^g\!\log\left(\dfrac ab\right) = {}^g\!\log a - {}^g\!\log b$
3. **Power rule:** ${}^g\!\log(a^p) = p\cdot{}^g\!\log a$

Each rule is a power rule in disguise. The logarithm turns multiplication into addition because exponents add when powers are multiplied.

**Proof of 1.** Let $u={}^g\!\log a$ and $v={}^g\!\log b$. By definition $g^u=a$ and $g^v=b$. Then
$$ ab = g^u\cdot g^v = g^{u+v} ,$$
so, by the definition of the logarithm, ${}^g\!\log(ab)=u+v={}^g\!\log a+{}^g\!\log b$. $\square$

**Proof of 2.** With the same $u,v$: $\dfrac ab = \dfrac{g^u}{g^v} = g^{u-v}$, so ${}^g\!\log\frac ab = u - v$. $\square$

**Proof of 3.** With $u={}^g\!\log a$: $a^p=(g^u)^p=g^{pu}$, so ${}^g\!\log(a^p)=pu=p\cdot{}^g\!\log a$. $\square$

There is **no** rule for ${}^g\!\log(a+b)$. For example ${}^{10}\!\log(1+1) \approx 0.301$, while ${}^{10}\!\log1+{}^{10}\!\log1=0$.

**Example 3.** Write as a single logarithm: $2\log x+\log5-\tfrac12\log(25x)$ (base 10, $x>0$).
$$
=\log x^2+\log5-\log\sqrt{25x}=\log\frac{5x^2}{5\sqrt x}=\log\left(x^{3/2}\right)=\tfrac32\log x .
$$

---

## 4. Change of base

Calculators usually only have $\log$ (base 10) and $\ln$ (base $e$). To compute ${}^2\!\log5$:

> **Change of base.** For $a,g,h>0$ with $g,h\neq1$:
> $$ {}^g\!\log a = \frac{{}^h\!\log a}{{}^h\!\log g}.$$

**Proof.** Let $y = {}^g\!\log a$, so $g^y = a$. Take ${}^h\!\log$ of both sides and use the power rule: $y\cdot{}^h\!\log g = {}^h\!\log a$. Since $g\neq1$, ${}^h\!\log g\neq0$, so we may divide. $\square$

So ${}^2\!\log5=\dfrac{\log5}{\log2}\approx2.322$.

Two useful consequences:
- ${}^g\!\log a\cdot{}^a\!\log g = 1$ (take $h=a$ in the formula).
- ${}^a\!\log b\cdot{}^b\!\log c={}^a\!\log c$: the "chain" collapses, since $\dfrac{\log b}{\log a}\cdot\dfrac{\log c}{\log b} = \dfrac{\log c}{\log a}$.

---

## 5. Solving exponential and logarithmic equations

There are four standard types. In every case: aim for the form "same base on both sides" or "log of something = number".

**Type A: make the bases equal.** $2^{2x}=8^{x-1}$. Write $8=2^3$: $2^{2x}=2^{3x-3}$. Since $2^x$ is one-to-one, $2x=3x-3$, so $x=3$.

**Type B: take a logarithm.** $5^x=12$ gives $x={}^5\!\log12=\dfrac{\log12}{\log5}\approx1.544$. Exact answer: ${}^5\!\log12$.

**Type C: log equals number, use the definition.** ${}^2\!\log(x+3)=4\Rightarrow x+3=2^4=16\Rightarrow x=13$. Check: $x+3=16>0$.

**Type D: combine logs first, then use the definition.**
${}^3\!\log x+{}^3\!\log(x-8)=2$. Domain: $x>0$ and $x>8$, so $x>8$. Combine: ${}^3\!\log(x(x-8))=2$, so $x^2-8x=9$, $(x-9)(x+1)=0$, $x=9$ or $x=-1$. Only $x=9$ satisfies $x>8$.

> **Why the domain check matters.** The combined equation ${}^3\!\log(x(x-8))=2$ is defined also for $x<0$ (then both factors are negative and the product is positive). Combining logs *enlarges* the domain, so it can add false solutions. Always write the domain condition first.

**Type E: substitution.** $4^x-6\cdot2^x+8=0$. Note $4^x=(2^x)^2$. Put $u=2^x>0$: $u^2-6u+8=0$, $u=2$ or $u=4$, so $x=1$ or $x=2$.

**Example 4 (log with different bases).** ${}^2\!\log x = {}^4\!\log(x+6)$. Change base: ${}^4\!\log(x+6) = \dfrac{{}^2\!\log(x+6)}{{}^2\!\log4}=\tfrac12\,{}^2\!\log(x+6)$. So $2\,{}^2\!\log x={}^2\!\log(x+6)$, ${}^2\!\log x^2={}^2\!\log(x+6)$, $x^2=x+6$, $x=3$ or $x=-2$. Domain $x>0$: **$x=3$**.

---

## 6. The number $e$ and the natural logarithm

### Where $e$ comes from

Put €1 in a bank at 100% interest per year. Paid once a year you get €2. Paid twice a year, 50% each half year: $1.5^2=2.25$. Paid monthly: $\left(1+\frac1{12}\right)^{12}\approx2.613$. Paid $n$ times:
$$
\left(1+\frac1n\right)^n .
$$
As $n$ grows, this increases but levels off:

| $n$ | 1 | 2 | 12 | 365 | 10 000 | 1 000 000 |
|---|---|---|---|---|---|---|
| $\left(1+\frac1n\right)^n$ | 2 | 2.25 | 2.613 | 2.7146 | 2.71815 | 2.718280 |

The limit is the number
$$
e = \lim_{n\to\infty}\left(1+\frac1n\right)^n = 2.718281828\ldots
$$
It is irrational (in fact transcendental). Continuous growth at rate $r$ per year multiplies by $e^r$ per year.

There is a second reason $e$ is special, which you will see in stage D: among all exponential functions $g^x$, the function $e^x$ is the only one whose graph has slope exactly $1$ at $x=0$, and as a result its derivative is itself. That is why mathematicians prefer base $e$.

### Natural logarithm

$\ln x = {}^e\!\log x$. All rules above hold for $\ln$. Key facts: $\ln1=0$, $\ln e=1$, $e^{\ln x}=x$, $\ln(e^x)=x$.

Every exponential function can be written with base $e$: since $g = e^{\ln g}$,
$$
b\cdot g^t = b\cdot e^{t\ln g} = b\cdot e^{kt}\quad\text{with } k=\ln g .
$$
For decay ($g<1$), $k<0$. Physics and biology texts almost always use this form.

**Example 5.** Solve exactly: $e^{2x}-3e^x=4$. Put $u=e^x>0$: $u^2-3u-4=0$, $(u-4)(u+1)=0$, $u=4$ (since $u=-1<0$ is impossible). So $e^x=4$, $x=\ln4=2\ln2$.

---

## 7. Inequalities

The key fact: if $g>1$, then $g^x$ and ${}^g\!\log x$ are **increasing**, so they preserve "$<$". If $0<g<1$ they are **decreasing**, so they reverse it.

**Example 6.** $0.8^x<0.3$. Take $\log$ (base 10, increasing, so the sign stays): $x\log0.8<\log0.3$. Now $\log0.8<0$, so dividing by it **reverses** the sign: $x>\dfrac{\log0.3}{\log0.8}\approx5.40$.

Safer method that always works: solve the equation $0.8^x=0.3$ exactly ($x={}^{0.8}\!\log0.3$), then look at the graph: $0.8^x$ is decreasing, so it is below $0.3$ to the right of that point.

**Example 7.** ${}^{1/2}\!\log(x-1)\ge-2$. Domain: $x>1$. Equation: ${}^{1/2}\!\log(x-1)=-2\iff x-1=\left(\tfrac12\right)^{-2}=4\iff x=5$. The function ${}^{1/2}\!\log$ is decreasing, so the inequality holds to the *left* of $x=5$, within the domain: $1<x\le5$.

---

## 8. Half-life and doubling time

If $N(t)=b\cdot g^t$ with $g>1$, the **doubling time** $T_2$ satisfies $g^{T_2}=2$, so
$$ T_2={}^g\!\log2=\frac{\ln2}{\ln g}. $$
It does not depend on $b$ or on the starting moment: from any moment, the amount doubles in the same time. That is a defining feature of exponential growth.

For decay ($0<g<1$), the **half-life** (*halveringstijd*) $T_{1/2}$ satisfies $g^{T_{1/2}}=\frac12$, so $T_{1/2}=\dfrac{\ln\frac12}{\ln g}=\dfrac{-\ln2}{\ln g}$.

Conversely, if the half-life is $T$, the growth factor per time unit is $g=\left(\tfrac12\right)^{1/T}$, and
$$ N(t)=N_0\cdot\left(\tfrac12\right)^{t/T}. $$

**Example 8.** Iodine-131 has a half-life of 8.0 days. Growth factor per day: $0.5^{1/8}\approx0.917$. Time until only 10% is left: $\left(\frac12\right)^{t/8}=0.1\Rightarrow t=8\cdot\dfrac{\ln0.1}{\ln0.5}\approx26.6$ days.

> **Going further: the rule of 70.** For growth of $p\%$ per year with small $p$, the doubling time is about $\dfrac{70}{p}$ years. Reason: $T_2=\dfrac{\ln2}{\ln(1+p/100)}$, $\ln2\approx0.693$, and for small $h$, $\ln(1+h)\approx h$ (the graph of $\ln$ at $x=1$ has slope 1; you will prove this in stage D). So $T_2\approx\dfrac{0.693}{p/100}\approx\dfrac{70}{p}$. Check: at 3.5% the exact value is about 20.1 years; the rule gives 20.

---

## 9. Logarithmic scales

When quantities range over many powers of ten, we plot or report their logarithm.

**Decibels.** Sound level $L=10\cdot\log\dfrac{I}{I_0}$ dB, with $I_0=10^{-12}$ W/m² the hearing threshold. Doubling the intensity adds $10\log2\approx3$ dB. Ten times the intensity adds exactly $10$ dB.

**pH.** $\text{pH}=-\log[\text{H}^+]$. A drop of 1 in pH means ten times as many hydrogen ions.

**Semi-log graphs** (*enkellogaritmisch papier*). If $N=b\cdot g^t$, then
$$ \log N=\log b+t\log g ,$$
which is *linear* in $t$. So on a graph with a logarithmic vertical axis, exponential growth is a straight line, with intercept $\log b$ and slope $\log g$. This is how scientists test whether data grow exponentially.

**Example 9.** On a semi-log graph the line through the points $(0,\,2)$ and $(4,\,3.2)$ is drawn, where the vertical coordinate is $\log N$. Then $\log N=2+0.3t$, so $N=10^2\cdot(10^{0.3})^t\approx100\cdot1.995^t$. The quantity roughly doubles every unit of time (because $10^{0.3}\approx2$).

> **Going further: log-log graphs.** If both axes are logarithmic, a power function $N=c\cdot t^p$ becomes a straight line: $\log N=\log c+p\log t$, with slope $p$. Kepler's third law ($T^2\propto a^3$) shows up as a line with slope $\tfrac32$.

---

## 10. Comparing growth models

A frequent CE question asks *when one quantity overtakes another*.

**Example 10.** Town $A$ has 500 inhabitants and grows by 8% per year; town $B$ has 2000 inhabitants and grows by 2% per year. When does $A$ overtake $B$?

$$
500\cdot1.08^t=2000\cdot1.02^t\iff\left(\frac{1.08}{1.02}\right)^t=4\iff t=\frac{\ln4}{\ln\frac{1.08}{1.02}}\approx24.3 .
$$
Dividing both sides by $500\cdot1.02^t$ collected all the $t$'s into one power. Since $\frac{1.08}{1.02}>1$, the left side is increasing, so $A$ is larger for all $t>24.3$: after about 24 years and 3 months.

This also shows a general fact: **every exponential growth eventually beats every other exponential growth with a smaller factor, whatever the starting values**. And every exponential growth eventually beats every power of $t$: $1.01^t$ overtakes $t^{100}$, though only after a very long time. (Problem 23 is a small example.)

### Exponential versus logarithmic graphs

The graphs of $y=g^x$ and $y={}^g\!\log x$ are mirror images in $y=x$. For $g=2$ or $g=10$ they do not intersect: $g^x$ lies above $y=x$ everywhere, and ${}^g\!\log x$ below. But for $g$ close to 1 they do: $y=(\sqrt2)^x$ and $y={}^{\sqrt2}\!\log x$ meet at $(2,2)$ and $(4,4)$, because $(\sqrt2)^2=2$ and $(\sqrt2)^4=4$. The borderline case is $g=e^{1/e}\approx1.444$, where the two graphs just touch the line $y=x$ at $x=e$. You will be able to prove that with the derivatives of stage D.

> **Going further: what does $2^{\sqrt2}$ mean?** For rational exponents, $2^{p/q}=\sqrt[q]{2^p}$. For an irrational exponent like $\sqrt2=1.41421\ldots$, take the rational approximations $2^{1.4},2^{1.41},2^{1.414},\ldots$. They form an increasing sequence that is bounded (by $2^{1.5}$), and a theorem from real analysis (the completeness of the real numbers) says such a sequence has a limit. That limit is $2^{\sqrt2}\approx2.665$. All the power rules carry over by taking limits. This is why the graph of $2^x$ has no gaps.

---

## 11. Common mistakes, collected

| Wrong | Right | Why |
|---|---|---|
| $\log(a+b)=\log a+\log b$ | no rule for $\log(a+b)$ | the product rule is about $\log(ab)$ |
| $\dfrac{\log a}{\log b}=\log\dfrac ab$ | $\dfrac{\log a}{\log b}={}^b\!\log a$ | a quotient of logs is a change of base |
| $(\log x)^2=2\log x$ | $\log(x^2)=2\log x$ | the power rule needs the power *inside* |
| $2\cdot3^x=6^x$ | $2\cdot3^x$ stays as it is | only equal bases can be combined |
| $0.8^x<0.3\Rightarrow x<{}^{0.8}\!\log0.3$ | $x>{}^{0.8}\!\log0.3$ | base below 1: decreasing function |
| ${}^3\!\log x+{}^3\!\log(x-8)=2$ has solutions $9$ and $-1$ | only $9$ | domain of the original equation |
| growth 4% per year $\Rightarrow$ 40% per decade | $1.04^{10}\approx1.48$: 48% | factors multiply, they do not add |

---

## 12. A complete CE-style example

**Example 11.** Given $f(x)=\ln(x^2-4)$.

*a. Give the domain.* $x^2-4>0\iff x<-2$ or $x>2$.

*b. Solve exactly: $f(x)=\ln5$.* $\ln$ is one-to-one, so $x^2-4=5$, $x=\pm3$. Both lie in the domain.

*c. Solve exactly: $f(x)<\ln12$.* $\ln$ is increasing, so $x^2-4<12$ together with $x^2-4>0$: $4<x^2<16$, i.e. $2<\lvert x\rvert<4$. **Answer:** $-4<x<-2$ or $2<x<4$.

*d. The graph of $f$ is symmetric in the $y$-axis. Toon aan.* $f(-x)=\ln((-x)^2-4)=\ln(x^2-4)=f(x)$, and the domain is symmetric, so $f$ is even.

---

## Summary

- ${}^g\!\log x$ is the exponent that turns $g$ into $x$; it is the inverse of $g^x$.
- Log rules = power rules read backwards. Learn the proofs.
- Change of base: ${}^g\!\log a=\dfrac{\log a}{\log g}$.
- $e$ = limit of $(1+\frac1n)^n$; $b g^t=b e^{t\ln g}$.
- Equations: equal bases, take logs, use the definition, or substitute $u=g^x$. Check the domain.
- Inequalities: a base below 1 reverses the inequality.
- Doubling time ${}^g\!\log2$; half-life ${}^g\!\log\frac12$.
- On a semi-log graph, exponential growth is a straight line.
