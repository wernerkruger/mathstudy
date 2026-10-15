# B5 Notes: Data, probability and counting

[← Module overview](README.md)

This module has three parts that belong together. **Statistics** describes data that has already happened. **Probability** (*kansrekening*) predicts what will happen on average when chance is involved. **Counting** (*combinatoriek*) is the engine that makes many probabilities computable: if all outcomes are equally likely, a probability is just one count divided by another.

Keep a pencil nearby. Every worked example is meant to be redone by you before you read the solution.

---

## 1. Data and levels of measurement

A **variable** is something you record about each person or object: eye colour, height, finishing place in a race. Not every variable allows the same arithmetic. The **level of measurement** (*meetniveau*) tells you what you are allowed to do.

| Level | Dutch | What you can do | Examples |
|---|---|---|---|
| Nominal | *nominaal* | only say "same" or "different" | eye colour, postcode, favourite sport |
| Ordinal | *ordinaal* | also put in order | finishing place, "bad / fair / good / excellent" |
| Interval | *interval* | also subtract: differences mean something | temperature in °C, year of birth |
| Ratio | *ratio* (*verhouding*) | also divide: there is a true zero | height, mass, time, number of siblings |

Why does the difference between interval and ratio matter? 20 °C is not "twice as warm" as 10 °C, because 0 °C is not "no heat"; it is just the freezing point of water. But 20 kg really is twice 10 kg, because 0 kg means no mass.

Nominal and ordinal data are often called **qualitative** (*kwalitatief*, also *categorisch*), and interval and ratio data **quantitative** (*kwantitatief*). Quantitative data can be **discrete** (*discreet*: counts such as 0, 1, 2 siblings) or **continuous** (*continu*: measurements such as 1.734 m).

The level tells you which "average" makes sense:

- nominal: only the mode;
- ordinal: mode and median;
- interval and ratio: mode, median and mean.

A postcode is written with digits, but the "mean postcode" of a class is meaningless. Numbers are not automatically quantitative.

---

## 2. Centre and spread; quartiles and boxplots

### 2.1 Three measures of centre

For data $x_1, x_2, \ldots, x_n$:

- the **mean** (*gemiddelde*) is $\bar{x}=\dfrac{x_1+x_2+\cdots+x_n}{n}$;
- the **median** (*mediaan*) is the middle value after sorting; if $n$ is even it is the mean of the two middle values;
- the **mode** (*modus*) is the value that occurs most often (there can be more than one, or none worth mentioning).

**Worked example 1 (why the median is robust).** Five people work in a small shop. Monthly salaries in euros: 2000, 2200, 2400, 2600 and the owner's 20 000.

- Mean: $\frac{29\,200}{5}=5840$.
- Median: the middle value, 2400.

Four of the five people earn less than half of the "average salary". The mean is pulled towards the outlier (*uitschieter*) because every value contributes to the sum: if the owner earned 200 000 instead, the mean would jump to 41 840. The median would not move at all, because it only depends on which value is in the middle, not on how far away the extreme values are. You could change the largest value to anything at all above 2400 and the median would stay 2400. That is what **robust** means.

A useful way to think about the mean: it is the **balance point**. If you put equal weights at each value on a ruler, the ruler balances at $\bar{x}$. The deviations $x_i-\bar{x}$ always add to zero. A single weight far out on the ruler has a long lever and drags the balance point towards it.

So: use the median for skewed data with outliers (house prices, incomes), and the mean when the data is roughly symmetric and you want every value to count.

### 2.2 Range and quartiles

The **range** (*spreidingsbreedte*) is $\text{maximum}-\text{minimum}$. It is simple but it depends only on the two most extreme values, so it is the least robust measure there is.

The **quartiles** (*kwartielen*) split the sorted data into four parts with roughly equal numbers of values:

- $Q_1$, the first quartile (*eerste kwartiel*): the median of the lower half;
- $Q_2$ = the median;
- $Q_3$, the third quartile (*derde kwartiel*): the median of the upper half.

The **interquartile range** (*kwartielafstand*) is $Q_3-Q_1$. It measures the spread of the middle half of the data, and like the median it ignores outliers.

**Convention.** Textbooks, calculators and spreadsheets do not all compute quartiles the same way. In this course we use **the Dutch school convention**, which is also what a TI-84 shows: split the sorted data into a lower half and an upper half; **if $n$ is odd, leave the median itself out of both halves**. Then take the median of each half. A spreadsheet function such as QUARTILE can give slightly different answers for the same data. On a test, always use the school convention.

**Worked example 2 ($n$ odd).** Data: 4, 7, 8, 10, 12, 13, 15, 18, 21 ($n=9$).

- Median: the 5th value, 12.
- Lower half (without the 12): 4, 7, 8, 10, so $Q_1=\frac{7+8}{2}=7.5$.
- Upper half: 13, 15, 18, 21, so $Q_3=\frac{15+18}{2}=16.5$.
- Interquartile range: $16.5-7.5=9$. Range: $21-4=17$.

(A spreadsheet's QUARTILE function gives $Q_1=8$ and $Q_3=15$ here. Neither is "wrong"; they are different definitions.)

**Worked example 3 ($n$ even).** Data: 2, 3, 5, 8, 9, 11, 14, 20 ($n=8$).

- Median: $\frac{8+9}{2}=8.5$.
- Lower half: 2, 3, 5, 8, so $Q_1=\frac{3+5}{2}=4$. Upper half: 9, 11, 14, 20, so $Q_3=\frac{11+14}{2}=12.5$.

### 2.3 Five-number summary and boxplot

The **five-number summary** (*vijfgetallensamenvatting*) is: minimum, $Q_1$, median, $Q_3$, maximum. A **boxplot** (*boxplot*) draws it along a number line: a box from $Q_1$ to $Q_3$ with a line at the median, and whiskers out to the minimum and maximum.

```
          |-------[    |      ]-----------|
          4      7.5   12    16.5         21
```

How to read it: each of the four pieces (left whisker, left part of the box, right part of the box, right whisker) contains about 25% of the data. A long piece does **not** mean more data; it means the same number of values spread over a wider stretch. In the boxplot above, the right whisker is long: the top quarter of the data is spread out.

> **Going further: the 1.5 × IQR rule.** Many statisticians call a value an outlier if it lies more than $1.5\times$ the interquartile range below $Q_1$ or above $Q_3$. Some boxplots then draw the outliers as separate dots and stop the whisker at the last non-outlier. Dutch school books usually do not use this rule, but you will meet it in D4 and in software.

---

## 3. Frequency tables, histograms and comparing distributions

### 3.1 Frequency tables and class intervals

With many values, you group them. A **frequency table** (*frequentietabel*) lists how often each value (or each **class**, *klasse*) occurs. Classes are written like $[6,7)$ or "6 – <7": from 6 up to but not including 7, so every value belongs to exactly one class. The **class midpoint** (*klassenmidden*) is the middle of the class.

**Worked example 4.** Test marks of 25 students:

| Mark | 4 – <5 | 5 – <6 | 6 – <7 | 7 – <8 | 8 – <9 |
|---|---|---|---|---|---|
| Frequency | 2 | 5 | 9 | 6 | 3 |
| Cumulative frequency | 2 | 7 | 16 | 22 | 25 |

- **Estimated mean.** We do not know the exact marks, so we pretend every mark sits at its class midpoint:
$$
\bar{x}\approx\frac{2\cdot 4.5+5\cdot 5.5+9\cdot 6.5+6\cdot 7.5+3\cdot 8.5}{25}=\frac{165.5}{25}=6.62.
$$
It is an estimate, because inside each class the true values could lean to one side.
- **Modal class** (*modale klasse*): 6 – <7, the class with the highest frequency.
- **Median class:** the median is the 13th mark. The **cumulative frequency** (*cumulatieve frequentie*) is the running total; it passes 13 in the class 6 – <7 (7 marks below 6, 16 marks below 7).
- **Relative cumulative frequency:** 16 of the 25 marks, or 64%, are below 7.

### 3.2 Histograms

A **histogram** (*histogram*) is a bar chart for grouped quantitative data: the bars touch, because the classes join up on a continuous number line. With equal class widths, the height of a bar is the frequency. (With unequal widths, the **area** must represent the frequency; avoid unequal widths unless a problem forces them on you.)

The shape tells a story: **symmetric**, **skewed to the right** (*scheef naar rechts*: a long tail of high values, like incomes), or skewed to the left. In a right-skewed distribution the mean is usually larger than the median, because the tail pulls the mean along (§2.1).

A **cumulative frequency polygon** (*cumulatief frequentiepolygoon*) plots the cumulative frequency at the **right end** of each class and joins the points. Reading across at half the total gives an estimate of the median; at a quarter and three quarters, estimates of $Q_1$ and $Q_3$.

### 3.3 Comparing distributions

When you compare two groups, always say something about **centre** and something about **spread**, in context, in full sentences.

> "The median mark in class A (6.3) is a little higher than in class B (6.1), so typical results are similar. But the interquartile range in A is 1.8 against 0.7 in B: the marks in class A are much more spread out."

Two boxplots above each other on the same scale are the standard tool for this. A sentence such as "class A is better" is not a comparison; it needs a measure, a number and a context.

---

## 4. Bivariate data and correlation

**Bivariate data** (*tweedimensionale gegevens*) are pairs: for each student, hours studied **and** test mark. You draw them as a **scatter plot** (*spreidingsdiagram*): one point per pair.

Describe a scatter plot with three things:

1. **Direction:** positive (*positief verband*: higher $x$ tends to go with higher $y$), negative, or none.
2. **Strength:** strong (points close to a line), weak, or none.
3. **Form and outliers:** roughly linear or curved, and any points far from the pattern.

A **trend line** (*trendlijn*) is a straight line through the middle of the cloud of points, with roughly as many points above it as below. You can draw one by eye and then use it to make predictions. Predicting inside the range of the data (interpolation) is reasonable; predicting far outside it (extrapolation) is risky. A line fitted to children aged 4 to 12 does not tell you how tall someone will be at 40.

**Correlation** (*correlatie*) is the word for how strongly two variables move together. Later (D4) you will meet the correlation coefficient $r$, a number between $-1$ and $1$. For now, "strong positive", "weak negative" and "no correlation" are enough.

### Correlation is not causation

A correlation says that two variables move together. It does **not** say that one causes the other (*oorzakelijk verband*). There are three common alternatives:

- **A confounding variable** (a hidden third variable) causes both. Ice-cream sales and the number of drownings are positively correlated. Ice cream does not make people drown: hot weather causes both more ice-cream sales and more swimming.
- **Reverse causation.** Hospitals have more sick people than other buildings, but hospitals do not make people sick; sick people go to hospitals.
- **Coincidence.** If you compare thousands of variables, some pairs will correlate by pure chance.

Another classic: among primary-school children, shoe size and reading level are strongly correlated. The confounder is **age**. Older children have bigger feet and read better.

How do scientists show causation, then? With an **experiment**: split people at random into two groups, change only one thing for one group, and compare. Random assignment spreads the possible confounders evenly over both groups.

---

## 5. Probability: the basic rules

### 5.1 Experiments and sample spaces

A **random experiment** (*kansexperiment*) is something with an uncertain outcome: rolling a die, drawing a card, checking whether the bus is late. The **sample space** (*uitkomstenruimte*) is the set of all possible outcomes. An **event** (*gebeurtenis*) is a set of outcomes.

For one die: sample space $\{1,2,3,4,5,6\}$; the event "even" is $\{2,4,6\}$.

### 5.2 Laplace's definition

If all outcomes in the sample space are **equally likely** (*even waarschijnlijk*), then
$$
P(A)=\frac{\text{number of outcomes in }A}{\text{number of outcomes in the sample space}}.
$$
This is the **Laplace definition** (*kansdefinitie van Laplace*). Then $0\le P(A)\le 1$, $P(\text{impossible})=0$, $P(\text{certain})=1$.

The condition "equally likely" is essential. "Tomorrow it rains or it does not" has two outcomes, but that does not make the probability of rain $\tfrac12$. With two dice, the **sums** 2, 3, …, 12 are not equally likely; the 36 **ordered pairs** $(1,1),(1,2),\ldots,(6,6)$ are. That is why we always count with the 36 pairs: $P(\text{sum }7)=\frac{6}{36}=\frac16$, while $P(\text{sum }2)=\frac{1}{36}$.

### 5.3 Relative frequency and the law of large numbers

For a drawing pin, there is no symmetry to tell you $P(\text{point up})$. You throw it many times and compute the **relative frequency** (*relatieve frequentie*):
$$
\frac{\text{number of times the event happened}}{\text{number of trials}}.
$$
The **law of large numbers** (*wet van de grote aantallen*), informally: as the number of trials grows, the relative frequency settles down closer and closer to the probability. After 10 throws it can be far off; after 10 000 it will almost certainly be close. This is the bridge between probability (a theory) and the real world (data).

The law of large numbers is about **proportions** in the long run. It does **not** say that chance "corrects" itself in the short run; see the gambler's fallacy in §11.

### 5.4 The complement rule

The **complement** (*complement*) of $A$, written "not $A$", consists of all outcomes not in $A$. Since every outcome is either in $A$ or not,
$$
P(\text{not }A)=1-P(A).
$$
This is the **complement rule** (*complementregel*). It is the key to every "at least one" question, because "at least one" has many cases while its complement "none" has only one.

**Worked example 5.** Roll a die 3 times. $P(\text{at least one six})$?
"No six" means each roll is one of 5 non-sixes: $5^3=125$ of the $6^3=216$ equally likely sequences. So
$$
P(\text{at least one six})=1-\frac{125}{216}=\frac{91}{216}\approx 0.421.
$$
(Not $3\cdot\frac16=\frac12$. Why not? See §11.)

### 5.5 The sum rule

Two events are **mutually exclusive** (*disjunct*, *elkaar uitsluitend*) if they cannot both happen. Then their outcomes do not overlap, so the counts simply add:
$$
P(A\text{ or }B)=P(A)+P(B)\quad\text{if }A\text{ and }B\text{ are mutually exclusive.}
$$
This is the **sum rule** (*somregel*).

If they **can** happen together, adding counts the overlap twice. You must subtract it once:
$$
P(A\text{ or }B)=P(A)+P(B)-P(A\text{ and }B).
$$
**Worked example 6.** Draw one card from a standard deck of 52. $P(\text{heart or king})=\frac{13}{52}+\frac{4}{52}-\frac{1}{52}=\frac{16}{52}=\frac{4}{13}$. The king of hearts was counted twice.

---

## 6. Several steps: trees, grids, replacement and conditional probability

### 6.1 The product rule and why it works

Roll a die and toss a coin. What is $P(\text{six and heads})$? List the sample space: 6 die results times 2 coin results gives 12 equally likely pairs, and exactly one of them is (6, heads). So the answer is $\frac{1}{12}=\frac16\cdot\frac12$.

That is not a coincidence. In general: if the first step has $a$ equally likely outcomes of which $p$ are good, and the second has $b$ outcomes of which $q$ are good, and the second step **does not depend on** the first, then the pairs form an $a\times b$ rectangle and the good pairs form a $p\times q$ sub-rectangle:
$$
P=\frac{p\cdot q}{a\cdot b}=\frac{p}{a}\cdot\frac{q}{b}.
$$
Another way to see it: the event $A$ happens in a fraction $P(A)$ of all trials in the long run; among **those** trials, $B$ happens in a fraction $P(B)$, because $B$ does not care what happened with $A$. A fraction of a fraction is a product.

Events like this are **independent** (*onafhankelijk*): knowing whether one happened does not change the probability of the other. The **product rule** (*productregel*):
$$
P(A\text{ and }B)=P(A)\cdot P(B)\quad\text{if }A\text{ and }B\text{ are independent.}
$$

### 6.2 Tree diagrams and grids

A **tree diagram** (*kansboom* or *boomdiagram*) shows the steps one after another. Write the probability on each branch. Then:

- **multiply along a path** (product rule: this happens and then that happens);
- **add the paths** that belong to the event (sum rule: different paths are mutually exclusive).

For two steps with few outcomes, a **grid** (*rooster*) is often clearer: the first step along the top, the second down the side, and one cell per combination. The 6 by 6 grid of two dice is the classic example.

### 6.3 With and without replacement

**Worked example 7.** A bag has 3 red and 2 green marbles. Draw two marbles.

**With replacement** (*met terugleggen*): put the first marble back before drawing again. The second draw sees the same bag, so the draws are independent:
$$
P(\text{red, red})=\frac35\cdot\frac35=\frac{9}{25}.
$$
**Without replacement** (*zonder terugleggen*): keep the first marble out. If the first was red, the bag now has 2 red and 2 green, so the second red has probability $\frac24$:
$$
P(\text{red, red})=\frac35\cdot\frac24=\frac{3}{10}.
$$
Why does the probability change? Because the bag has changed. The draws are now **dependent**: what you got first changes what is left. The product rule still works, but the second factor must be the probability **given what already happened**.

Exactly one red, without replacement, via the tree: two paths, red–green and green–red:
$$
\frac35\cdot\frac24+\frac25\cdot\frac34=\frac{6}{20}+\frac{6}{20}=\frac35.
$$
Check by counting: label the marbles $R_1,R_2,R_3,G_1,G_2$. There are $5\cdot 4=20$ ordered pairs of different marbles; one red and one green gives $3\cdot2+2\cdot3=12$; and $\frac{12}{20}=\frac35$.

### 6.4 Two-way tables and conditional probability

A **two-way table** (*kruistabel*) counts a group by two properties at once.

**Worked example 8.** In a class of 30, 16 are girls; 12 students wear glasses, of whom 5 are girls.

|  | Glasses | No glasses | Total |
|---|---|---|---|
| Girl | 5 | 11 | 16 |
| Boy | 7 | 7 | 14 |
| Total | 12 | 18 | 30 |

Pick a student at random.

- $P(\text{glasses})=\frac{12}{30}=\frac25$.
- If you are told the student is a girl, only the 16 girls remain possible. So the probability of glasses **given** a girl is $\frac{5}{16}$.
- If you are told the student wears glasses, only the 12 in that column remain: the probability of a girl given glasses is $\frac{5}{12}$.

This is **conditional probability** (*voorwaardelijke kans*), written $P(A \mid B)$, "the probability of $A$ given $B$". With a table: **restrict to the row or column you are given, then count inside it.** Notice that $P(\text{glasses} \mid \text{girl})=\frac{5}{16}$ and $P(\text{girl} \mid \text{glasses})=\frac{5}{12}$ are different numbers. Swapping the condition is a common and serious mistake.

Independence can now be stated precisely: $A$ and $B$ are independent when $P(A \mid B)=P(A)$. Here $P(\text{glasses} \mid \text{girl})=\frac{5}{16}\approx 0.31$ while $P(\text{glasses})=0.4$, so in this class "girl" and "glasses" are not independent.

> **Going further: the Monty Hall problem.** In a game show there are three doors: a car behind one, goats behind the other two. You pick a door. The host, who knows where the car is, always opens one of the other doors to show a goat, and offers you the chance to switch. Should you? Switching wins exactly when your first choice was wrong, which has probability $\frac23$. Staying wins only when your first choice was right: $\frac13$. Most people (including some professors when the puzzle was published) insist it must be $\frac12$. Play it 30 times with three cups and a coin to convince yourself.

---

## 7. Counting: the multiplication principle and permutations

### 7.1 The multiplication principle

If a choice happens in stages, with $a$ options in the first stage and, **for each of those**, $b$ options in the second, then there are $a\cdot b$ possibilities in total. This is the **multiplication principle** (*vermenigvuldigingsregel*). It works for any number of stages.

- 4 shirts and 3 trousers: $4\cdot 3=12$ outfits.
- A 4-digit PIN: $10\cdot10\cdot10\cdot10=10^4=10\,000$ codes.

Why it works: draw the tree. The first stage has $a$ branches, each splits into $b$, so there are $a\cdot b$ leaves. The number of options in the second stage may depend on what happened before, as long as the **number** of options is always the same. That is exactly what happens next.

### 7.2 Permutations and factorials

In how many orders can you put 5 different books on a shelf? 5 choices for the first place, then 4 left for the second, then 3, 2, 1:
$$
5\cdot4\cdot3\cdot2\cdot1=120.
$$
An ordering of all $n$ objects is a **permutation** (*permutatie*). The number of permutations is $n!$, read "$n$ factorial" (*$n$ faculteit*):
$$
n!=n\cdot(n-1)\cdot(n-2)\cdots 2\cdot 1.
$$
Factorials grow incredibly fast: $10!=3\,628\,800$, and $52!$ has 68 digits. Any well-shuffled deck of cards is almost certainly in an order no deck has ever had before.

By agreement $0!=1$: there is exactly one way to arrange nothing (do nothing). This also makes the formulas below work without exceptions.

### 7.3 Ordered selections without repetition

In a race with 10 runners, how many possible podiums (gold, silver, bronze) are there? $10\cdot9\cdot8=720$. In general, the number of ordered selections of $k$ out of $n$ different objects, without repetition, is
$$
n\cdot(n-1)\cdots(n-k+1)=\frac{n!}{(n-k)!}.
$$
(The fraction is the full product $n!$ with the tail $(n-k)!$ cancelled.) Calculators call this nPr.

Compare with **repetition allowed**: a 3-letter code where letters may repeat has $26^3$ possibilities; with no repeats, $26\cdot25\cdot24$.

---

## 8. Combinations

### 8.1 When order does not matter

From 10 runners, choose a team of 3 for a relay heat, where all three are simply "in the team". Now the selection $\{\text{Anna, Bram, Cas}\}$ is one team, however you list it.

**The division argument.** Count ordered selections first: $10\cdot9\cdot8=720$. Every team of 3 appears in this list exactly $3!=6$ times, once for each order of its three members. So the number of teams is
$$
\frac{720}{6}=120.
$$
The same argument in general: the number of ordered selections of $k$ out of $n$ is $\frac{n!}{(n-k)!}$, and each unordered selection appears $k!$ times, so the number of unordered selections, called **combinations** (*combinaties*), is
$$
\binom{n}{k}=\frac{n!}{k!\,(n-k)!}.
$$
Read $\binom{n}{k}$ as "$n$ choose $k$" (Dutch: "$n$ boven $k$"). On a calculator it is **nCr**: on a TI-84, type 10, then MATH, PRB, nCr, then 3.

This is a genuine **proof**: we counted the set of ordered selections in two ways (directly, and as "choose the set, then order it": $\binom{n}{k}\cdot k!$), and two correct counts of the same set must be equal.

A few values worth knowing: $\binom{n}{0}=\binom{n}{n}=1$, $\binom{n}{1}=n$, $\binom{n}{2}=\frac{n(n-1)}{2}$.

### 8.2 Symmetry

$$
\binom{n}{k}=\binom{n}{n-k}.
$$
The formula shows it (swap $k!$ and $(n-k)!$), but the counting reason is nicer: choosing which $k$ people **go on** the trip is the same as choosing which $n-k$ people **stay home**. Each choice of one determines exactly one choice of the other.

### 8.3 Which formula?

Ask two questions: **does order matter?** and **is repetition allowed?**

| | Order matters | Order does not matter |
|---|---|---|
| Repetition allowed | $n^k$ (PIN codes) | see "stars and bars" below |
| No repetition | $\frac{n!}{(n-k)!}$ (podiums) | $\binom{n}{k}$ (teams, lotto) |

**Worked example 9.** A committee of 2 boys and 2 girls is chosen from 5 boys and 4 girls. Choose the boys: $\binom52=10$ ways. For each, choose the girls: $\binom42=6$ ways. Multiplication principle: $10\cdot6=60$ committees.

**Worked example 10.** A poker hand is 5 cards from 52, order irrelevant: $\binom{52}{5}=2\,598\,960$ hands.

> **Going further: stars and bars.** In how many ways can you share 10 identical sweets among 3 children (some may get none)? Write the sweets as 10 stars in a row and put 2 bars between them to cut the row into 3 parts, for example `***|*****|**`. Every sharing corresponds to exactly one arrangement of 10 stars and 2 bars, and an arrangement is fixed by choosing which 2 of the 12 positions are bars: $\binom{12}{2}=66$ ways. In general, $n$ identical objects into $k$ boxes: $\binom{n+k-1}{k-1}$.

---

## 9. Grid routes and Pascal's triangle

### 9.1 Routes in a grid

In a city with a square street grid, you walk from corner $A$ to corner $B$, which is 4 blocks east and 3 blocks north, always moving east (E) or north (N). How many shortest routes (*roosterwegen*) are there?

Every route is a word of 7 letters with exactly 4 E's and 3 N's, for example EENENNE. Conversely every such word is a route. A word is fixed by choosing **which 3 of the 7 positions** are N:
$$
\binom73=35\text{ routes.}
$$
Routes **through** a given point: multiply the number of routes to that point by the number of routes from it to the end. Routes **avoiding** a point: all routes minus the routes through it (complement idea again).

There is a second way to count, corner by corner. The number of routes to a corner equals the number to the corner just west of it plus the number to the corner just south of it, because the last step comes from exactly one of those two. Fill in the grid with 1's along the bottom and left edges and add as you go. The numbers you get are exactly Pascal's triangle, turned on its side.

### 9.2 Pascal's triangle

Write the numbers $\binom{n}{k}$ in rows $n=0,1,2,\ldots$:

```
row 0:              1
row 1:            1   1
row 2:          1   2   1
row 3:        1   3   3   1
row 4:      1   4   6   4   1
row 5:    1   5  10  10   5   1
row 6:  1   6  15  20  15   6   1
```

This is **Pascal's triangle** (*driehoek van Pascal*). Each number is the sum of the two numbers above it. Why?

**Pascal's rule.** For $1\le k\le n-1$:
$$
\binom{n}{k}=\binom{n-1}{k-1}+\binom{n-1}{k}.
$$
**Combinatorial proof.** Count the ways to choose a team of $k$ from $n$ people, one of whom is called Pim. Every team either contains Pim or it does not, never both.

- Teams **with** Pim: Pim is in, and we still choose $k-1$ others from the remaining $n-1$: $\binom{n-1}{k-1}$ ways.
- Teams **without** Pim: all $k$ come from the other $n-1$: $\binom{n-1}{k}$ ways.

These two groups do not overlap and together contain every team, so the totals add up to $\binom{n}{k}$. $\blacksquare$

No algebra with factorials needed. That is the power of counting the same thing in two ways.

**Row sums.**
$$
\binom{n}{0}+\binom{n}{1}+\cdots+\binom{n}{n}=2^n.
$$
**Combinatorial proof.** Count all subsets of a set of $n$ elements in two ways. First way: sort them by size; there are $\binom{n}{k}$ subsets of size $k$, so the total is the left-hand side. Second way: build a subset by going through the $n$ elements one at a time and deciding "in" or "out" for each; that is 2 choices, $n$ times, so $2^n$ subsets by the multiplication principle. Both count the same set. $\blacksquare$

Check: row 6 sums to $1+6+15+20+15+6+1=64=2^6$.

**Symmetry** shows up as the left–right mirror symmetry of each row (§8.2).

> **Going further: the binomial theorem.** Expand $(a+b)^3=(a+b)(a+b)(a+b)$. Each term of the expansion comes from choosing $a$ or $b$ from each of the three brackets. You get $a^2b$ whenever you pick $b$ from exactly one bracket: $\binom31=3$ ways. So
> $$
> (a+b)^3=a^3+3a^2b+3ab^2+b^3,
> $$
> and in general
> $$
> (a+b)^n=\sum_{k=0}^{n}\binom{n}{k}a^{n-k}b^{k}.
> $$
> The coefficients are row $n$ of Pascal's triangle. Put $a=b=1$ and you get the row sum $2^n$ again. Put $a=1$, $b=-1$ and you find that the alternating sum of each row (from row 1 on) is $0$.

---

## 10. Expected value

### 10.1 Long-run average

A game: you pay €1, roll a die, and win €4 if you roll 5 or 6. Is it worth playing?

Imagine playing 600 times. By the law of large numbers you win in about $\frac13$ of them, about 200 times, so you collect about $200\cdot 4=800$ euros and pay 600. On average you gain about $\frac{200}{600}$, one third of a euro, per game.

The calculation behind this: the payout $X$ is 4 with probability $\frac13$ and 0 with probability $\frac23$. The **expected value** (*verwachtingswaarde*) of $X$ is
$$
E(X)=4\cdot\frac13+0\cdot\frac23=\frac43\approx 1.33.
$$
In general, if $X$ takes the values $x_1,\ldots,x_m$ with probabilities $p_1,\ldots,p_m$, then
$$
E(X)=x_1p_1+x_2p_2+\cdots+x_mp_m.
$$
**Why this is a long-run average:** in $N$ games, value $x_i$ turns up about $p_iN$ times. The total is about $x_1p_1N+\cdots+x_mp_mN$, and dividing by $N$ gives exactly $E(X)$. So expected value is the mean of §2, computed in advance from probabilities instead of afterwards from data. It is a frequency table where relative frequencies are replaced by probabilities.

The expected value need not be a possible outcome. For one die, $E=\frac{1+2+3+4+5+6}{6}=3.5$, and you never roll 3.5.

### 10.2 Fair games

A game is **fair** (*eerlijk*) if the expected **net** gain (*verwachte winst*: payout minus stake) is $0$. The game above has expected net gain $\frac43-1=\frac13$ euro for the player, so it favours the player; the fair stake is $\frac43\approx$ €1.33.

**Worked example 11 (roulette).** European roulette has 37 pockets: 18 red, 18 black and one green zero. Bet €1 on red; if red comes up you get €2 back (your euro plus one more). Expected payout: $2\cdot\frac{18}{37}=\frac{36}{37}$. Expected net gain: $\frac{36}{37}-1=-\frac{1}{37}\approx -0.027$. The casino keeps about 2.7 cents of every euro bet, on average, forever. That single green pocket is the whole business model.

### 10.3 Linearity

Expected values add: $E(X+Y)=E(X)+E(Y)$, and $E(cX)=c\,E(X)$ for a constant $c$. Informal reason: the long-run average of a sum is the sum of the long-run averages. This is true **even when $X$ and $Y$ are dependent**, which makes it extraordinarily useful.

- The sum of two dice has expected value $3.5+3.5=7$. (Check with the 36-cell grid if you like; it takes much longer.)
- The total of 10 dice has expected value 35.
- If a game pays €4 per six rolled and you roll 3 dice, the expected payout is $3\cdot4\cdot\frac16=$ €2.

> **Going further: waiting for a six.** On average, how many rolls does it take to get the first six? Your intuition probably says 6, and it is right. Problem 28 asks you to prove it.

---

## 11. Common mistakes

**Adding probabilities of events that are not mutually exclusive.** "The chance of at least one six in 3 rolls is $3\cdot\frac16=\frac12$." Wrong: the events "six on roll 1", "six on roll 2", "six on roll 3" can happen together, so adding counts the overlaps more than once. With 7 rolls this reasoning would give $\frac76>1$, which is impossible. Use the complement rule: $1-\left(\frac56\right)^3$.

**Treating dependent events as independent.** Drawing without replacement, drawing cards, choosing people for a team: the second step depends on the first. Ask "does the first result change the situation for the second?" If yes, the second factor in the product is a conditional probability.

**The gambler's fallacy.** "Red has come up 6 times in a row, so black is due." The roulette wheel has no memory; the next spin is independent of the previous ones and $P(\text{black})$ is still $\frac{18}{37}$. The law of large numbers does not work by compensating. Early streaks are not cancelled out; they are **diluted** by the thousands of later spins.

**Order matters or not?** Before counting, ask: if I swap two chosen items, do I get a different result? A podium (gold/silver/bronze): yes, so order matters. A team or a lottery ticket: no, so use $\binom{n}{k}$. Mixing these up gives answers that are off by a factor $k!$.

**Laplace without equal likelihood.** Saying $P(\text{sum } 7)=\frac{1}{11}$ because there are 11 possible sums. The sums are not equally likely; the 36 ordered pairs are.

**Swapping the condition.** $P(\text{glasses} \mid \text{girl})$ is not $P(\text{girl} \mid \text{glasses})$. Identify which group you are restricting to.

**Correlation is not causation.** A strong correlation in a scatter plot proves only that the variables move together. Before claiming a cause, look for a confounding variable, reverse causation, or coincidence.

**Mean of grouped data presented as exact.** A mean computed from class midpoints is an estimate. Say so.

> **Going further: the birthday problem.** How many people must be in a room for the probability that two of them share a birthday to be more than $\frac12$? (Ignore 29 February and assume all 365 days are equally likely.) Use the complement: the probability that $n$ people all have **different** birthdays is
> $$
> \frac{365}{365}\cdot\frac{364}{365}\cdot\frac{363}{365}\cdots\frac{365-n+1}{365}.
> $$
> For $n=23$ this drops below $\frac12$ for the first time: the probability of a shared birthday is about $0.507$. With 30 people it is about $0.706$. The surprise is that 23 people form $\binom{23}{2}=253$ pairs, and each pair is a chance for a match. Compare problem 30, where you ask instead for someone sharing **your** birthday.
