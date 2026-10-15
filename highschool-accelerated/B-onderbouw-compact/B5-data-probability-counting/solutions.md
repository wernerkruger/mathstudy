# B5 Solutions: Data, probability and counting

[← Module overview](README.md) · [Notes](notes.md) · [Problems](problems.md)

Try every problem seriously before reading its solution. When your answer differs, find the exact step where the two routes split.

## Practice

**1.**
(a) Nominal: colours have no order.
(b) Ordinal: 1st, 2nd, 3rd have an order, but the gap between 1st and 2nd need not equal the gap between 2nd and 3rd.
(c) Interval: differences mean something (10 degrees warmer), but 0 °C is not "no temperature", so ratios do not.
(d) Ratio: 0 kg means no mass, and 20 kg is twice 10 kg.
(e) Nominal: a postcode is a label written with digits; you cannot meaningfully order or add postcodes.
(f) Ratio: a count with a true zero.
(g) A mean makes sense for (c), (d) and (f), the interval and ratio variables.

**2.** Sorted: 3, 4, 5, 6, 7, 7, 7, 9, 10, 12, 41.
(a) Sum $=111$, so the mean is $\frac{111}{11}\approx 10.09$ minutes. The median is the 6th value: 7. The mode is 7 (three times). Range: $41-3=38$.
(b) Without 41 the sum is 70, so the mean is $\frac{70}{10}=7.0$. Sorted: 3, 4, 5, 6, 7, 7, 7, 9, 10, 12; the median is the mean of the 5th and 6th values, $\frac{7+7}{2}=7$. Range: $12-3=9$.
(c) The mean dropped from about 10.09 to 7.0; the median stayed at 7. The mean uses the size of every value, so one extreme value pulls it a long way. The median only depends on which value is in the middle, and removing one value from the far end hardly changes that. (The range changed most of all, from 38 to 9, but it is a measure of spread, not of centre.)

**3.**
(a) $n=10$ (even). Median $=\frac{20+21}{2}=20.5$. Lower half 12, 15, 15, 18, 20 gives $Q_1=15$; upper half 21, 23, 26, 30, 34 gives $Q_3=26$.
Five-number summary: 12, 15, 20.5, 26, 34. Interquartile range: $26-15=11$.
(b) $n=11$ (odd). Median: 7 (the 6th value). Leave it out: lower half 3, 4, 5, 6, 7 gives $Q_1=5$; upper half 7, 9, 10, 12, 41 gives $Q_3=10$.
Five-number summary: 3, 5, 7, 10, 41. Interquartile range: $10-5=5$.
(c) The box runs from 5 to 10 with a line at 7; the left whisker goes from 3 to 5, the right whisker from 10 all the way to 41. The very long right whisker, compared with a box of width 5, shows the outlier. (With the 1.5 × IQR rule from the notes: $10+1.5\cdot5=17.5<41$, so 41 is an outlier.)

**4.**
(a) Cumulative frequencies: 3, 10, 22, 32, 40.
(b) Use the class midpoints 5, 15, 25, 35, 45:
$$
\bar{x}\approx\frac{3\cdot5+7\cdot15+12\cdot25+10\cdot35+8\cdot45}{40}=\frac{1130}{40}=28.25\text{ cm}.
$$
It is an estimate because we pretend every seedling in a class has the midpoint height; we do not know the real values.
(c) Modal class: 20 – <30 (frequency 12). The median lies between the 20th and 21st values. The cumulative frequency is 10 at 20 cm and 22 at 30 cm, so the median is in the class 20 – <30.
(d) $\frac{22}{40}=55\%$.
(e) Five touching bars of equal width over 0–50 with heights 3, 7, 12, 10, 8. The distribution is slightly skewed to the left: the tail is on the low side.

**5.**
(a) Five tests with mean 7.2 have total $5\cdot7.2=36$. For a mean of 7.5 over six tests the total must be $6\cdot7.5=45$. She needs $45-36=9.0$.
(b) $\frac{36+10}{6}=\frac{46}{6}\approx 7.67$.

**6.**
(a) The points rise from lower left to upper right and lie close to a line: a strong positive correlation. (For later: the correlation coefficient is about 0.95.)
(b) A line by eye through roughly $(1,\,4.9)$ and $(6,\,8.3)$ has slope $\frac{8.3-4.9}{5}=0.68$. At 4.5 hours: $4.9+3.5\cdot0.68\approx7.3$. Any answer from about 7.0 to 7.6 is reasonable for a line drawn by eye. (The least-squares line, which you will meet later, gives 7.3.)
(c) No. The data only go up to 6 hours; 20 hours is far outside that range (extrapolation). The line would predict a mark of about 18, which is impossible on a scale up to 10. Marks cannot keep rising in a straight line.
(d) Confounding variable, for example: a calm, well-organised home life or good general health could cause both more sleep and better marks. Reverse causation, for example: students who are on top of their work worry less and therefore sleep better, so good marks lead to more sleep rather than the other way round. (Other sensible answers are fine, for example screen time late at night lowering both sleep and marks.)

**7.** Sample space $\{1,2,3,4,5,6\}$, all equally likely.
(a) Primes: $\{2,3,5\}$, so $\frac36=\frac12$.
(b) $1-\frac16=\frac56$ (complement rule).
(c) Listing: even or greater than 4 is $\{2,4,5,6\}$, so $\frac46=\frac23$. Formula: $P(\text{even})=\frac36$, $P(>4)=\frac26$, $P(\text{even and }>4)=P(\{6\})=\frac16$, so $\frac36+\frac26-\frac16=\frac46=\frac23$. The 6 was in both events and had to be subtracted once.

**8.** There are 36 equally likely ordered pairs.
(a) Sum 7: $(1,6),(2,5),(3,4),(4,3),(5,2),(6,1)$, so $\frac{6}{36}=\frac16$.
(b) Sum 10: 3 pairs; sum 11: 2 pairs; sum 12: 1 pair. Total 6, so $\frac{6}{36}=\frac16$.
(c) Complement: no six on either die in $5\cdot5=25$ pairs, so $1-\frac{25}{36}=\frac{11}{36}$. (Check by counting: row 6 has 6 cells, column 6 has 6 cells, $(6,6)$ is in both: $6+6-1=11$.)
(d) The product is odd only if both dice are odd: $3\cdot3=9$ pairs. So $P(\text{even product})=1-\frac{9}{36}=\frac{27}{36}=\frac34$.
(e) Doubles: 6 pairs, so $\frac16$.
(f) The 11 sums 2, 3, …, 12 are not equally likely: sum 2 happens in 1 way, sum 7 in 6 ways. The Laplace definition only applies to equally likely outcomes, which here are the 36 ordered pairs.

**9.** 8 marbles: 5 red (R), 3 blue (B).

*With replacement* (independent draws, each $P(R)=\frac58$, $P(B)=\frac38$):
(a) $\frac58\cdot\frac58=\frac{25}{64}$.
(b) Paths RB and BR: $\frac58\cdot\frac38+\frac38\cdot\frac58=\frac{30}{64}=\frac{15}{32}$.
(c) $1-P(RR)=1-\frac{25}{64}=\frac{39}{64}$.

*Without replacement:*
(a) $\frac58\cdot\frac47=\frac{20}{56}=\frac{5}{14}$.
(b) $\frac58\cdot\frac37+\frac38\cdot\frac57=\frac{15}{56}+\frac{15}{56}=\frac{30}{56}=\frac{15}{28}$.
(c) $1-\frac{5}{14}=\frac{9}{14}$.

Check: in each case (a) + (b) + $P(BB)$ should be 1. With: $\frac{25+30+9}{64}=1$. Without: $P(BB)=\frac38\cdot\frac27=\frac{6}{56}$ and $\frac{20+30+6}{56}=1$.

**10.**
(a) $3\cdot4\cdot2=24$ menus.
(b) $26\cdot26\cdot26\cdot10\cdot10\cdot10=26^3\cdot10^3=17\,576\,000$ codes.
(c) First digit: 1–9 (9 choices, not 0). Second: any digit except the first (9 choices, now 0 is allowed). Third: any digit except the first two (8 choices). $9\cdot9\cdot8=648$.

**11.**
(a) $6!=720$.
(b) $8\cdot7\cdot6=336$.
(c) $\frac{10!}{7!}=10\cdot9\cdot8=720$: everything from $7$ down to $1$ cancels.
(d) WISKUNDE has 8 different letters, so $8!=40\,320$ words. PASCAL has 6 letters with A twice. If the two A's were different ($A_1$, $A_2$) there would be $6!=720$ words; every real word appears twice (swap $A_1$ and $A_2$), so there are $\frac{720}{2}=360$ words. This is the same division argument as for combinations.

**12.**
(a) $\binom83=\frac{8\cdot7\cdot6}{3\cdot2\cdot1}=56$. $\binom{10}{4}=\frac{10\cdot9\cdot8\cdot7}{4\cdot3\cdot2\cdot1}=210$. $\binom{10}{6}=210$.
(b) Choosing which 4 of the 10 are chosen is the same as choosing which 6 are left out. Each choice of 4 matches exactly one choice of 6.
(c) The order of toppings does not matter and there are no repeats: $\binom94=126$ pizzas.
(d) $\binom{n}{0}$: there is exactly one way to choose nothing. $\binom{n}{1}$: choosing one object means picking one of the $n$. $\binom{n}{n}$: there is exactly one way to choose all of them.

**13.**
(a)
```
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
```
$1+6+15+20+15+6+1=64=2^6$.
(b) Row 4: $(a+b)^4=a^4+4a^3b+6a^2b^2+4ab^3+b^4$.
(c) The term with $x^3$ comes from choosing $x$ from 3 of the 7 brackets: $\binom73=35$.
(d) Row 3 with $a=2x$, $b=1$: $(2x)^3+3(2x)^2+3(2x)+1=8x^3+12x^2+6x+1$.

**14.**
(a) $E(\text{payout})=6\cdot\frac16+3\cdot\frac16+0\cdot\frac46=1+\frac12=1.50$ euros.
(b) Expected net gain $=1.50-2=-0.50$ euros per game. Not fair: on average the player loses 50 cents per game.
(c) A stake of €1.50 makes the expected net gain 0.

## School-exam level

**15.**
(a) One number line from 3 to 9. Class 1A: whiskers from 3.1 to 5.4 and from 7.2 to 9.0, box from 5.4 to 7.2 with a line at 6.3. Class 1B: whiskers from 4.5 to 5.9 and from 6.6 to 8.2, a narrow box from 5.9 to 6.6 with a line at 6.1.
(b) 1A: range $9.0-3.1=5.9$; interquartile range $7.2-5.4=1.8$.
1B: range $8.2-4.5=3.7$; interquartile range $6.6-5.9=0.7$.
(c) About a quarter of 28, so about 7 students.
(d) True. The median of 1A is 6.3. With 28 students the median is the mean of the 14th and 15th marks, so the 15th mark is at least 6.3, and so are the 14 marks from the 15th to the 28th. That is at least half the class with 6.3 or more, which is above 5.5.
(e) Cannot be decided. A boxplot shows the five-number summary, not the mean. Two classes with these summaries could have their means in either order.
(f) For example: "The median mark of 1A (6.3) is slightly higher than that of 1B (6.1), so typical results are about the same. The marks in 1A are much more spread out: the interquartile range is 1.8 against 0.7 in 1B."

**16.** Let $p=0.15$ (late), $1-p=0.85$ (on time). Days are independent, so the product rule applies.
(a) $0.85^5\approx0.444$.
(b) Complement of (a): $1-0.85^5\approx0.556$.
(c) The late day can be any of the 5 days. Each such pattern (for example late, on time, on time, on time, on time) has probability $0.15\cdot0.85^4$, and the 5 patterns are mutually exclusive:
$$
5\cdot0.15\cdot0.85^4\approx0.392.
$$
(d) "Two or more" is the complement of "zero or one": $1-0.85^5-5\cdot0.15\cdot0.85^4\approx1-0.4437-0.3915\approx0.165$. (Use unrounded values from (a) and (c) to avoid rounding errors.)

**17.** There are $26+10=36$ possible characters.
(a) $36^4=1\,679\,616$.
(b) Complement: passwords with no digit use letters only, $26^4=456\,976$. So $1\,679\,616-456\,976=1\,222\,640$ contain at least one digit.
(c) $36\cdot35\cdot34\cdot33=1\,413\,720$.
(d) $\frac{1\,679\,616}{1000}\approx1680$ seconds, which is about 28 minutes. Four characters is far too short for a real password.

**18.** 22 students; the order within the team does not matter.
(a) $\binom{22}{5}=26\,334$.
(b) Choose 3 of the 10 girls and 2 of the 12 boys: $\binom{10}{3}\cdot\binom{12}{2}=120\cdot66=7920$.
(c) Complement: teams with no girl are all-boy teams, $\binom{12}{5}=792$. So $26\,334-792=25\,542$.
(d) $\frac{7920}{26\,334}=\frac{40}{133}\approx0.301$.
(e) First way: choose the team, then one of its 5 members as captain: $5\cdot\binom{22}{5}=5\cdot26\,334=131\,670$. Second way: choose the captain first (22 ways), then the 4 other members from the remaining 21: $22\cdot\binom{21}{4}=22\cdot5985=131\,670$. Same answer, as it must be. (This is problem 27(a) with numbers.)

**19.**
(a) Order does not matter: $\binom{45}{6}=8\,145\,060$ tickets.
(b) Exactly one ticket wins: $\frac{1}{8\,145\,060}\approx0.000\,000\,123$.
(c) Your 6 numbers must contain 3 of the 6 winning numbers and 3 of the 39 losing numbers:
$$
\frac{\binom63\binom{39}{3}}{\binom{45}{6}}=\frac{20\cdot9139}{8\,145\,060}=\frac{182\,780}{8\,145\,060}\approx0.022.
$$
(d) $\binom65\cdot\binom{39}{1}=6\cdot39=234$ tickets.

**20.**
(a) A double has two equal numbers, so its sum is even (2, 4, …, 12). A sum of 7 is odd. They can never happen together.
(b) $P(\text{double})=\frac{6}{36}=\frac16$ and $P(\text{sum }7)=\frac{6}{36}=\frac16$.
$$
E(\text{payout})=10\cdot\frac16+5\cdot\frac16+0\cdot\frac46=\frac{15}{6}=2.50\text{ euros}.
$$
Expected net gain: $2.50-3=-0.50$ euros. The organisers earn 50 cents per game on average.
(c) Let the double pay $x$ euros. Fair means expected payout $=3$:
$$
\frac{x}{6}+\frac56=3\ \Rightarrow\ \frac{x}{6}=\frac{13}{6}\ \Rightarrow\ x=13.
$$
A double should pay €13.

**21.**
(a) $\frac{48}{200}=\frac{6}{25}=0.24$.
(b) Restrict to the klas 1 row: $\frac{30}{100}=0.3$.
(c) Restrict to the "plays" column: $\frac{30}{48}=\frac58=0.625$.
(d) No. If they were independent, knowing the student is in klas 1 would not change the probability of playing. But $P(\text{plays} \mid \text{klas 1})=0.3$, while $P(\text{plays})=0.24$.

**22.**
(a) Midpoints 225, 275, 325, 375, 425:
$$
\bar{x}\approx\frac{4\cdot225+11\cdot275+17\cdot325+12\cdot375+6\cdot425}{50}=\frac{16\,500}{50}=330\text{ ms}.
$$
(b)

| Time less than (ms) | 250 | 300 | 350 | 400 | 450 |
|---|---|---|---|---|---|
| Cumulative frequency | 4 | 15 | 32 | 44 | 50 |

(c) Faster than 350 ms: $\frac{32}{50}=64\%$. 400 ms or more: $\frac{6}{50}=12\%$.
(d) The median is around the 25th value. 15 values are below 300 and 32 below 350, so the median is in 300 – <350.
(e) We need 10 more values beyond the 15 below 300. The class 300 – <350 holds 17 values spread over 50 ms, so go $\frac{10}{17}$ of the way into the class:
$$
300+\frac{10}{17}\cdot50\approx329\text{ ms}.
$$
(Mean 330 and median 329 are almost equal: the distribution is roughly symmetric.)

**23.**
(a) A route is a word of 5 E's and 3 N's: $\binom83=56$ routes.
(b) To Eva's corner (2 E, 1 N): $\binom31=3$ routes. From there to school (3 E, 2 N): $\binom52=10$ routes. Multiplication principle: $3\cdot10=30$ routes.
(c) $\frac{30}{56}=\frac{15}{28}\approx0.536$.

## Challenge

**24.** All routes: 6 E's and 4 N's, so $\binom{10}{4}=210$.
Routes through $(3,2)$: to $(3,2)$ there are $\binom52=10$ routes; from $(3,2)$ to $(6,4)$ another 3 E's and 2 N's, $\binom52=10$ routes. So $10\cdot10=100$ routes pass through $(3,2)$.
Routes avoiding it: $210-100=110$.
(Checked by filling in the grid corner by corner with the "add west and south" rule and a 0 at $(3,2)$: the top-right corner gets 110.)

**25.**
(a) Argument 1: a handshake is a pair of people, and the order in the pair does not matter: $\binom{10}{2}=45$.
Argument 2: each of the 10 people shakes 9 hands, which gives $10\cdot9=90$, but every handshake was counted twice (once by each person): $\frac{90}{2}=45$.
(A third: the first person shakes 9 new hands, the second 8 new ones, …: $9+8+\cdots+1=45$.)
(b) With $n$ people: $\frac{n(n-1)}{2}=66$, so $n(n-1)=132=12\cdot11$. Since $n(n-1)$ grows as $n$ grows, $n=12$ is the only solution: 12 people.
(c) Each pair of the 10 vertices gives a segment: $\binom{10}{2}=45$ segments. Exactly 10 of them are sides; the rest are diagonals: $45-10=35$. In general $\binom{n}{2}-n=\frac{n(n-1)}{2}-n=\frac{n(n-3)}{2}$. (Alternatively: each vertex has $n-3$ diagonals, not to itself or its two neighbours, and each diagonal has two ends.)

**26.**
(a) For each of the 10 elements decide "in" or "out": $2^{10}=1024$ subsets.
(b) 1 is in; decide freely for the other 9 elements: $2^9=512$.
(c) Define a "switch": if a subset contains 1, remove 1; if it does not, add 1. The switch changes the size by exactly one, so it turns every even-size subset into an odd-size subset, and every odd-size subset into an even-size one. Switching twice gives back the original subset, so the switch pairs up the even-size subsets and the odd-size subsets one-to-one. Hence there are equally many of each: $\frac{1024}{2}=512$ subsets of even size.
(d) $\binom{10}{k}$ counts subsets of size $k$. The alternating sum is (number of even-size subsets) minus (number of odd-size subsets) $=512-512=0$. The same argument works for every $n\ge1$; compare the binomial theorem with $a=1$, $b=-1$ in the notes.

**27.**
(a) Count the ways to choose, from $n$ people, a committee of $k$ people with one of them as chair.
Way 1: choose the committee ($\binom{n}{k}$ ways), then the chair from its $k$ members ($k$ ways): $k\binom{n}{k}$.
Way 2: choose the chair first ($n$ ways), then the other $k-1$ members from the remaining $n-1$ people: $n\binom{n-1}{k-1}$.
Both count the same set, so $k\binom{n}{k}=n\binom{n-1}{k-1}$. $\blacksquare$
(b) Count the subsets of size $k+1$ of $\{1,2,\ldots,n+1\}$. Directly, there are $\binom{n+1}{k+1}$.
Now sort them by their **largest** element $m$. Since the subset has $k+1$ elements, $m\ge k+1$, and of course $m\le n+1$. If the largest element is $m$, the other $k$ elements are chosen from $\{1,\ldots,m-1\}$, which has $m-1$ elements: $\binom{m-1}{k}$ ways. Every subset has exactly one largest element, so adding over $m=k+1,\ldots,n+1$ counts every subset exactly once:
$$
\binom{k}{k}+\binom{k+1}{k}+\cdots+\binom{n}{k}=\binom{n+1}{k+1}.\ \blacksquare
$$
(c) $k=2$, $n=10$: $1+3+6+10+15+21+28+36+45=165$ and $\binom{11}{3}=165$. In Pascal's triangle the numbers $1,3,6,\ldots,45$ run down a diagonal (the third one from the edge), and 165 sits just below and to the side of the last one. The diagonal is the handle of the hockey stick and the 165 is the blade.

**28.**
(a) $1-\left(\frac56\right)^4=1-\frac{625}{1296}=\frac{671}{1296}\approx0.518$. This is just above $\frac12$, so betting even money on "at least one six in four rolls" wins slightly more often than it loses. By the law of large numbers, over many bets de Méré made a steady profit. (His other bet, at least one double six in 24 rolls of two dice, has probability $1-\left(\frac{35}{36}\right)^{24}\approx0.491$, just below $\frac12$, and lost money. His puzzlement about this led Pascal and Fermat to found probability theory in their letters of 1654.)
(b) You always make the first roll. With probability $\frac16$ it is a six and you stop. With probability $\frac56$ it is not, and then the situation is exactly as at the start, because the die has no memory: you expect $E$ more rolls. So
$$
E=1+\frac16\cdot0+\frac56\cdot E=1+\frac56E.
$$
Then $\frac16E=1$, so $E=6$.
(A careful point: this assumes $E$ is a finite number. It is, because $P(\text{more than } k \text{ rolls})=\left(\frac56\right)^k$ shrinks very quickly; in D4 you will compute $E$ directly as an infinite sum.)
(c) The same argument gives $E=1+(1-p)E$, so $pE=1$ and $E=\frac1p$. For example, waiting for a double six takes on average 36 rolls of two dice.

**29.** The answer is $\frac23$, not $\frac12$.
Label the six card **sides** as equally likely outcomes: card RR has sides $R_1$, $R_2$; card WW has $W_1$, $W_2$; card RW has $R_3$, $W_3$. Drawing a random card and a random side makes each of the 6 sides equally likely ($\frac13\cdot\frac12=\frac16$ each).
We see red, so the side we see is $R_1$, $R_2$ or $R_3$, three equally likely outcomes. The other side is red when we see $R_1$ (other side $R_2$) or $R_2$ (other side $R_1$), and white when we see $R_3$. So the probability is $\frac23$.
The "$\frac12$" argument ("it is the RR card or the RW card, so 50–50") forgets that the RR card has two ways to show red and the RW card only one. The two cards are not equally likely once you have seen red. This is the same trap as Monty Hall.

**30.**
(a) Complement: all five months different. The first person can have any month, the second one of the 11 others, and so on:
$$
P(\text{all different})=\frac{12\cdot11\cdot10\cdot9\cdot8}{12^5}=\frac{95\,040}{248\,832}=\frac{55}{144}.
$$
So $P(\text{at least two share a month})=1-\frac{55}{144}=\frac{89}{144}\approx0.618$.
(b) With $n$ other people, each misses your birthday with probability $\frac{364}{365}$, independently, so
$$
P(\text{someone shares your birthday})=1-\left(\frac{364}{365}\right)^n.
$$
We need $\left(\frac{364}{365}\right)^n<\frac12$. Trying values on a calculator: $n=252$ gives about $0.4991$ for "someone shares", and $n=253$ gives about $0.5005$. So **253** other people are needed.
The difference with 23: in the birthday problem **any** pair may match, and 23 people form $\binom{23}{2}=253$ pairs. Here only the pairs that include **you** count, so you need about 253 other people to get about the same number of chances. (Not exactly the same: the 253 pairs in a group of 23 are not independent, which is why the numbers do not match perfectly.)
