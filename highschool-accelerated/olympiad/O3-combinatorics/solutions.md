[← Back to O3 Combinatorics](README.md)

# O3 Combinatorics: solutions

Read a solution only after a serious attempt. For proof problems, check that your own proof covers every case that the solution covers.

---

## Level 1

**1.** The first digit can be 1 to 9: 9 choices. The second digit can be any digit except the first: 9 choices (0 is now allowed). The third: 8 choices; the fourth: 7 choices. By the product rule the answer is $9 \cdot 9 \cdot 8 \cdot 7 = \mathbf{4536}$.

**2.** Write every number from 0 to 999 as a three-digit string (000 to 999). The strings without a 7 have 9 choices per digit, so there are $9^3 = 729$ of them. One of them is 000, which is not in our range, so $728$ of the numbers $1, \ldots, 999$ contain no 7. The answer is $999 - 728 = \mathbf{271}$.

**3.** KANGOEROE has 9 letters: K, A, N, G, R once each, O twice and E twice. The number of arrangements is

$$
\frac{9!}{2!\,2!} = \frac{362880}{4} = \mathbf{90720}.
$$

**4.** All committees: $\binom{11}{4} = 330$. Committees with no girl (all boys): $\binom{6}{4} = 15$. With at least one girl: $330 - 15 = \mathbf{315}$.

**5.** Give each child one sweet first. Then 6 identical sweets remain, to be shared among 4 children with no restriction. By stars and bars (6 stars, 3 bars) there are $\binom{9}{3} = \mathbf{84}$ ways.

**6.** A route is a word of 4 E's (east) and 4 N's (north), so there are $\binom{8}{4} = 70$ routes in total. The centre crossing is 2 blocks east and 2 blocks north of the start. Routes through it: $\binom{4}{2}$ ways to get there times $\binom{4}{2}$ ways to continue, so $6 \cdot 6 = 36$. Routes avoiding it: $70 - 36 = \mathbf{34}$.

**7.** **The first player wins**, by taking **1 match** at the start.

The losing positions for the player to move are the multiples of 4 (including 0: with no matches left, the previous player took the last match and won). From a multiple of 4, taking 1, 2 or 3 never gives a multiple of 4. From any other number, taking the remainder mod 4 (1, 2 or 3 matches) gives a multiple of 4. So the first player takes 1, leaving 20. After that, whenever the opponent takes $x$ matches, she takes $4 - x$. The number left is 16, 12, 8, 4 and finally 0 after her move, so she takes the last match.

**8.** **No.** Make a graph with the 7 people as vertices and an edge between two people who know each other. If everyone knew exactly 3 others, the sum of the degrees would be $7 \cdot 3 = 21$. By the handshake lemma this sum is twice the number of edges, so it must be even. Contradiction.

**9.** There are $6^3 = 216$ equally likely ordered outcomes $(a, b, c)$. We count those with $a + b + c = 10$ and $1 \le a, b, c \le 6$. Put $a' = a - 1$ and so on: $a' + b' + c' = 7$ with $0 \le a', b', c' \le 5$. Without the upper bound there are $\binom{9}{2} = 36$ solutions. A solution with $a' \ge 6$ has $a' - 6 + b' + c' = 1$, which has $\binom{3}{2} = 3$ solutions; the same for $b'$ and $c'$. Two variables cannot both be at least 6. So there are $36 - 9 = 27$ favourable outcomes, and the probability is $\frac{27}{216} = \mathbf{\frac{1}{8}}$.

**10.** Let $t_n$ be the number of tilings of a $2 \times n$ rectangle. The left column is covered either by one vertical domino (then a $2 \times (n-1)$ rectangle remains) or by two horizontal dominoes on top of each other (they must both be horizontal: if the top-left cell is covered by a horizontal domino, the bottom-left cell cannot be covered by a vertical one, so it is also horizontal; then a $2 \times (n-2)$ rectangle remains). So $t_n = t_{n-1} + t_{n-2}$ with $t_1 = 1$ and $t_2 = 2$. The sequence is $1, 2, 3, 5, 8, 13, 21, 34, 55, 89$, so $t_{10} = \mathbf{89}$.

---

## Level 2

**11.** Let $a_n$ be the number of subsets of $\{1, \ldots, n\}$ with no two consecutive integers, so $a_0 = 1$ (only the empty set) and $a_1 = 2$. Such a subset either does not contain $n$ (then it is a good subset of $\{1, \ldots, n-1\}$) or does contain $n$ (then it does not contain $n-1$, and the rest is a good subset of $\{1, \ldots, n-2\}$). So $a_n = a_{n-1} + a_{n-2}$. The values are $1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144$ for $n = 0, \ldots, 10$. Answer: $\mathbf{144}$.

**12.** Let $A_d$ be the set of multiples of $d$ in $\{1, \ldots, 1000\}$, with $|A_d| = \lfloor 1000/d \rfloor$. A number divisible by both 2 and 3 is divisible by 6, and so on. By inclusion–exclusion,

$$
|A_2 \cup A_3 \cup A_5| = (500 + 333 + 200) - (166 + 100 + 66) + 33 = 1033 - 332 + 33 = 734.
$$

So $1000 - 734 = \mathbf{266}$ numbers are divisible by none of 2, 3 and 5.

**13.** (a) Choose which two letters are correct: $\binom{5}{2} = 10$ ways. The other three letters must all be in a wrong envelope, which is a derangement of 3 objects: $D_3 = 2$ ways. Answer: $10 \cdot 2 = \mathbf{20}$.

(b) The number of derangements of 5 is

$$
D_5 = 5!\left(1 - 1 + \frac{1}{2} - \frac{1}{6} + \frac{1}{24} - \frac{1}{120}\right) = 120 - 120 + 60 - 20 + 5 - 1 = 44.
$$

The probability is $\frac{44}{120} = \mathbf{\frac{11}{30}}$.

**14.** Without upper bounds, the number of non-negative solutions of $x_1 + x_2 + x_3 + x_4 = 20$ is $\binom{23}{3} = 1771$. Let $B_i$ be the set of solutions with $x_i \ge 8$. Substituting $x_i' = x_i - 8$ gives a sum of 12, so $|B_i| = \binom{15}{3} = 455$. Two variables at least 8 leave a sum of 4: $|B_i \cap B_j| = \binom{7}{3} = 35$. Three variables at least 8 would need a sum of at least 24, so those intersections are empty. By inclusion–exclusion the number of solutions with all $x_i \le 7$ is

$$
1771 - 4 \cdot 455 + 6 \cdot 35 = 1771 - 1820 + 210 = \mathbf{161}.
$$

**15.** *Proof.* We count, in two ways, the pairs (committee, chair) where the committee is a nonempty subset of a group of $n$ people and the chair is one member of the committee.

*First count.* For a committee of size $k$ there are $\binom{n}{k}$ choices of committee and then $k$ choices of chair. Summing over $k = 1, \ldots, n$ gives $\sum_{k=1}^{n} k\binom{n}{k}$.

*Second count.* Choose the chair first: $n$ ways. Then decide for each of the other $n-1$ people whether they are on the committee: $2^{n-1}$ ways. This gives $n \cdot 2^{n-1}$.

Both counts count the same set, so they are equal. $\blacksquare$

**16.** *Proof.* Count the $(r+1)$-element subsets of $\{1, 2, \ldots, n+1\}$. There are $\binom{n+1}{r+1}$ of them.

Now sort them by their largest element. If the largest element is $m+1$, then the other $r$ elements are chosen from $\{1, \ldots, m\}$, in $\binom{m}{r}$ ways. The largest element of an $(r+1)$-subset is at least $r+1$ and at most $n+1$, so $m$ runs from $r$ to $n$. Every subset has exactly one largest element, so it is counted exactly once. Hence

$$
\binom{r}{r} + \binom{r+1}{r} + \cdots + \binom{n}{r} = \binom{n+1}{r+1}. \qquad \blacksquare
$$

**17.** Any four vertices of the 10-gon form a convex quadrilateral, whose two diagonals are diagonals of the 10-gon and cross at exactly one interior point. Conversely, two diagonals that cross inside the 10-gon have four different endpoints, and they are exactly the diagonals of the quadrilateral on those four vertices. Because no three diagonals pass through one point, each intersection point lies on exactly two diagonals, so it comes from exactly one set of four vertices. This is a bijection between intersection points and 4-element sets of vertices. Answer: $\binom{10}{4} = \mathbf{210}$.

**18.** Write $+1$ for a 5-euro payer and $-1$ for a 10-euro payer. After the first $j$ people, the till contains (number of $+1$'s) minus (number of $-1$'s) 5-euro notes, which is the partial sum. Each 10-euro payer can get change exactly when the partial sum never becomes negative. So we count sequences of five $+1$'s and five $-1$'s with all partial sums $\ge 0$.

There are $\binom{10}{5} = 252$ sequences in total. Call a sequence bad if some partial sum equals $-1$. In a bad sequence, take the first moment the partial sum is $-1$ and flip the signs of all terms up to and including that moment. The prefix had $t$ plus-ones and $t+1$ minus-ones; after flipping it has $t+1$ and $t$. So the new sequence has six $+1$'s and four $-1$'s. Conversely, every sequence with six $+1$'s and four $-1$'s ends at $+2$, so its partial sums pass through $+1$; flipping the prefix up to the first time the partial sum is $+1$ recovers a bad sequence. This is a bijection, so there are $\binom{10}{4} = 210$ bad sequences. The answer is $252 - 210 = \mathbf{42}$, the Catalan number $C_5$.

**19.** The second player wins exactly for $\mathbf{n = 2, 7, 9, 14, 16, 21, 23, 28, 30}$, that is, when $n$ leaves remainder 0 or 2 on division by 7.

*Proof.* Let $L$ be the set of non-negative integers with remainder 0 or 2 mod 7. We show that $L$ is exactly the set of losing positions for the player to move.

- $0 \in L$, and the player facing 0 coins cannot move, so loses.
- From a position in $L$, every move leaves $L$. Remainder 0 goes to remainder 6, 4 or 3. Remainder 2 goes to remainder 1, 6 or 5. None of these is 0 or 2.
- From a position $n \notin L$ there is a move into $L$. Remainder 1: take 1 (to remainder 0). Remainder 3: take 1 (to remainder 2). Remainder 4: take 4 (to remainder 0). Remainder 5: take 3 (to remainder 2). Remainder 6: take 4 (to remainder 2). Each move is allowed, since $n$ is at least the remainder, which is at least the number of coins taken.

So the player who can always move into $L$ wins: from a position in $L$ the player to move must leave $L$, and the opponent can return to $L$, until the player to move faces 0. Hence the second player wins exactly when $n \in L$. For $1 \le n \le 30$ these are the nine values above.

**20.** There are $\binom{20}{2} = 190$ equally likely pairs. Sort the numbers by remainder mod 3: remainder 0 has 6 numbers (3, 6, ..., 18), remainder 1 has 7 (1, 4, ..., 19) and remainder 2 has 7 (2, 5, ..., 20). The sum is divisible by 3 when both numbers have remainder 0 ($\binom{6}{2} = 15$ pairs) or one has remainder 1 and the other remainder 2 ($7 \cdot 7 = 49$ pairs). That gives $64$ pairs, and the probability is $\frac{64}{190} = \mathbf{\frac{32}{95}}$.

**21.** Make a graph with vertices $0, 1, \ldots, 6$. Each stone $\{a, b\}$ with $a \ne b$ is an edge between $a$ and $b$, and each double $\{a, a\}$ is a loop at $a$ (a loop adds 2 to the degree). A line of stones with matching ends is exactly a walk in this graph that uses each edge once; a closed ring is a closed such walk.

(a) **Yes.** The graph is connected (every two numbers share a stone). Each vertex has 6 ordinary edges and one loop, so its degree is $6 + 2 = 8$, which is even. By Euler's theorem there is a closed walk that uses every edge exactly once, and this is a closed ring of all 28 stones. (A loop can be inserted into the walk at any moment the walk visits its vertex, so the doubles cause no trouble. You do not need to build the ring explicitly.)

(b) **No.** Now the vertices are $0, \ldots, 5$ and each has 5 ordinary edges and one loop, so degree $5 + 2 = 7$, which is odd. In a line of stones, every number that appears in the middle of the line appears on two touching halves, so each number appears on an even number of stone halves, except the numbers at the two free ends. Each of the six numbers appears on 7 halves (odd), so all six numbers would have to be at an end of the line. A line has only two ends. Contradiction.

**22.** For $k = 1, \ldots, 10$, the subsets with smallest element $k$ consist of $k$ together with any subset of $\{k+1, \ldots, 10\}$, so there are $2^{10-k}$ of them. The total is

$$
\sum_{k=1}^{10} k \cdot 2^{10-k} = 512 + 512 + 384 + 256 + 160 + 96 + 56 + 32 + 18 + 10 = \mathbf{2036}.
$$

*Shortcut by double counting.* The smallest element $m$ of $A$ equals the number of $t \in \{1, \ldots, 10\}$ with $t \le m$, that is, with $A \subseteq \{t, \ldots, 10\}$. So the total equals the number of pairs $(t, A)$ with $A$ a nonempty subset of $\{t, \ldots, 10\}$, which is $\sum_{t=1}^{10}(2^{11-t} - 1) = (2^{11} - 2) - 10 = 2036$.

**23.** *Proof.* Make a graph with the cities as vertices and the roads as edges; every vertex has degree at least 7. Take two cities $u$ and $v$. If they are joined by a road, we are done. Otherwise, all neighbours of $u$ and of $v$ lie among the other $15 - 2 = 13$ cities. $u$ has at least 7 neighbours there and $v$ has at least 7 neighbours there. Since $7 + 7 = 14 > 13$, by the pigeonhole principle some city $w$ is a neighbour of both. Then $u \to w \to v$ is a route through exactly one other city. $\blacksquare$

(The number 7 cannot be lowered to 6: two separate groups of 7 and 8 cities, with all roads inside each group, give every city at least 6 roads, but you cannot get from one group to the other.)

---

## Level 3

**24.** Represent the people as vertices; colour the edge between two people red if they know each other and blue if they do not.

(a) *Proof.* Pick a person $P$. Of the 5 edges at $P$, by the pigeonhole principle at least 3 have the same colour; say $PA$, $PB$, $PC$ are red (the blue case is the same with colours swapped). If any of $AB$, $BC$, $CA$ is red, say $AB$, then $P$, $A$, $B$ all know each other. Otherwise $AB$, $BC$ and $CA$ are all blue, and $A$, $B$, $C$ are three people of whom no two know each other. $\blacksquare$

(b) Seat 5 people around a table and let each know exactly their two neighbours. The red edges form a 5-cycle (the sides of a pentagon) and the blue edges form another 5-cycle (the diagonals, a pentagram). Three mutual acquaintances would be a triangle among the red edges, and three mutual strangers a triangle among the blue edges. Number the people $0, 1, 2, 3, 4$ around the table, so $i$ and $j$ know each other exactly when $i - j \equiv \pm 1 \pmod 5$. Suppose $a, b, c$ all know each other. Then $b$ and $c$ are both in $\{a - 1, a + 1\}$ and are different, so $b - c \equiv \pm 2 \pmod 5$, and $b$, $c$ do not know each other. Contradiction. In the same way, if $a, b, c$ are mutual strangers, then $b, c \in \{a - 2, a + 2\}$, so $b - c \equiv \pm 4 \equiv \mp 1 \pmod 5$, and $b$, $c$ know each other. Contradiction. So the statement fails for 5 people.

**25.** **12 leaves.**

*Proof.* Let $L$ be the number of vertices of degree 1. The tree has $n = L + 10$ vertices, so it has $n - 1 = L + 9$ edges. By the handshake lemma, the sum of the degrees is twice the number of edges:

$$
L \cdot 1 + 10 \cdot 3 = 2(L + 9).
$$

So $L + 30 = 2L + 18$, giving $L = 12$.

*Existence.* Take a path $v_1 v_2 \cdots v_{10}$. Attach one new leaf to each of $v_2, \ldots, v_9$ and two new leaves to each of $v_1$ and $v_{10}$. Every $v_i$ now has degree 3, the new vertices have degree 1, there are $8 + 4 = 12$ leaves, and the graph is connected without cycles, so it is a tree. $\blacksquare$

**26.** **The second player wins** for every $n \ge 3$.

*Proof.* After the first player's move, $n - 1$ or $n - 2$ coins remain, and they form one row of $m \ge 1$ consecutive coins of the original circle. The two end coins of this row are not next to each other, because the removed coin or coins lie between them on the circle (when $m = 2$ the two coins are simply the two neighbours in the row).

*Second player's reply.* If $m$ is odd, remove the middle coin of the row; if $m$ is even, remove the middle two coins (they are next to each other). If $m \le 2$, this takes all remaining coins and the second player wins at once. Otherwise there are now two rows of equal length, separated by gaps on both sides, so no coin of one row is next to a coin of the other.

*Mirror strategy.* Pair each coin of the left row with the coin in the same position of the right row. Whenever the first player removes one coin, or two neighbouring coins, from one row, the second player removes the paired coin or coins from the other row. Those coins are still there (the position was symmetric before the first player's move, and the first player touched only one row), and if the first player's two coins were neighbours, so are their partners. So the reply is always legal, and after it the position is symmetric again.

*Conclusion.* The first player can never take the last coin: before each of her moves the position is symmetric and nonempty, so there are coins in both rows, and a single move removes coins from only one row. Since the number of coins decreases with every move, the game ends, and the last coin is taken by the second player. $\blacksquare$

**27.** (a) *Proof.* Write $\oplus$ for binary addition without carrying. It is associative and commutative, $x \oplus x = 0$ and $x \oplus 0 = x$. Call a position *zero* if $s = 0$.

1. *The final position is zero.* With no coins left, $s = 0$, and the player to move has lost.
2. *From a zero position, every move gives a nonzero position.* A move changes one heap $a_i$ into some $a_i' \ne a_i$. The new Nim-sum is $s \oplus a_i \oplus a_i' = a_i \oplus a_i'$, which is not 0 because $a_i \ne a_i'$.
3. *From a nonzero position, some move gives a zero position.* Let $2^d$ be the highest power of 2 in the binary expansion of $s$. Since digit $d$ of $s$ is 1, an odd number of heaps have digit $d$ equal to 1; pick such a heap $a_i$. Let $a_i' = a_i \oplus s$. The digits of $a_i$ above position $d$ do not change (those digits of $s$ are 0), and digit $d$ changes from 1 to 0. So $a_i' < a_i$, and removing $a_i - a_i'$ coins from heap $i$ is a legal move. The new Nim-sum is $s \oplus a_i \oplus a_i' = s \oplus s = 0$.

So the player facing a nonzero position can always move to a zero position, and the opponent must then move to a nonzero position again. Every move removes at least one coin, so the game ends, and it can only end when the opponent faces the (zero) final position. Hence nonzero positions are winning and zero positions are losing for the player to move. $\blacksquare$

(b) In binary, $3 = 011$, $5 = 101$ and $7 = 111$, so $s = 011 \oplus 101 \oplus 111 = 001 = 1$. The position is winning. A winning move must make the Nim-sum 0, which means changing a heap $a$ into $a \oplus 1$; this is a legal move only if $a \oplus 1 < a$, which holds for all three heaps since they are odd: $3 \to 2$, $5 \to 4$, $7 \to 6$. So the winning first moves are exactly: **take 1 coin from any one of the three heaps** (three winning moves).

**28.** **309.**

*Solution.* For $j = 1, \ldots, 5$ let $A_j$ be the set of permutations in which $j$ is directly followed by $j + 1$. We want the number of permutations in none of the $A_j$.

Take a set $J$ of $k$ indices. In a permutation in all $A_j$ with $j \in J$, glue $j$ and $j+1$ together for every $j \in J$. Consecutive indices chain together; for example $J = \{2, 3\}$ forces the block $(2, 3, 4)$. Each condition joins two units into one and the conditions never form a closed loop, so we get exactly $6 - k$ blocks, each with a fixed internal order. These blocks can be arranged in any order, so

$$
\Bigl|\bigcap_{j \in J} A_j\Bigr| = (6 - k)!.
$$

There are $\binom{5}{k}$ choices of $J$ with $|J| = k$. By inclusion–exclusion the answer is

$$
\sum_{k=0}^{5} (-1)^k \binom{5}{k}(6-k)! = 720 - 600 + 240 - 60 + 10 - 1 = 309.
$$

(In general the count for $\{1, \ldots, n\}$ is $D_n + D_{n-1}$; here $265 + 44 = 309$.)

**29.** (a) *Proof.* Let the sequence be $a_1, \ldots, a_{10}$. For each $i$, let $x_i$ be the length of the longest increasing subsequence that ends at $a_i$, and $y_i$ the length of the longest decreasing subsequence that ends at $a_i$. Both are at least 1.

*Claim: for $i < j$, the pairs $(x_i, y_i)$ and $(x_j, y_j)$ are different.* If $a_i < a_j$, then appending $a_j$ to a longest increasing subsequence ending at $a_i$ gives an increasing subsequence ending at $a_j$ of length $x_i + 1$, so $x_j > x_i$. If $a_i > a_j$, the same argument with decreasing subsequences gives $y_j > y_i$. The numbers are distinct, so one of the two cases holds.

Now suppose there is no monotone subsequence of length 4. Then every $x_i$ and $y_i$ lies in $\{1, 2, 3\}$, so there are at most $3 \cdot 3 = 9$ possible pairs. But there are 10 terms with 10 different pairs, which contradicts the pigeonhole principle. $\blacksquare$

(b) Take $7, 8, 9, 4, 5, 6, 1, 2, 3$. It consists of three increasing blocks, each block entirely smaller than the previous one. An increasing subsequence cannot use two blocks (a later block is smaller), so it has length at most 3. A decreasing subsequence can use at most one number from each block (each block is increasing), so it also has length at most 3.

**30.** (a) A $3 \times n$ rectangle has area $3n$, and each domino covers 2 cells, so $3n$ must be even. For odd $n$ it is not, and $a_n = 0$.

(b) *Proof.* Say a tiling of a $3 \times n$ rectangle has a *fault line* after column $k$ ($1 \le k < n$) if no domino crosses between columns $k$ and $k + 1$. Call a tiling *unbreakable* if it has no fault line. Let $u_k$ be the number of unbreakable tilings of a $3 \times k$ rectangle.

For a tiling of a $3 \times n$ rectangle, let $k$ be the position of its first fault line, or $k = n$ if there is none. The left $3 \times k$ part is an unbreakable tiling and the right $3 \times (n - k)$ part is any tiling; conversely any such pair gives a tiling with first fault line at $k$. By (a), $k$ and $n - k$ are even. So for even $n \ge 2$,

$$
a_n = u_2 a_{n-2} + u_4 a_{n-4} + \cdots + u_n a_0.
$$

*Computing $u_k$.* For $k = 2$: every tiling of $3 \times 2$ is unbreakable (a fault after column 1 would leave a $3 \times 1$ part of odd area), and there are 3 tilings (three horizontal dominoes; a horizontal domino in the bottom row with two vertical ones above; a horizontal domino in the top row with two vertical ones below). So $u_2 = 3$.

For even $k \ge 4$: look at the left column of an unbreakable tiling. If it is covered by three horizontal dominoes, columns 1–2 are completely covered and there is a fault line after column 2; not allowed. So the left column contains one vertical domino (in rows 1–2 or rows 2–3) and one horizontal domino. By top–bottom mirror symmetry, assume the vertical domino is in rows 1–2. Then row 3 of columns 1–2 is one horizontal domino.

In column 2, rows 1 and 2 are free and row 3 is covered. A vertical domino there would complete columns 1–2 and create a fault line, so rows 1 and 2 of column 2 are covered by two horizontal dominoes reaching into column 3. In column 3, rows 1 and 2 are covered and row 3 is free; the only option is a horizontal domino in row 3 covering columns 3–4. Now column 4 looks like column 2 did: rows 1 and 2 free, row 3 covered. Either a vertical domino fills rows 1–2 of column 4 (then columns 1–4 are complete and the first fault line is after column 4), or two horizontal dominoes continue into column 5 and the pattern repeats.

So at each even column there is exactly one way to stop and one way to continue. For each even $k \ge 4$ there is exactly one unbreakable tiling with the vertical domino at the top of column 1, and by symmetry exactly one with it at the bottom. Hence $u_k = 2$ for even $k \ge 4$, and

$$
a_n = 3a_{n-2} + 2\left(a_{n-4} + a_{n-6} + \cdots + a_0\right) \quad \text{for even } n \ge 2.
$$

For even $n \ge 4$, write the same formula for $n - 2$ and subtract:

$$
a_n - a_{n-2} = 3a_{n-2} - 3a_{n-4} + 2a_{n-4},
$$

so $a_n = 4a_{n-2} - a_{n-4}$. $\blacksquare$

(c) $a_0 = 1$ and $a_2 = 3$. Then $a_4 = 4 \cdot 3 - 1 = 11$, $a_6 = 4 \cdot 11 - 3 = 41$ and $a_8 = 4 \cdot 41 - 11 = \mathbf{153}$.
