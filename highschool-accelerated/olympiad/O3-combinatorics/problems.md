[← Back to O3 Combinatorics](README.md)

# O3 Combinatorics: problems

Thirty problems in three levels. Write down a final answer for every counting problem and a complete argument for every "prove" or "explain" problem. Hints are at the end; full solutions are in [solutions.md](solutions.md).

---

## Level 1 — Kangoeroe style (wizBRAIN/wizPROF)

**1.** How many four-digit numbers (from 1000 to 9999) have four different digits?
*Topic: product rule*

**2.** How many of the integers $1, 2, \ldots, 999$ contain at least one digit 7?
*Topic: complementary counting*

**3.** How many different "words" (any order of letters, meaningful or not) can be made using all nine letters of KANGOEROE?
*Topic: permutations with repeated letters*

**4.** A class has 6 boys and 5 girls. In how many ways can a committee of 4 pupils be chosen that contains at least one girl?
*Topic: combinations, complementary counting*

**5.** Ten identical sweets are shared among four children so that every child gets at least one sweet. In how many ways can this be done?
*Topic: stars and bars*

**6.** A city has a square grid of streets, 4 blocks wide and 4 blocks high. Anna walks from the south-west corner to the north-east corner, always going east or north along the streets. The crossing in the exact centre of the grid is closed for road works. How many routes can she take?
*Topic: lattice paths*

**7.** There are 21 matches on the table. Two players take turns removing 1, 2 or 3 matches. The player who takes the last match wins. Which player can always win, and how should that player play?
*Topic: games, winning and losing positions*

**8.** Is it possible that in a group of 7 people, each person knows exactly 3 of the others? (Knowing is mutual.) Explain.
*Topic: graphs, handshake lemma*

**9.** Three fair dice are thrown. What is the probability that the sum of the three numbers is exactly 10?
*Topic: probability via counting*

**10.** In how many ways can a $2 \times 10$ rectangle be tiled with ten $1 \times 2$ dominoes (which may be placed horizontally or vertically)?
*Topic: recursion, tilings*

---

## Level 2 — NWO first/second round style

**11.** How many subsets of $\{1, 2, \ldots, 10\}$ (including the empty set) contain no two consecutive integers?
*Topic: recursion*

**12.** How many of the integers $1, 2, \ldots, 1000$ are divisible by none of the numbers 2, 3 and 5?
*Topic: inclusion–exclusion*

**13.** Five letters are put into five addressed envelopes at random, one letter per envelope.
(a) In how many of the $120$ ways do exactly two letters end up in the correct envelope?
(b) What is the probability that no letter ends up in the correct envelope?
*Topic: derangements*

**14.** How many solutions does $x_1 + x_2 + x_3 + x_4 = 20$ have in integers with $0 \le x_i \le 7$ for every $i$?
*Topic: stars and bars, inclusion–exclusion*

**15.** Prove that for every positive integer $n$,

$$
1\cdot\binom{n}{1} + 2\cdot\binom{n}{2} + \cdots + n\cdot\binom{n}{n} = n \cdot 2^{n-1}.
$$

Give a combinatorial (double-counting) proof.
*Topic: double counting*

**16.** Prove the hockey-stick identity: for integers $0 \le r \le n$,

$$
\binom{r}{r} + \binom{r+1}{r} + \cdots + \binom{n}{r} = \binom{n+1}{r+1}.
$$

*Topic: Pascal's triangle, double counting*

**17.** All diagonals of a convex 10-gon are drawn. No three diagonals pass through a common point inside the 10-gon. How many intersection points of diagonals lie inside the 10-gon?
*Topic: bijections*

**18.** Ten people queue at a ticket office. A ticket costs 5 euros. Five of the people pay with a 5-euro note and five pay with a 10-euro note. The office starts with no change. In how many of the possible orders (only counting which positions in the queue hold a 5-euro payer) can every 10-euro payer get change straight away?
*Topic: Catalan numbers, reflection*

**19.** A heap contains $n$ coins. Two players take turns removing 1, 3 or 4 coins from the heap. A player who cannot move loses. For which $n$ with $1 \le n \le 30$ does the **second** player have a winning strategy? Prove your answer.
*Topic: games, winning and losing positions*

**20.** Two different numbers are chosen at random from $\{1, 2, \ldots, 20\}$. What is the probability that their sum is divisible by 3?
*Topic: probability via counting*

**21.** A standard domino set contains every pair $\{a, b\}$ with $0 \le a \le b \le 6$ exactly once (so 28 stones, including the doubles).
(a) Can all 28 stones be laid in one closed ring in which touching ends always show the same number?
(b) Remove all stones that contain a 6. Can the remaining 21 stones be laid in one single line (not necessarily closed) with matching ends?
*Topic: graphs, Euler paths*

**22.** For every nonempty subset $A$ of $\{1, 2, \ldots, 10\}$, write down the smallest element of $A$. What is the sum of all $2^{10} - 1$ numbers written down?
*Topic: double counting*

**23.** A country has 15 cities. Each city has direct roads to at least 7 other cities. Prove that you can travel by road from any city to any other city, passing through at most one other city on the way.
*Topic: graphs, pigeonhole*

---

## Level 3 — NWO final / BxMO (Benelux Mathematical Olympiad) style

**24.** (a) Prove that among any 6 people there are 3 who all know each other or 3 of whom no two know each other.
(b) Show that the statement is false for 5 people.
*Topic: graphs, pigeonhole (Ramsey)*

**25.** A tree has only vertices of degree 1 and degree 3. Exactly 10 vertices have degree 3. How many vertices of degree 1 does it have? Prove your answer and show that such a tree exists.
*Topic: trees, handshake lemma*

**26.** There are $n \ge 3$ coins in a circle. Two players take turns. A move consists of removing one coin, or removing two coins that are next to each other (two coins are next to each other if they were neighbours in the original circle and both are still there). The player who takes the last coin wins. Which player has a winning strategy? Prove it.
*Topic: games, symmetry strategy*

**27.** In Nim there are several heaps of coins. A move consists of choosing one heap and removing any positive number of coins from it. The player who takes the last coin wins. For heap sizes $a_1, \ldots, a_k$, let $s = a_1 \oplus a_2 \oplus \cdots \oplus a_k$ be the Nim-sum (binary addition without carrying).
(a) Prove that the player to move loses (against best play) if $s = 0$ and wins if $s \ne 0$.
(b) The heaps are 3, 5 and 7. Find all winning first moves.
*Topic: games, Nim*

**28.** How many permutations $(a_1, a_2, \ldots, a_6)$ of $1, 2, \ldots, 6$ have the property that there is no position $j$ with $a_{j+1} = a_j + 1$? (So "3 directly followed by 4" is forbidden, but "4 directly followed by 3" is allowed.)
*Topic: inclusion–exclusion*

**29.** (a) Prove that every sequence of 10 distinct real numbers contains an increasing subsequence of length 4 or a decreasing subsequence of length 4. (A subsequence keeps the original order but may skip terms.)
(b) Give a sequence of 9 distinct numbers with neither.
*Topic: pigeonhole, double counting*

**30.** Let $a_n$ be the number of tilings of a $3 \times n$ rectangle with $1 \times 2$ dominoes.
(a) Explain why $a_n = 0$ for odd $n$.
(b) Prove that for even $n \ge 4$, $a_n = 4a_{n-2} - a_{n-4}$ (with $a_0 = 1$).
(c) Compute $a_8$.
*Topic: recursion, tilings*

---

## Hints

1. Choose the first digit first; it cannot be 0.
2. Count the numbers with no 7 at all; treat them as three-digit strings 000 to 999.
3. Nine letters, but two O's and two E's.
4. Count all committees, then remove the all-boy ones.
5. Give every child one sweet first, then use stars and bars.
6. Count all routes, then subtract the routes through the centre.
7. Which numbers of matches are losing for the player to move? Try 4, 8, 12.
8. Add up all the "knows" numbers.
9. Count ordered triples $(a, b, c)$ with sum 10; there are 216 outcomes.
10. Look at the left column: one vertical domino, or two horizontal ones.
11. Does the subset contain 10 or not?
12. Use inclusion–exclusion with multiples of 2, 3, 5, 6, 10, 15 and 30.
13. (a) Choose the two correct letters; the other three must all be wrong.
14. Count without the upper bound, then subtract the solutions where some $x_i \ge 8$.
15. Count the ways to pick a committee from $n$ people together with a chairperson from that committee.
16. Count $(r+1)$-subsets of $\{1, \ldots, n+1\}$ by their largest element.
17. Each intersection point belongs to exactly one set of four vertices.
18. Turn the queue into a path with steps up and down; it must never go below zero.
19. Compute the losing positions for $n = 0, 1, \ldots, 14$ and look for a period.
20. Sort the numbers by their remainder mod 3.
21. Make a graph with vertices $0, \ldots, 6$; each stone is an edge (doubles are loops). Check the degrees.
22. For each $k$, how many subsets have smallest element $k$?
23. If two cities are not directly connected, count their neighbours among the other 13 cities.
24. (a) Fix one person; of the other five, at least three are on the same side. (b) Think of a pentagon.
25. Count edges in two ways: via the number of vertices of a tree, and via the handshake lemma.
26. After the first player's move, the coins form one row. Can you split it into two equal rows?
27. (a) Show that from $s = 0$ every move gives $s \ne 0$, and from $s \ne 0$ some move gives $s = 0$. Look at the highest binary digit of $s$.
28. Let $A_j$ be the permutations in which $j$ is directly followed by $j+1$; glue such pairs into blocks.
29. Label each term with the lengths of the longest increasing and decreasing subsequences ending there.
30. (b) Look at the first place where the board can be cut vertically without cutting a domino.
