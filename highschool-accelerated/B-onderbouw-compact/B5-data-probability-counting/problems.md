# B5 Problems: Data, probability and counting

[← Module overview](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

Give exact answers as fractions unless a decimal is asked for; round decimals to 3 decimal places for probabilities. Use the Dutch school convention for quartiles (notes §2.2). A calculator with nCr is allowed everywhere, but in the challenge section explain your counting, do not just press keys.

## Practice

**1. Levels of measurement.** For each variable, give the level of measurement (nominal, ordinal, interval or ratio):
(a) eye colour; (b) finishing place in a cross-country race; (c) temperature in °C; (d) mass in kg; (e) postcode; (f) number of siblings.
(g) For which of these variables does a mean make sense?

**2. Mean, median, mode, range.** The number of minutes eleven students spent on homework yesterday:
$$
7,\ 3,\ 9,\ 4,\ 7,\ 12,\ 5,\ 7,\ 10,\ 6,\ 41.
$$
(a) Compute the mean, the median, the mode and the range.
(b) The value 41 turns out to be a typing error and is removed. Compute the mean, median and range of the remaining ten values.
(c) Which measure of centre changed most? Explain why.

**3. Quartiles and five-number summary.**
(a) Give the five-number summary and the interquartile range of
$$
12,\ 15,\ 15,\ 18,\ 20,\ 21,\ 23,\ 26,\ 30,\ 34.
$$
(b) Do the same for the eleven values in problem 2 (including the 41).
(c) Draw the boxplot for (b). Which part of the boxplot shows that there is an outlier?

**4. Frequency table.** The heights (cm) of 40 sunflower seedlings:

| Height (cm) | 0 – <10 | 10 – <20 | 20 – <30 | 30 – <40 | 40 – <50 |
|---|---|---|---|---|---|
| Frequency | 3 | 7 | 12 | 10 | 8 |

(a) Add a row with cumulative frequencies.
(b) Estimate the mean height. Why is this only an estimate?
(c) Give the modal class and the class that contains the median.
(d) What percentage of the seedlings is shorter than 30 cm?
(e) Sketch the histogram.

**5. Averages backwards.** Sanne's mean mark on five tests is 7.2 (all tests count equally).
(a) What must she score on the sixth test to get a mean of exactly 7.5?
(b) If she scores a 10 on the sixth test, what is her new mean?

**6. Scatter plot.** Eight students recorded how many hours they studied for a test, and their mark:

| Hours | 1 | 2 | 2 | 3 | 4 | 5 | 5 | 6 |
|---|---|---|---|---|---|---|---|---|
| Mark | 4.8 | 5.5 | 6.1 | 6.0 | 7.2 | 7.0 | 8.1 | 8.4 |

(a) Draw the scatter plot and describe the correlation (direction and strength).
(b) Draw a trend line by eye and use it to predict the mark of a student who studies 4.5 hours.
(c) Is it sensible to use your line for a student who studies 20 hours? Explain.
(d) In a large survey, students who sleep more have higher marks. Give a possible confounding variable, and a possible case of reverse causation.

**7. One die.** Roll a fair die. Find:
(a) $P(\text{prime number})$; (b) $P(\text{not a six})$; (c) $P(\text{even or greater than 4})$, both by listing outcomes and by the formula $P(A)+P(B)-P(A\text{ and }B)$.

**8. Two dice.** Roll two fair dice. Use a 6 by 6 grid.
(a) $P(\text{sum is }7)$ (b) $P(\text{sum is at least }10)$ (c) $P(\text{at least one six})$ (d) $P(\text{product is even})$ (e) $P(\text{double})$.
(f) Explain why $P(\text{sum is } 7)$ is not $\frac{1}{11}$.

**9. Replacement.** A bag holds 5 red and 3 blue marbles. Two marbles are drawn.
For both "with replacement" and "without replacement", find:
(a) $P(\text{both red})$; (b) $P(\text{one red and one blue})$; (c) $P(\text{at least one blue})$.

**10. Multiplication principle.**
(a) A restaurant offers 3 starters, 4 main courses and 2 desserts. How many three-course menus are possible?
(b) A code consists of 3 letters (from 26) followed by 3 digits; repetition is allowed. How many codes are there?
(c) How many whole numbers from 100 to 999 have three different digits?

**11. Permutations.**
(a) In how many orders can 6 people stand in a queue?
(b) 8 swimmers race. How many different top-3 results (gold, silver, bronze) are possible?
(c) Compute $\frac{10!}{7!}$ without a calculator.
(d) How many different "words" can be made from all the letters of WISKUNDE? And from all the letters of PASCAL?

**12. Combinations.**
(a) Compute $\binom{8}{3}$ and $\binom{10}{4}$ and $\binom{10}{6}$.
(b) Explain without calculation why $\binom{10}{4}=\binom{10}{6}$.
(c) A pizzeria has 9 toppings. How many pizzas with exactly 4 different toppings can you order?
(d) Explain in words why $\binom{n}{0}=1$, $\binom{n}{1}=n$ and $\binom{n}{n}=1$.

**13. Pascal's triangle.**
(a) Write down rows 0 to 6 of Pascal's triangle and check that row 6 sums to $2^6$.
(b) Expand $(a+b)^4$.
(c) What is the coefficient of $x^3$ in $(1+x)^7$?
(d) Expand $(2x+1)^3$.

**14. Expected value.** You pay €2 to play. You roll a fair die: a 6 pays €6, a 5 pays €3, anything else pays nothing.
(a) Compute the expected payout.
(b) Compute the expected net gain per game. Is the game fair?
(c) What stake would make the game fair?

## School-exam level

**15. Comparing two classes.** Two klas-1 classes of 28 students each did the same test. The five-number summaries of the marks:

| Class | Minimum | $Q_1$ | Median | $Q_3$ | Maximum |
|---|---|---|---|---|---|
| 1A | 3.1 | 5.4 | 6.3 | 7.2 | 9.0 |
| 1B | 4.5 | 5.9 | 6.1 | 6.6 | 8.2 |

(a) Draw both boxplots above each other on one scale.
(b) Compute the range and the interquartile range for both classes.
(c) About how many students in 1A scored below 5.4?
(d) True or false, with a reason: "At least half of class 1A scored a pass (5.5 or higher)."
(e) True or false, or "cannot be decided": "The mean mark of 1B is higher than that of 1A."
(f) Write two sentences that compare the classes, one about centre and one about spread.

**16. The school bus.** The school bus is late with probability 0.15 on any day, independently of other days. Consider one school week of 5 days.
(a) Compute the probability that the bus is never late that week.
(b) Compute the probability that the bus is late at least once.
(c) Compute the probability that the bus is late on exactly one day.
(d) Compute the probability that it is late on two days or more.

**17. Passwords.** A password consists of 4 characters, each a lower-case letter (26) or a digit (10).
(a) How many passwords are possible?
(b) How many contain at least one digit?
(c) How many have four different characters?
(d) A computer tries 1000 passwords per second. How long does it take, at most, to try all passwords from (a)?

**18. Team selection.** A class has 12 boys and 10 girls. A team of 5 is chosen for a quiz.
(a) How many different teams are possible?
(b) How many teams have exactly 3 girls?
(c) How many teams have at least one girl?
(d) The team is chosen at random. Compute the probability that it has exactly 3 girls.
(e) Now one of the 5 is also named captain. Count the possibilities in two different ways and check that you get the same answer.

**19. Lotto.** In a lottery you choose 6 different numbers from 1 to 45. Six winning numbers are drawn.
(a) How many different tickets are possible?
(b) Compute the probability of the jackpot (all 6 correct).
(c) Compute the probability of exactly 3 correct numbers.
(d) How many tickets have exactly 5 correct numbers?

**20. A dice game at the school fair.** You pay €3 and roll two dice. A double pays €10. A sum of 7 pays €5. Anything else pays nothing.
(a) Explain why "double" and "sum 7" are mutually exclusive.
(b) Compute the expected payout and the expected net gain for the player.
(c) The organisers want the game to be fair at a stake of €3, keeping the €5 for a sum of 7. What should a double pay?

**21. Music survey.** 200 students of klas 1 and 2 were asked whether they play a musical instrument.

|  | Plays | Does not play | Total |
|---|---|---|---|
| Klas 1 | 30 | 70 | 100 |
| Klas 2 | 18 | 82 | 100 |
| Total | 48 | 152 | 200 |

A student is chosen at random.
(a) Compute $P(\text{plays})$.
(b) Compute the probability that the student plays, given that the student is in klas 1.
(c) Compute the probability that the student is in klas 1, given that the student plays.
(d) Are "plays an instrument" and "is in klas 1" independent? Explain.

**22. Reaction times.** 50 people did an online reaction test. Times in milliseconds:

| Time (ms) | 200 – <250 | 250 – <300 | 300 – <350 | 350 – <400 | 400 – <450 |
|---|---|---|---|---|---|
| Frequency | 4 | 11 | 17 | 12 | 6 |

(a) Estimate the mean reaction time.
(b) Make the cumulative frequency table.
(c) What percentage reacted faster than 350 ms? What percentage took 400 ms or more?
(d) In which class is the median?
(e) Assume the times are spread evenly within each class. Estimate the median more precisely.

**23. Walking to school.** Daan's town has a square street grid. School is 5 blocks east and 3 blocks north of his house. He always walks a shortest route (only east and north).
(a) How many shortest routes are there?
(b) His friend Eva lives 2 blocks east and 1 block north of Daan. How many of Daan's shortest routes pass Eva's corner?
(c) Each morning Daan picks one of his shortest routes at random, all equally likely. What is the probability that he passes Eva's corner?

## Challenge

**24. Avoiding a corner.** In a grid, count the shortest routes from $(0,0)$ to $(6,4)$ (steps of one unit east or north) that do **not** pass through the point $(3,2)$.

**25. Handshakes.**
(a) At a party with 10 people, everyone shakes hands with everyone else exactly once. How many handshakes are there? Give two different arguments.
(b) At another party there were 66 handshakes. How many people were there?
(c) How many diagonals does a convex polygon with 10 sides have? Generalise to $n$ sides.

**26. Subsets.** Let $S=\{1,2,\ldots,10\}$.
(a) How many subsets does $S$ have (including the empty set and $S$ itself)?
(b) How many subsets contain the number 1?
(c) Prove that exactly half of the subsets of $S$ have an even number of elements. (Hint: what happens if you "switch" the element 1 in or out?)
(d) What does (c) say about $\binom{10}{0}-\binom{10}{1}+\binom{10}{2}-\cdots+\binom{10}{10}$?

**27. Two identities, proved by counting.** Prove each identity with a combinatorial argument (count one set in two ways). Do not use the factorial formula.
(a) $k\binom{n}{k}=n\binom{n-1}{k-1}$ for $1\le k\le n$. (Hint: a committee of $k$ with a chair.)
(b) The **hockey-stick identity**: $\binom{k}{k}+\binom{k+1}{k}+\binom{k+2}{k}+\cdots+\binom{n}{k}=\binom{n+1}{k+1}$. (Hint: choose $k+1$ numbers from $\{1,2,\ldots,n+1\}$ and look at the largest.)
(c) Check (b) for $k=2$, $n=10$ and draw where these numbers are in Pascal's triangle. Why the name?

**28. Waiting for a six.**
(a) Compute the probability of at least one six in 4 rolls of a die. (In the 17th century the Chevalier de Méré bet on this and won money steadily. Explain why.)
(b) You roll a die until the first six appears. Let $E$ be the expected number of rolls. Explain why $E=1+\frac56E$, and solve for $E$.
(c) More generally, if an event has probability $p>0$ on each independent trial, what is the expected number of trials until it first happens?

**29. Three cards.** A hat contains three cards: one is red on both sides, one is white on both sides, and one is red on one side and white on the other. You draw a card at random and look at one random side: it is red. What is the probability that the other side is red too? (Many people say $\frac12$. Are they right?)

**30. Birthdays and birth months.**
(a) Five people are chosen at random. Assume each of the 12 months is equally likely and independent for each person. Compute the probability that at least two of them were born in the same month.
(b) Ignore leap years and assume all 365 days are equally likely. How many other people must there be in a room for the probability that at least one of them has the **same birthday as you** to be more than $\frac12$? Compare with the birthday problem in the notes (23 people) and explain the difference.
