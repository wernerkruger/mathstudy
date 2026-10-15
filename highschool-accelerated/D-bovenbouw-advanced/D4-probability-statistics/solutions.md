# D4 Probability and statistics: solutions

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

All numerical answers were checked by computer (exact binomial sums with $\binom nk$, normal probabilities with the error function). GR commands are written in a calculator-neutral way. Probabilities are rounded to 3 decimals.

---

## Practice

**1.** There are $\binom{12}{4} = 495$ equally likely committees.

a. Choose 2 of the 7 girls and 2 of the 5 boys: $\binom72\binom52 = 21 \cdot 10 = 210$. So $P = \frac{210}{495} \approx 0.424$.

b. Complement: no boy means 4 girls, $\binom74 = 35$ ways. $P(\text{at least one boy}) = 1 - \frac{35}{495} \approx 0.929$.

**2.**
a. Order matters, no repetition: $8 \cdot 7 \cdot 6 \cdot 5 = 1680$.
b. 8 letters with O twice: $\frac{8!}{2!} = 20\,160$. (Swapping the two O's gives the same word, so every word was counted twice in $8!$.)
c. $\binom84 = 70$. (Check: $70 \cdot 4! = 1680$, matching (a).)

**3.**
a. Without replacement, $\binom83 = 56$ equally likely sets.
$P(\text{exactly 1 red}) = \dfrac{\binom51\binom32}{56} = \dfrac{15}{56} \approx 0.268$.
$P(\text{at least 1 red}) = 1 - P(\text{3 blue}) = 1 - \dfrac{\binom33}{56} = \dfrac{55}{56} \approx 0.982$.

b. With replacement, $P(\text{red}) = \frac58$ each time, independently.
$P(\text{exactly 1 red}) = 3 \cdot \frac58 \cdot \left(\frac38\right)^2 = \frac{135}{512} \approx 0.264$ (binompdf(3, 5/8, 1)).
$P(\text{at least 1 red}) = 1 - \left(\frac38\right)^3 = \frac{485}{512} \approx 0.947$.

**4.**
a.

| | instrument | no instrument | total |
|---|---|---|---|
| sport | 36 | 84 | 120 |
| no sport | 24 | 56 | 80 |
| total | 60 | 140 | 200 |

b. Restrict to the sport row: $P(\text{instrument} \mid \text{sport}) = \frac{36}{120} = 0.3$.

c. $P(\text{sport}) \cdot P(\text{instrument}) = \frac{120}{200} \cdot \frac{60}{200} = 0.6 \cdot 0.3 = 0.18$, and $P(\text{both}) = \frac{36}{200} = 0.18$. They are equal, so the events are independent. (Equivalently, (b) gave $0.3 = P(\text{instrument})$: knowing that a pupil plays a sport does not change the probability.)

**5.**
a. Disjoint: $P(A \cup B) = 0.4 + 0.5 = 0.9$.
b. Independent: $P(A \cap B) = 0.4 \cdot 0.5 = 0.2$, so $P(A \cup B) = 0.4 + 0.5 - 0.2 = 0.7$.
c. No. Disjoint means $P(A \cap B) = 0$, while independence would need $P(A \cap B) = P(A)P(B) > 0$. Intuitively: if you know $B$ happened, you know for certain $A$ did not, so $B$ gives a lot of information about $A$.

**6.**
a. 36 equally likely outcomes. Double six: 1 outcome. Other doubles: 5 outcomes. The rest: 30.

| $y$ | 0 | 5 | 20 |
|---|---|---|---|
| $P(Y = y)$ | $\frac{30}{36}$ | $\frac{5}{36}$ | $\frac{1}{36}$ |

b. $E(Y) = 5 \cdot \frac{5}{36} + 20 \cdot \frac{1}{36} = \frac{45}{36} = 1.25$ euro. The player pays €2, so the expected profit is $1.25 - 2 = -0.75$ euro per game (a loss of 75 cents; good for the school).

c. $E(Y^2) = 25 \cdot \frac5{36} + 400 \cdot \frac1{36} = \frac{525}{36} \approx 14.583$. $\mathrm{Var}(Y) = \frac{525}{36} - 1.25^2 \approx 13.021$, so $\sigma(Y) \approx 3.61$ euro. (GR: L1 = {0, 5, 20}, L2 = {30/36, 5/36, 1/36}, 1-Var Stats L1, L2.)

**7.**
a. Probabilities sum to 1: $0.1 + a + b + 0.2 = 1$, so $a + b = 0.7$. Expected value: $0 + a + 2b + 3 \cdot 0.2 = 1.6$, so $a + 2b = 1$. Subtracting: $b = 0.3$, $a = 0.4$.

b. $E(X^2) = 0 + 1 \cdot 0.4 + 4 \cdot 0.3 + 9 \cdot 0.2 = 3.4$. $\mathrm{Var}(X) = 3.4 - 1.6^2 = 0.84$, so $\sigma(X) = \sqrt{0.84} \approx 0.917$.

**8.** Square-root law with $n = 16$, $\mu = 25$, $\sigma = 1.2$.
a. Total: $E = 16 \cdot 25 = 400$ g, $\sigma = 1.2\sqrt{16} = 4.8$ g.
b. Mean: $E = 25$ g, $\sigma = 1.2/\sqrt{16} = 0.3$ g.
c. Full box $=$ packets $+$ box, independent, so the variances add: $\sigma = \sqrt{4.8^2 + 2^2} = \sqrt{23.04 + 4} = \sqrt{27.04} = 5.2$ g.
d. The full box is normal with $\mu = 430$ g and $\sigma = 5.2$ g. $P(W < 420)$ = normalcdf($-10^{99}$, 420, 430, 5.2) $\approx 0.027$.

**9.**
a. Fixed number of trials ($n = 20$); each answer is right or wrong; the probability of right is $p = 0.25$ for every question; guesses are independent. So $X$ is binomial with $n = 20$, $p = 0.25$.

b. $P(X = 5)$ = binompdf(20, 0.25, 5) $\approx 0.202$.
$P(X \ge 8) = 1 - P(X \le 7)$ = 1 − binomcdf(20, 0.25, 7) $\approx 0.102$.

c. $E(X) = 20 \cdot 0.25 = 5$; $\sigma(X) = \sqrt{20 \cdot 0.25 \cdot 0.75} = \sqrt{3.75} \approx 1.94$.

**10.**
a. normalcdf(185, $10^{99}$, 172, 8) $\approx 0.052$.
b. normalcdf(160, 180, 172, 8) $\approx 0.7745$, so about 77.5%.
c. invNorm(0.90, 172, 8) $\approx 182.3$ cm.

**11.**
a. We need $P(X < 990) = 0.02$, so $\dfrac{990 - \mu}{4} = z$ with $z$ = invNorm(0.02, 0, 1) $\approx -2.0537$. Then $\mu = 990 + 4 \cdot 2.0537 \approx 998.2$ ml.
b. $\dfrac{990 - 1000}{\sigma} = -2.0537$ gives $\sigma = \dfrac{10}{2.0537} \approx 4.87$ ml. A larger $\sigma$ would put more than 2% below 990, so this is the largest allowed.

---

## Exam-level

**12.**
a. Of 100 000 people, 500 are ill and 99 500 healthy. Positive: $0.98 \cdot 500 = 490$ ill, $0.03 \cdot 99\,500 = 2985$ healthy.

| | ill | healthy | total |
|---|---|---|---|
| positive | 490 | 2985 | 3475 |
| negative | 10 | 96 515 | 96 525 |
| total | 500 | 99 500 | 100 000 |

b. $P(\text{ill} \mid \text{positive}) = \frac{490}{3475} \approx 0.141$.

c. $P(\text{healthy} \mid \text{negative}) = \frac{96\,515}{96\,525} \approx 0.9999$ (to 3 decimals: 1.000). A negative test is very reassuring; a positive one is not.

d. After the first positive test the person belongs to a group where the fraction of ill people is $0.141$. Apply Bayes again with this as the prior:

$$
P(\text{ill} \mid \text{2 positives}) = \frac{0.141 \cdot 0.98}{0.141 \cdot 0.98 + 0.859 \cdot 0.03} \approx 0.843.
$$

(Using the unrounded $490/3475$ gives $0.8428$.) Repeated independent testing is how screening programmes deal with the false-positive problem.

**13.** Population $N = 50$ with 4 faulty, 46 good; sample of 5 without replacement.

a. $P(\text{0 faulty}) = \dfrac{\binom{46}{5}}{\binom{50}{5}} = \dfrac{1\,370\,754}{2\,118\,760} \approx 0.647$.

b. $P(\text{1 faulty}) = \dfrac{\binom41\binom{46}{4}}{\binom{50}{5}} \approx 0.308$.

c. $0.92^5 \approx 0.659$. It is close because removing a few chargers from 50 changes the fraction of good ones only a little; it is larger than (a) because without replacement each good charger drawn makes the next draw slightly *less* likely to be good ($\frac{46}{50}, \frac{45}{49}, \dots$), whereas the binomial keeps $0.92$ every time.

**14.** $X$ = number of germinating seeds, binomial with $n = 40$, $p = 0.85$.

a. $P(X \ge 35) = 1 -$ binomcdf(40, 0.85, 34) $\approx 0.433$.

b. $E(X) = 40 \cdot 0.85 = 34$; $\sigma(X) = \sqrt{40 \cdot 0.85 \cdot 0.15} = \sqrt{5.1} \approx 2.26$.

c. We need the smallest $n$ with $1 -$ binomcdf($n$, 0.85, 29) $\ge 0.95$. Make a GR table of $Y_1 = 1 -$ binomcdf(X, 0.85, 29):

| $n$ | 38 | 39 | 40 |
|---|---|---|---|
| $P(X \ge 30)$ | 0.894 | 0.942 | 0.970 |

So the packet must contain at least **40** seeds.

**15.** Let $T$ be the total weight of $n$ adults: normal, $E(T) = 80n$, $\sigma(T) = 12\sqrt n$.

a. $n = 12$: $E(T) = 960$, $\sigma(T) = 12\sqrt{12} \approx 41.57$. $P(T > 1000)$ = normalcdf(1000, $10^{99}$, 960, 41.57) $\approx 0.168$.

b. Table of $P(T > 1000)$:

| $n$ | 10 | 11 | 12 |
|---|---|---|---|
| $E(T)$ | 800 | 880 | 960 |
| $\sigma(T)$ | 37.9 | 39.8 | 41.6 |
| $P(T > 1000)$ | 0.000 | 0.001 | 0.168 |

At most **11** adults.

**16.**
a. $E(X) = 600 \cdot \frac16 = 100$; $\sigma(X) = \sqrt{600 \cdot \frac16 \cdot \frac56} = \sqrt{83.33} \approx 9.129$.

b. normalcdf($-10^{99}$, 90.5, 100, 9.129) $\approx 0.149$.

c. Exact: binomcdf(600, 1/6, 90) $\approx 0.1487$. With correction: $0.1490$. Without correction (up to 90): $0.137$. The continuity correction makes the approximation much better.

d. With correction: normalcdf(94.5, 105.5, 100, 9.129) $\approx 0.453$. Exact: binomcdf(600, 1/6, 105) − binomcdf(600, 1/6, 94) $\approx 0.453$. They agree to 3 decimals.

**17.** $X$ = number of cured patients out of 25, binomial with $n = 25$ and unknown $p$.

a. $H_0\colon p = 0.6$; $H_1\colon p > 0.6$ (right-sided: the claim is "better").

b. p-value $= P(X \ge 20 \mid p = 0.6) = 1 -$ binomcdf(25, 0.6, 19) $\approx 0.029$. This is less than $0.05$, so $H_0$ is rejected: the trial supports the claim that the new medicine is better.

c. We need the smallest $g$ with $P(X \ge g) \le 0.05$ under $H_0$:
$P(X \ge 19) \approx 0.074 > 0.05$ and $P(X \ge 20) \approx 0.029 \le 0.05$.
Critical region: $X \ge 20$, i.e. $\lbrace 20, 21, \dots, 25 \rbrace$.

**18.** $X$ = number of heads in 100 tosses, binomial with $n = 100$, unknown $p$.

a. "Fair or not" gives no direction: too many and too few heads are both evidence against fairness. $H_0\colon p = 0.5$; $H_1\colon p \ne 0.5$.

b. 60 lies above the expected 50, so look at the right tail: $P(X \ge 60) = 1 -$ binomcdf(100, 0.5, 59) $\approx 0.028$. Two-sided, so compare with $\alpha/2 = 0.025$: $0.028 > 0.025$. $H_0$ is not rejected; there is no convincing evidence that the coin is unfair. (Equivalently, the two-sided p-value is $2 \cdot 0.028 \approx 0.057 > 0.05$.)

c. Each tail may hold at most 0.025.
Left: $P(X \le 39) \approx 0.018 \le 0.025$ and $P(X \le 40) \approx 0.028 > 0.025$, so $X \le 39$.
Right: by symmetry, $P(X \ge 61) \approx 0.018$ and $P(X \ge 60) \approx 0.028$, so $X \ge 61$.
Critical region: $X \le 39$ or $X \ge 61$. Since 60 is not in it, $H_0$ is not rejected, as in (b).

**19.** $\bar X$ = mean weight of 25 bags. Under $H_0$, $\bar X$ is normal with $\mu = 150$ and $\sigma = 5/\sqrt{25} = 1$ (square-root law).

a. $H_0\colon \mu = 150$; $H_1\colon \mu < 150$ (left-sided). p-value $= P(\bar X \le 148.2)$ = normalcdf($-10^{99}$, 148.2, 150, 1) $\approx 0.036 < 0.05$. Reject $H_0$: the bags probably contain too little on average.

b. Critical region $\bar X \le g$ with $g$ = invNorm(0.05, 150, 1) $\approx 148.36$ g. Indeed $148.2 \le 148.36$.

**20.** $n = 6$.

a. $\bar x = 3.5$, $\bar y = \frac{368}{6} \approx 61.33$. $S_{xx} = 17.5$, $S_{yy} \approx 287.33$, $S_{xy} = 69$. $r = \dfrac{69}{\sqrt{17.5 \cdot 287.33}} \approx 0.973$: a strong positive linear relation.

b. $a = \dfrac{69}{17.5} \approx 3.943$, $b = 61.33 - 3.943 \cdot 3.5 \approx 47.53$. Regression line: $y = 3.94x + 47.5$. (GR: LinReg(ax+b) L1, L2.)

c. $y(7) \approx 3.943 \cdot 7 + 47.53 \approx 75.1$. For 20 hours the line predicts about 126, which is impossible if the maximum score is 100. The data only cover 1 to 6 hours, and nothing says the relation stays linear (extrapolation, *extrapoleren*).

d. For: it is plausible that studying more helps, and the correlation is strong. Against: six pupils is a tiny sample, and a confounding variable (for example motivation or interest) could make pupils both study more and score higher. Only an experiment in which study time is assigned at random could show causation.

**21.**
a. $X = 1$: six at once, $\frac16$. $X = 2$: no six, then a six, $\frac56 \cdot \frac16 = \frac{5}{36}$. $X = 3$: the first two throws are not six (the third throw happens whatever it shows), $\left(\frac56\right)^2 = \frac{25}{36}$. Check: $\frac{6}{36} + \frac{5}{36} + \frac{25}{36} = 1$.

b. $E(X) = 1 \cdot \frac{6}{36} + 2 \cdot \frac{5}{36} + 3 \cdot \frac{25}{36} = \frac{6 + 10 + 75}{36} = \frac{91}{36}$.

c. $E(X^2) = \frac{6 + 20 + 225}{36} = \frac{251}{36}$. $\mathrm{Var}(X) = \frac{251}{36} - \left(\frac{91}{36}\right)^2 = \frac{755}{1296} \approx 0.583$, so $\sigma(X) \approx 0.763$.

---

## Challenge

**22.** Write $\mu = E(X)$ and $p_x = P(X = x)$.

a. $\mathrm{Var}(X) = \sum (x - \mu)^2 p_x = \sum x^2 p_x - 2\mu \sum x p_x + \mu^2 \sum p_x = E(X^2) - 2\mu \cdot \mu + \mu^2 \cdot 1 = E(X^2) - \mu^2$.

b. $E(aX + b) = \sum (ax + b)p_x = a\mu + b$. So $(aX + b) - E(aX + b) = a(X - \mu)$, and $\mathrm{Var}(aX + b) = \sum a^2(x - \mu)^2 p_x = a^2 \mathrm{Var}(X)$.

c. Each term $(x - \mu)^2 p_x$ is $\ge 0$, so the sum is $\ge 0$. The sum is 0 only if every term is 0, so every value $x$ with $p_x > 0$ equals $\mu$: $X$ is constant with probability 1. By (a), $E(X^2) - E(X)^2 \ge 0$.

**23.** Residual $e_i = y_i - ax_i - b = (y_i - \bar y) - a(x_i - \bar x)$ (using $b = \bar y - a\bar x$).

a. $\sum e_i = \sum (y_i - \bar y) - a \sum (x_i - \bar x) = 0 - 0 = 0$, since deviations from a mean always sum to 0.

b. $\sum (x_i - \bar x)e_i = S_{xy} - aS_{xx} = S_{xy} - S_{xy} = 0$.

c. $Q = \sum e_i^2 = S_{yy} - 2aS_{xy} + a^2S_{xx}$. With $a = S_{xy}/S_{xx}$: $Q = S_{yy} - \dfrac{2S_{xy}^2}{S_{xx}} + \dfrac{S_{xy}^2}{S_{xx}} = S_{yy} - \dfrac{S_{xy}^2}{S_{xx}} = S_{yy}\left(1 - \dfrac{S_{xy}^2}{S_{xx}S_{yy}}\right) = S_{yy}(1 - r^2)$. Since $Q$ is a sum of squares, $Q \ge 0$, so $1 - r^2 \ge 0$ (when $S_{yy} > 0$), giving $-1 \le r \le 1$. Also $r = \pm 1$ exactly when $Q = 0$, i.e. all points on the line.

d. With $y = 3.9429x + 47.533$ the residuals are approximately $0.524, -0.419, 1.638, -3.305, 0.752, 0.810$, which sum to 0. Also $\sum e_i^2 \approx 15.28$ and $287.33(1 - 0.9468) \approx 15.28$, confirming (c).

**24.**
a. Give the people birthdays one at a time. The first can have any of 365 days, the second must avoid one day ($\frac{364}{365}$), the third must avoid two ($\frac{363}{365}$), and so on; person $k$ must avoid $k - 1$ days. Multiply (product rule): $\prod_{i=0}^{k-1} \frac{365 - i}{365}$.

b. Computing the product: $k = 22$ gives $P(\text{shared}) \approx 0.476$; $k = 23$ gives $\approx 0.507$. So $k = 23$.

c. $\frac{365 - i}{365} = 1 - \frac{i}{365} \le e^{-i/365}$, so the product is at most $e^{-(0 + 1 + \dots + (k-1))/365} = e^{-k(k-1)/730}$. This bound falls below $\frac12$ when $k(k-1) > 730 \ln 2 \approx 506$, that is roughly $k > \sqrt{506} \approx 22.5$. Since $1 - x \approx e^{-x}$ for small $x$, the bound is also a good approximation, which is why $k = 23$ appears. The surprise is the square root: with $N$ days you need only about $\sqrt N$ people, because the number of pairs grows like $k^2$.

**25.**
a. Let $I_j = 1$ if letter $j$ is in its own envelope. By symmetry letter $j$ is equally likely to be in any of the $n$ envelopes, so $E(I_j) = P(I_j = 1) = \frac1n$. Then $X = I_1 + \dots + I_n$ and, by linearity (no independence needed, and the $I_j$ are in fact dependent), $E(X) = n \cdot \frac1n = 1$.

b. Count arrangements of 5 with no fixed point (derangements) by inclusion–exclusion: $5!\left(1 - \frac1{1!} + \frac1{2!} - \frac1{3!} + \frac1{4!} - \frac1{5!}\right) = 120 - 120 + 60 - 20 + 5 - 1 = 44$. So $P(X = 0) = \frac{44}{120} = \frac{11}{30} \approx 0.367$, very close to $1/e \approx 0.368$. (The bracket is the start of the series for $e^{-1}$.)

**26.** Let $C_i$ = "car behind door $i$", each with prior $\frac13$. Let $H$ = "host opens door 3". Given you chose door 1:
$P(H \mid C_1) = \frac12$ (he picks door 2 or 3 at random), $P(H \mid C_2) = 1$ (door 3 is the only goat door he may open), $P(H \mid C_3) = 0$.
Bayes:

$$
P(C_2 \mid H) = \frac{\frac13 \cdot 1}{\frac13 \cdot \frac12 + \frac13 \cdot 1 + \frac13 \cdot 0} = \frac{\frac13}{\frac12} = \frac23.
$$

So $P(C_1 \mid H) = \frac13$: you should switch, which doubles your chance. Intuition: your first pick is right with probability $\frac13$, and the host's action cannot change that; the remaining $\frac23$ moves onto the one closed door he left.

**27.**
a. A type II error happens if $H_0$ is not rejected, i.e. $X \le 19$, while in fact $p = 0.8$. $P(X \le 19 \mid p = 0.8)$ = binomcdf(25, 0.8, 19) $\approx 0.383$.

b. Not rejecting means $\bar X > 148.36$. If $\mu = 147$, $\bar X$ is normal with mean 147 and $\sigma = 1$: normalcdf(148.355, $10^{99}$, 147, 1) $\approx 0.088$.

c. With only 25 patients the binomial distributions for $p = 0.6$ (mean 15) and $p = 0.8$ (mean 20) overlap a lot, so even a really better medicine fails to reach 20 cures in more than a third of trials. A larger trial makes both distributions relatively narrower ($\sigma/n$ shrinks like $1/\sqrt n$), so they separate and the type II probability drops.

**28.**
a. $p(1-p) = \frac14 - \left(p - \frac12\right)^2 \le \frac14$, with equality at $p = \frac12$. (Or: the parabola $p - p^2$ has derivative $1 - 2p = 0$ at $p = \frac12$, maximum $\frac14$.)

b. $\sigma(X) = \sqrt{np(1-p)}$ and $\hat p = X/n$, so $\sigma(\hat p) = \frac1n\sqrt{np(1-p)} = \sqrt{\dfrac{p(1-p)}{n}}$.

c. By (a), $\sigma(\hat p) \le \sqrt{\frac{1}{4n}} = \frac{1}{2\sqrt n}$. We need $\frac1{2\sqrt n} \le 0.01$, so $\sqrt n \ge 50$, $n \ge 2500$. With 2500 respondents the standard deviation of the poll is at most 1 percentage point, so about 95% of polls land within 2 points of the truth. Note that the size of the population does not appear at all.
