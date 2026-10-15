# B3 Notes: Geometry, proof, Pythagoras, similarity and trigonometry

[← Module overview](README.md)

There are no pictures in these notes, so draw every figure yourself as you read. Drawing the figure is half of geometry. When a figure is described with coordinates, put it on squared paper.

Rounding convention in this module: lengths to 2 decimals, angles to 1 decimal of a degree, unless a problem says otherwise. Never round in the middle of a calculation: keep the full value in your calculator and round only the final answer.

---

## 1. Angles and parallel lines

When two lines cross, they make four angles. Angles opposite each other are called **vertically opposite angles** (*overstaande hoeken*), and they are equal.

**Why?** Call the four angles $a, b, c, d$ going round. Angles $a$ and $b$ lie together on a straight line, so $a + b = 180°$. Also $b + c = 180°$. So $a = 180° - b = c$.

Now take two **parallel** lines (*evenwijdige lijnen*) $\ell$ and $m$, and a third line $t$ (the transversal) crossing both.

- **Corresponding angles** (*F-hoeken*) are equal. They sit in the same position at each crossing; together the lines look like the letter F.
- **Alternate angles** (*Z-hoeken*) are equal. They lie on opposite sides of $t$, between the parallel lines; the lines look like a Z.
- **Co-interior angles** (between the parallel lines, on the same side of $t$) add up to 180°.

Where do these facts come from? The equality of F-angles is essentially the **parallel postulate**: it is a starting assumption of Euclidean geometry, not something we prove from simpler facts. Z-angles then follow: a Z-angle is vertically opposite to an F-angle. The converse also holds: if F-angles (or Z-angles) are equal, the lines are parallel.

**Worked example.** Lines $\ell \parallel m$ are cut by $t$. At $\ell$, the angle above $\ell$ to the right of $t$ is 70°. Then: the angle below $\ell$ to the left of $t$ is 70° (vertically opposite); the angle above $m$ to the right of $t$ is 70° (F-angle); the angle below $\ell$ to the right of $t$ is $180° - 70° = 110°$ (straight angle).

> **Always give reasons.** In Dutch school geometry you write the reason next to each step: "(overstaande hoeken)", "(F-hoeken, $\ell \parallel m$)", "(gestrekte hoek)" for a straight angle. Get into this habit now; it is the seed of every proof.

## 2. Angles in triangles and polygons

**Theorem (angle sum of a triangle).** In every triangle $ABC$: $\angle A + \angle B + \angle C = 180°$.

**Proof.** Draw the line $\ell$ through $C$ parallel to $AB$. At $C$ there are now three angles along $\ell$: one on the left, the angle $\angle C$ of the triangle in the middle, and one on the right. Together they form a straight angle, so they add up to 180°. The left angle equals $\angle A$ (Z-angles, because $\ell \parallel AB$ with transversal $AC$). The right angle equals $\angle B$ (Z-angles, transversal $BC$). So $\angle A + \angle C + \angle B = 180°$. $\square$

Notice what the proof used: the parallel postulate (through the Z-angles). On a sphere, where there are no parallel lines, triangles have angle sums larger than 180°. So this theorem really is a fact about *flat* space.

**Exterior angle.** Extend side $BC$ beyond $C$. The angle between the extension and $CA$ is an **exterior angle** (*buitenhoek*). It equals $180° - \angle C$, and since $\angle A + \angle B = 180° - \angle C$:

$$
\text{exterior angle at } C = \angle A + \angle B.
$$

**Polygons.** A convex polygon with $n$ sides (a *veelhoek*) can be cut into $n-2$ triangles by drawing all diagonals from one vertex. The angles of those triangles together make up exactly the angles of the polygon. So

$$
\text{angle sum of an } n\text{-gon} = (n-2)\cdot 180°.
$$

In a **regular** polygon (all sides and angles equal) each angle is $\frac{(n-2)\cdot 180°}{n}$. For a regular hexagon: $\frac{4 \cdot 180°}{6} = 120°$.

> **Going further: exterior angles of a polygon.** Walk once around a convex polygon. At each corner you turn through the exterior angle. After the full walk you face the same way as at the start, so you turned 360° in total. Hence the exterior angles of any convex polygon add up to 360°, whatever $n$ is. Check that this agrees with $(n-2)\cdot 180°$.

## 3. What is a proof?

A **proof** (*bewijs*) is a chain of statements, each one following from earlier ones by a known rule, starting from what you are given and ending at what you want to show. A picture that "looks right" is not a proof; neither is checking ten examples. A proof shows that the statement is true for *every* figure satisfying the conditions.

Dutch school proofs have a fixed layout:

- **Gegeven** (given): what you may assume.
- **Te bewijzen** (to prove): the statement you must reach.
- **Bewijs** (proof): the steps, each with a reason.

You can write the proof as prose or in **two columns**: statement on the left, reason on the right. For example:

```
Gegeven:        lines AB and CD cross at S
Te bewijzen:    angle ASC = angle BSD

Statement                              Reason
1. ASC + CSB = 180                     A, S, B on one line (straight angle)
2. CSB + BSD = 180                     C, S, D on one line (straight angle)
3. ASC = 180 - CSB = BSD               from 1 and 2
```

What may you use as reasons? Definitions, the starting assumptions (such as the parallel postulate), and theorems that have already been proved. Not "it is obvious from the figure".

A **converse** (*omgekeerde*) swaps the "if" and "then" parts. "If a triangle has two equal sides, then it has two equal angles" has converse "if a triangle has two equal angles, then it has two equal sides". A converse can be true or false, and it always needs its own proof.

## 4. Congruent triangles

Two figures are **congruent** (*congruent*) if one can be moved exactly onto the other by sliding, rotating and possibly reflecting. For triangles this means all three sides and all three angles match. We write $\triangle ABC \cong \triangle DEF$, and the order of the letters says which vertex matches which.

You don't need all six equalities. Each of these is enough (Z = *zijde*, side; H = *hoek*, angle; R = *rechte hoek*, right angle):

| English | Dutch | What is equal |
|---|---|---|
| SSS | ZZZ | all three sides |
| SAS | ZHZ | two sides and the angle *between* them |
| ASA | HZH | two angles and the side between them |
| AAS | ZHH | two angles and a side not between them |
| RHS | ZZR | a right angle, the hypotenuse and one other side |

Why do these work? Think of construction. Given three side lengths, compass and ruler give only one triangle (up to moving it). Given two sides and the angle between them, the third vertex is fixed. Given two angles, the third angle is fixed too (angle sum), so AAS reduces to ASA. RHS reduces to SSS once you know Pythagoras (§7): the third side is $\sqrt{c^2 - a^2}$.

### Common mistakes: SSA is not a congruence condition

Two sides and an angle that is *not* between them is not enough. Example with coordinates: $A = (0,0)$, $B = (8,6)$, $C_1 = (4,0)$, $C_2 = (12,0)$.

- In both triangles $ABC_1$ and $ABC_2$, side $AB = 10$ and the angle at $A$ is the same (between $AB$ and the $x$-axis).
- $BC_1 = \sqrt{4^2 + 6^2} = \sqrt{52}$ and $BC_2 = \sqrt{4^2 + 6^2} = \sqrt{52}$.

So two sides and a non-included angle agree, but $AC_1 = 4$ and $AC_2 = 12$: the triangles are not congruent. Geometrically: the circle with centre $B$ and radius $\sqrt{52}$ cuts the $x$-axis in two points. (SSA does work when the given angle lies opposite the *longer* of the two given sides; then only one of the two intersection points is on the correct side of $A$. RHS is the most important case: the right angle is opposite the hypotenuse, the longest side.)

Also: AAA is not a congruence condition. Equal angles give the same *shape* but not the same *size*. That is similarity (§9).

## 5. Isosceles triangles and the perpendicular bisector

**Theorem (isosceles triangle, *gelijkbenige driehoek*).** If $AB = AC$ in triangle $ABC$, then $\angle B = \angle C$.

**Proof.**
Gegeven: $AB = AC$. Te bewijzen: $\angle B = \angle C$.
Let $M$ be the midpoint of $BC$. Compare $\triangle ABM$ and $\triangle ACM$:

1. $AB = AC$ (given);
2. $BM = CM$ ($M$ is the midpoint);
3. $AM = AM$ (common side).

So $\triangle ABM \cong \triangle ACM$ (SSS), and therefore $\angle ABM = \angle ACM$, which is $\angle B = \angle C$. $\square$

The same congruence gives more: $\angle AMB = \angle AMC$, and these two add up to 180°, so both are 90°. The line from the top to the midpoint of the base is perpendicular to the base.

**Converse.** If $\angle B = \angle C$, then $AB = AC$.

**Proof.** Drop the perpendicular from $A$ to $BC$, with foot $D$. In $\triangle ABD$ and $\triangle ACD$: $\angle B = \angle C$ (given), $\angle ADB = \angle ADC = 90°$ (construction) and $AD = AD$ (common). By AAS (ZHH), $\triangle ABD \cong \triangle ACD$, so $AB = AC$. $\square$

**Perpendicular bisector.** The **perpendicular bisector** (*middelloodlijn*) of segment $AB$ is the line through the midpoint $M$ of $AB$, perpendicular to $AB$.

**Theorem.** A point $P$ lies on the perpendicular bisector of $AB$ if and only if $PA = PB$.

**Proof.** ($\Rightarrow$) Let $P$ be on the perpendicular bisector. Then $AM = BM$, $\angle PMA = \angle PMB = 90°$, $PM = PM$, so $\triangle PMA \cong \triangle PMB$ (SAS) and $PA = PB$.
($\Leftarrow$) Let $PA = PB$. Then $PA = PB$, $AM = BM$, $PM = PM$, so $\triangle PMA \cong \triangle PMB$ (SSS). Hence $\angle PMA = \angle PMB$; they add up to 180°, so both are 90°. So $PM$ is perpendicular to $AB$ through $M$: $P$ is on the perpendicular bisector. (If $P = M$ there is nothing to prove.) $\square$

"If and only if" (*dan en slechts dan als*) means you must prove both directions. That is why there are two parts.

## 6. Thales' theorem

**Theorem (Thales, *stelling van Thales*).** If $AB$ is a diameter of a circle and $C$ is any other point on the circle, then $\angle ACB = 90°$.

**Proof.** Let $O$ be the centre. Then $OA = OB = OC$ (all radii). Triangle $OAC$ is isosceles, so $\angle OAC = \angle OCA$; call this $\alpha$. Triangle $OBC$ is isosceles, so $\angle OBC = \angle OCB$; call this $\beta$. The angles of the big triangle $ABC$ are $\alpha$ (at $A$), $\beta$ (at $B$) and $\alpha + \beta$ (at $C$, because $OC$ splits the angle at $C$). Angle sum:

$$
\alpha + \beta + (\alpha + \beta) = 180° \quad\Longrightarrow\quad \alpha + \beta = 90°.
$$

So $\angle ACB = 90°$. $\square$

**Converse.** If $\angle ACB = 90°$, then $C$ lies on the circle with diameter $AB$.

**Proof.** Let $M$ be the midpoint of $AB$; we show $MC = MA$. Extend $CM$ beyond $M$ to the point $D$ with $MD = MC$.

1. $\triangle AMC \cong \triangle BMD$ (SAS: $AM = BM$, $MC = MD$, and the angles at $M$ are vertically opposite). So $AC = BD$ and $\angle ACM = \angle BDM$. These are Z-angles for the lines $AC$ and $BD$ with transversal $CD$, so $AC \parallel BD$.
2. $\angle ACB = 90°$, and $\angle CBD$ is co-interior with it ($AC \parallel BD$, transversal $BC$), so $\angle CBD = 90°$.
3. $\triangle ACB \cong \triangle DBC$ (SAS: $AC = DB$, the right angles at $C$ and $B$, and $CB$ common). So $AB = DC$.
4. Then $MC = \tfrac12 CD = \tfrac12 AB = MA$.

So $C$ is at distance $MA$ from $M$: it lies on the circle with diameter $AB$. $\square$

A neat consequence (Problem 24): in a right triangle, the median to the hypotenuse is half the hypotenuse.

## 7. Pythagoras: proofs and converse

**Theorem (Pythagoras, *stelling van Pythagoras*).** In a triangle with a right angle at $C$, with legs (*rechthoekszijden*) $a = BC$, $b = AC$ and hypotenuse (*schuine zijde*) $c = AB$:

$$
a^2 + b^2 = c^2.
$$

There are hundreds of proofs. Here are three; learn at least two by heart.

### Proof 1: rearrangement

Take a square with side $a + b$. On each side, mark a point dividing it into pieces $a$ and $b$, going round in the same direction. Connect the four marked points. This cuts off four right triangles with legs $a$ and $b$ (so hypotenuse $c$), one in each corner, and leaves a quadrilateral in the middle with four sides $c$.

Is that middle shape really a square? At each marked point, three angles lie along a side of the big square: the two acute angles $\alpha$ and $\beta$ of two different corner triangles and one angle of the middle shape. Since $\alpha + \beta = 90°$ (angle sum of a right triangle), the middle angle is $180° - 90° = 90°$. So yes, it is a square of area $c^2$. Counting the area of the big square two ways:

$$
(a+b)^2 = 4\cdot\tfrac12 ab + c^2 \quad\Longrightarrow\quad a^2 + 2ab + b^2 = 2ab + c^2 \quad\Longrightarrow\quad a^2 + b^2 = c^2. \quad\square
$$

### Proof 2: similar triangles from the altitude

Drop the altitude from $C$ to $AB$, with foot $D$. Let $p = BD$ and $q = AD$, so $p + q = c$. Triangle $CBD$ has a right angle at $D$ and shares angle $B$ with triangle $ABC$, so the two are similar (hh, see §9). Matching the sides: $\frac{BD}{BC} = \frac{BC}{BA}$, so $\frac{p}{a} = \frac{a}{c}$, i.e. $a^2 = cp$. In the same way triangle $ACD$ is similar to $ABC$ and $b^2 = cq$. Adding:

$$
a^2 + b^2 = cp + cq = c(p+q) = c^2. \quad\square
$$

This proof gives bonus facts: $a^2 = cp$, $b^2 = cq$, and also $h^2 = pq$ for the altitude $h = CD$ (Problem 29).

### Proof 3: Garfield's trapezoid

James Garfield, later president of the United States, found this proof in 1876. Two copies of the right triangle and one extra triangle together form a trapezoid (*trapezium*). Draw it on squared paper with these points:

- $U = (0, 0)$, $V = (0, b)$: left vertical side, length $b$.
- $W = (a + b, 0)$, $X = (a + b, a)$: right vertical side, length $a$.
- $T = (a, 0)$ on the bottom.

Triangle $UTV$ has legs $UT = a$ and $UV = b$; triangle $TWX$ has legs $TW = b$ and $WX = a$. Both are right triangles with hypotenuse $c$. The two angles at $T$ inside these triangles are the two different acute angles of the same right triangle, so they add up to 90°. They lie along the straight bottom line $UW$, so the angle $VTX$ between them is $180° - 90° = 90°$. Triangle $VTX$ is therefore a right triangle with legs $c$ and $c$. The trapezoid $UWXV$ has parallel sides $b$ and $a$ and width $a+b$, so

$$
\tfrac12(a+b)(a+b) = \tfrac12 ab + \tfrac12 ab + \tfrac12 c^2 .
$$

Multiply by 2: $a^2 + 2ab + b^2 = 2ab + c^2$, so $a^2 + b^2 = c^2$. $\square$ (Garfield's proof is exactly half of Proof 1.)

> **Going further: Euclid's proof.** Euclid (around 300 BC) drew squares on all three sides and dropped the altitude from $C$, extending it through the square on $AB$. That line cuts the big square into two rectangles. Using congruent triangles (SAS) and the fact that a triangle has half the area of a parallelogram with the same base and height, he showed that each rectangle has the same area as the square on the adjacent leg. Look up "Euclid Elements I.47" in Rusczyk's book chapter on the Pythagorean theorem and try to reconstruct it.

### The converse of Pythagoras

**Theorem.** If a triangle has sides $a, b, c$ with $a^2 + b^2 = c^2$, then the angle opposite $c$ is 90°.

**Proof.** Let the triangle be $ABC$ with $BC = a$, $AC = b$, $AB = c$. Construct a second triangle $A'B'C'$ with a right angle at $C'$ and legs $B'C' = a$, $A'C' = b$. By Pythagoras, its hypotenuse is $A'B' = \sqrt{a^2 + b^2} = \sqrt{c^2} = c$. So the two triangles have the same three sides and are congruent (SSS). Corresponding angles are equal, so $\angle C = \angle C' = 90°$. $\square$

The same idea classifies all triangles. With $c$ the longest side:
- $a^2 + b^2 = c^2$: right angle (*rechthoekig*);
- $a^2 + b^2 > c^2$: all angles acute (*scherphoekig*);
- $a^2 + b^2 < c^2$: obtuse angle (*stomphoekig*).

**Worked example.** Is the triangle with sides 9, 12, 15 right? $9^2 + 12^2 = 81 + 144 = 225 = 15^2$. Yes, the right angle is opposite the side 15.

## 8. Pythagorean triples

A **Pythagorean triple** is three positive whole numbers $a, b, c$ with $a^2 + b^2 = c^2$. Examples: $(3,4,5)$, $(5,12,13)$, $(8,15,17)$, $(7,24,25)$. Any multiple of a triple is a triple: $(6,8,10)$, $(9,12,15)$. A triple whose numbers have no common factor is called **primitive**.

> **Going further: Euclid's formula.** For whole numbers $m > n \ge 1$,
>
> $$
> a = m^2 - n^2,\quad b = 2mn,\quad c = m^2 + n^2
> $$
>
> is always a triple, because $(m^2-n^2)^2 + (2mn)^2 = m^4 - 2m^2n^2 + n^4 + 4m^2n^2 = m^4 + 2m^2n^2 + n^4 = (m^2+n^2)^2$. With $m=2, n=1$ you get $(3,4,5)$; $m=3, n=2$ gives $(5,12,13)$. It can be proved that *every* primitive triple arises this way (with $m, n$ coprime and not both odd), up to swapping $a$ and $b$. Problem 27 uses a related trick: factorise $c^2 - b^2 = (c-b)(c+b)$.

## 9. Similarity

Two figures are **similar** (*gelijkvormig*) if one is an enlargement of the other, possibly moved, rotated or reflected. For triangles $\triangle ABC \sim \triangle DEF$ means: the angles match ($\angle A = \angle D$, etc.) and all sides are multiplied by the same **scale factor** (*vergrotingsfactor*) $k$:

$$
\frac{DE}{AB} = \frac{EF}{BC} = \frac{DF}{AC} = k.
$$

A useful habit is a **ratio table** (*verhoudingstabel*): write the sides of one triangle in the top row and the matching sides of the other underneath.

**Similarity conditions for triangles** (compare with congruence):

| Dutch | Meaning |
|---|---|
| hh | two pairs of equal angles (then the third pair is equal too) |
| zhz | two pairs of sides in the same ratio, with equal angles between them |
| zzz | all three pairs of sides in the same ratio |

For polygons with more than three sides you need *both* equal angles *and* equal ratios: a square and a non-square rectangle have equal angles but are not similar.

**Area and volume.** If lengths are multiplied by $k$, areas are multiplied by $k^2$ and volumes by $k^3$.

*Why, for a triangle?* Area is $\tfrac12 \cdot \text{base} \cdot \text{height}$. Both base and height are lengths, so both get multiplied by $k$, and the area by $k \cdot k = k^2$. *Why for any shape?* Cover the shape with tiny squares; each square of side $s$ becomes a square of side $ks$ with area $k^2 s^2$. For volume use tiny cubes: $(ks)^3 = k^3 s^3$.

**X-figure and A-figure.** Two standard situations come up constantly:

- **A-figure** (*snavelfiguur*, beak figure): in triangle $ABC$, a line parallel to $BC$ cuts $AB$ at $D$ and $AC$ at $E$. Then $\triangle ADE \sim \triangle ABC$ (hh: F-angles at $D$ and $B$, and the common angle $A$), so
$$
\frac{AD}{AB} = \frac{AE}{AC} = \frac{DE}{BC}.
$$
- **X-figure** (*zandloperfiguur*, hourglass figure): segments $AD$ and $BC$ cross at $S$, and $AB \parallel CD$. Then $\triangle SAB \sim \triangle SDC$ (hh: vertically opposite angles at $S$, and Z-angles), so
$$
\frac{SA}{SD} = \frac{SB}{SC} = \frac{AB}{DC}.
$$

**Worked example (A-figure).** $DE \parallel BC$, $AD = 3$, $DB = 5$, $DE = 6$. The scale factor from $\triangle ADE$ to $\triangle ABC$ is $\frac{AB}{AD} = \frac{8}{3}$, so $BC = \frac83 \cdot 6 = 16$.

### Common mistakes: similarity

- Using $\frac{AD}{DB}$ instead of $\frac{AD}{AB}$. The ratio must compare *whole* matching sides of the two triangles: $AD$ belongs to the small triangle, $AB$ (not $DB$) to the big one.
- Matching the wrong vertices. Always identify equal angles first, then write the triangles in matching order.
- Multiplying an area by $k$ instead of $k^2$.

## 10. Trigonometry in right triangles

In a right triangle, pick one acute angle $\alpha$. Relative to $\alpha$, the sides are:

- the **hypotenuse** (*schuine zijde*), opposite the right angle;
- the **opposite side** (*overstaande rechthoekszijde*), across from $\alpha$;
- the **adjacent side** (*aanliggende rechthoekszijde*), the leg that touches $\alpha$.

Define

$$
\sin\alpha = \frac{\text{opposite}}{\text{hypotenuse}},\qquad
\cos\alpha = \frac{\text{adjacent}}{\text{hypotenuse}},\qquad
\tan\alpha = \frac{\text{opposite}}{\text{adjacent}}.
$$

Dutch mnemonic **SOS-CAS-TOA**: **S**inus = **O**verstaande / **S**chuine, **C**osinus = **A**anliggende / **S**chuine, **T**angens = **O**verstaande / **A**anliggende.

**Why is this a good definition?** The value of $\sin 35°$ must not depend on *which* right triangle with a 35° angle you draw. It doesn't: any two right triangles with an acute angle of 35° have two equal angles (90° and 35°), so they are similar (hh). In similar triangles, the ratio of two sides within one triangle is the same as in the other (both sides get multiplied by the same $k$, and $k$ cancels). So the ratios depend *only* on the angle. That is the whole reason trigonometry works.

**Finding a side.** Right angle at $C$, $\angle A = 28°$, hypotenuse $AB = 15$. Then $BC$ is opposite $A$, so $BC = 15\sin 28° \approx 7.04$, and $AC = 15\cos 28° \approx 13.24$.

**Finding an angle.** Right angle at $C$, $BC = 7$, $AB = 12$. Then $\sin A = \frac{7}{12}$, so $A = \sin^{-1}\!\left(\frac{7}{12}\right) \approx 35.7°$. On the calculator: `SHIFT sin` (the inverse sine, also written arcsin).

**Angle of elevation and slope.** The **angle of elevation** is the angle between the horizontal and your line of sight up to an object. The **slope angle** (*hellingshoek*) of a road or ramp is the angle with the horizontal. A slope given as a percentage is $\tan(\text{hellingshoek}) \times 100\%$: a road rising 12 m per 100 m horizontally has $\tan\alpha = 0.12$ and $\alpha \approx 6.8°$.

**Worked example.** You stand 25 m from a tree, eyes 1.6 m above the ground, and see the top at an angle of elevation of 38°. The height above eye level is $25\tan 38°$, so the tree is $25\tan 38° + 1.6 \approx 21.13$ m high.

### Common mistakes: trigonometry

- **Calculator in radians.** Your calculator must be in degree mode (`D` or `DEG` on screen). Quick check: $\sin 30°$ must give $0.5$. In radian mode it gives $-0.988...$.
- **Using SOS-CAS-TOA in a triangle without a right angle.** These ratios are only defined in right triangles. In other triangles, first draw an altitude to create right triangles (Problem 23).
- **Mixing up opposite and adjacent.** "Opposite" and "adjacent" depend on which angle you are looking at. The hypotenuse is always opposite the right angle. Mark the angle in your sketch, then label O, A, S.
- **Rounding too early.** Store intermediate results.

## 11. Exact values and identities

Two small triangles give exact values.

**Half-square.** Cut a square of side 1 along a diagonal. You get a right triangle with legs 1 and 1, angles 45°, and hypotenuse $\sqrt{1^2 + 1^2} = \sqrt2$. So $\sin 45° = \cos 45° = \frac{1}{\sqrt2} = \tfrac12\sqrt2$ and $\tan 45° = 1$.

**Half-equilateral triangle.** Take an equilateral triangle with side 2 (all angles 60°) and cut it from a vertex to the midpoint of the opposite side. By the isosceles theorem this line is perpendicular to the base. You get a right triangle with hypotenuse 2, short leg 1, angles 30° (at the top) and 60° (at the base), and long leg $\sqrt{2^2 - 1^2} = \sqrt3$. Reading off:

| angle | $\sin$ | $\cos$ | $\tan$ |
|---|---|---|---|
| 30° | $\tfrac12$ | $\tfrac12\sqrt3$ | $\tfrac13\sqrt3$ |
| 45° | $\tfrac12\sqrt2$ | $\tfrac12\sqrt2$ | $1$ |
| 60° | $\tfrac12\sqrt3$ | $\tfrac12$ | $\sqrt3$ |

Don't memorise the table; memorise the two triangles and rebuild the table in a minute.

**Identities.** With legs $a$ (opposite $\alpha$), $b$ (adjacent) and hypotenuse $c$:

$$
\sin^2\alpha + \cos^2\alpha = \frac{a^2}{c^2} + \frac{b^2}{c^2} = \frac{a^2 + b^2}{c^2} = 1
$$

by Pythagoras, and

$$
\frac{\sin\alpha}{\cos\alpha} = \frac{a/c}{b/c} = \frac{a}{b} = \tan\alpha .
$$

(Notation: $\sin^2\alpha$ means $(\sin\alpha)^2$.) Also, the other acute angle is $90° - \alpha$, and its opposite side is $b$, so $\sin(90° - \alpha) = \cos\alpha$. That is why the table's sine column for 30° matches the cosine column for 60°.

**Worked example.** $\alpha$ is acute and $\sin\alpha = \frac{5}{13}$. Then $\cos^2\alpha = 1 - \frac{25}{169} = \frac{144}{169}$, so $\cos\alpha = \frac{12}{13}$ and $\tan\alpha = \frac{5}{12}$.

> **Going further.** Can you find $\sin 15°$ exactly? Hint: in a right triangle with a 30° angle, extend the long leg past the 30° vertex by the length of the hypotenuse and look at the new, bigger triangle. You should get a triangle with a 15° angle and sides you can compute with Pythagoras. (Answer: $\sin 15° = \tfrac14(\sqrt6 - \sqrt2)$.)

## 12. Geometry in 3D

**Space diagonal of a cuboid.** A cuboid (*balk*) $ABCD.EFGH$ has length $\ell$, width $w$ and height $h$, with $ABCD$ the bottom face and $E, F, G, H$ above $A, B, C, D$. The **space diagonal** (*lichaamsdiagonaal*) $AG$ goes through the inside. Use Pythagoras twice:

1. In the bottom face, $AC^2 = \ell^2 + w^2$.
2. Edge $CG$ is vertical, so it is perpendicular to every line in the bottom face, in particular to $AC$. So triangle $ACG$ has a right angle at $C$, and $AG^2 = AC^2 + CG^2 = \ell^2 + w^2 + h^2$.

$$
AG = \sqrt{\ell^2 + w^2 + h^2}.
$$

Example: a box $3 \times 4 \times 12$ has space diagonal $\sqrt{9 + 16 + 144} = \sqrt{169} = 13$.

The key 3D skill is to **find a right triangle in a flat plane** inside the solid and draw it separately, flat, in its true shape.

**Angle between a line and a plane.** The angle between $AG$ and the bottom face is the angle between $AG$ and its "shadow" (projection) $AC$ in that face: angle $GAC$, with $\tan\angle GAC = \frac{h}{\sqrt{\ell^2 + w^2}}$.

**Pyramids.** Square pyramid $T.ABCD$ with base side 8, apex $T$ straight above the centre $M$ of the base, height $TM = 3$. Let $N$ be the midpoint of $BC$.

- Height of a side face (from $T$ to $N$): $MN = 4$, so $TN = \sqrt{4^2 + 3^2} = 5$.
- Lateral edge: $MB = \tfrac12 BD = \tfrac12\cdot 8\sqrt2 = 4\sqrt2$, so $TB = \sqrt{32 + 9} = \sqrt{41}$.
- Angle between side face $TBC$ and the base: angle $TNM$, with $\tan\angle TNM = \frac34$, so about 36.9°.
- Angle between edge $TB$ and the base: angle $TBM$, with $\tan\angle TBM = \frac{3}{4\sqrt2}$, so about 27.9°.

**Sight lines and blind spots.** A **sight line** (*kijklijn*) is a straight line from the eye (*oogpunt*) past the edge of an obstacle. Everything behind the obstacle and below the sight line is invisible: the **blind spot** (*dode hoek*). In a side view, sight lines create A-figures or X-figures, so blind spots are computed with similar triangles.

Example: you stand on a dike with your eyes 6 m above the ground. A wall 2 m high stands 10 m in front of you (measured horizontally). The sight line over the top of the wall drops $6 - 2 = 4$ m over 10 m, i.e. 0.4 m per metre. From the top of the wall it needs another 2 m to reach the ground, which takes $2 / 0.4 = 5$ m. So the blind spot on the ground behind the wall is 5 m deep.

**Views.** The **front view** (*vooraanzicht*), **side view** (*zijaanzicht*) and **top view** (*bovenaanzicht*) are what you see looking straight at the object from the front, side and above. Warning: in a view, a segment appears at its true length only if it is parallel to the viewing plane. In the front view of the pyramid above you see a triangle with base 8 and height 3; its slanted sides have length $TN = 5$, not the edge length $\sqrt{41}$.

### Common mistakes: 3D

- Assuming a triangle is right-angled because it "looks" right-angled in a perspective drawing. Justify the right angle: a vertical line is perpendicular to every horizontal line.
- Using a lateral edge where the height of a side face is needed, or the other way round.
- Measuring lengths in a perspective drawing; they are distorted. Compute them.
