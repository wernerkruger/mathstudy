# A4 Notes: Geometry and measurement

[← Module overview](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

Geometry is where proof was born. Around 300 BC Euclid wrote the *Elements*, which starts from a handful of simple assumptions and proves hundreds of facts about shapes, one after the other. For more than 2,000 years it was the book from which people learned what a proof is. In this module you'll prove some of its most famous results yourself: that the angles of a triangle add up to 180°, that an angle in a semicircle is a right angle, and Pythagoras' theorem.

**Draw a sketch for every problem.** Geometry is done with a pencil in your hand.

---

## 1. Angles

An **angle** (*hoek*) is formed by two rays from one point, the vertex (*hoekpunt*). We measure it in **degrees**: a full turn is $360°$. (Why 360? Probably from the Babylonians, who counted in sixties, and 360 is close to the number of days in a year. It is also divisible by 2, 3, 4, 5, 6, 8, 9, 10, 12, … which is very convenient.)

| Name | Dutch | Size |
|---|---|---|
| acute | scherp | between 0° and 90° |
| right | recht | exactly 90° |
| obtuse | stomp | between 90° and 180° |
| straight | gestrekt | exactly 180° |
| reflex | — | between 180° and 360° |

In Dutch schools you measure and draw angles with the **geodriehoek**.

### Two lines crossing

- **Angles on a straight line** (*nevenhoeken*) add up to 180°.
- **Vertically opposite angles** (*overstaande hoeken*) are equal.

*Proof of the second.* Two lines cross, making angles $\alpha$, $\beta$, $\gamma$, $\delta$ in order around the point. $\alpha + \beta = 180°$ (on a line) and $\beta + \gamma = 180°$ (on the other line). So $\alpha = 180° - \beta = \gamma$. $\square$

Notice the shape of this argument: we didn't measure anything. We used two facts we already accept and some algebra, and got a fact that holds for **every** pair of crossing lines.

### Parallel lines

When a line (the *transversal*) crosses two **parallel** lines (*evenwijdige lijnen*), it makes the same angles at both:

- **Corresponding angles** (*F-hoeken*: they sit in an F-shape) are equal.
- **Alternate angles** (*Z-hoeken*: in a Z-shape) are equal.
- **Co-interior angles** (in a U- or C-shape) add up to 180°.

Corresponding angles are equal because sliding one parallel line along the transversal onto the other carries one angle exactly onto the other. Alternate angles then follow: an alternate angle is vertically opposite a corresponding angle. Co-interior angles follow too: one is next to (on a line with) an angle that equals the other.

> **Going further: why is this an assumption?** Euclid could not *prove* that corresponding angles at parallel lines are equal; he had to assume something equivalent (his famous *fifth postulate*, the parallel postulate). For 2,000 years mathematicians tried to prove it from the other assumptions, and failed. In the 1800s Gauss, Bolyai and Lobachevsky discovered why: there are perfectly consistent **non-Euclidean geometries** in which it is false, and in which the angles of a triangle add up to *less* than 180°. On the surface of a sphere, a triangle can even have three right angles (think of the North Pole and two points on the equator).

---

## 2. Triangles

### The angle sum

**Theorem.** The angles of any triangle add up to $180°$.

*Proof.* Take triangle $ABC$ with angles $\alpha$ at $A$, $\beta$ at $B$, $\gamma$ at $C$. Draw the line $\ell$ through $C$ parallel to $AB$.

At $C$, three angles sit side by side along $\ell$: one between $\ell$ and $CA$, the angle $\gamma$ of the triangle, and one between $CB$ and $\ell$. Together they make a straight angle, $180°$.

- The angle between $\ell$ and $CA$ equals $\alpha$: they are alternate angles (Z-angles) for the parallel lines $\ell$ and $AB$ with transversal $AC$.
- The angle between $CB$ and $\ell$ equals $\beta$: alternate angles with transversal $BC$.

So $\alpha + \gamma + \beta = 180°$. $\square$

Draw this picture yourself; it's worth knowing by heart.

**Consequence: the exterior angle.** Extend side $AB$ beyond $B$. The **exterior angle** at $B$ is $180° - \beta$, which equals $\alpha + \gamma$. So *an exterior angle of a triangle equals the sum of the two opposite interior angles.*

### Kinds of triangles

- **Equilateral** (*gelijkzijdig*): three equal sides. All angles are $60°$.
- **Isosceles** (*gelijkbenig*): two equal sides (the legs, *benen*). The two **base angles** (*basishoeken*) are equal.
- **Right-angled** (*rechthoekig*): one angle of $90°$. The other two then add up to $90°$.

Why are the base angles of an isosceles triangle equal? Fold it along the line from the top to the midpoint of the base: the two halves match exactly (they have the same three sides), so the base angles coincide. In stage B you'll make this rigorous with **congruent triangles** (*congruente driehoeken*).

**Worked example.** An isosceles triangle has a top angle of $40°$. The base angles are equal and add up to $180° - 40° = 140°$, so each is $70°$.

**Triangle inequality.** In any triangle, each side is shorter than the other two together: $AB < AC + CB$. (The straight path is the shortest.) So there is no triangle with sides 2, 3 and 6.

---

## 3. Polygons

A **polygon** (*veelhoek*) is a closed figure made of straight sides: triangle (3), quadrilateral (*vierhoek*, 4), pentagon (5), hexagon (6), octagon (8), and an **$n$-gon** in general. A **regular** polygon (*regelmatige veelhoek*) has all sides equal and all angles equal.

### Angle sum

**Theorem.** The interior angles of an $n$-gon (without dents, that is, *convex*) add up to $(n - 2)\cdot 180°$.

*Proof.* Pick one vertex and draw all the diagonals from it. They cut the polygon into $n - 2$ triangles (one for each side not touching the chosen vertex). The angles of these triangles together make up exactly the angles of the polygon. Each triangle contributes $180°$. $\square$

So a quadrilateral has angle sum $360°$, a pentagon $540°$, a hexagon $720°$.

A **regular** $n$-gon has $n$ equal angles, each $\dfrac{(n - 2)\cdot 180°}{n}$. For a regular octagon: $\dfrac{6\cdot 180°}{8} = 135°$.

### Exterior angles

Walk around a convex polygon. At each corner you turn through the exterior angle. After going all the way round you face the same way as at the start, so you have turned through exactly one full turn:

$$
\text{sum of the exterior angles} = 360°, \text{ for every convex polygon.}
$$

That's often the fastest way to find angles of regular polygons: each exterior angle is $\tfrac{360°}{n}$, so each interior angle is $180° - \tfrac{360°}{n}$. (Check that this is the same as the formula above.)

### Quadrilaterals

| Name | Dutch | Defining property |
|---|---|---|
| parallelogram | parallellogram | two pairs of parallel sides |
| rectangle | rechthoek | four right angles |
| rhombus | ruit | four equal sides |
| square | vierkant | four equal sides and four right angles |
| trapezium | trapezium | (at least) one pair of parallel sides |
| kite | vlieger | two pairs of equal adjacent sides |

Every square is a rectangle and a rhombus; every rectangle is a parallelogram. A good exercise is to draw a diagram of which kinds are special cases of which.

---

## 4. Perimeter and area

The **perimeter** (*omtrek*) is the length of the boundary. The **area** (*oppervlakte*) is how many unit squares fit inside, measured in cm², m², and so on.

All the area formulas come from the rectangle. Don't learn them by heart without the picture: **derive** them.

**Rectangle.** Length $\ell$, width $b$: $\ell$ rows of $b$ unit squares, so $A = \ell\cdot b$.

**Parallelogram.** Base $b$, height $h$ (measured *perpendicular* to the base). Cut a right-angled triangle off one end and slide it to the other end: you get a rectangle $b$ by $h$. So

$$
A = b\cdot h.
$$

**Triangle.** Two copies of a triangle fit together into a parallelogram with the same base and height. So

$$
A = \tfrac12\, b\cdot h.
$$

Any side can be the base, as long as you use the height that belongs to it. In an obtuse triangle that height may fall outside the triangle.

**Trapezium.** Parallel sides $a$ and $c$, height $h$. Two copies, one turned upside down, fit together into a parallelogram with base $a + c$ and height $h$. So

$$
A = \tfrac12 (a + c)\, h.
$$

> **Common mistake.** The height must be perpendicular to the base. For a parallelogram with sides 8 and 5, the area is **not** $8\cdot 5 = 40$ unless the angles are right angles; you need the height.

**Composite shapes:** split into rectangles and triangles, or take a big rectangle and subtract the missing pieces.

**Units.** $1$ m $= 100$ cm, so $1$ m² $= 100 \cdot 100$ cm² $= 10\,000$ cm². Area units scale with the **square** of length units (A2 §3).

---

## 5. Circles

A **circle** (*cirkel*) is the set of points at a fixed distance, the **radius** (*straal*) $r$, from the **centre** (*middelpunt*). The **diameter** (*middellijn*) is $d = 2r$.

### What is π?

Take any circle and divide its circumference (*omtrek*) by its diameter. You always get the same number, about 3.14159. This number is called **π** (pi). Why is it the same for every circle? Because all circles have the same shape: a circle twice as big is the small one scaled up by 2, so both its circumference and diameter double, and their ratio stays the same. So, *by definition of π*:

$$
\text{circumference} = \pi d = 2\pi r.
$$

π is irrational (proved by Lambert in 1761, much harder than for $\sqrt2$), so its decimals never repeat: $\pi = 3.14159\,26535\,89793\ldots$ For exact answers, keep π as a symbol: "$10\pi$ cm", not "31.4 cm".

### Area of a circle

Cut a circle into many equal slices, like a pizza, and lay them side by side, alternately pointing up and down. You get a shape that looks like a bumpy parallelogram. Its height is (nearly) $r$, and its base is half the circumference, $\pi r$ (half the crust is at the bottom, half at the top). With more and thinner slices the bumps flatten out and it becomes a rectangle $\pi r$ by $r$. So

$$
A = \pi r\cdot r = \pi r^2.
$$

This argument is not quite a proof (what exactly does "becomes a rectangle" mean?), but making it precise is exactly what **integral calculus** does, in stage D.

**Worked example.** A circle of radius 5 cm has circumference $10\pi \approx 31.4$ cm and area $25\pi \approx 78.5$ cm².

> **Going further: Archimedes and π.** Around 250 BC Archimedes trapped π between the perimeters of regular polygons inside and outside the circle. With 96-sided polygons he proved $3\tfrac{10}{71} < \pi < 3\tfrac17$. The simplest version of his idea is in problem 29.

---

## 6. Solids and volume

| Solid | Dutch | Volume |
|---|---|---|
| cuboid $\ell\times b\times h$ | balk | $\ell\cdot b\cdot h$ |
| cube with edge $a$ | kubus | $a^3$ |
| prism | prisma | (area of base) $\times$ height |
| cylinder | cilinder | $\pi r^2 h$ |
| pyramid | piramide | $\tfrac13 \times$ (area of base) $\times$ height |
| cone | kegel | $\tfrac13\pi r^2 h$ |
| sphere | bol | $\tfrac43\pi r^3$ |

The first four all come from one idea: **a prism is a stack of identical slices**. A cuboid $\ell\times b\times h$ is $h$ layers of $\ell\cdot b$ unit cubes. Any prism, including a cylinder (a "prism with a circular base"), is a stack of copies of its base, so its volume is base area times height.

The $\tfrac13$ for pyramids and cones is harder. A cube can be cut into three identical pyramids with a square base (one face of the cube) and their apex at one corner, which shows the $\tfrac13$ in that case. The general proof needs calculus (stage D). The sphere formula is due to Archimedes, who was so proud of it that he asked for a sphere inside a cylinder to be carved on his tomb.

**Volume units.** $1$ dm³ $= 1$ litre, $1$ cm³ $= 1$ ml, and $1$ m³ $= 1000$ litres.

**Surface area** (*oppervlakte* of a solid) is the total area of all its faces. Unfold the solid into a **net** (*uitslag*) and add the areas. A cylinder unfolds into two circles and a rectangle whose length is the circumference $2\pi r$: surface area $2\pi r^2 + 2\pi r h$.

> **Scaling.** Make every length $k$ times as big. Then areas become $k^2$ times as big and volumes $k^3$ times as big. A model ship at scale $1:100$ has $\tfrac{1}{10\,000}$ of the paint and $\tfrac{1}{1\,000\,000}$ of the volume of the real ship.

---

## 7. Symmetry and transformations

### Symmetry

- A shape has **line symmetry** (*lijnsymmetrie*) if reflecting it in a line (the *mirror line*, *symmetrieas*) leaves it unchanged. A square has 4 lines of symmetry; a rectangle 2; a regular $n$-gon $n$.
- It has **rotational symmetry** (*draaisymmetrie*) of order $k$ if rotating it by $\tfrac{360°}{k}$ about a centre leaves it unchanged. A regular $n$-gon has order $n$.
- **Point symmetry** (*puntsymmetrie*) is rotational symmetry of $180°$: the letters S, N and Z have it; a parallelogram has it.

### Transformations

A **transformation** moves every point of the plane. The three basic **rigid** ones (they keep lengths and angles the same):

- **translation** (*verschuiving*): every point moves the same distance in the same direction;
- **reflection** (*spiegeling*) in a line;
- **rotation** (*draaiing*) about a point through an angle.

In a coordinate system they have simple rules:

| Transformation | Rule |
|---|---|
| translation by $(a, b)$ | $(x, y) \mapsto (x + a,\ y + b)$ |
| reflection in the $y$-axis | $(x, y) \mapsto (-x,\ y)$ |
| reflection in the $x$-axis | $(x, y) \mapsto (x,\ -y)$ |
| reflection in the line $y = x$ | $(x, y) \mapsto (y,\ x)$ |
| rotation $90°$ anticlockwise about the origin | $(x, y) \mapsto (-y,\ x)$ |
| rotation $180°$ about the origin (point reflection) | $(x, y) \mapsto (-x,\ -y)$ |

Why is a $90°$ anticlockwise rotation $(x, y) \mapsto (-y, x)$? Look at $(1, 0)$: it goes to $(0, 1)$. And $(0, 1)$ goes to $(-1, 0)$. A point $(x, y)$ is "$x$ steps right and $y$ steps up"; after rotating, "right" has become "up" and "up" has become "left", so it becomes $x$ steps up and $y$ steps left: $(-y, x)$.

> **Going further.** Doing two reflections in a row in two crossing lines gives a rotation (by twice the angle between the lines); in two parallel lines it gives a translation. Try it in GeoGebra. Every rigid motion of the plane is a combination of at most three reflections.

---

## 8. Coordinates

A **coordinate system** (*assenstelsel*) has a horizontal $x$-axis and a vertical $y$-axis crossing at the **origin** (*oorsprong*) $O(0, 0)$. The point $A(3, -2)$ is 3 right and 2 down. The axes split the plane into four **quadrants** (*kwadranten*).

- The **midpoint** (*midden*) of $A(x_1, y_1)$ and $B(x_2, y_2)$ is $\left(\dfrac{x_1 + x_2}{2}, \dfrac{y_1 + y_2}{2}\right)$: the average of the coordinates.
- The **distance** $AB$ comes from Pythagoras (§10): $AB = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}$.
- The **area of a triangle** with given vertices: draw the smallest rectangle around it with sides parallel to the axes, and subtract the right-angled triangles in the corners (problem 27).

Coordinates turn geometry into algebra. This idea, from René Descartes (1637), is the basis of all of Wiskunde B's *meetkunde met coördinaten*.

---

## 9. Constructions with compass and straightedge

The Greeks allowed only two tools: a **straightedge** (*liniaal* without measuring) to draw lines through two points, and a **compass** (*passer*) to draw circles. What can you build? Surprisingly much, and each construction comes with a proof.

### Perpendicular bisector (*middelloodlijn*)

**Construction.** To bisect segment $AB$: draw a circle with centre $A$ and a circle with centre $B$, both with the same radius (more than half of $AB$). They meet in two points $P$ and $Q$. The line $PQ$ is the perpendicular bisector of $AB$.

**Why it works.** $PA = PB$ and $QA = QB$ (equal radii). So $APBQ$ is a **kite** (or a rhombus), and the diagonal $PQ$ of a kite is its line of symmetry, which crosses the other diagonal $AB$ at right angles in its midpoint.

**Key fact (locus).** The perpendicular bisector of $AB$ is exactly the set of points that are the same distance from $A$ as from $B$. (Reflecting in the bisector swaps $A$ and $B$ and keeps distances, so every point on it is equidistant; conversely, an equidistant point $P$ makes $APB$ isosceles, and the line from $P$ to the midpoint of $AB$ is its axis of symmetry.)

### Angle bisector (*bissectrice*)

To bisect the angle at $O$: draw a circle around $O$ cutting the arms at $A$ and $B$. Draw equal circles around $A$ and $B$; they meet at $P$. Then $OP$ bisects the angle. Why: $OA = OB$ and $PA = PB$, so $OAPB$ is a kite with symmetry line $OP$, and the symmetry swaps the two halves of the angle.

### A 60° angle and an equilateral triangle

Draw a segment $AB$. Circles with centres $A$ and $B$, both with radius $AB$, meet at $C$. Then $AC = AB = BC$: triangle $ABC$ is equilateral, so each angle is $60°$. (This is the very first construction in Euclid's *Elements*.) Bisect it to get $30°$.

### A perpendicular at a point

To draw the line through $P$ on line $\ell$ perpendicular to $\ell$: mark two points on $\ell$ at equal distances from $P$, and construct their perpendicular bisector. It passes through $P$. Bisect the right angle to get $45°$.

> **Going further: what can't be constructed?** In 1837 Pierre Wantzel proved that some constructions are **impossible** with compass and straightedge: trisecting a general angle (for example $60°$), and constructing a cube with twice the volume of a given cube. A regular 7-gon is impossible too, but, as Gauss discovered at age 19, a regular 17-gon can be constructed. Proving impossibility needs algebra you'll meet at university.

---

## 10. Pythagoras' theorem

In a right-angled triangle, the side opposite the right angle is the **hypotenuse** (*schuine zijde*, the longest side); the other two are the **legs** (*rechthoekszijden*).

**Theorem (Pythagoras).** In a right-angled triangle with legs $a$, $b$ and hypotenuse $c$:

$$
a^2 + b^2 = c^2.
$$

In words: the areas of the squares on the two legs add up to the area of the square on the hypotenuse.

### A proof

There are hundreds of proofs. Here is one of the most beautiful.

Take four copies of the triangle and arrange them inside a big square of side $a + b$, with one triangle in each corner, so that each side of the big square is made of one leg $a$ and one leg $b$. The hypotenuses then form a tilted quadrilateral in the middle, with four sides of length $c$.

- **The middle shape is a square.** At each of its corners, three angles lie on the side of the big square: the two acute angles of a triangle (call them $\alpha$ and $\beta$) and the corner of the middle shape. Since $\alpha + \beta = 90°$ (the angles of the right-angled triangle add to $180°$), the corner of the middle shape is $180° - 90° = 90°$. Four equal sides and four right angles: a square, with area $c^2$.
- **Count the area of the big square in two ways.** Its area is $(a + b)^2$. It also equals the four triangles plus the middle square: $4\cdot\tfrac12 ab + c^2 = 2ab + c^2$.

So $(a + b)^2 = 2ab + c^2$, that is $a^2 + 2ab + b^2 = 2ab + c^2$, so $a^2 + b^2 = c^2$. $\square$

(If you don't like the algebra: arrange the same four triangles differently in the same big square so that the leftover space is two squares, $a^2$ and $b^2$. Same big square, same four triangles, so the leftover areas are equal: $a^2 + b^2 = c^2$.)

### Using it

**Finding the hypotenuse.** Legs 6 and 8: $c^2 = 36 + 64 = 100$, $c = 10$.

**Finding a leg.** Hypotenuse 13, leg 5: $b^2 = 169 - 25 = 144$, $b = 12$.

> **Common mistake.** Make sure $c$ is the hypotenuse. With sides 5 and 13 you can't just add: if 13 is the hypotenuse, you **subtract**: $13^2 - 5^2$.

**The converse.** If a triangle has sides with $a^2 + b^2 = c^2$, then it is right-angled (the angle opposite $c$ is $90°$). The ancient Egyptians are said to have made right angles with a rope with 12 equally spaced knots, pulled into a triangle with sides 3, 4, 5. Whole-number solutions such as $(3, 4, 5)$, $(5, 12, 13)$, $(8, 15, 17)$ and $(7, 24, 25)$ are called **Pythagorean triples**.

**Distance in coordinates.** The distance from $A(1, 2)$ to $B(4, 6)$: go 3 right and 4 up; these are the legs of a right-angled triangle with hypotenuse $AB$. So $AB = \sqrt{3^2 + 4^2} = 5$.

**In 3D.** The space diagonal of a cuboid $a\times b\times c$ is $\sqrt{a^2 + b^2 + c^2}$: use Pythagoras twice, first on the base diagonal $\sqrt{a^2 + b^2}$ and then on the vertical triangle it forms with the height.

> **Going further.** Pythagoras was certainly not the first to know the theorem: Babylonian clay tablets from about 1800 BC list Pythagorean triples. And for exponents higher than 2, $a^n + b^n = c^n$ has **no** solutions in positive whole numbers: that's **Fermat's Last Theorem**, stated by Fermat around 1637 and finally proved by Andrew Wiles in 1994.
