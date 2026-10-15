[← Back to O1](README.md)

# O1 Problems: problem-solving strategies

29 problems in three levels. The technique is shown in italics, but try not to look at it first: in a competition nobody tells you which strategy to use. Hints are at the end. Solutions are in [solutions.md](solutions.md).

---

## Level 1 — Kangoeroe style (wizSMART/wizBRAIN)

Aim for about 4 minutes per problem.

**1.** *Working backwards.* Mila thinks of a number. She doubles it, subtracts 7, divides the result by 3 and then adds 4. She gets 9. Which number did she think of?

(A) 9 (B) 10 (C) 11 (D) 12 (E) 13

**2.** *Working backwards.* Anna has some marbles. She gives Bram half of her marbles and then one more. Then she gives Cas half of the marbles she has left and then one more. Now she has 3 marbles. How many marbles did Anna have at the start?

(A) 12 (B) 14 (C) 16 (D) 18 (E) 20

**3.** *Pigeonhole principle.* A drawer contains 5 red, 7 blue and 9 green socks. In the dark you take socks out one at a time. How many socks must you take to be sure that you have 3 socks of the same colour?

(A) 3 (B) 4 (C) 6 (D) 7 (E) 10

**4.** *Small cases and patterns.* What is the last digit of $7^{2027}$?

(A) 1 (B) 3 (C) 5 (D) 7 (E) 9

**5.** *Logic (knights and knaves).* On an island, knights always tell the truth and knaves always lie. You meet three inhabitants, A, B and C. A says: "B is a knave." B says: "A and C are of the same type." How many of the three are knights?

(A) 0 (B) 1 (C) 2 (D) 3 (E) This cannot be determined

**6.** *Diagrams (Venn diagram).* A class has 30 pupils. 18 of them play football and 15 play hockey. 5 pupils play neither sport. How many pupils play both?

(A) 3 (B) 5 (C) 8 (D) 10 (E) 13

**7.** *Invariants.* The numbers 1, 2, 3, ..., 10 are written on a board. In one step you erase two numbers $a$ and $b$ and write the number $a + b - 1$. After 9 steps one number is left. Which number?

(A) 45 (B) 46 (C) 54 (D) 55 (E) It depends on the order of the steps

**8.** *Small cases and patterns.* A 5-by-5 grid is made of 25 small squares. How many squares of all sizes can you find in the grid (with sides along the grid lines)?

(A) 25 (B) 41 (C) 50 (D) 55 (E) 60

**9.** *Logic (grid logic).* Ada, Bram and Cas each have one pet (a cat, a dog or a fish, all different) and one favourite colour (red, green or blue, all different).

- Bram does not have the dog, and his favourite colour is not red.
- The owner of the cat likes blue.
- Ada likes green.
- Cas does not have the fish.

Which pet does Cas have, and what is his favourite colour?

(A) dog, red (B) cat, blue (C) fish, red (D) dog, green (E) cat, red

**10.** *Parity.* At a meeting, each person shakes hands with some of the others (never twice with the same person). Which of these situations is impossible?

(A) 4 people, each shakes exactly 3 hands
(B) 6 people, each shakes exactly 3 hands
(C) 7 people, each shakes exactly 4 hands
(D) 7 people, each shakes exactly 3 hands
(E) 8 people, each shakes exactly 5 hands

**11.** *Small cases and patterns.* 1 January 2027 is a Friday. On which day of the week is 1 January 2030?

(A) Monday (B) Tuesday (C) Wednesday (D) Thursday (E) Friday

---

## Level 2 — NWO first/second round style

Give a number as the answer, or a full argument where the problem says "prove" or "explain".

**12.** *Parity / colouring.* Two opposite corner squares are removed from an 8-by-8 chessboard. Can the remaining 62 squares be covered exactly by 31 dominoes (each domino covers two neighbouring squares)? Prove your answer.

**13.** *Pigeonhole principle.* Six different numbers are chosen from $1, 2, \ldots, 10$.
(a) Prove that two of the chosen numbers add up to 11.
(b) Show that this is not always true if only five numbers are chosen.

**14.** *Parity / invariants.* The numbers $1, 2, 3, \ldots, 2026$ are written on a board. In one step you erase two numbers and write their difference (the larger minus the smaller). You continue until one number is left.
(a) Prove that the last number is odd.
(b) Show that the last number can be 1.

**15.** *Parity, small cases.* A frog sits at 0 on a number line. It makes jumps of length $1, 2, 3, \ldots$ in this order: the first jump has length 1, the second length 2, and so on. Each jump can go left or right.
(a) Can the frog be back at 0 after 10 jumps?
(b) Can it be back at 0 after 11 jumps?
(c) For which numbers $n$ can the frog be back at 0 after exactly $n$ jumps? Prove your answer.

**16.** *Working backwards (games).* There are 2026 stones on a table. Two players take turns. In each turn a player takes 1, 2, 3 or 4 stones. The player who takes the last stone wins. Which player can always win, and how many stones should that player take in the first turn?

**17.** *Pigeonhole principle.* At a party with at least two people, some pairs of people shake hands (no pair more than once). Prove that there are two people who shook the same number of hands.

**18.** *Extremal principle.* Some positive whole numbers are written around a circle (at least three of them). Each number is equal to the average of its two neighbours. Prove that all the numbers are equal.

**19.** *Small cases and patterns.* Ten straight lines are drawn in the plane. No two lines are parallel and no three lines pass through the same point. Into how many regions do the lines divide the plane?

**20.** *Invariants (games).* A chocolate bar consists of 6-by-8 small squares. Two players take turns. In one turn a player picks one piece and breaks it into two pieces along a straight line between the squares. A player who cannot move (because every piece is a single square) loses. Which player wins, and does it depend on how they play?

**21.** *Logic (knights and knaves).* Ten inhabitants of the island of knights and knaves sit around a round table. Each of them says: "Both of my neighbours are knaves." What is the smallest possible number of knights at the table, and what is the largest?

**22.** *Tables / systematic counting.* How many three-digit numbers (from 100 to 999) have digits that add up to 9?

---

## Level 3 — NWO final / BxMO (Benelux Mathematical Olympiad) style

These are hard. Spending a whole session on one of them is fine. Write a full proof.

**23.** *Colouring / invariants.* Can a 10-by-10 board be covered exactly by 25 tiles of size 1-by-4 (each tile may be placed horizontally or vertically)? Prove your answer.

**24.** *Pigeonhole principle.* Prove that among any seven whole numbers there are two whose sum or whose difference is divisible by 10. Show also that six numbers are not always enough.

**25.** *Invariants.* On an island live 13 red, 15 green and 17 blue chameleons. When two chameleons of *different* colours meet, both change to the third colour. (When two of the same colour meet, nothing happens.) Is it possible that at some moment all 45 chameleons have the same colour?

**26.** *Extremal principle.* In a tournament every player plays every other player exactly once, and there are no draws. Prove that there is a player P with the following property: for every other player Q, either P beat Q, or P beat some player who beat Q.

**27.** *Logic (knights and knaves).* 2025 inhabitants of the island of knights and knaves sit around a round table. Each of them says: "Of my two neighbours, exactly one is a knave." How many knights can there be at the table? Find all possibilities and prove that there are no others.

**28.** *Small cases and patterns.* 100 people, numbered 1 to 100, stand in a circle in order. Person 1 stays, person 2 leaves, person 3 stays, person 4 leaves, and so on around the circle again and again: every second person still in the circle leaves. Who is the last person left?

**29.** *Pigeonhole principle.* 51 different numbers are chosen from $1, 2, \ldots, 100$. Prove that one of the chosen numbers divides another chosen number. Is the same true for 50 numbers?

---

## Hints

1. Undo each step in reverse order: subtract 4 first.
2. Before the second gift: she had (3 + 1) times 2.
3. Think of the unluckiest possible draw.
4. Write down the last digits of $7, 7^2, 7^3, 7^4, 7^5$.
5. Try "A is a knight" and then "A is a knave".
6. First find how many play at least one sport.
7. What happens to the sum at each step?
8. Count the 1-by-1, 2-by-2, ... squares separately.
9. Start from Ada's colour and the cat clue.
10. Add up the handshakes of all the people.
11. How many days are in 2027, 2028 and 2029? Which is a leap year?
12. Colour the board as usual. What colour are the two removed corners?
13. Make five boxes: pairs that add up to 11.
14. What happens to the sum of all numbers? Look at its parity.
15. The total length $1 + 2 + \cdots + n$ must be split into two equal halves (right and left).
16. Work backwards from 0 stones. Which positions are losing for the player to move?
17. What are the possible numbers of handshakes? Can 0 and the maximum both occur?
18. Look at the largest number.
19. Count the regions for 1, 2, 3, 4 lines. How many new regions does a new line make?
20. Count the pieces. How many moves will the game last?
21. Two knights cannot sit next to each other. Each knave sits next to at least one knight.
22. Write the number as $abc$ with $a \ge 1$, and count by fixing $a$.
23. Cut the board into 2-by-2 blocks and colour the blocks black and white like a chessboard.
24. Use six boxes based on the remainder after dividing by 10: {0}, {5}, {1, 9}, {2, 8}, {3, 7}, {4, 6}.
25. Look at the differences between the numbers of chameleons of each colour, modulo 3.
26. Look at the player with the most wins.
27. Look at blocks of knights sitting next to each other. How long can such a block be?
28. Do small cases and look at powers of 2.
29. Write every number as a power of 2 times an odd number.
