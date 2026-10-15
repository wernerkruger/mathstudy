[← Back to O3 Combinatorics](README.md)

# O3 Combinatorics: notes

Combinatorics (combinatoriek) asks "how many?" and "is it possible?". The answers are usually short, but the reasoning must be airtight: every object counted exactly once, every case covered. Before every problem, ask yourself two questions: **what exactly am I counting**, and **does order matter**?

---

## 1. Sum and product rules (somregel en productregel)

**Idea.** Split a count into cases (add) or into a sequence of independent choices (multiply).

**Key facts.**

- **Sum rule.** If a set splits into disjoint parts $A$ and $B$, then $|A \cup B| = |A| + |B|$.
- **Product rule.** If a task consists of step 1 with $m$ options followed by step 2 with $n$ options (whatever happened in step 1), there are $mn$ ways in total.
- **Complementary counting (tellen via het complement).** The number of objects *with* a property equals the total minus the number *without* it. Use it whenever you see "at least one".

The product rule only works if the *number* of options in step 2 does not depend on the choice in step 1. If it does, split into cases first.

**Example 1.1.** How many three-digit even numbers have three different digits?

*Solution.* The last digit must be even, and the first digit cannot be 0, so the choices interact. Split on the last digit.

- Last digit 0: first digit 9 choices (1–9), middle digit 8 choices. That gives $72$.
- Last digit 2, 4, 6 or 8 (4 options): first digit 8 choices (not 0, not the last digit), middle digit 8 choices (not the two already used, but 0 is allowed). That gives $4 \cdot 8 \cdot 8 = 256$.

Total: $72 + 256 = \mathbf{328}$.

**Example 1.2.** How many positive divisors does $720$ have?

*Solution.* $720 = 2^4 \cdot 3^2 \cdot 5$. A divisor is $2^a 3^b 5^c$ with $0 \le a \le 4$, $0 \le b \le 2$, $0 \le c \le 1$, and different triples give different divisors (unique factorisation, from O2). By the product rule there are $5 \cdot 3 \cdot 2 = \mathbf{30}$ divisors.

---

## 2. Permutations and combinations (permutaties en combinaties)

**Idea.** Order matters: permutations. Order does not matter: combinations.

**Key facts.**

- The number of ways to arrange $n$ different objects in a row is $n! = n(n-1)\cdots 1$, with $0! = 1$.
- The number of ordered selections of $k$ out of $n$ different objects is $n(n-1)\cdots(n-k+1) = \frac{n!}{(n-k)!}$.
- The number of $k$-element subsets of an $n$-element set is the binomial coefficient

$$
\binom{n}{k} = \frac{n!}{k!\,(n-k)!}.
$$

*Proof.* Each $k$-subset can be put in order in $k!$ ways, so (ordered selections) $= k! \cdot$ (subsets). Divide.

- **Repeated objects.** A word of length $n$ in which one letter occurs $a$ times, another $b$ times, and so on, has $\frac{n!}{a!\,b!\cdots}$ different arrangements: label the copies, arrange, then remove labels, which merges exactly $a!\,b!\cdots$ arrangements into one.
- **Round table.** $n$ people around a round table, where only the order counts (rotations are the same seating): $(n-1)!$. Fix one person's seat; arrange the rest.

The general principle behind the last two facts is **division by symmetry**: if every object you want is counted exactly $m$ times, divide by $m$. Always check that it really is *exactly* $m$ times for every object.

**Example 2.1.** How many different arrangements of the letters of BANANA are there?

*Solution.* Six letters: A three times, N twice, B once. Answer: $\frac{6!}{3!\,2!\,1!} = \frac{720}{12} = \mathbf{60}$.

**Example 2.2.** How many rectangles (with sides along the grid lines) are there on an $8 \times 8$ chessboard?

*Solution.* A rectangle is determined by choosing 2 of the 9 vertical grid lines and 2 of the 9 horizontal grid lines, and every such choice gives a rectangle. So there are $\binom{9}{2}^2 = 36^2 = \mathbf{1296}$ rectangles. (This is a bijection, see section 7: rectangles correspond exactly to pairs of pairs of lines.)

---

## 3. Stars and bars (sterretjes en streepjes)

**Idea.** Distributing $n$ identical objects over $k$ different boxes is the same as arranging $n$ stars and $k-1$ bars in a row: the bars split the stars into $k$ groups.

**Key facts.**

- The number of solutions of $x_1 + x_2 + \cdots + x_k = n$ in **non-negative** integers is

$$
\binom{n+k-1}{k-1}.
$$

- The number of solutions in **positive** integers ($x_i \ge 1$) is $\binom{n-1}{k-1}$. *Proof.* Put $y_i = x_i - 1 \ge 0$; then $y_1 + \cdots + y_k = n - k$, which has $\binom{n-1}{k-1}$ solutions. Alternatively: choose $k-1$ of the $n-1$ gaps between $n$ stars in a row.
- **Lower bounds** are handled by substitution, as in the proof above. **Upper bounds** need inclusion–exclusion (section 6).

**Example 3.1.** In how many ways can you write $10 = x + y + z$ with $x, y, z$ non-negative integers? With positive integers?

*Solution.* Non-negative: $\binom{12}{2} = \mathbf{66}$. Positive: $\binom{9}{2} = \mathbf{36}$.

**Example 3.2.** A bakery sells 3 kinds of doughnut. How many different bags of 8 doughnuts can you buy?

*Solution.* A bag is determined by how many of each kind, so we need non-negative solutions of $a + b + c = 8$: $\binom{10}{2} = \mathbf{45}$.

Common mistake: stars and bars counts distributions of *identical* objects into *different* boxes. If the objects are different (8 different people into 3 rooms), the answer is $3^8$ instead.

---

## 4. Binomial coefficients and Pascal's triangle (driehoek van Pascal)

**Idea.** $\binom{n}{k}$ counts $k$-subsets. Many identities become obvious when you **count one set in two ways** (double counting, dubbeltellen). In the NWO, a combinatorial proof is usually shorter and clearer than algebra.

**Key facts with combinatorial proofs.** Let $S = \{1, 2, \ldots, n\}$.

1. **Symmetry.** $\binom{n}{k} = \binom{n}{n-k}$. Choosing the $k$ elements you take is the same as choosing the $n-k$ you leave.
2. **Pascal's rule.** $\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}$ for $1 \le k \le n-1$. Split the $k$-subsets of $S$ by whether they contain $n$: if yes, choose the other $k-1$ from $n-1$; if no, choose all $k$ from $n-1$. This rule builds Pascal's triangle: each entry is the sum of the two above it.
3. **Row sum.** $\sum_{k=0}^{n} \binom{n}{k} = 2^n$. Both sides count all subsets of $S$: the left by size, the right by deciding in or out for each element.
4. **Hockey stick (hockeystick-identiteit).** $\sum_{k=r}^{n} \binom{k}{r} = \binom{n+1}{r+1}$. (Proof in problem 16.)
5. **Vandermonde.** $\sum_{k} \binom{m}{k}\binom{n}{r-k} = \binom{m+n}{r}$. Choose $r$ people from $m$ girls and $n$ boys; split by the number $k$ of girls.

**Example 4.1.** Prove that

$$
\binom{n}{0}^2 + \binom{n}{1}^2 + \cdots + \binom{n}{n}^2 = \binom{2n}{n}.
$$

*Proof.* The right side counts the ways to choose $n$ people from a group of $n$ girls and $n$ boys. Count the same choices by the number $k$ of girls chosen: there are $\binom{n}{k}$ ways to choose the girls and $\binom{n}{n-k} = \binom{n}{k}$ ways to choose the $n-k$ boys. Summing over $k = 0, \ldots, n$ gives the left side. $\blacksquare$

**How to write a double-counting proof.** (a) Name a concrete set of objects. (b) Show the right side counts it. (c) Show the left side counts it, usually by splitting into cases. (d) Conclude that the two sides are equal.

---

## 5. The binomial theorem (binomium van Newton)

**Key fact.** For every $n \ge 0$,

$$
(x + y)^n = \sum_{k=0}^{n} \binom{n}{k} x^k y^{n-k}.
$$

*Proof.* Expanding $(x+y)(x+y)\cdots(x+y)$ means choosing $x$ or $y$ from each of the $n$ factors. The term $x^k y^{n-k}$ appears once for every choice of the $k$ factors that give $x$, which is $\binom{n}{k}$ times. $\blacksquare$

**Useful substitutions.**

- $x = y = 1$: $\sum \binom{n}{k} = 2^n$.
- $x = -1$, $y = 1$ (with $n \ge 1$): $\sum (-1)^k \binom{n}{k} = 0$. So a nonempty set has as many subsets of even size as of odd size, namely $2^{n-1}$ each.

**Example 5.1.** Find the coefficient of $x^3$ in $(2x - 1)^6$.

*Solution.* The term with $x^3$ is $\binom{6}{3}(2x)^3(-1)^3 = 20 \cdot 8 \cdot (-1)\, x^3$. The coefficient is $\mathbf{-160}$.

**Example 5.2.** Show that $11^{10} - 1$ is divisible by $100$.

*Solution.* $11^{10} = (1 + 10)^{10} = 1 + \binom{10}{1}\cdot 10 + \binom{10}{2}\cdot 10^2 + \cdots$. Every term after the first is a multiple of $100$ (the second is exactly $100$). So $11^{10} - 1$ is divisible by $100$. This trick links the binomial theorem to O2.

---

## 6. Inclusion–exclusion (inclusie-exclusie)

**Idea.** To count a union of overlapping sets, add the sets, subtract the pairwise overlaps, add the triple overlaps, and so on.

**Key facts.**

$$
|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |A \cap C| - |B \cap C| + |A \cap B \cap C|.
$$

In general, $|A_1 \cup \cdots \cup A_n|$ is the sum, over all nonempty collections of the sets, of $(-1)^{(\text{number of sets}) + 1}$ times the size of their intersection.

*Why it works.* Take an element that lies in exactly $m \ge 1$ of the sets. It is counted $\binom{m}{1} - \binom{m}{2} + \binom{m}{3} - \cdots$ times, which is $1$ because $\sum_{j=0}^{m} (-1)^j \binom{m}{j} = 0$ (section 5). Elements in none of the sets are not counted at all.

Usually you want the elements in **none** of the sets: total minus the union.

**Example 6.1.** How many of the integers $1, \ldots, 100$ are divisible by 2, 3 or 5?

*Solution.* Let $A_d$ be the multiples of $d$ in $\{1, \ldots, 100\}$, so $|A_d| = \lfloor 100/d \rfloor$, and $A_2 \cap A_3 = A_6$ and so on. Then

$$
50 + 33 + 20 - 16 - 10 - 6 + 3 = 74.
$$

The answer is $\mathbf{74}$.

**Derangements (dérangementen).** A derangement of $\{1, \ldots, n\}$ is a permutation with no fixed point (no $i$ stays in place). Their number $D_n$ is

$$
D_n = n! \left( 1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \cdots + \frac{(-1)^n}{n!} \right).
$$

*Proof.* Let $A_i$ be the permutations that fix $i$. Any $j$ chosen positions can be fixed in $(n-j)!$ ways, and there are $\binom{n}{j}$ ways to choose them. By inclusion–exclusion the number with no fixed point is $\sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)! = \sum_j (-1)^j \frac{n!}{j!}$. $\blacksquare$

Values: $D_1 = 0$, $D_2 = 1$, $D_3 = 2$, $D_4 = 9$, $D_5 = 44$, $D_6 = 265$. There is also a recursion $D_n = (n-1)(D_{n-1} + D_{n-2})$. Since the bracket tends to $1/e$, a random permutation is a derangement with probability close to $0.37$.

**Example 6.2.** Four friends each bring a present, the presents are shuffled and handed out at random. In how many ways does nobody get their own present back?

*Solution.* $D_4 = 24 - 24 + 12 - 4 + 1 = \mathbf{9}$.

---

## 7. Bijections (bijecties): lattice paths and Catalan numbers

**Idea.** If you can match the objects you want one-to-one with objects you can already count, you are done. A bijection must be checked in both directions: different objects go to different images, and every image is reached.

**Lattice paths (roosterpaden).** A path from $(0,0)$ to $(m,n)$ using unit steps right (R) and up (U) is a word with $m$ R's and $n$ U's. So there are $\binom{m+n}{n}$ such paths. To count paths **through** a point, multiply the counts of the two parts. To count paths **avoiding** a point, subtract.

**Catalan numbers (Catalan-getallen), lightly.** A path from $(0,0)$ to $(n,n)$ that never goes above the diagonal $y = x$ is called a Dyck path. Equivalently: a sequence of $n$ (+1)'s and $n$ (−1)'s whose partial sums are never negative. Their number is the Catalan number

$$
C_n = \binom{2n}{n} - \binom{2n}{n+1} = \frac{1}{n+1}\binom{2n}{n}.
$$

*Proof (reflection principle, spiegelingsprincipe).* Count the bad paths, those that touch the line $y = x + 1$. Take the first point where a bad path touches that line and reflect the rest of the path in the line. The reflected path ends at $(n-1, n+1)$. This is a bijection between bad paths and *all* paths to $(n-1, n+1)$: every path to $(n-1, n+1)$ must cross the line $y = x + 1$, and reflecting back after the first touching point recovers the original. There are $\binom{2n}{n+1}$ paths to $(n-1, n+1)$. $\blacksquare$

Values: $C_1, \ldots, C_6 = 1, 2, 5, 14, 42, 132$. Catalan numbers also count correctly matched bracket strings with $n$ pairs, and triangulations of a convex $(n+2)$-gon.

**Example 7.1.** List the Dyck paths for $n = 3$.

*Solution.* Writing R for right and U for up, the paths that never have more U's than R's at any moment are RRRUUU, RRURUU, RRUURU, RURRUU, RURURU. That is $5 = \frac{1}{4}\binom{6}{3}$.

**Example 7.2.** How many pairs of sets $(A, B)$ with $A \subseteq B \subseteq \{1, \ldots, n\}$ are there?

*Solution.* Each element is in exactly one of three states: in $A$ (and so in $B$), in $B$ but not in $A$, or in neither. This gives a bijection between pairs $(A, B)$ and words of length $n$ over a three-letter alphabet. Answer: $\mathbf{3^n}$.

---

## 8. Recursion (recursie)

**Idea.** If counting directly is hard, express the count for size $n$ in terms of smaller sizes, by looking at what happens at **the first (or last) step**.

**Key facts.**

- Fibonacci numbers: $F_1 = F_2 = 1$, $F_{n} = F_{n-1} + F_{n-2}$. They appear whenever the first step has two options that use up 1 or 2 units.
- Always compute the first few values by hand, and check them against the recursion before trusting it.

**Example 8.1.** In how many ways can you climb a staircase of 10 steps if each stride takes you up 1 or 2 steps?

*Solution.* Let $a_n$ be the number of ways for $n$ steps. The first stride is 1 step (then $a_{n-1}$ ways remain) or 2 steps (then $a_{n-2}$). So $a_n = a_{n-1} + a_{n-2}$ with $a_1 = 1$, $a_2 = 2$. The sequence is $1, 2, 3, 5, 8, 13, 21, 34, 55, 89$, so $a_{10} = \mathbf{89}$.

**Example 8.2.** How many strings of 0s and 1s of length $n$ contain no two consecutive 1s?

*Solution.* Let $b_n$ be the number. Look at the first symbol. If it is 0, the rest is any good string of length $n-1$. If it is 1, the next symbol must be 0, and then any good string of length $n-2$ follows. So $b_n = b_{n-1} + b_{n-2}$ with $b_1 = 2$, $b_2 = 3$, giving $b_n = F_{n+2}$. For example, $b_5 = 13$.

**Tilings (betegelingen).** Tiling a $2 \times n$ strip with $1 \times 2$ dominoes: the left column is covered either by one vertical domino or by two horizontal dominoes stacked on top of each other, so again $t_n = t_{n-1} + t_{n-2}$. For wider boards (problem 30) the first step is less obvious: look for where the board can be cut cleanly.

---

## 9. Graphs (grafen)

**Idea.** A graph (graaf) is a set of vertices (punten, knopen) with edges (lijnen, kanten) between some pairs. People and friendships, cities and roads, dominoes and numbers: many problems become clear once you draw the graph.

**Key facts.**

- The **degree** (graad) of a vertex is the number of edges at it.
- **Handshake lemma (handdrukstelling).** The sum of all degrees is twice the number of edges. *Proof.* Every edge has two ends and is counted once at each end. $\blacksquare$
- **Corollary.** The number of vertices of odd degree is even.
- A **path** (pad) visits distinct vertices joined by consecutive edges; a **cycle** (cykel) is a closed path. A graph is **connected** (samenhangend) if every two vertices are joined by a path.
- A **tree** (boom) is a connected graph without cycles. A tree with $n$ vertices has exactly $n-1$ edges. *Proof sketch.* A tree with at least 2 vertices has a leaf (blad), a vertex of degree 1: take a longest path; its endpoint has no other neighbour, since a neighbour off the path would give a longer path and one on the path would give a cycle. Remove the leaf and its edge; what remains is a tree with one vertex and one edge fewer. Induction on $n$ finishes it.
- **Euler paths (Eulerpaden).** A connected graph has a closed walk using every edge exactly once (an Euler circuit) if and only if every degree is even. It has an Euler path that is not closed if and only if exactly two vertices have odd degree; the path then starts at one and ends at the other. *Why necessary.* Each time the walk passes through a vertex it uses two edges there. (Sufficiency: walk until stuck, which can only happen at the start; then splice in extra cycles for unused edges.)

**Example 9.1.** At a party with $n \ge 2$ guests, prove that two guests know the same number of other guests (knowing is mutual).

*Proof.* Each degree lies in $\{0, 1, \ldots, n-1\}$, which has $n$ values. But 0 and $n-1$ cannot both occur: someone who knows everybody knows the person who supposedly knows nobody. So the $n$ degrees take at most $n-1$ values, and by the pigeonhole principle two are equal. $\blacksquare$

**Example 9.2.** Can you walk through a town crossing each of its bridges exactly once, if the town has four land areas with 3, 3, 3 and 5 bridges ending on them (Euler's Königsberg)?

*Solution.* All four land areas have odd degree. An Euler path allows at most two odd vertices, so **no**.

---

## 10. Games and strategies (spellen en strategieën)

**Idea.** In a finite two-player game with no luck where the player who cannot move loses (or similar), every position is either **winning** (an N-position: the player *to move* can force a win) or **losing** (a P-position: the *previous* player can force a win).

**Key facts.**

- A position is losing if **every** move leads to a winning position (in particular, a position with no moves, if not moving means losing).
- A position is winning if **some** move leads to a losing position.
- To prove a claimed set $L$ is exactly the set of losing positions, check two things: (1) from $L$ every move leaves $L$; (2) from outside $L$ there is a move into $L$. Plus: the final position belongs to $L$.
- **Symmetry strategy (symmetriestrategie).** Make the position symmetric, then copy the opponent's move in the mirror. You need: after your copy the position is symmetric again, and your copying move is always legal.
- **Nim.** Several heaps; a move removes any positive number of coins from one heap; whoever takes the last coin wins. Write the heap sizes in binary and add **without carrying** (exclusive or, $\oplus$). The position is losing exactly when this Nim-sum is $0$. (Proof in problem 27.)

**Example 10.1.** A heap has $n$ coins. Players alternately take 1 or 2 coins; whoever takes the last coin wins. Who wins?

*Solution.* The losing positions are the multiples of 3. From a multiple of 3 every move gives remainder 1 or 2; from remainder 1 or 2 you can take 1 or 2 coins to reach a multiple of 3; and 0 (no coins, the player to move has lost) is a multiple of 3. So the first player wins **exactly when $n$ is not a multiple of 3**.

**Example 10.2.** Two players take turns placing identical round coins on a round table, without overlap. Whoever cannot place a coin loses. Who wins?

*Solution.* The **first** player wins. She puts the first coin exactly in the centre. Afterwards, whenever the opponent places a coin, she places one at the point reflected through the centre. That spot is free: the position was symmetric before the opponent's move, and the new coin cannot overlap its own mirror image because it does not cover the centre. So she always has a move, and the opponent is the one who gets stuck.

**Example 10.3.** In Nim with heaps 1, 2 and 3: $1 \oplus 2 \oplus 3 = 01 \oplus 10 \oplus 11 = 00$, so the player to move **loses** against good play.

---

## 11. Probability via counting (kansrekening door tellen)

**Idea.** If all outcomes are equally likely,

$$
P(\text{event}) = \frac{\text{number of favourable outcomes}}{\text{number of possible outcomes}}.
$$

The main danger is outcomes that are **not** equally likely. With two dice, the sums 2 to 12 are not equally likely; the 36 ordered pairs are. Always count in a space where the outcomes really are equally likely, usually by treating identical-looking objects as different.

**Example 11.1.** Four dice are thrown. What is the probability that at least two show the same number?

*Solution.* Complement: all four different, in $6 \cdot 5 \cdot 4 \cdot 3 = 360$ of the $6^4 = 1296$ ordered outcomes. So the probability is $1 - \frac{360}{1296} = \mathbf{\frac{13}{18}}$.

**Example 11.2.** Two cards are drawn from a standard deck of 52. What is the probability that both are aces?

*Solution.* Ordered pairs: $\frac{4 \cdot 3}{52 \cdot 51} = \mathbf{\frac{1}{221}}$. Counting unordered pairs gives the same: $\binom{4}{2} / \binom{52}{2}$.

---

## Toolbox

| Situation | Tool |
|---|---|
| Cases that do not overlap | Sum rule: add |
| Sequence of choices | Product rule: multiply (check the number of options is fixed) |
| "At least one" | Complement: total minus "none" |
| Order matters, all different | $n!$ or $n!/(n-k)!$ |
| Order does not matter | $\binom{n}{k}$ |
| Repeated letters, rotations | Divide by symmetry (check every object is overcounted equally) |
| Identical objects into different boxes | Stars and bars, $\binom{n+k-1}{k-1}$ |
| Upper bounds, "none of the properties" | Inclusion–exclusion |
| Nobody in their own place | Derangements $D_n$ |
| Prove an identity | Double counting: one set, two counts |
| Coefficient of a power | Binomial theorem |
| Grid walks, "never above the line" | Lattice paths, reflection, Catalan |
| Count is hard but size $n-1$ is easy | Recursion on the first or last step |
| Relations between people or places | Draw a graph; use degrees and the handshake lemma |
| Traverse every edge once | Euler: count odd vertices |
| Who wins? | Compute small cases, guess losing set, prove (1) and (2) |
| Symmetric board or table | Symmetry strategy |
| Several heaps | Nim-sum in binary |
| Probability | Count in a space of equally likely outcomes |

**Habits.** Compute small cases by hand. Check your answer against a tiny version of the problem you can list completely. When two methods give different answers, find out which objects one of them counted twice or missed.
