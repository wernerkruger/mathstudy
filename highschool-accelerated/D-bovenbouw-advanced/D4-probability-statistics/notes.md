# D4 Probability and statistics: notes

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

These notes cover what the Dutch upper school calls *kansrekening en statistiek* (probability and statistics). Probability with expected value and standard deviation will be in the central exam (*centraal examen*, CE) of wiskunde techniek; statistics (testing, correlation, regression) is school-exam (*schoolexamen*, SE) material and part of Wiskunde D. You already met counting and simple probability in stage B ([B-onderbouw-compact](../../B-onderbouw-compact/)). Here we make it rigorous and build the tools a scientist actually uses.

Notation. $P(A)$ is the probability of event $A$. $\bar A$ is the complement ("not $A$"). $P(A \mid B)$ is the probability of $A$ given $B$. $E(X)$ is the expected value of $X$, $\sigma(X)$ its standard deviation, and $\operatorname{Var}(X) = \sigma(X)^2$ its variance. GR means *grafische rekenmachine* (graphing calculator). Calculator commands are written in a neutral way (binompdf, binomcdf, normalcdf, invNorm); on a TI-84 they live under DISTR, on a Casio under STAT → DIST.

---

## 1. Counting and the basic probability rules

### 1.1 Counting refresher (*combinatoriek*)

Three facts do almost all the work.

- **Product rule for counting.** If a choice happens in steps with $a$ options, then $b$ options, then $c$ options, there are $a \cdot b \cdot c$ outcomes. A tree diagram (*boomdiagram*) shows why: every branch splits into the same number of branches.
- **Permutations (*permutaties*, order matters).** Choosing $k$ things in order from $n$ different things, without repetition, gives $n(n-1)\cdots(n-k+1) = \dfrac{n!}{(n-k)!}$ possibilities. Arranging all $n$ gives $n!$ (*n faculteit*).
- **Combinations (*combinaties*, order does not matter).** Choosing a set of $k$ from $n$ gives

$$
\binom{n}{k} = \frac{n!}{k!\,(n-k)!}
$$

possibilities, read "$n$ over $k$" (*n boven k*, GR: nCr). Why: each unordered set of $k$ can be put in order in $k!$ ways, so (ordered choices) $= \binom{n}{k} \cdot k!$. Divide.

If some objects are identical, divide by the number of ways to swap them: the letters of KANSBOOM (two O's) can be arranged in $8!/2! = 20\,160$ ways.

### 1.2 The probability rules (*kansregels*)

For equally likely outcomes, Laplace's rule says $P(A) = \dfrac{\text{number of outcomes in } A}{\text{total number of outcomes}}$. The general rules are:

1. **Complement rule (*complementregel*).** $P(\bar A) = 1 - P(A)$. Use it whenever you see "at least one" (*minstens één*).
2. **Sum rule (*somregel*).** If $A$ and $B$ cannot happen together (they are *disjunct*, mutually exclusive), $P(A \text{ or } B) = P(A) + P(B)$. In general $P(A \cup B) = P(A) + P(B) - P(A \cap B)$, because the overlap would otherwise be counted twice.
3. **Product rule (*productregel*).** $P(A \text{ and } B) = P(A) \cdot P(B \mid A)$. If $A$ and $B$ are independent, this becomes $P(A) \cdot P(B)$.

**Worked example 1 (de Méré's problem).** *Bereken de kans* (calculate the probability) that in 4 throws of a die at least one six appears.

Counting the cases "one six, two sixes, ..." is painful. The complement "no six at all" is easy: each throw avoids a six with probability $\frac56$ and throws are independent, so

$$
P(\text{at least one six}) = 1 - \left(\tfrac56\right)^4 \approx 0.518.
$$

The seventeenth-century gambler Chevalier de Méré believed that "at least one double six in 24 throws of two dice" was just as likely. It is $1 - (35/36)^{24} \approx 0.491$, less than one half. He lost money, asked Pascal, and modern probability theory began.

**Common mistake.** Adding instead of using the complement: "each throw has chance $\frac16$, so four throws give $\frac46$". That breaks down at once: six throws would give probability 1, and seven throws more than 1. The sum rule only works for events that cannot happen together.

---

## 2. Tree diagrams and drawing with or without replacement

### 2.1 Tree diagrams (*kansboom*)

A probability tree has the probabilities on its branches. Along a path you **multiply** (product rule); across different paths that lead to the same event you **add** (sum rule, since different paths are disjoint). The probabilities on branches leaving one node add up to 1.

### 2.2 With and without replacement (*met en zonder terugleggen*)

A bag holds 6 red and 4 white marbles. Draw 3.

- **With replacement (*met terugleggen*)**: every draw has $P(\text{red}) = 0.6$, independent of the others. $P(\text{exactly 2 red}) = 3 \cdot 0.6^2 \cdot 0.4 = 0.432$. The factor 3 counts the orders RRW, RWR, WRR.
- **Without replacement (*zonder terugleggen*)**: the probabilities change after each draw. Path RRW has probability $\frac{6}{10}\cdot\frac{5}{9}\cdot\frac{4}{8}$, and the other two orders have the same product (only the order of the factors in the numerator changes), so $P = 3 \cdot \frac{120}{720} = 0.5$.

### 2.3 The hypergeometric count

The faster route for "without replacement" ignores order completely. Choose 3 marbles out of 10: $\binom{10}{3}$ equally likely sets. The favourable sets choose 2 of the 6 red and 1 of the 4 white:

$$
P(\text{exactly 2 red}) = \frac{\binom{6}{2}\binom{4}{1}}{\binom{10}{3}} = \frac{15 \cdot 4}{120} = 0.5.
$$

This is called a *hypergeometric* situation: a population with two kinds of objects, a sample drawn without replacement, and you count how many of one kind you get. The general formula, for a population of $N$ with $R$ "successes" and a sample of $n$, is

$$
P(X = k) = \frac{\binom{R}{k}\binom{N-R}{n-k}}{\binom{N}{n}}.
$$

> **Going further.** When the population is large compared with the sample, removing a few objects hardly changes the proportions, so "without replacement" behaves almost like "with replacement". That is why opinion polls of 1000 people out of 13 million voters may use the binomial distribution (section 6). Problem 13 compares the two.

---

## 3. Conditional probability, Bayes and independence

### 3.1 Conditional probability (*voorwaardelijke kans*)

$P(A \mid B)$ is the probability of $A$ when you already know that $B$ happened. Knowing $B$ shrinks the set of possible outcomes to $B$; of those, the ones in $A$ are the ones in $A \cap B$. So

$$
P(A \mid B) = \frac{P(A \cap B)}{P(B)} \qquad (P(B) > 0).
$$

Rearranged, this is exactly the product rule: $P(A \cap B) = P(B) \cdot P(A \mid B)$.

### 3.2 Two-way tables (*kruistabel*)

Dutch exams like to give data in a two-way table. Conditional probabilities are then just "restrict to one row or column and divide by its total".

### 3.3 Bayes' rule and the medical test

**Worked example 2.** A disease affects 1% of the population. A test detects it in 95% of sick people (the *sensitivity*) and correctly says "negative" for 90% of healthy people (the *specificity*). Someone tests positive. *Bereken* the probability that this person is ill.

Imagine 10 000 people and fill a two-way table.

| | ill | healthy | total |
|---|---|---|---|
| test positive | 95 | 990 | 1085 |
| test negative | 5 | 8910 | 8915 |
| total | 100 | 9900 | 10 000 |

Of 100 ill people 95 test positive; of 9900 healthy people 10% (990) test positive. So

$$
P(\text{ill} \mid \text{positive}) = \frac{95}{1085} \approx 0.088.
$$

Less than 9%. The reason is that the disease is rare: the 10% false positives among the very many healthy people outnumber the true positives. In formula form this is **Bayes' rule**:

$$
P(A \mid B) = \frac{P(A)\,P(B \mid A)}{P(A)\,P(B \mid A) + P(\bar A)\,P(B \mid \bar A)}.
$$

The denominator is $P(B)$, split over the two branches of the tree ("ill" and "healthy"). Bayes' rule turns $P(B \mid A)$ round into $P(A \mid B)$.

**Common mistake.** Confusing $P(\text{positive} \mid \text{ill}) = 0.95$ with $P(\text{ill} \mid \text{positive}) \approx 0.088$. Courts have convicted innocent people through this error (the "prosecutor's fallacy").

### 3.4 Independence (*onafhankelijkheid*)

$A$ and $B$ are **independent** if knowing $B$ does not change the probability of $A$: $P(A \mid B) = P(A)$. Equivalently, and better because it is symmetric and also works when $P(B) = 0$:

$$
P(A \cap B) = P(A) \cdot P(B).
$$

To *show* (*toon aan*) independence from data, compute both sides and compare.

**Common mistake.** Confusing *independent* with *disjoint*. If $A$ and $B$ are disjoint and both have positive probability, then $P(A \cap B) = 0 \neq P(A)P(B)$: they are strongly *dependent*, since knowing $B$ happened tells you for certain that $A$ did not.

---

## 4. Random variables, expected value and standard deviation

### 4.1 Random variables and distributions

A **random variable** (*toevalsvariabele* or *stochast*, written with a capital letter $X$) is a number attached to each outcome of an experiment: the number of sixes, the prize you win, a body length. Its **probability distribution** (*kansverdeling*) lists every value $x$ with its probability $P(X = x)$; these probabilities add up to 1.

### 4.2 Expected value (*verwachtingswaarde*)

$$
E(X) = \sum_x x \cdot P(X = x).
$$

Why this definition? Repeat the experiment $N$ times. Value $x$ turns up about $N \cdot P(X = x)$ times, so the total of all results is about $\sum_x x \cdot N P(X = x)$, and the average is $E(X)$. The expected value is the long-run average. It need not be a possible value: a die has $E(X) = \frac{1+2+3+4+5+6}{6} = 3.5$.

### 4.3 Variance and standard deviation (*variantie, standaardafwijking*)

The standard deviation measures the typical distance from the mean:

$$
\operatorname{Var}(X) = E\big((X - \mu)^2\big) = \sum_x (x - \mu)^2 P(X = x), \qquad \sigma(X) = \sqrt{\operatorname{Var}(X)},
$$

with $\mu = E(X)$. We square the distances so that positive and negative deviations do not cancel, and take the square root at the end so that $\sigma$ has the same unit as $X$ (euros, not square euros).

A useful shortcut (proved in problem 22) is $\operatorname{Var}(X) = E(X^2) - \big(E(X)\big)^2$.

**Worked example 3.** For one die, $E(X^2) = \frac{1+4+9+16+25+36}{6} = \frac{91}{6}$, so $\operatorname{Var}(X) = \frac{91}{6} - 3.5^2 = \frac{35}{12} \approx 2.917$ and $\sigma(X) \approx 1.708$.

On the GR: put the values in list L1 and the probabilities in L2, then run "1-Var Stats L1, L2". The output $\bar x$ is $E(X)$ and $\sigma_x$ is $\sigma(X)$.

### 4.4 Linear transformations

If $Y = aX + b$ (for example converting a score into a grade), then

$$
E(aX + b) = a\,E(X) + b, \qquad \sigma(aX + b) = \lvert a \rvert\, \sigma(X).
$$

Shifting by $b$ moves every value but does not change the spread; multiplying by $a$ stretches all distances by $\lvert a \rvert$, and the variance by $a^2$.

---

## 5. Sums of random variables and the square-root law

### 5.1 Expected value of a sum

**Theorem.** For any two random variables $X$ and $Y$ on the same experiment, $E(X + Y) = E(X) + E(Y)$. No independence is needed.

*Proof.* Group by outcomes $\omega$ of the experiment (finitely many here): $E(X+Y) = \sum_\omega \big(X(\omega) + Y(\omega)\big) P(\omega) = \sum_\omega X(\omega)P(\omega) + \sum_\omega Y(\omega)P(\omega) = E(X) + E(Y)$. $\square$

This simple fact is surprisingly powerful (see problem 25: the expected number of letters in the right envelope is always 1).

### 5.2 Variance of a sum of independent variables

**Theorem.** If $X$ and $Y$ are independent, then $\operatorname{Var}(X + Y) = \operatorname{Var}(X) + \operatorname{Var}(Y)$.

*Proof.* Write $\mu_X, \mu_Y$ for the means. Then

$$
(X + Y - \mu_X - \mu_Y)^2 = (X - \mu_X)^2 + (Y - \mu_Y)^2 + 2(X - \mu_X)(Y - \mu_Y).
$$

Take expected values. The first two terms give $\operatorname{Var}(X) + \operatorname{Var}(Y)$. For the last term, independence means $P(X = x, Y = y) = P(X = x)P(Y = y)$, so

$$
E\big((X - \mu_X)(Y - \mu_Y)\big) = \sum_{x,y} (x - \mu_X)(y - \mu_Y)P(X=x)P(Y=y) = \Big(\sum_x (x-\mu_X)P(X=x)\Big)\Big(\sum_y (y-\mu_Y)P(Y=y)\Big) = 0 \cdot 0. \quad \square
$$

It is the **variances** that add, not the standard deviations: $\sigma(X + Y) = \sqrt{\sigma(X)^2 + \sigma(Y)^2}$. This is Pythagoras for independent spreads. Note also $\operatorname{Var}(X - Y) = \operatorname{Var}(X) + \operatorname{Var}(Y)$: subtracting an independent random quantity adds uncertainty too.

### 5.3 The square-root law (*wortel-n-wet*)

Let $X_1, \dots, X_n$ be independent and all with the same distribution, mean $\mu$ and standard deviation $\sigma$. Let $S = X_1 + \dots + X_n$ be the sum and $\bar X = S/n$ the mean. Then

$$
E(S) = n\mu, \quad \sigma(S) = \sigma\sqrt{n}, \qquad E(\bar X) = \mu, \quad \sigma(\bar X) = \frac{\sigma}{\sqrt{n}}.
$$

*Derivation.* $E(S) = n\mu$ by 5.1. By 5.2, $\operatorname{Var}(S) = n\sigma^2$, so $\sigma(S) = \sigma\sqrt n$. Dividing by $n$ divides the mean by $n$ and the standard deviation by $n$ (section 4.4): $\sigma(\bar X) = \sigma\sqrt n / n = \sigma/\sqrt n$. $\square$

The sum's spread grows, but only like $\sqrt n$, more slowly than its mean $n\mu$. The mean's spread shrinks like $1/\sqrt n$. This is why averaging measurements works, and why you need **four times** as many measurements to halve the uncertainty.

**Worked example 4.** Throw 10 dice. The total has $E = 35$ and $\sigma = \sqrt{10} \cdot 1.708 \approx 5.40$; the average has $E = 3.5$ and $\sigma \approx 0.540$.

**Common mistake.** Treating $X + X$ as a sum of two independent throws. $2X$ (one die, doubled) has standard deviation $2\sigma$; $X_1 + X_2$ (two dice) has $\sigma\sqrt 2$. Doubling one result does not average anything out.

---

## 6. The binomial distribution (*binomiale verdeling*)

### 6.1 Conditions

$X$ is **binomially distributed** with parameters $n$ and $p$ when

1. an experiment is repeated $n$ times (a fixed number);
2. each repetition has two outcomes, "success" and "failure";
3. the probability of success is $p$ every time;
4. the repetitions are independent.

Then $X$ = number of successes. Exams often ask you to name these conditions, or to say why drawing without replacement is "approximately binomial".

### 6.2 The formula and why it is true

$$
P(X = k) = \binom{n}{k} p^k (1 - p)^{n - k}, \qquad k = 0, 1, \dots, n.
$$

*Proof.* Any one particular sequence with $k$ successes and $n - k$ failures (say SSFSF...) has probability $p^k(1-p)^{n-k}$ by the product rule for independent repetitions. The number of such sequences is the number of ways to choose which $k$ of the $n$ positions are successes: $\binom nk$. The sequences are disjoint, so add. $\square$

The probabilities sum to 1 because, by the binomial theorem, $\sum_k \binom nk p^k(1-p)^{n-k} = \big(p + (1-p)\big)^n = 1$. That is where the name comes from.

### 6.3 Expected value and standard deviation

$$
E(X) = np, \qquad \sigma(X) = \sqrt{np(1-p)}.
$$

*Proof with indicators.* Let $I_j = 1$ if repetition $j$ is a success and $0$ otherwise. Then $X = I_1 + \dots + I_n$. Each $I_j$ has $E(I_j) = 1 \cdot p + 0 \cdot (1-p) = p$ and $E(I_j^2) = p$, so $\operatorname{Var}(I_j) = p - p^2 = p(1-p)$. The $I_j$ are independent, so by section 5, $E(X) = np$ and $\operatorname{Var}(X) = np(1-p)$. $\square$

### 6.4 On the GR

- $P(X = k)$: binompdf$(n, p, k)$.
- $P(X \le k)$: binomcdf$(n, p, k)$.
- $P(X \ge k) = 1 - P(X \le k - 1)$ = 1 − binomcdf$(n, p, k-1)$.
- $P(a \le X \le b)$ = binomcdf$(n,p,b)$ − binomcdf$(n,p,a-1)$.

**Worked example 5.** 10% of a product is defective. A customer buys 30 items; $X$ is the number of defective items. Then $X$ is binomial with $n = 30$, $p = 0.1$ (*aannemend* that items are independent).

- $P(X = 3)$ = binompdf(30, 0.1, 3) $\approx 0.236$.
- $P(X \le 2)$ = binomcdf(30, 0.1, 2) $\approx 0.411$.
- $P(X \ge 5)$ = 1 − binomcdf(30, 0.1, 4) $\approx 0.175$.
- $E(X) = 3$ and $\sigma(X) = \sqrt{2.7} \approx 1.643$.

**Common mistake.** "At least 5" is $1 - P(X \le 4)$, not $1 - P(X \le 5)$. Write the complement in words first: "not at least 5" means "at most 4".

---

## 7. The normal distribution (*normale verdeling*)

### 7.1 The bell curve

Many measured quantities (lengths, weights, measurement errors, sums of many small effects) have a histogram shaped like a symmetric bell. The idealised model is the **normal distribution** with mean $\mu$ and standard deviation $\sigma$. Its density function is

$$
f(x) = \frac{1}{\sigma\sqrt{2\pi}}\, e^{-\frac{(x-\mu)^2}{2\sigma^2}}.
$$

Probabilities are **areas** under this curve: $P(a < X < b) = \displaystyle\int_a^b f(x)\,dx$. This links directly to [D2 Integral calculus](../D2-integral-calculus/). The function $e^{-x^2/2}$ has no primitive (*primitieve*) in terms of standard functions, so the GR computes these areas numerically. For a continuous variable $P(X = a) = 0$, so $<$ and $\le$ give the same probability.

Rules of thumb (*vuistregels*): about 68% of values lie within $\sigma$ of $\mu$, 95% within $2\sigma$, and 99.7% within $3\sigma$. The curve has its points of inflection (*buigpunten*) at $\mu \pm \sigma$; you can check this with the second derivative from [D1](../D1-differential-calculus-II/).

### 7.2 Standardising (z-scores)

If $X$ is normal with mean $\mu$ and standard deviation $\sigma$, then $Z = \dfrac{X - \mu}{\sigma}$ is **standard normal**: mean 0, standard deviation 1 (section 4.4). The z-score says how many standard deviations a value lies from the mean. All normal distributions are the same curve, stretched and shifted.

### 7.3 The four question types

1. **Probability, given $\mu$ and $\sigma$**: normalcdf(lower, upper, $\mu$, $\sigma$). Use $\pm 10^{99}$ for an open end.
2. **Boundary, given a probability**: invNorm(area to the left, $\mu$, $\sigma$).
3. **Unknown $\mu$**: standardise. If $P(X < g) = q$, then $\dfrac{g - \mu}{\sigma} = z$ with $z$ = invNorm($q$, 0, 1); solve for $\mu$.
4. **Unknown $\sigma$**: the same equation, solved for $\sigma$. (Alternatively solve normalcdf(...) = $q$ with the GR's intersect function.)

**Worked example 6.** IQ scores are normal with $\mu = 100$ and $\sigma = 15$.

- $P(\text{IQ} > 130)$ = normalcdf(130, $10^{99}$, 100, 15) $\approx 0.023$.
- The score that 95% stay below: invNorm(0.95, 100, 15) $\approx 124.7$.

**Worked example 7 (finding $\sigma$).** Apples have mean weight 180 g. 15% of apples weigh more than 200 g. *Bereken* $\sigma$.

$P(X < 200) = 0.85$, so $\dfrac{200 - 180}{\sigma} = z$ with $z$ = invNorm(0.85, 0, 1) $\approx 1.0364$. Hence $\sigma = 20/1.0364 \approx 19.3$ g.

### 7.4 Sums of normal variables

A sum of independent normal variables is again normal (a fact we will not prove), with mean and standard deviation from section 5. So the square-root law and normalcdf work together: see problems 8 and 15.

> **Going further: the central limit theorem.** Even when the $X_i$ are *not* normal, the sum $X_1 + \dots + X_n$ of many independent identically distributed variables is approximately normal. This *centrale limietstelling* explains why the bell curve is everywhere: a body length is the sum of many small genetic and environmental effects. Try it: the histogram of the total of 10 dice already looks very bell-shaped.

---

## 8. Approximating the binomial by the normal

### 8.1 When and how

A binomial $X$ is a sum of $n$ independent indicators, so by the central limit theorem it is approximately normal when $n$ is large. Use $\mu = np$ and $\sigma = \sqrt{np(1-p)}$. A common rule of thumb is $np > 5$ and $n(1-p) > 5$.

Today the GR computes binomial probabilities exactly, so the approximation matters less in practice. You still need it to understand tests about proportions, and Wiskunde D asks for it.

### 8.2 Continuity correction (*continuïteitscorrectie*)

A binomial variable takes whole numbers only; in a histogram the bar for value $k$ stands on the interval from $k - 0.5$ to $k + 0.5$. So when you replace the bars by a smooth curve, $P(X \le 45)$ should include the whole bar for 45, up to 45.5.

**Worked example 8.** Toss a coin 100 times; $X$ = number of heads. $\mu = 50$, $\sigma = \sqrt{100 \cdot 0.5 \cdot 0.5} = 5$.

- With correction: $P(X \le 45) \approx$ normalcdf($-10^{99}$, 45.5, 50, 5) $\approx 0.1841$.
- Exact: binomcdf(100, 0.5, 45) $\approx 0.1841$.
- Without correction (normalcdf up to 45) you would get $0.159$, clearly worse.

Translation table: $P(X \le k) \to$ up to $k + 0.5$; $P(X < k) = P(X \le k-1) \to$ up to $k - 0.5$; $P(X \ge k) \to$ from $k - 0.5$; $P(X = k) \to$ from $k - 0.5$ to $k + 0.5$.

---

## 9. Hypothesis testing (*hypothesetoetsen*)

### 9.1 The idea

A test is a proof by contradiction with probabilities. You assume the boring claim, the **null hypothesis** $H_0$ (*nulhypothese*), and look at the data. If, assuming $H_0$, data at least as extreme as yours would be very unlikely, you reject $H_0$ in favour of the **alternative hypothesis** $H_1$ (*alternatieve hypothese*).

"Very unlikely" is fixed in advance as the **significance level** $\alpha$ (*significantieniveau*), usually 0.05 or 0.01.

### 9.2 The steps (as Dutch exams want them)

1. Define the random variable: "$X$ = number of ..., $X$ is binomial with $n = \dots$ and $p$ unknown".
2. State the hypotheses: $H_0\colon p = p_0$ and $H_1\colon p > p_0$ (right-sided, *rechtszijdig*), $p < p_0$ (left-sided, *linkszijdig*) or $p \ne p_0$ (two-sided, *tweezijdig*). The direction of $H_1$ comes from the **question**, before looking at the data.
3. Fix $\alpha$.
4. Either compute the **p-value** (*overschrijdingskans*): the probability, under $H_0$, of a result at least as extreme as the observed one in the direction of $H_1$. Or determine the **critical region** (*kritieke gebied*): the set of outcomes for which you reject $H_0$.
5. Conclude in words: "The p-value 0.022 is less than 0.05, so $H_0$ is rejected: there is reason to believe that ..."

For a **two-sided** test, split $\alpha$: compare the one-sided p-value with $\alpha/2$, or equivalently put $\alpha/2$ in each tail of the critical region.

**Worked example 9 (binomial, right-sided).** Tom suspects that his die shows too many sixes. He throws it 120 times and gets 29 sixes. Test at $\alpha = 0.05$.

- $X$ = number of sixes in 120 throws, binomial with $n = 120$ and unknown $p$.
- $H_0\colon p = \frac16$, $H_1\colon p > \frac16$ (right-sided, because "too many").
- Under $H_0$: $E(X) = 20$. The p-value is $P(X \ge 29) = 1 -$ binomcdf(120, 1/6, 28) $\approx 0.022$.
- $0.022 < 0.05$, so reject $H_0$: the die probably shows too many sixes.

Critical region: we need the smallest $g$ with $P(X \ge g) \le 0.05$. With the GR's table: $P(X \ge 27) \approx 0.060$ and $P(X \ge 28) \approx 0.037$. So the critical region is $X \ge 28$, and 29 lies in it.

**Worked example 10 (normal, left-sided).** Packets of sugar should contain on average 1000 g; the machine has $\sigma = 6$ g. An inspector weighs 9 packets: mean 996 g. Test at $\alpha = 0.05$ whether the packets contain too little.

- $\bar X$ = mean weight of 9 packets. By the square-root law, under $H_0$ it is normal with $\mu = 1000$ and $\sigma = 6/\sqrt 9 = 2$.
- $H_0\colon \mu = 1000$, $H_1\colon \mu < 1000$.
- p-value $= P(\bar X \le 996)$ = normalcdf($-10^{99}$, 996, 1000, 2) $\approx 0.023 < 0.05$. Reject $H_0$.
- Critical region: $\bar X \le$ invNorm(0.05, 1000, 2) $\approx 996.7$.

**Common mistakes.** (1) Computing $P(X = 29)$ instead of $P(X \ge 29)$: the p-value is a *tail* probability, because any single value is unlikely when $n$ is large. (2) Saying "$H_0$ is true" when you cannot reject it. You can only say the data give no reason to reject it. (3) Choosing the direction of $H_1$ after seeing the data.

> **Going further: two kinds of error.** A **type I error** (*fout van de eerste soort*) is rejecting $H_0$ when it is true; its probability is at most $\alpha$. A **type II error** (*fout van de tweede soort*) is not rejecting $H_0$ when it is false. Its probability depends on how false $H_0$ is: if the die in example 9 really had $p = 0.25$, the type II probability would be $P(X \le 27)$ with $p = 0.25$. Making $\alpha$ smaller makes type II errors more likely; only a larger sample reduces both. Problem 27 computes one.

---

## 10. Correlation and regression (*correlatie en regressie*)

This section is Wiskunde D and SE material.

### 10.1 Scatter plots and the correlation coefficient

Paired data $(x_1, y_1), \dots, (x_n, y_n)$ are drawn in a **scatter plot** (*puntenwolk* or *spreidingsdiagram*). Write $\bar x, \bar y$ for the means and

$$
S_{xx} = \sum (x_i - \bar x)^2, \quad S_{yy} = \sum (y_i - \bar y)^2, \quad S_{xy} = \sum (x_i - \bar x)(y_i - \bar y).
$$

The **correlation coefficient** (*correlatiecoëfficiënt*) is

$$
r = \frac{S_{xy}}{\sqrt{S_{xx}\,S_{yy}}}.
$$

Why this works: a point to the upper right or lower left of the centre $(\bar x, \bar y)$ contributes a positive product to $S_{xy}$, a point in the other two quadrants a negative one. Dividing by $\sqrt{S_{xx}S_{yy}}$ makes $r$ independent of units. By the Cauchy–Schwarz inequality $\lvert S_{xy} \rvert \le \sqrt{S_{xx}S_{yy}}$, so $-1 \le r \le 1$, with $\lvert r \rvert = 1$ exactly when all points lie on a line. (If you have done vectors in [D3](../D3-analytic-geometry-vectors/): $r$ is the cosine of the angle between the vectors of deviations $(x_i - \bar x)$ and $(y_i - \bar y)$.)

Rough guide: $\lvert r \rvert > 0.8$ strong, $0.5$ to $0.8$ moderate, below $0.5$ weak linear relation.

### 10.2 The least-squares regression line

We want the line $y = ax + b$ that fits best. The **residual** of point $i$ is $e_i = y_i - (ax_i + b)$, the vertical distance to the line. The **least-squares** line (*kleinste-kwadratenmethode*) minimises

$$
Q(a, b) = \sum_{i=1}^n (y_i - a x_i - b)^2.
$$

*Derivation (a calculus problem).* First fix $a$ and treat $Q$ as a function of $b$ alone. It is a parabola opening upward, minimal where its derivative is 0:

$$
\frac{dQ}{db} = -2\sum (y_i - a x_i - b) = 0 \;\Longrightarrow\; n\bar y - a n \bar x - nb = 0 \;\Longrightarrow\; b = \bar y - a\bar x.
$$

So the best line always passes through the centre $(\bar x, \bar y)$. Substitute: $y_i - ax_i - b = (y_i - \bar y) - a(x_i - \bar x)$, so

$$
Q(a) = \sum \big((y_i - \bar y) - a(x_i - \bar x)\big)^2 = S_{yy} - 2a S_{xy} + a^2 S_{xx}.
$$

Again an upward parabola, now in $a$, with minimum at $Q'(a) = -2S_{xy} + 2aS_{xx} = 0$:

$$
a = \frac{S_{xy}}{S_{xx}}, \qquad b = \bar y - a\bar x.
$$

Substituting back gives the minimum $Q = S_{yy}\,(1 - r^2)$. So $r^2$ (the *determinatiecoëfficiënt*) is the fraction of the variation in $y$ that the line explains. (Strictly, minimising first over $b$ and then over $a$ finds the global minimum because for every $a$ we chose the best $b$. Problem 23 asks you to check the details.)

**Worked example 11.** Data: $(1,2), (2,3), (3,5), (4,6)$. Then $\bar x = 2.5$, $\bar y = 4$, $S_{xx} = 5$, $S_{yy} = 10$, $S_{xy} = 7$. So $a = 1.4$, $b = 4 - 1.4 \cdot 2.5 = 0.5$, the line is $y = 1.4x + 0.5$, and $r = 7/\sqrt{50} \approx 0.990$.

On the GR: put $x$ in L1 and $y$ in L2, then LinReg(ax+b) L1, L2 (turn on "DiagnosticOn" on a TI to see $r$).

### 10.3 Correlation is not causation

A strong correlation says that two variables move together, not that one causes the other. Ice-cream sales and drownings correlate because both rise in hot weather (a **confounding variable**, *verstorende variabele*). Shoe size and reading skill of primary-school children correlate because both grow with age. To show causation you need an experiment in which you control the cause, ideally with random allocation. Also: $r$ only measures **linear** relation. Points on a perfect parabola $y = x^2$ for $x = -2, \dots, 2$ have $r = 0$.

**Common mistakes.** (1) Predicting far outside the range of the data (*extrapoleren*): a line that fits ages 6 to 12 says nothing reliable about age 40. (2) Using the regression line of $y$ on $x$ to predict $x$ from $y$; that is a different line (it minimises horizontal distances).

> **Going further.** In the 1880s Francis Galton noticed that very tall parents have children who are tall, but on average less extreme. In standardised units the regression line has slope $r$, which is less than 1 in absolute value, so predictions are always pulled towards the mean. Galton called this "regression towards mediocrity", and the word "regression" stuck to the whole method.

---

## 11. Checklist of formulas

| Topic | Formula |
|---|---|
| Combinations | $\binom nk = \dfrac{n!}{k!(n-k)!}$ |
| Conditional | $P(A \mid B) = P(A \cap B)/P(B)$ |
| Independence | $P(A \cap B) = P(A)P(B)$ |
| Expected value | $E(X) = \sum x\,P(X=x)$ |
| Variance | $\operatorname{Var}(X) = E(X^2) - E(X)^2$ |
| Linear transform | $E(aX+b) = aE(X)+b$, $\sigma(aX+b) = \lvert a \rvert \sigma(X)$ |
| Square-root law | $\sigma(S) = \sigma\sqrt n$, $\sigma(\bar X) = \sigma/\sqrt n$ |
| Binomial | $P(X=k) = \binom nk p^k(1-p)^{n-k}$, $E = np$, $\sigma = \sqrt{np(1-p)}$ |
| Standardising | $z = (x - \mu)/\sigma$ |
| Regression | $a = S_{xy}/S_{xx}$, $b = \bar y - a\bar x$, $r = S_{xy}/\sqrt{S_{xx}S_{yy}}$ |
