[← Back to O1](README.md)

# O1 Solutions

Only read a solution after a serious attempt. Problem numbers match [problems.md](problems.md).

---

## Level 1

### 1.

Undo the steps in reverse order: $9 - 4 = 5$, then $5 \times 3 = 15$, then $15 + 7 = 22$, then $22 \div 2 = 11$.

Check: $2 \times 11 = 22$, $22 - 7 = 15$, $15 \div 3 = 5$, $5 + 4 = 9$.

**Answer: 11 (C).**

### 2.

Work backwards. At the end Anna has 3. Before the "one more" to Cas she had 4, and 4 was half of what she had before giving to Cas, so she had 8. Before the "one more" to Bram she had 9, which was half of her starting amount: 18.

Check: $18 \to$ gives $9 + 1 = 10$, leaves 8 $\to$ gives $4 + 1 = 5$, leaves 3.

**Answer: 18 (D).**

### 3.

In the unluckiest case you first take 2 red, 2 blue and 2 green socks: 6 socks and still no three of a colour. The 7th sock is red, blue or green, and in each case it makes three of that colour. So 6 is not enough and 7 always works.

**Answer: 7 (D).**

**Look back.** Boxes = colours (3 boxes). With more than $2 \times 3 = 6$ socks, some box holds at least 3. The numbers 5, 7 and 9 only matter in that each colour has at least 3 socks.

### 4.

Last digits of the powers of 7: $7^1 \to 7$, $7^2 = 49 \to 9$, $7^3 \to 3$ (because $9 \times 7 = 63$), $7^4 \to 1$ (because $3 \times 7 = 21$), $7^5 \to 7$ again. The last digits repeat with period 4: 7, 9, 3, 1.

$2027 = 4 \times 506 + 3$, so $7^{2027}$ has the same last digit as $7^3$, which is 3.

**Answer: 3 (B).**

### 5.

Case A is a knight: then B is a knave. B's statement is false, so A and C are of different types: C is a knave. Knights: only A.

Case A is a knave: then "B is a knave" is false, so B is a knight. B's statement is true, so C is of the same type as A: a knave. Knights: only B.

In both cases there is exactly one knight (we cannot tell whether it is A or B, but the question only asks how many).

**Answer: 1 (B).**

**Look back.** Option E is a tempting trap: we cannot determine *who* the knight is, but we can determine *how many*.

### 6.

$30 - 5 = 25$ pupils play at least one sport. Football plus hockey counts $18 + 15 = 33$, which counts the "both" pupils twice. So $33 - 25 = 8$ play both.

**Answer: 8 (C).**

### 7.

At each step the sum of all numbers changes from $\ldots + a + b$ to $\ldots + (a + b - 1)$: it goes down by exactly 1. The starting sum is $1 + 2 + \cdots + 10 = 55$. After 9 steps it is $55 - 9 = 46$, and that is the last number, whatever the order.

**Answer: 46 (B).**

### 8.

A square of size $k$-by-$k$ can be placed in $(6 - k)$ positions horizontally and $(6 - k)$ vertically:

| Size | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| Number | 25 | 16 | 9 | 4 | 1 |

Total: $25 + 16 + 9 + 4 + 1 = 55$.

**Answer: 55 (D).**

**Look back.** For an $n$-by-$n$ grid the answer is $1^2 + 2^2 + \cdots + n^2$. For a chessboard ($n = 8$) that is 204.

### 9.

Ada likes green. Bram does not like red, and green is taken, so Bram likes blue and Cas likes red. The cat owner likes blue, so Bram has the cat. Cas does not have the fish, so Cas has the dog and Ada has the fish. (Check: Bram does not have the dog. Correct.)

**Answer: dog, red (A).**

### 10.

Add up the handshakes of everybody. Each handshake is counted twice (once for each of the two people), so the total is even. In (D) the total would be $7 \times 3 = 21$, which is odd. So (D) is impossible.

The others are possible:

- (A) everybody shakes hands with everybody else;
- (B) split into two groups of 3; everyone shakes hands with the 3 people of the other group;
- (C) sit the 7 in a circle; everyone shakes hands with the people 1 and 2 seats away on each side (4 people);
- (E) sit the 8 in a circle; everyone shakes hands with everybody except their two direct neighbours ($8 - 1 - 2 = 5$).

**Answer: (D).**

### 11.

2027 and 2029 have 365 days; 2028 is a leap year (divisible by 4) with 366 days. From 1 January 2027 to 1 January 2030 is $365 + 366 + 365 = 1096$ days. $1096 = 7 \times 156 + 4$, so the day of the week moves 4 places: Friday $\to$ Saturday, Sunday, Monday, Tuesday.

**Answer: Tuesday (B).**

**Look back.** A shortcut: 365 days is 52 weeks and 1 day, so each normal year moves the weekday by 1, a leap year by 2. Here $1 + 2 + 1 = 4$.

---

## Level 2

### 12.

**Answer: no, it is impossible.**

**Proof.** Colour the board like a chessboard. Every domino covers two neighbouring squares, and neighbouring squares have different colours, so every domino covers exactly one dark and one light square. Then 31 dominoes cover 31 dark and 31 light squares.

Opposite corners have the same colour (for example a1 and h8 are both dark). After removing them, there are $32 - 2 = 30$ dark squares and 32 light squares. These numbers are not equal, so no covering by dominoes is possible.

**Look back.** The board has the right *number* of squares (62 is even), so counting alone does not help. The colouring counts something finer.

### 13.

**(a) Proof.** Make five boxes, each containing a pair of numbers that add up to 11:

$$
\{1, 10\},\ \{2, 9\},\ \{3, 8\},\ \{4, 7\},\ \{5, 6\}.
$$

Every number from 1 to 10 is in exactly one box. Six chosen numbers in five boxes: by the pigeonhole principle two chosen numbers lie in the same box. Those two numbers are different, so they are the two numbers of that pair, and they add up to 11.

**(b)** Choose 1, 2, 3, 4, 5. The largest possible sum of two of them is $4 + 5 = 9 < 11$.

### 14.

**(a) Proof.** Look at the sum $S$ of all numbers on the board. If we erase $a$ and $b$ (with $a \ge b$) and write $a - b$, the sum changes by

$$
(a - b) - (a + b) = -2b,
$$

an even number. So the parity of $S$ never changes. At the start

$$
S = 1 + 2 + \cdots + 2026 = \frac{2026 \cdot 2027}{2} = 1013 \cdot 2027,
$$

a product of two odd numbers, so $S$ is odd. At the end $S$ is the last number, so the last number is odd.

**(b)** First combine $(1,2), (3,4), \ldots, (2025, 2026)$: each pair gives 1, so we get 1013 ones. Combine 1012 of these ones in 506 pairs; each pair gives $1 - 1 = 0$. Now the board has one 1 and 506 zeros. Combining the 1 with a 0 gives 1 again; do this 506 times. **The last number is 1.**

**Look back.** Part (a) says the answer can never be 0. Part (b) shows the smallest odd value is actually reached. Both halves are needed for a complete answer to "what is the smallest possible last number?".

### 15.

Let $R$ be the total length of the jumps to the right and $L$ the total to the left. The frog is back at 0 when $R = L$. Since $R + L = 1 + 2 + \cdots + n = \frac{n(n+1)}{2}$, we need this total to be even (it equals $2R$).

**(a)** $1 + 2 + \cdots + 10 = 55$ is odd. **No.**

**(b)** $1 + 2 + \cdots + 11 = 66$, so we need jumps with total 33 to the left. For example: jumps 3, 9, 10, 11 to the left ($3 + 9 + 10 + 11 = 33$) and 1, 2, 4, 5, 6, 7, 8 to the right (also 33). **Yes.**

**(c) Answer: exactly when $n$ leaves remainder 0 or 3 after division by 4** (so $n = 3, 4, 7, 8, 11, 12, \ldots$).

*Necessary.* The total $\frac{n(n+1)}{2}$ must be even.

- If $n = 4k$: total $= 2k(4k + 1)$, even.
- If $n = 4k + 1$: total $= (4k + 1)(2k + 1)$, odd.
- If $n = 4k + 2$: total $= (2k + 1)(4k + 3)$, odd.
- If $n = 4k + 3$: total $= (4k + 3)(2k + 2)$, even.

*Sufficient.* Four jumps in a row of lengths $m, m+1, m+2, m+3$ can be done as right, left, left, right:

$$
m - (m+1) - (m+2) + (m+3) = 0.
$$

If $n = 4k$, split the jumps into $k$ such blocks. If $n = 4k + 3$, first jump $+1, +2, -3$ (back at 0), then split jumps $4, \ldots, n$ into $k$ blocks of four.

**Look back.** Small cases (try $n = 1$ to $8$ by hand) quickly suggest the pattern 3, 4, 7, 8; the blocks of four explain it.

### 16.

**Answer: the first player wins by taking 1 stone.**

Work backwards. With 0 stones on the table the player to move has lost (the opponent took the last stone). Call a number of stones *losing* if the player to move loses with best play.

- 1, 2, 3, 4: winning (take everything).
- 5: whatever you take (1 to 4), you leave 1 to 4, which is winning for the opponent. So 5 is losing.
- 6 to 9: winning, take enough to leave 5.
- 10: losing, and so on.

The losing positions are exactly the multiples of 5: from a multiple of 5 every move leaves a non-multiple, and from a non-multiple you can always move to a multiple of 5 (take the remainder after division by 5, which is 1 to 4).

$2026 = 5 \times 405 + 1$. The first player takes 1 stone, leaving 2025. After that, whenever the opponent takes $k$ stones, the first player takes $5 - k$. The number of stones stays a multiple of 5 after each of the first player's turns, and at last the first player takes the final stones.

### 17.

**Proof.** Suppose there are $n \ge 2$ people. Each person shakes between 0 and $n - 1$ hands, which gives $n$ possible numbers: $0, 1, \ldots, n-1$.

But 0 and $n - 1$ cannot both occur: if someone shook $n - 1$ hands, they shook hands with everybody, so nobody has 0. So the people's numbers come from at most $n - 1$ different values (either $0, \ldots, n-2$ or $1, \ldots, n-1$). There are $n$ people and at most $n - 1$ values, so by the pigeonhole principle two people have the same number.

### 18.

**Proof.** There are finitely many numbers, so there is a largest one; call it $M$. Let its neighbours be $x$ and $y$. Then $x \le M$ and $y \le M$, and

$$
M = \frac{x + y}{2}.
$$

If $x < M$, then $x + y < 2M$ and the average would be less than $M$. So $x = M$, and in the same way $y = M$. Now the neighbours of $M$ are themselves largest numbers, so the same argument applies to them: their neighbours are also $M$. Going around the circle step by step, every number equals $M$.

**Look back.** The argument did not use that the numbers are whole numbers or positive. Choosing the *largest* number is what made the inequality useful.

### 19.

Small cases: 1 line gives 2 regions, 2 lines give 4, 3 lines give 7, 4 lines give 11. The increases are 2, 3, 4, ...

**Why:** the $k$-th line crosses each of the $k - 1$ earlier lines in a different point (no parallel lines, no three through one point). These $k - 1$ points cut the new line into $k$ pieces. Each piece splits one old region into two, so the new line adds $k$ regions.

Starting from 1 region (no lines), with 10 lines:

$$
1 + (1 + 2 + 3 + \cdots + 10) = 1 + 55 = 56.
$$

**Answer: 56.**

### 20.

**Answer: the first player always wins, however both players play.**

Each move breaks one piece into two, so the number of pieces increases by exactly 1. The game starts with 1 piece and ends when there are 48 pieces (all single squares). So the game always lasts exactly $48 - 1 = 47$ moves. The first player makes moves 1, 3, 5, ..., 47, so the first player makes the last move and the second player cannot move.

**Look back.** This looks like a strategy game, but it is not: the number of moves is an invariant. Always check whether the length of a game is fixed.

### 21.

**Answer: smallest 4, largest 5.**

- A knight tells the truth, so both neighbours of a knight are knaves. In particular, no two knights sit next to each other.
- A knave lies, so "both of my neighbours are knaves" is false: at least one neighbour of every knave is a knight.

*Largest.* Since no two knights are neighbours, at most every second seat has a knight: at most 5. Alternating knight, knave, knight, knave, ... works: each knight has two knave neighbours, and each knave has knight neighbours.

*Smallest.* Each knight is "next to" at most 3 seats: its own and its two neighbours. Every person is a knight or sits next to a knight, so the knights together must reach all 10 seats. With 3 knights at most $3 \times 3 = 9$ seats are reached, which is too few. So there are at least 4 knights. Four works: number the seats 1 to 10 and put knights in seats 1, 4, 7 and 9. No two knights are neighbours, and each knave (seats 2, 3, 5, 6, 8, 10) has a knight neighbour.

### 22.

Write the number with digits $a, b, c$, where $a \ge 1$ and $a + b + c = 9$. Fix $a$; then $b + c = 9 - a$, and $b$ can be $0, 1, \ldots, 9 - a$ (then $c$ is determined and is a digit). That gives $10 - a$ numbers.

| $a$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|
| numbers | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 |

Total: $9 + 8 + \cdots + 1 = 45$.

**Answer: 45.**

---

## Level 3

### 23.

**Answer: no.**

**Proof.** Cut the board into 25 blocks of 2-by-2 squares, and colour the blocks black and white like a chessboard (5-by-5 blocks). Then 13 blocks are black and 12 are white, so there are $13 \times 4 = 52$ black squares and $12 \times 4 = 48$ white squares.

Claim: every 1-by-4 tile covers exactly 2 black and 2 white squares. Take a horizontal tile (vertical is the same). It covers four squares in one row. Group the columns in pairs: columns 1–2, 3–4, ..., 9–10; neighbouring pairs in a row have different colours.

- If the tile starts in the first column of a pair, it covers two whole pairs next to each other: 2 squares of one colour and 2 of the other.
- If it starts in the second column of a pair, it covers 1 square of pair $p$, the whole pair $p + 1$ and 1 square of pair $p + 2$. Pairs $p$ and $p + 2$ have the same colour, pair $p + 1$ the other. Again 2 and 2.

So 25 tiles would cover $50$ black and $50$ white squares. But there are 52 black and 48 white squares. Contradiction.

**Look back.** The ordinary chessboard colouring does not help here (each 1-by-4 tile covers 2 and 2 of those too, and the board has 50 and 50). Finding the right colouring is the creative part. Another colouring that works: give square (row, column) the colour (row + column) modulo 4; each tile covers one square of each of the four colours, but the four colours appear 25, 26, 25 and 24 times.

### 24.

**Proof.** Sort the seven numbers into six boxes by their remainder after division by 10:

$$
\{0\},\ \{5\},\ \{1, 9\},\ \{2, 8\},\ \{3, 7\},\ \{4, 6\}.
$$

Seven numbers, six boxes: two numbers $x$ and $y$ are in the same box.

- If they have the same remainder, $x - y$ is divisible by 10.
- If not, they are in one of the boxes $\{r, 10 - r\}$ with remainders $r$ and $10 - r$, so $x + y$ has remainder $r + (10 - r) = 10$, which means $x + y$ is divisible by 10.

**Six are not enough:** take 0, 1, 2, 3, 4, 5. All differences are between 1 and 5, and all sums are between 1 and 9, so none is divisible by 10.

### 25.

**Answer: no, never.**

**Proof.** Write $R, G, B$ for the numbers of red, green and blue chameleons. In a meeting, two of these numbers go down by 1 and the third goes up by 2. Look at the three differences $R - G$, $G - B$ and $R - B$:

- the difference between the two numbers that both go down by 1 does not change;
- the difference between a number that goes down by 1 and the one that goes up by 2 changes by 3.

So each difference changes by 0 or by 3, and its remainder after division by 3 never changes.

At the start, $R - G = -2$, $G - B = -2$ and $R - B = -4$. None of these is divisible by 3, so they will never be divisible by 3.

If all 45 chameleons had the same colour, the other two numbers would both be 0, and their difference would be 0, which is divisible by 3. Contradiction.

**Look back.** Try the same problem with 13, 16 and 17: now $R - G = -3$ is divisible by 3, and indeed all chameleons can become blue. The invariant tells you exactly when it is possible.

### 26.

**Proof.** Let P be a player with the largest number of wins (if several, pick any one). Suppose P does not have the property. Then there is a player Q such that P did not beat Q, and P did not beat anyone who beat Q. So:

- Q beat P (there are no draws);
- every player whom P beat was beaten by Q (again no draws).

Then Q beat all the players P beat, and also P himself. So Q has at least one more win than P. That contradicts the choice of P as a player with the most wins. Therefore P has the property.

**Look back.** Such a player is sometimes called a *king* of the tournament. The extremal choice "most wins" is natural because we want P to beat many people.

### 27.

**Answer: 0 or 1350 knights.**

A knight says something true: exactly one neighbour is a knave, so **a knight has one knight neighbour and one knave neighbour**. A knave says something false: **a knave's two neighbours are of the same type** (both knights or both knaves).

*Everybody a knave.* Each knave has two knave neighbours, so their statement is false. This works: 0 knights is possible.

*Everybody a knight.* Then each knight has two knight neighbours, so the statement is false. Impossible.

*Both types present.* Then the table splits into blocks of neighbouring knights and blocks of neighbouring knaves, alternating.

- A knight block of length 1 is impossible: that knight has two knave neighbours.
- A knight block of length 3 or more is impossible: a knight in the middle has two knight neighbours.
- So every knight block has length exactly 2.
- Look at a knave at the end of a knave block. One neighbour is a knight, so the other neighbour must also be a knight. That means the knave block has length 1.

So the seating is knight, knight, knave, knight, knight, knave, ... all the way round. This needs the number of people to be divisible by 3, and then two thirds are knights. Check that it works: each knight has one knight and one knave neighbour (true statement), and each knave has two knight neighbours (false statement).

$2025 = 3 \times 675$, so this seating is possible with $2 \times 675 = 1350$ knights.

**Look back.** If there were 2026 people (not divisible by 3), the only possibility would be 0 knights.

### 28.

**Answer: person 73.**

Small cases (number of people $n$, last person left):

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| last | 1 | 1 | 3 | 1 | 3 | 5 | 7 | 1 | 3 | 5 | 7 | 9 | 11 | 13 | 15 | 1 |

Pattern: when $n$ is a power of 2, person 1 is last; after that the answer goes up by 2 each time.

**Why.** If the number of people is a power of 2, say $2^k$, then in the first round around the circle exactly the even-numbered people leave and person 1 is again the next to "stay". Now $2^{k-1}$ people are left, and person 1 is in the same position as at the start. Repeating this, person 1 is last.

For 100 people: $100 = 64 + 36$. After 36 people have left (persons $2, 4, \ldots, 72$), there are exactly 64 people left, and the next person, 73, is the one who stays. From now on 73 plays the role of "person 1" in a circle of 64 people. Since 64 is a power of 2, person 73 is last.

**Look back.** In general, write $n = 2^k + m$ with $0 \le m < 2^k$; the last person is $2m + 1$. Here $2 \times 36 + 1 = 73$. This is the Josephus problem.

### 29.

**Proof.** Every number from 1 to 100 can be written as $2^a \times m$ with $m$ odd (divide by 2 as long as possible). For example $40 = 2^3 \times 5$ and $7 = 2^0 \times 7$. The odd part $m$ is one of $1, 3, 5, \ldots, 99$: 50 possibilities. These are the boxes.

51 chosen numbers in 50 boxes: two chosen numbers have the same odd part $m$, say $2^a m$ and $2^b m$ with $a < b$ (they are different, so $a \ne b$). Then

$$
2^b m = 2^{b-a} \times 2^a m,
$$

so the smaller one divides the larger one.

**For 50 numbers it is not true:** choose $51, 52, \ldots, 100$. If one of them divided another, the larger would be at least twice the smaller, so at least $2 \times 51 = 102 > 100$. Impossible.

**Look back.** The boxes here are not visible in the problem at all. Writing a number as "power of 2 times odd number" is a standard trick worth remembering.
