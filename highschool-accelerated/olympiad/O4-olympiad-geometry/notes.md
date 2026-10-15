[← Back to O4 Olympiad geometry](README.md)

# O4 Olympiad geometry: notes

Olympiad geometry rewards two habits: drawing accurately, and never trusting the drawing. The drawing tells you *what* is true; the proof explains *why*. Standard notation throughout: in triangle $ABC$ the side lengths are $a = BC$, $b = CA$, $c = AB$, the angles are $A, B, C$, the semiperimeter (halve omtrek) is $s = \frac12(a+b+c)$, $R$ is the circumradius, $r$ the inradius and $[XYZ]$ the area of triangle $XYZ$.

---

## 0. Drawing (tekenen)

**Draw it.** For every problem: a triangle that is clearly *scalene* (ongelijkzijdig) and clearly *not* right-angled, at least 12 cm across, drawn with a compass and ruler or in GeoGebra. An isosceles or right triangle makes false facts look true.

In GeoGebra: place three free points, build everything else with the construction tools (Perpendicular Bisector, Angle Bisector, Circle through 3 Points, Intersect), then drag a vertex. Whatever stays true while you drag is a conjecture worth proving.

---

## 1. Angle chasing (hoeken jagen)

**Idea.** Fill in every angle you can, in terms of one or two unknowns, until the angle you want appears.

**Key facts.**

- Parallel lines: corresponding angles (F-hoeken) and alternate angles (Z-hoeken) are equal.
- The angles of a triangle sum to $180^\circ$; an exterior angle (buitenhoek) equals the sum of the two opposite interior angles.
- A triangle is isosceles exactly when two of its angles are equal.

*Proof of the angle sum.* Draw the line through $A$ parallel to $BC$. The two alternate angles it makes with $AB$ and $AC$ equal $B$ and $C$, and together with $A$ they form a straight angle.

**Example 1.1.** The internal bisectors of $B$ and $C$ meet at $I$. Show $\angle BIC = 90^\circ + \frac12 A$.

*Solution.* In triangle $BIC$ the angles at $B$ and $C$ are $\frac12 B$ and $\frac12 C$, so

$$
\angle BIC = 180^\circ - \tfrac12 (B + C) = 180^\circ - \tfrac12(180^\circ - A) = 90^\circ + \tfrac12 A.
$$

The same computation with the *external* bisectors gives $\angle BI_AC = 90^\circ - \frac12 A$ for the excentre $I_A$ (section 5).

**Example 1.2.** In an acute triangle $ABC$ with circumcentre $O$, let $AD$ be the altitude. Prove $\angle BAD = \angle OAC$.

*Solution.* In right triangle $ABD$: $\angle BAD = 90^\circ - B$. By the inscribed angle theorem (section 3), $\angle AOC = 2B$. Triangle $AOC$ is isosceles ($OA = OC$), so $\angle OAC = \frac12(180^\circ - 2B) = 90^\circ - B$. Lines $AD$ and $AO$ are mirror images in the bisector of angle $A$; they are called isogonal (isogonaal).

---

## 2. Congruence and similar triangles (congruentie en gelijkvormige driehoeken)

**Idea.** Equal or proportional lengths come from congruent or similar triangles. Look for two triangles that share angles.

**Key facts.**

- Congruence (congruentie): SSS, SAS, ASA and AAS (Dutch: ZZZ, ZHZ, HZH, ZZH), plus RHS (right angle, hypotenuse, side). SSA is *not* a criterion.
- Similarity (gelijkvormigheid): two equal angles (hh) are enough; or all sides proportional; or one equal angle between proportional sides.
- **Angle bisector theorem (bissectricestelling).** If the bisector of angle $A$ meets $BC$ at $D$, then $\frac{BD}{DC} = \frac{AB}{AC}$.

*Proof.* Draw the line through $C$ parallel to $AD$; it meets line $BA$ at $E$ (beyond $A$). Then $\angle ACE = \angle DAC$ (alternate) and $\angle AEC = \angle BAD$ (corresponding), and these are equal, so triangle $ACE$ is isosceles with $AE = AC$. By the intercept theorem (stelling van de evenredige verdeling) on lines $BA$ and $BC$, $\frac{BD}{DC} = \frac{BA}{AE} = \frac{AB}{AC}$.

The *external* bisector at $A$ (if $AB \neq AC$) meets line $BC$ at a point $X$ outside the segment with $\frac{XB}{XC} = \frac{AB}{AC}$ as well. A proof that works for both bisectors uses areas: $\frac{XB}{XC} = \frac{[ABX]}{[ACX]}$ (same height from $A$), and by $\frac12 ab\sin C$ (section 6) this equals $\frac{AB \sin\angle XAB}{AC \sin\angle XAC}$, where the two sines are equal because for the internal bisector the two angles are equal, and for the external bisector they add up to $180^\circ$.

**Example 2.1 (right triangle).** In triangle $ABC$ with $\angle C = 90^\circ$, let $CD$ be the altitude, $p = AD$, $q = DB$, $h = CD$. Show $h^2 = pq$, $b^2 = pc$ and $a^2 = qc$.

*Solution.* The triangles $ACB$, $ADC$ and $CDB$ all have a right angle, and $ADC$ shares angle $A$ with $ACB$, $CDB$ shares angle $B$ with $ACB$. So all three are similar. From $ADC \sim CDB$: $\frac{AD}{CD} = \frac{CD}{DB}$, so $h^2 = pq$. From $ADC \sim ACB$: $\frac{AD}{AC} = \frac{AC}{AB}$, so $b^2 = pc$; similarly $a^2 = qc$. Adding the last two gives $a^2 + b^2 = (p+q)c = c^2$: a proof of Pythagoras.

---

## 3. Circle theorems (cirkelstellingen)

**Draw it.** A large circle with centre $O$ and five points on it. Measure all angles that "look at" the same chord from points on the same arc.

**Key facts.**

- **Inscribed angle theorem (stelling van de omtrekshoek).** An inscribed angle is half the central angle on the same arc: $\angle ACB = \frac12 \angle AOB$. So all inscribed angles on the same arc are equal.
- **Thales.** An angle inscribed in a semicircle is $90^\circ$; conversely, if $\angle ACB = 90^\circ$ then $C$ lies on the circle with diameter $AB$.
- **Tangent–chord angle.** The angle between the tangent at $A$ and the chord $AB$ equals the inscribed angle $\angle ACB$ on the other side of the chord.
- **Cyclic quadrilateral (koordenvierhoek).** A convex quadrilateral $ABCD$ is cyclic exactly when opposite angles sum to $180^\circ$, or exactly when $\angle ACB = \angle ADB$ (a side seen under equal angles from the other two vertices, on the same side).

*Proof of the inscribed angle theorem (centre inside the angle).* Draw diameter $CC'$. Triangle $OCA$ is isosceles, so its exterior angle $\angle AOC' = 2\angle OCA$. Likewise $\angle BOC' = 2\angle OCB$. Add. If $O$ lies outside the angle, subtract instead; if $O$ lies on a side, one term is zero.

*Proof of the converse (concyclicity).* Suppose $\angle ACB = \angle ADB = \theta$ with $C, D$ on the same side of $AB$. Take any circle through $A$ and $B$ on which $AB$ is seen under the angle $\theta$ from that side. By the inscribed angle theorem its central angle is $\angle AOB = 2\theta$, so its centre $O$ lies on the perpendicular bisector of $AB$ at distance $\frac12 AB \cot\theta$ from the midpoint of $AB$: on the side of $C$ and $D$ if $\theta < 90^\circ$, on the other side if $\theta > 90^\circ$, and at the midpoint if $\theta = 90^\circ$. So the circles $ABC$ and $ABD$ have the same centre, and both pass through $A$: they are the same circle.

**Four ways to prove $A, B, C, D$ concyclic.** (1) Equal angles on a chord; (2) opposite angles sum to $180^\circ$; (3) two right angles on a common segment (Thales); (4) power of a point, $PA \cdot PB = PC \cdot PD$ (section 4).

**Directed angles (georiënteerde hoeken).** Write $\measuredangle(\ell, m)$ for the angle through which you rotate line $\ell$ anticlockwise to reach line $m$, counted modulo $180^\circ$. Then "$A, B, C, D$ concyclic" becomes the single statement $\measuredangle ACB = \measuredangle ADB$, whichever side $C$ and $D$ are on. Use them when the diagram could look different (a point inside or outside a segment); state at the start of the proof that you do.

**Example 3.1.** Two circles meet at $P$ and $Q$. A line through $P$ meets the first circle again at $A$ and the second at $B$. Show that the angles of triangle $QAB$ do not depend on the line.

*Solution.* $\angle QAP$ is an inscribed angle on chord $QP$ of the first circle, so it is constant (as long as $A$ stays on the same arc); similarly $\angle QBP$ on the second circle. So triangle $QAB$ has two fixed angles. With directed angles, $\measuredangle QAB = \measuredangle QAP$ is constant with no arc condition at all.

**Example 3.2 (Miquel).** Points $D, E, F$ lie on lines $BC, CA, AB$. Prove that the circles $AEF$, $BFD$ and $CDE$ pass through one point.

*Solution (directed angles).* Let the circles $BFD$ and $CDE$ meet again at $M$. Then

$$
\measuredangle FMD = \measuredangle FBD = \measuredangle ABC, \qquad \measuredangle DME = \measuredangle DCE = \measuredangle BCA.
$$

So $\measuredangle FME = \measuredangle FMD + \measuredangle DME = \measuredangle ABC + \measuredangle BCA = -\measuredangle CAB = \measuredangle BAC$ (the three directed angles of a triangle sum to $0$ modulo $180^\circ$). Hence $\measuredangle FME = \measuredangle FAE$, and $M$ lies on circle $AEF$. Without directed angles you would need separate cases for $M$ inside and outside the triangle.

---

## 4. Power of a point and radical axis (macht van een punt en machtlijn)

**Key facts.**

- **Power of a point.** If a line through $P$ meets a circle at $A$ and $B$, then $PA \cdot PB$ is the same for every such line. For $P$ outside it equals $PT^2$, where $PT$ is a tangent segment; in general it equals $\operatorname{pow}(P) = PO^2 - r^2$ (positive outside, negative inside, with signed lengths).
- **Converse.** If lines $AB$ and $CD$ meet at $P$ and $PA \cdot PB = PC \cdot PD$ (with $P$ inside both segments or outside both), then $A, B, C, D$ are concyclic.
- **Radical axis (machtlijn).** For two circles with different centres, the points with equal power form a line perpendicular to the line of centres. If the circles meet at $X$ and $Y$, it is the line $XY$.
- **Radical centre (machtpunt).** For three circles with non-collinear centres, the three radical axes pass through one point.

*Proof of power of a point (chords $AB$ and $CD$ meeting inside at $P$).* $\angle PAC = \angle BAC = \angle BDC = \angle PDB$ and the vertical angles at $P$ are equal, so $PAC \sim PDB$ and $\frac{PA}{PD} = \frac{PC}{PB}$. For $P$ outside the proof is the same; for the tangent case use the tangent–chord angle: $PTA \sim PBT$.

*Proof of the radical axis.* Put the centres at $(0,0)$ and $(d,0)$ with radii $r_1, r_2$. Equal power means $x^2 + y^2 - r_1^2 = (x-d)^2 + y^2 - r_2^2$, which simplifies to $x = \frac{d^2 + r_1^2 - r_2^2}{2d}$: a vertical line. For three circles, the point where two radical axes meet has equal power with respect to all three circles, so it lies on the third axis too.

**Example 4.1.** Circles $\omega_1, \omega_2$ meet at $X$ and $Y$. Point $P$ lies on line $XY$ outside segment $XY$. Show that the tangents from $P$ to the two circles are equally long.

*Solution.* $PT_1^2 = PX \cdot PY = PT_2^2$.

**Example 4.2 (the altitudes are concurrent).** In triangle $ABC$, let $D$ be the foot of the altitude from $A$. Since $\angle ADB = \angle ADC = 90^\circ$, Thales puts $D$ on the circle with diameter $AB$ and on the circle with diameter $AC$. Both circles pass through $A$ and $D$, so their radical axis is the altitude $AD$. The same holds for the other two pairs of the three circles with diameters $AB$, $BC$, $CA$. The three radical axes, which are the three altitudes, meet at the radical centre. (The centres are the midpoints of the sides, which are not collinear.)

---

## 5. Triangle centres (bijzondere punten van een driehoek)

**Draw it.** In GeoGebra, construct $G$, $O$, $H$ and $I$ for one triangle and drag $A$ around.

**Key facts.**

- **Centroid (zwaartepunt) $G$**: the medians (zwaartelijnen) meet at $G$, which divides each median $2:1$ from the vertex. *Proof:* if $BE$ and $CF$ are medians meeting at $G$, then $FE$ is a midline (middenparallel): $FE \parallel BC$ and $FE = \frac12 BC$, so $GFE \sim GCB$ with ratio $\frac12$, giving $BG = 2GE$. The third median also cuts $BE$ in ratio $2:1$, so it passes through the same point.
- **Circumcentre (middelpunt van de omgeschreven cirkel) $O$**: the perpendicular bisectors (middelloodlijnen) meet at $O$, because a point on two of them is equidistant from all three vertices.
- **Incentre (middelpunt van de ingeschreven cirkel) $I$**: the internal bisectors meet at $I$, equidistant from all three sides. The **excentre** $I_A$ is where the internal bisector of $A$ and the external bisectors of $B$ and $C$ meet; it is the centre of the excircle (aangeschreven cirkel) opposite $A$.
- **Tangent lengths.** If the incircle touches $BC, CA, AB$ at $D, E, F$, then $AE = AF = s - a$, $BD = BF = s - b$, $CD = CE = s - c$. *Proof:* tangent segments from one point are equal; call them $x, y, z$ from $A, B, C$; then $y + z = a$, $z + x = b$, $x + y = c$, so $x = s - a$, and so on.
- **Orthocentre (hoogtepunt) $H$**: the altitudes meet at $H$ (Example 4.2). In an acute triangle, $\angle BHC = 180^\circ - A$.
- **Euler line (rechte van Euler).** $O$, $G$, $H$ are collinear and $HG = 2\,GO$. *Idea of proof:* the enlargement (vermenigvuldiging) with centre $G$ and factor $-\frac12$ maps $A, B, C$ to the midpoints of the opposite sides. It maps each altitude to a line through a midpoint perpendicular to that side, which is a perpendicular bisector. So it maps $H$ to $O$.
- **Incentre/excentre lemma.** Let the line $AI$ meet the circumcircle again at $M$ (the midpoint of arc $BC$ not containing $A$). Then $MB = MC = MI = MI_A$.

*Proof of the lemma.* $\angle MBC = \angle MAC = \frac12 A$ (same arc $MC$). So

$$
\angle MBI = \angle MBC + \angle CBI = \tfrac12 A + \tfrac12 B.
$$

The exterior angle of triangle $ABI$ at $I$ is $\angle BIM = \angle BAI + \angle ABI = \frac12 A + \frac12 B$. So triangle $MBI$ is isosceles with $MB = MI$; similarly $MC = MI$. Finally $\angle IBI_A = 90^\circ$ (internal and external bisectors at $B$ are perpendicular), so $B$ lies on the circle with diameter $II_A$. Its centre is on line $AI$ and equidistant from $B$ and $I$, which forces it to be $M$; so $MI_A = MI$.

**Example 5.1.** In an acute triangle with $A = 60^\circ$, show that $B$, $C$, $O$, $H$, $I$ lie on one circle.

*Solution.* $\angle BOC = 2A = 120^\circ$, $\angle BHC = 180^\circ - A = 120^\circ$, $\angle BIC = 90^\circ + \frac12 A = 120^\circ$. All three points lie on the same side of $BC$ as $A$ (the triangle is acute), so they all see $BC$ under $120^\circ$ from the same side and lie on one arc through $B$ and $C$. By the lemma, that circle is centred at $M$.

---

## 6. Areas (oppervlakten)

**Key facts.**

- **Ratio lemma.** Triangles with the same height have areas in the ratio of their bases. So if $D$ lies on $BC$, then $\frac{[ABD]}{[ADC]} = \frac{BD}{DC}$.
- $[ABC] = \frac12 ab \sin C$ (the height from $A$ onto $BC$ is $b \sin C$).
- $[ABC] = rs$: split the triangle into $IBC$, $ICA$, $IAB$, each with height $r$.
- $[ABC] = \frac{abc}{4R}$: combine $\frac12 ab\sin C$ with the sine rule $c = 2R \sin C$ (section 7).
- **Heron (formule van Heron).** $[ABC] = \sqrt{s(s-a)(s-b)(s-c)}$. *Sketch:* by the cosine rule, $\cos C = \frac{a^2+b^2-c^2}{2ab}$; then $16[ABC]^2 = 4a^2b^2\sin^2 C = (2ab)^2 - (a^2+b^2-c^2)^2$, which factors as a difference of squares twice into $(a+b+c)(-a+b+c)(a-b+c)(a+b-c) = 16\,s(s-a)(s-b)(s-c)$.

**Example 6.1.** A triangle has sides 9, 10 and 17. Find its area, $r$ and $R$.

*Solution.* $s = 18$, so the area is $\sqrt{18 \cdot 9 \cdot 8 \cdot 1} = \sqrt{1296} = 36$. Then $r = 36/18 = 2$ and $R = \frac{9 \cdot 10 \cdot 17}{4 \cdot 36} = \frac{85}{8}$.

**Example 6.2.** In trapezium $ABCD$ with $AB \parallel CD$, $AB = 6$ and $CD = 3$, the diagonals meet at $P$. The trapezium has area 45. Find the areas of the four triangles at $P$.

*Solution.* $PCD \sim PAB$ (alternate angles) with ratio $\frac12$, so $[ABP] = 4[CDP]$ and $AP = 2PC$. By the ratio lemma $[ADP] = 2[CDP]$ and $[BCP] = 2[CDP]$ (because $BP = 2PD$). With $[CDP] = x$ the total is $9x = 45$, so the areas are $[CDP] = 5$, $[ABP] = 20$, $[ADP] = [BCP] = 10$.

---

## 7. Trigonometry in geometry (goniometrie in de meetkunde)

**Key facts.**

- **Sine rule (sinusregel).** $\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C} = 2R$. *Proof:* let $A'$ be the point diametrically opposite $B$. Then $\angle BCA' = 90^\circ$ (Thales) and $\angle BA'C = A$ (same arc, if $A$ is acute), so $a = BA' \sin A = 2R \sin A$. If $A$ is obtuse, $\angle BA'C = 180^\circ - A$, which has the same sine.
- **Cosine rule (cosinusregel).** $c^2 = a^2 + b^2 - 2ab\cos C$. *Proof:* put $C = (0,0)$, $B = (a, 0)$, $A = (b\cos C, b \sin C)$ and compute $AB^2$.
- **Stewart's theorem (stelling van Stewart).** If $D$ lies on $BC$ with $BD = m$, $DC = n$, $AD = d$, then $b^2 m + c^2 n = a(d^2 + mn)$. *Proof:* apply the cosine rule in triangles $ABD$ and $ADC$ with the angles at $D$, which add up to $180^\circ$, so their cosines are opposite; eliminate the cosine.
- **Median length.** With $m = n = \frac a2$: $m_a^2 = \frac{2b^2 + 2c^2 - a^2}{4}$.

**Example 7.1.** A triangle has sides 4, 5, 6. Prove that its largest angle is twice its smallest angle.

*Solution.* Let $\alpha$ be the angle opposite 4 and $\gamma$ the angle opposite 6. By the cosine rule, $\cos\alpha = \frac{25 + 36 - 16}{60} = \frac34$ and $\cos\gamma = \frac{16 + 25 - 36}{40} = \frac18$. Then $\cos 2\alpha = 2\cos^2\alpha - 1 = \frac{18}{16} - 1 = \frac18 = \cos\gamma$. Both $2\alpha$ and $\gamma$ lie between $0^\circ$ and $180^\circ$, where cosine is one-to-one, so $\gamma = 2\alpha$.

**Example 7.2.** In the same triangle, the median to the side of length 6 has length $\sqrt{\frac{2\cdot 16 + 2 \cdot 25 - 36}{4}} = \frac{\sqrt{46}}{2}$.

---

## 8. Ceva and Menelaus (stellingen van Ceva en Menelaos)

**Key facts.**

- **Ceva.** Let $D, E, F$ lie on the sides $BC, CA, AB$ (inside the segments). Then $AD$, $BE$, $CF$ are concurrent if and only if

$$
\frac{BD}{DC} \cdot \frac{CE}{EA} \cdot \frac{AF}{FB} = 1.
$$

- **Menelaus.** Let $D, E, F$ lie on the lines $BC, CA, AB$, none of them a vertex. Then $D, E, F$ are collinear if and only if

$$
\frac{BD}{DC} \cdot \frac{CE}{EA} \cdot \frac{AF}{FB} = -1
$$

with signed ratios (a ratio is positive when the point lies inside the segment). In unsigned form: the product of the lengths is 1, and a line that misses the vertices crosses either exactly two sides inside the segments or none, so 0 or 2 of the points lie inside their segments. For the converse in unsigned form you must check this condition too.

*Proof of Ceva ($\Rightarrow$), via areas.* Let the cevians meet at $P$. By the ratio lemma applied twice,

$$
\frac{BD}{DC} = \frac{[ABD]}{[ADC]} = \frac{[PBD]}{[PDC]} = \frac{[ABD] - [PBD]}{[ADC] - [PDC]} = \frac{[ABP]}{[CAP]}.
$$

Similarly $\frac{CE}{EA} = \frac{[BCP]}{[ABP]}$ and $\frac{AF}{FB} = \frac{[CAP]}{[BCP]}$. Multiply: everything cancels to 1.

*Proof of Ceva ($\Leftarrow$).* Let $AD$ and $BE$ meet at $P$, and let $CP$ meet $AB$ at $F'$. By the forward direction, $\frac{AF'}{F'B} = \frac{AF}{FB}$. Only one point of segment $AB$ divides it in a given ratio, so $F' = F$.

*Proof of Menelaus ($\Rightarrow$).* Let the line $\ell$ through $D, E, F$ be given, and drop perpendiculars from $A, B, C$ to $\ell$ with lengths $h_A, h_B, h_C$. Similar right triangles give $\frac{BD}{DC} = \frac{h_B}{h_C}$, $\frac{CE}{EA} = \frac{h_C}{h_A}$, $\frac{AF}{FB} = \frac{h_A}{h_B}$, and the product is 1 in size. For the sign: $\ell$ does not pass through a vertex, so it splits the three vertices into two groups on its two sides; a ratio is negative exactly when its two vertices are on the same side. Either all three vertices are on one side (three negative ratios) or one is alone (one negative ratio). Either way the product is $-1$. The converse follows as for Ceva.

**Example 8.1.** The medians are concurrent: each ratio is 1. The internal bisectors are concurrent: by the angle bisector theorem the product is $\frac{c}{b}\cdot\frac{a}{c}\cdot\frac{b}{a} = 1$.

**Example 8.2.** In triangle $ABC$, $D$ is the midpoint of $BC$ and $E$ lies on $CA$ with $AE : EC = 1 : 2$. Line $DE$ meets line $AB$ at $F$. Find $FA : FB$.

*Solution.* Menelaus (unsigned) for line $DEF$: $\frac{BD}{DC}\cdot\frac{CE}{EA}\cdot\frac{AF}{FB} = 1 \cdot 2 \cdot \frac{AF}{FB} = 1$, so $FA : FB = 1 : 2$. Since $D$ and $E$ are inside their segments, $F$ is outside segment $AB$, beyond $A$: so $A$ is the midpoint of $FB$.

---

## Toolbox

| Situation | Try |
|---|---|
| Angles to find | Name one or two unknown angles; use angle sum, exterior angle, isosceles triangles, parallels |
| Ratio of lengths | Similar triangles; angle bisector theorem; ratio lemma with areas; Menelaus |
| Several right angles | Thales: the right-angle vertices lie on a circle with that diameter |
| Show four points concyclic | Equal angles on a chord, opposite angles $180^\circ$, Thales, or $PA \cdot PB = PC \cdot PD$ |
| Diagram could have several shapes | Directed angles modulo $180^\circ$ |
| Products of lengths, tangents | Power of a point |
| Three circles, or "this line passes through that point" | Radical axis / radical centre |
| The bisector of $A$ and the circumcircle | Incentre/excentre lemma: $MB = MC = MI = MI_A$ |
| Altitudes | Orthocentre; cyclic quadrilaterals with diameters $BC$ and $AH$; $\angle BHC = 180^\circ - A$ |
| Three cevians concurrent | Ceva (or its converse) |
| Three points collinear on side lines | Menelaus (or its converse) |
| Lengths from sides | Cosine rule, Stewart, median formula |
| Area from sides | Heron; then $r = \frac{[ABC]}{s}$ and $R = \frac{abc}{4[ABC]}$ |
| Stuck after 30 minutes | Coordinates or trigonometry: slow but reliable |

Key numbers: $\angle BOC = 2A$, $\angle BHC = 180^\circ - A$, $\angle BIC = 90^\circ + \frac12 A$, $\angle BI_AC = 90^\circ - \frac12 A$ (acute triangle for the first two). Tangent lengths $s-a$, $s-b$, $s-c$. $a = 2R\sin A$. $[ABC] = \frac12 ab\sin C = rs = \frac{abc}{4R}$.
