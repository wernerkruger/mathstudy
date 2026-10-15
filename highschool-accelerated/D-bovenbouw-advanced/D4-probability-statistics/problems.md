# D4 Probability and statistics: problems

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

Give probabilities to 3 decimals unless asked otherwise, as in a Dutch exam. Write down which GR (*grafische rekenmachine*) command you use and with which numbers; on an exam a bare answer earns few points. "*Bereken*" means calculate (exact or with the GR); "*toon aan*" means show that (give a full argument that ends in the given result); "*bewijs*" means prove.

---

## Practice

**1.** A class has 7 girls and 5 boys. A committee of 4 pupils is chosen at random.
a. *Bereken* the probability that the committee has exactly 2 girls.
b. *Bereken* the probability that the committee contains at least one boy.

**2.** The word WISKUNDE has 8 different letters.
a. How many "words" of 4 different letters can be made from these letters?
b. How many different arrangements of all the letters of KANSBOOM are there?
c. In how many ways can you choose 4 of the 8 letters of WISKUNDE if order does not matter?

**3.** A bag contains 5 red and 3 blue marbles. You draw 3 marbles.
a. Without replacement (*zonder terugleggen*): *bereken* $P(\text{exactly 1 red})$ and $P(\text{at least 1 red})$.
b. With replacement (*met terugleggen*): *bereken* $P(\text{exactly 1 red})$ and $P(\text{at least 1 red})$.

**4.** In a survey of 200 pupils, 120 play a sport and 60 play an instrument; 36 do both.
a. Make a two-way table (*kruistabel*).
b. *Bereken* $P(\text{instrument} \mid \text{sport})$ for a randomly chosen pupil.
c. *Toon aan* that "plays a sport" and "plays an instrument" are independent for this group.

**5.** $P(A) = 0.4$ and $P(B) = 0.5$.
a. *Bereken* $P(A \cup B)$ if $A$ and $B$ are disjoint.
b. *Bereken* $P(A \cup B)$ if $A$ and $B$ are independent.
c. Can two disjoint events, both with positive probability, be independent? Explain.

**6.** At a school fair you pay €2 to throw two dice. If you throw double six you get €20. If you throw any other double you get €5. Otherwise you get nothing.
a. Make the probability distribution of the payout $Y$.
b. *Bereken* $E(Y)$ and the expected profit for the player per game.
c. *Bereken* $\sigma(Y)$.

**7.** A random variable $X$ has the distribution below, and $E(X) = 1.6$.

| $x$ | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| $P(X = x)$ | 0.1 | $a$ | $b$ | 0.2 |

a. *Bereken* $a$ and $b$.
b. *Bereken* $\sigma(X)$.

**8.** A packet of biscuits has mean weight 25 g and standard deviation 1.2 g. A box contains 16 packets; the weights are independent.
a. *Bereken* the mean and standard deviation of the total weight of the 16 packets.
b. *Bereken* the mean and standard deviation of the mean weight of the 16 packets.
c. The empty box itself weighs on average 30 g with standard deviation 2 g. *Toon aan* that the standard deviation of the weight of a full box is 5.2 g.
d. Assume all weights are normally distributed. *Bereken* the probability that a full box weighs less than 420 g.

**9.** A multiple-choice test has 20 questions, each with 4 options. Daan guesses every answer.
a. Explain why the number of correct answers $X$ is binomially distributed.
b. *Bereken* $P(X = 5)$ and $P(X \ge 8)$.
c. *Bereken* $E(X)$ and $\sigma(X)$.

**10.** The heights of 15-year-old boys are normally distributed with $\mu = 172$ cm and $\sigma = 8$ cm.
a. *Bereken* the probability that a random boy is taller than 185 cm.
b. *Bereken* the percentage of boys between 160 and 180 cm.
c. *Bereken* the height that 90% of boys stay below.

**11.** A machine fills bottles with a normally distributed amount of liquid. The label says 990 ml.
a. The standard deviation is 4 ml. To what mean $\mu$ must the machine be set so that only 2% of bottles contain less than 990 ml?
b. Another machine has $\mu = 1000$ ml fixed. *Bereken* the largest $\sigma$ for which at most 2% of bottles contain less than 990 ml.

---

## Exam-level (*examenniveau*)

**12. Screening.** A rare disease affects 0.5% of the population. A test gives a positive result for 98% of ill people and for 3% of healthy people.
a. Make a two-way table for 100 000 people.
b. *Bereken* the probability that someone with a positive test is actually ill.
c. *Bereken* the probability that someone with a negative test is healthy.
d. Someone who tested positive is tested a second time, independently. The second test is also positive. *Bereken* the probability that this person is ill.

**13. Quality control.** A batch of 50 phone chargers contains 4 faulty ones. A buyer tests 5 chargers chosen at random (without replacement) and accepts the batch if none of them is faulty.
a. *Bereken* the probability that the batch is accepted.
b. *Bereken* the probability that exactly 1 tested charger is faulty.
c. A colleague computes (a) with the binomial distribution, $n = 5$, $p = 0.08$. What answer does she get? Explain why it is close to, but not the same as, the answer to (a).

**14. Seeds.** 85% of the seeds of a certain plant germinate, independently of each other. A packet contains 40 seeds.
a. *Bereken* the probability that at least 35 seeds germinate.
b. *Bereken* the expected number of seeds that germinate, and the standard deviation.
c. A gardener needs at least 30 plants. *Bereken* how many seeds a packet must contain so that the probability of at least 30 germinating seeds is at least 0.95.

**15. Lift.** A lift may carry at most 1000 kg. The weight of adults is normally distributed with $\mu = 80$ kg and $\sigma = 12$ kg.
a. 12 adults enter. *Bereken* the probability that the maximum load is exceeded.
b. *Bereken* the largest number of adults that may be allowed in so that the probability of exceeding 1000 kg is less than 1%.

**16. Many dice.** A fair die is thrown 600 times. $X$ is the number of sixes.
a. *Bereken* $E(X)$ and $\sigma(X)$.
b. Use the normal approximation with continuity correction to estimate $P(X \le 90)$.
c. Compare with the exact value from binomcdf, and with the value without continuity correction.
d. Estimate $P(95 \le X \le 105)$ with the normal approximation and compare with the exact answer.

**17. A new medicine.** An old medicine cures 60% of patients. A company claims its new medicine is better. In a trial with 25 patients, 20 are cured.
a. Formulate $H_0$ and $H_1$.
b. *Bereken* the p-value (*overschrijdingskans*) and draw a conclusion at $\alpha = 0.05$.
c. Determine the critical region (*kritieke gebied*).

**18. A fair coin?** To test whether a coin is fair, it is tossed 100 times. It lands heads 60 times.
a. Explain why this is a two-sided test, and formulate the hypotheses.
b. Test at significance level 5% using a p-value.
c. Determine the critical region.

**19. Crisps.** A manufacturer claims that bags of crisps contain on average 150 g, with $\sigma = 5$ g (normally distributed). A consumers' organisation suspects the bags contain too little and weighs 25 bags. The mean is 148.2 g.
a. Formulate the hypotheses and test at $\alpha = 0.05$.
b. Determine the critical region for the sample mean.

**20. Study time.** Six pupils recorded how many hours they studied ($x$) and their test score ($y$).

| $x$ | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|
| $y$ | 52 | 55 | 61 | 60 | 68 | 72 |

a. *Bereken* the correlation coefficient $r$ and describe the relation in words.
b. *Bereken* the least-squares regression line.
c. Predict the score after 7 hours. Why would a prediction for 20 hours be meaningless?
d. Does this show that studying causes higher scores? Give an argument for and an argument against.

**21. Waiting for a six.** Sara throws a die until she gets a six, but she stops after at most 3 throws. $X$ is the number of throws.
a. Make the probability distribution of $X$.
b. *Toon aan* that $E(X) = \frac{91}{36}$.
c. *Bereken* $\sigma(X)$.

---

## Challenge

**22.** *Bewijs* (prove) for any random variable $X$ with finitely many values:
a. $\operatorname{Var}(X) = E(X^2) - \big(E(X)\big)^2$.
b. $\operatorname{Var}(aX + b) = a^2 \operatorname{Var}(X)$.
c. $\operatorname{Var}(X) \ge 0$, with equality only if $X$ takes a single value with probability 1. Deduce that $E(X^2) \ge E(X)^2$.

**23. Least squares in detail.** For the regression line $y = ax + b$ with $a = S_{xy}/S_{xx}$ and $b = \bar y - a\bar x$:
a. Show that the residuals add up to 0.
b. Show that $\sum (x_i - \bar x)e_i = 0$, where $e_i$ is the residual of point $i$.
c. Show that the minimum value of $Q$ is $S_{yy}(1 - r^2)$, and deduce that $-1 \le r \le 1$.
d. Check (a) numerically with the data of problem 20.

**24. Birthdays.** Ignore leap years and assume all 365 birthdays are equally likely.
a. Show that the probability that $k$ people all have different birthdays is $\displaystyle\prod_{i=0}^{k-1}\frac{365 - i}{365}$.
b. Find the smallest $k$ for which the probability of a shared birthday is more than 0.5.
c. Use $1 - x \le e^{-x}$ to show that the probability of all different birthdays is at most $e^{-k(k-1)/730}$, and use this to explain why the answer to (b) is close to $\sqrt{730 \ln 2}$.

**25. Letters and envelopes.** $n$ letters are put at random into $n$ addressed envelopes, one per envelope. $X$ is the number of letters in the correct envelope.
a. Use indicator variables to show that $E(X) = 1$ for every $n$.
b. For $n = 5$, count the arrangements in which no letter is correct, and *bereken* $P(X = 0)$. Compare with $1/e$.

**26. Monty Hall.** In a game show there are three doors; behind one is a car. You pick door 1. The host, who knows where the car is, always opens a different door with a goat behind it, choosing at random if he has two options, and offers you a switch. He opens door 3. Use Bayes' rule to *bereken* the probability that the car is behind door 2. Should you switch?

**27. Errors of the second kind.**
a. In problem 17 (critical region from part c), suppose the new medicine actually cures 80% of patients. *Bereken* the probability of a type II error.
b. In problem 19, suppose the true mean is 147 g. *Bereken* the probability that the test does **not** reject $H_0$.
c. Explain in words why the answer to (a) is so large, and what the company could do about it.

**28. How big must a poll be?**
a. *Toon aan* that $p(1-p) \le \frac14$ for all $p$ between 0 and 1.
b. A poll asks $n$ people a yes/no question. The fraction of "yes" is $\hat p = X/n$, with $X$ binomial. *Toon aan* that $\sigma(\hat p) = \sqrt{p(1-p)/n}$.
c. How large must $n$ be to guarantee $\sigma(\hat p) \le 0.01$, whatever $p$ is?
