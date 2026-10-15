[← Back to O1](README.md)

# O1 Notes: problem-solving strategies

Competition problems are different from textbook exercises. In a textbook you usually know which method to use, because the chapter tells you. In a competition you do not. These notes collect the strategies that experienced solvers reach for again and again. Each section explains the idea, says when to try it, and works through examples. Try every example yourself before you read the solution.

---

## 1. Polya's four steps (vier stappen van Polya)

The mathematician George Polya described problem solving in four steps.

1. **Understand the problem.** What is given? What is asked? Can you say the problem in your own words? Can you make a small example? Many mistakes in competitions come from answering a slightly different question than the one asked.
2. **Make a plan.** Have you seen a similar problem? Can you try a simpler version? Can you draw something? Which strategy from these notes might fit?
3. **Carry out the plan.** Work carefully and check each step. If the plan does not work after a fair try, go back to step 2. That is normal, not failure.
4. **Look back (terugkijken).** Check the answer. Is it reasonable? Can you find it another way? What was the key idea, and where else could you use it?

**When to reach for it:** always. Steps 1 and 4 are the ones people skip, and they are the ones that save points.

### Example 1.1

*How many times do you write the digit 1 when you write all whole numbers from 1 to 100?*

**Understand.** We count *digits*, not numbers. The number 11 contains two 1s, so it counts twice.

**Plan.** Count the 1s in the units place and in the tens place separately, then deal with 100.

**Carry out.**

- Units place: 1, 11, 21, ..., 91. That is 10 ones.
- Tens place: 10, 11, ..., 19. That is 10 ones.
- The number 100 has one more 1.

Total: $10 + 10 + 1 = 21$.

**Look back.** The number 11 was counted once in the units list and once in the tens list. That is correct, because it contains two 1s. A common wrong answer is 20 (forgetting 100) or 12 (counting numbers instead of digits). Splitting by place value is a useful idea for many digit questions.

---

## 2. Working backwards (terugredeneren)

**The idea.** If a problem tells you the *end* of a story and asks about the *beginning*, start at the end and undo each step. Doubling becomes halving, adding becomes subtracting, and so on, in reverse order.

**When to reach for it:** "In the end there were ...", "After three rounds ...", and games where you want to know who wins. In games, you work backwards from the final position to find which positions are winning and which are losing.

### Example 2.1

*Three friends play a game. First Anouk gives Bas and Chris as many marbles as each of them already has (so their numbers double). Then Bas does the same for Anouk and Chris. Then Chris does the same for Anouk and Bas. At the end, each of them has 16 marbles. How many did each have at the start?*

Work backwards from (Anouk, Bas, Chris) $= (16, 16, 16)$.

- **Undo Chris's move.** Chris doubled Anouk and Bas, so before that they had 8 each. Chris gave away $8 + 8 = 16$, so Chris had $16 + 16 = 32$. Position: $(8, 8, 32)$.
- **Undo Bas's move.** Bas doubled Anouk and Chris, so before that they had 4 and 16. Bas gave away $4 + 16 = 20$, so Bas had $8 + 20 = 28$. Position: $(4, 28, 16)$.
- **Undo Anouk's move.** Anouk doubled Bas and Chris, so before that they had 14 and 8. Anouk gave away $14 + 8 = 22$, so Anouk had $4 + 22 = 26$. Position: $(26, 14, 8)$.

**Answer:** Anouk 26, Bas 14, Chris 8.

**Look back.** Check forwards: $(26,14,8) \to (4,28,16) \to (8,8,32) \to (16,16,16)$. Also, the total stays 48 the whole time, which is a quick check at every step.

### Example 2.2 (a game)

*Two players take turns saying a number. The first player says a whole number from 1 to 10. After that, each player adds a whole number from 1 to 10 to the last number said. Whoever says 100 wins. Who can always win, and how?*

Work backwards. If you say 89, your opponent must say something from 90 to 99, and then you can say 100. So 89 is a **target** (a winning number to say). By the same reasoning, if you say 78 you can always reach 89 next. The targets go down in steps of 11:

$$
100,\ 89,\ 78,\ 67,\ 56,\ 45,\ 34,\ 23,\ 12,\ 1.
$$

**Answer:** the first player wins. Say 1. After the opponent adds $k$, add $11 - k$ (which is between 1 and 10). You will say 12, 23, ..., 89 and finally 100.

**Look back.** The number 11 is "the largest step plus one". In any game where you add 1 to $m$, the targets are spaced $m + 1$ apart. You will use this in Problem 16.

---

## 3. Small cases and patterns (kleine gevallen, patronen)

**The idea.** If the problem is about a big number (100 people, the year 2027, a 10-by-10 board), try the same problem with 1, 2, 3, 4, ... first. Make a table. Look for a pattern. Then, and this is important, try to explain *why* the pattern continues. A pattern that you cannot explain might break.

**When to reach for it:** whenever a problem contains a large specific number, or the words "in general" or "for every $n$".

### Example 3.1

*A staircase has 10 steps. You can climb 1 or 2 steps at a time. In how many different ways can you reach the top?*

Small cases. Let $W(n)$ be the number of ways to climb $n$ steps.

| Steps $n$ | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| Ways $W(n)$ | 1 | 2 | 3 | 5 | 8 |

(For 3 steps: 1+1+1, 1+2, 2+1.)

**Why the pattern?** Your *last* move is either 1 step or 2 steps. If it is 1 step, before that you climbed $n-1$ steps in any of $W(n-1)$ ways. If it is 2 steps, before that you climbed $n-2$ steps in $W(n-2)$ ways. So

$$
W(n) = W(n-1) + W(n-2).
$$

Continuing: 13, 21, 34, 55, 89. **Answer:** 89 ways. (These are the Fibonacci numbers.)

**Look back.** Notice that the explanation used working backwards ("the last move") as well. Strategies often combine.

### Example 3.2

*How many diagonals does a polygon with 20 sides have?*

Small cases: a square has 2 diagonals, a pentagon 5, a hexagon 9. The pattern 2, 5, 9 is not obvious, so think instead. From each of the $n$ corners you can draw a diagonal to every other corner except itself and its two neighbours: $n - 3$ diagonals. That gives $n(n-3)$, but each diagonal has two ends and is counted twice. So there are

$$
\frac{n(n-3)}{2}
$$

diagonals. Check: $n = 6$ gives $9$. For $n = 20$: $\frac{20 \cdot 17}{2} = 170$.

**Look back.** The small cases did not give the formula directly, but they let us *check* the formula. That is just as valuable.

---

## 4. Diagrams and tables (tekening en tabel)

**The idea.** Put the information on paper in a form your eyes can use: a number line, a queue, a Venn diagram, a table of ages, a tree of possibilities. Many "hard" problems become easy once the picture is drawn.

**When to reach for it:** problems about positions (queues, seats, routes), overlapping groups, ages, or anything where you lose track of who is who.

### Example 4.1

*In a queue at the bakery there are 5 people in front of Sam. There are exactly 3 people between Sam and Lotte, and Lotte is last in the queue. How many people are in the queue?*

Draw the queue from front to back:

```
1  2  3  4  5  Sam  .  .  .  Lotte
```

Sam is in place 6. Three people stand between Sam and Lotte, so Lotte is in place 10. She is last. **Answer:** 10 people.

**Look back.** The trap is to add $5 + 1 + 3 + 1$ in your head and get it right only by luck. With the picture you can see it.

### Example 4.2

*Three years ago Pim was 4 times as old as his sister Fleur. Now he is 3 times as old as her. How old are they now?*

A table keeps the two moments apart. Call Fleur's age now $f$.

| | Fleur | Pim |
|---|---|---|
| Now | $f$ | $3f$ |
| Three years ago | $f - 3$ | $3f - 3$ |

Three years ago: $3f - 3 = 4(f - 3) = 4f - 12$, so $f = 9$. **Answer:** Fleur is 9 and Pim is 27.

**Look back.** Three years ago they were 6 and 24, and $24 = 4 \times 6$. Correct.

### Venn diagrams

For two overlapping groups, the rule is

$$
\text{(in A or B)} = \text{(in A)} + \text{(in B)} - \text{(in both)},
$$

because people in both groups are counted twice. Draw the two circles and fill in the overlap *first*.

---

## 5. Parity (pariteit)

**The idea.** Every whole number is even or odd. Some useful facts:

- even + even = even, odd + odd = even, even + odd = odd;
- a sum of whole numbers is odd exactly when it contains an odd number of odd terms;
- changing a number by an even amount does not change whether it is even or odd.

Parity is the simplest way to prove that something is **impossible**: show that the start is odd and the goal is even (or the other way round), and that every move keeps the parity the same.

**When to reach for it:** "Is it possible ...?", "Prove that it cannot ...", flipping coins, handshakes, chessboards, jumps left and right.

### Example 5.1

*25 coins lie on a table, all heads up. In one move you turn over exactly 2 coins. Can you reach a position where all coins are tails up?*

Look at the number of heads. Turning two coins changes it by $-2$ (two heads become tails), $+2$ (two tails become heads) or $0$ (one of each). So the number of heads always changes by an even amount, and its parity never changes. It starts at 25, which is odd. "All tails" means 0 heads, which is even. **Answer:** no, it is impossible.

### Example 5.2

*A knight starts on the corner square a1 of a chessboard. Can it reach the opposite corner h8 in exactly 2027 moves?*

A knight always jumps from a light square to a dark square or the other way round. So after an odd number of moves it is on a square of the *other* colour than where it started. The corners a1 and h8 have the *same* colour (both dark). **Answer:** no. After 2027 moves (odd) the knight is on a light square.

**Look back.** Colouring the board is parity in disguise: colour a square dark when (row + column) is even. You will see this idea again in Problem 12 and Problem 23.

### Handshakes

If you add up how many hands each person shook, every handshake is counted twice (once for each person). So **the total is always even**. Therefore the number of people who shook an odd number of hands is always even. This "handshake lemma" appears in many problems.

---

## 6. Invariants (invarianten)

**The idea.** Something happens again and again: numbers are replaced, coins are flipped, pieces are moved. Look for a quantity that **does not change** (an invariant). Then the end must have the same value as the start. This can tell you what the end looks like, or prove that some end is impossible. Parity was our first example of an invariant.

Good things to test: the sum, the product, the sum of squares, the number of pieces, something modulo 2 or 3 (the remainder after dividing by 2 or 3).

**When to reach for it:** "This is repeated until ...", "What can the last number be?", "Can we ever reach ...?"

### Example 6.1

*The numbers 1, 2, 3, ..., 10 are on the board. A move: erase two numbers $a$ and $b$ and write $a + b + ab$. After 9 moves one number is left. Which number?*

Try a small case: from 1 and 2 we get $1 + 2 + 2 = 5$. Notice that $a + b + ab + 1 = (a + 1)(b + 1)$. So if we add 1 to every number on the board and multiply, the product does not change:

$$
(a+1)(b+1) = (a + b + ab) + 1.
$$

At the start this product is $2 \cdot 3 \cdot 4 \cdots 11 = 11! = 39\,916\,800$. At the end, with one number $x$ left, it is $x + 1$. **Answer:** $x = 39\,916\,799$, whatever order you choose.

### Example 6.2

*Three numbers start as $(3, 4, 5)$. A move picks two of them, $a$ and $b$, and replaces them with*

$$
\frac{3a + 4b}{5} \quad\text{and}\quad \frac{4a - 3b}{5}.
$$

*Can you ever reach $(4, 6, 12)$?*

Try the sum of squares. Working it out:

$$
\left(\frac{3a+4b}{5}\right)^2 + \left(\frac{4a-3b}{5}\right)^2 = \frac{9a^2 + 24ab + 16b^2 + 16a^2 - 24ab + 9b^2}{25} = a^2 + b^2.
$$

So the sum of the squares of the three numbers never changes. At the start it is $9 + 16 + 25 = 50$. For $(4, 6, 12)$ it is $16 + 36 + 144 = 196$. **Answer:** no.

**Look back.** How do you *find* an invariant? Compute a few moves, then check sum, product, sum of squares and remainders. One of them usually behaves.

### Monovariants

Sometimes a quantity is not constant but always **goes down** (or always goes up). This is called a monovariant. If a whole number that is at least 0 goes down at every step, the process must stop. Problem 20 uses a related idea: the number of pieces goes up by exactly one per move.

---

## 7. The pigeonhole principle (ladenprincipe)

**The idea.** If you put more than $n$ objects into $n$ boxes, some box contains at least two objects. Stronger form: if you put more than $kn$ objects into $n$ boxes, some box contains at least $k + 1$ objects.

The statement is obvious. The skill is to **choose the boxes** cleverly.

**When to reach for it:** "Prove that there are two ...", "At least how many must you take to be sure ...". The word "sure" (zeker) in a Kangoeroe question almost always points to the worst case and the pigeonhole principle.

### Example 7.1

*How many people do you need to be sure that at least 9 of them have their birthday in the same month?*

Boxes: the 12 months. With $12 \times 8 = 96$ people it is possible that every month has exactly 8 birthdays. With 97 people, some month must have at least 9. **Answer:** 97.

### Example 7.2

*Prove that among any 11 whole numbers there are two whose difference is divisible by 10.*

Boxes: the last digit, 0 to 9. That is 10 boxes for 11 numbers, so two numbers have the same last digit. Their difference ends in 0, so it is divisible by 10.

### Example 7.3

*Five points are placed in a square of side 2. Prove that two of them are at distance at most $\sqrt{2}$ (about 1.41) from each other.*

Boxes: cut the square into four squares of side 1. Five points, four small squares, so two points lie in the same small square (a point on a cut line can be put in either). Two points in a 1-by-1 square are at most the length of its diagonal apart, which is $\sqrt{2}$.

**Look back.** In 7.2 the boxes were remainders; in 7.3 they were pieces of a picture. Choosing the boxes is the whole problem.

---

## 8. The extremal principle (extremaal principe)

**The idea.** Look at the object that is biggest, smallest, first, last, longest or closest. That special object often has a property the others do not, and that property gives the proof. A related trick: assume there is a counterexample and look at the *smallest* one.

**When to reach for it:** proofs about a finite collection (people, points, numbers) where you need to find one object with a special property, or show that some situation cannot happen.

### Example 8.1

*An odd number of children stand in a field. All distances between them are different. At a signal, every child throws a water balloon at the nearest other child. Prove that at least one child stays dry.*

Look at the two children who are **closest together**, say A and B. Each of them is the other's nearest child, so A throws at B and B throws at A.

- If any other child also throws at A or B, then the remaining balloons are too few: there are $n$ balloons in total, at least 3 land on A and B, so at most $n - 3$ land on the other $n - 2$ children. Some child gets none.
- If no other child throws at A or B, remove A and B. The other children throw only at each other, and their number $n - 2$ is again odd. Repeat the argument with this smaller group.

Each time we remove two children the number stays odd, so eventually either the first case happens, or only one child is left, and that child is not hit by anyone. Either way someone stays dry.

### Example 8.2

*In a group of people, friendship is mutual, and everybody has at least 3 friends in the group. Prove that you can find at least 4 people who sit around a table so that neighbours are always friends.*

Take a **longest chain** of different people $P_1, P_2, \ldots, P_k$ in which each person is friends with the next. Look at $P_1$. All friends of $P_1$ must be in the chain: otherwise we could put that friend in front and get a longer chain. $P_1$ has at least 3 friends, so besides $P_2$ there are at least two more, and the one further along the chain is some $P_j$ with $j \ge 4$. Now seat $P_1, P_2, \ldots, P_j$ around a table. Neighbours in the chain are friends, and $P_j$ and $P_1$ are friends too. That is at least 4 people.

**Look back.** The phrase "otherwise we could make it longer" is typical for extremal arguments. Choosing the *longest* chain gave us information for free.

---

## 9. Logic puzzles (logische puzzels)

**The idea.** On the island of knights and knaves (ridders en schurken), knights always tell the truth and knaves always lie. Two methods:

- **Case analysis (gevalsonderscheiding):** assume someone is a knight and follow the consequences; then assume they are a knave. A case that leads to a contradiction is impossible.
- **Look at the statement itself:** a knight's statement is true, a knave's statement is false. Some statements can never be said by one type.

For grid logic puzzles (logigrammen), draw a grid with a row for each person and a column for each option. Mark crosses for "impossible" and a tick for "certain". When a row has only one empty box left, tick it, and cross that option out for everybody else.

**When to reach for it:** every puzzle about truth-tellers and liars, and every "who has which pet" puzzle. The same case analysis is also the basis of many proofs.

### Example 9.1

*A says: "We are both knaves." What are A and B?*

A knight could never say this, because it would be a lie about himself. So A is a knave, and the statement is false. "Both are knaves" is false while A is a knave, so B is not a knave. **Answer:** A is a knave, B is a knight.

### Example 9.2

*A says: "B is a knight." B says: "A and I are of different types." What are they?*

Case 1: B is a knight. Then B's statement is true, so A is a knave. But then A's statement "B is a knight" would be true, and knaves do not say true things. Contradiction.

Case 2: B is a knave. Then B's statement is false, so A and B are of the same type: A is a knave. Check: A says "B is a knight", which is false. That fits a knave.

**Answer:** both are knaves.

### Example 9.3 (the fork in the road)

*You stand at a fork. One road leads to the village. One native stands there; you do not know if he is a knight or a knave. You may ask one yes/no question. What do you ask?*

Ask: "If I asked you whether the left road leads to the village, would you say yes?" A knight answers truthfully about his true answer. A knave would lie about his lie, which gives the truth. So in both cases "yes" means the left road is right.

**Look back.** A double lie gives the truth. Many Smullyan puzzles are built on this.

---

## Strategy checklist

When you are stuck, go down this list.

1. Have I read the question twice? Do I know exactly what is asked (a number, a yes/no, a proof)?
2. Can I make a tiny example and solve it by hand?
3. Can I draw a picture, a queue, a Venn diagram or a table?
4. Is the end known? Then **work backwards**.
5. Is there a big number? Try **small cases**, make a table, find the pattern, and explain it.
6. Is the question "is it possible?" Try **parity** or another **invariant**. Colour the board.
7. Does it say "sure", "at least", or "prove there are two"? Look for **pigeonholes**.
8. Do I need to find one special object? Take the **largest, smallest, closest or longest**.
9. Are there truth-tellers and liars? Do **case analysis** and look for contradictions.
10. Multiple choice? Eliminate options, test the options in the question, estimate.
11. **Look back:** check the answer, find a second method, and write the key idea in your notebook.
