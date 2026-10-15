[← Back to O4 Olympiad geometry](README.md)

# O4 Olympiad geometry: solutions

Read a solution only after a serious attempt. For proof problems, check that your own proof says where the points lie, or uses directed angles so that it does not matter. Notation as in the notes: $a = BC$, $b = CA$, $c = AB$, $s$ the semiperimeter, $[XYZ]$ the area of triangle $XYZ$.

---

## Level 1

**1.** Since $AB = AC$, $\angle B = \angle C = \frac12(180^\circ - 40^\circ) = 70^\circ$, so $\angle ABD = 35^\circ$. The angle $\angle BDC$ is the exterior angle of triangle $ABD$ at $D$, so $\angle BDC = \angle A + \angle ABD = 40^\circ + 35^\circ = \mathbf{75^\circ}$.

**2.** Let $\angle A = x$. Since $AD = BD$, $\angle ABD = x$, and the exterior angle of triangle $ABD$ gives $\angle BDC = 2x$. Since $BD = BC$, $\angle BCD = \angle BDC = 2x$. Since $AB = AC$, $\angle ABC = \angle ACB = 2x$. The angle sum of triangle $ABC$ gives $x + 2x + 2x = 180^\circ$, so $\angle A = \mathbf{36^\circ}$.

**3.** Inscribed angles on the same chord: $\angle ACB = \angle ADB = 40^\circ$ (chord $AB$) and $\angle PBC = \angle DBC = 25^\circ$. The angle $\angle APB$ is the exterior angle at $P$ of triangle $BPC$, so $\angle APB = \angle PBC + \angle PCB = 25^\circ + 40^\circ = \mathbf{65^\circ}$.

**4.** Let $AC$ and $AD$ meet $BE$ at $P$ and $Q$. In a diagram the order on line $BE$ is $B, P, Q, E$. The tip angles at $C$ and $E$ are two angles of triangle $PCE$ (since $P$ lies on $CA$ and on $EB$), so the exterior angle of that triangle at $P$ is $\angle APE = \angle C + \angle E$, and $\angle APQ = \angle APE$ because $Q$ lies on ray $PE$. In the same way, triangle $QDB$ has the tip angles at $D$ and $B$, so $\angle AQP = \angle AQB = \angle B + \angle D$. The angle sum of triangle $APQ$ now gives

$$
\angle A + \angle B + \angle C + \angle D + \angle E = \angle A + \angle APQ + \angle AQP = \mathbf{180^\circ}.
$$

**5.** Put the right angle at $C$ with $CA = 3$ and $CB = 4$, and let the square have side $x$. Above the square is a small right triangle with legs $3 - x$ (along $CA$) and $x$ (the top side of the square), and it is similar to the whole triangle because its sides are parallel to those of $ABC$. So $\frac{3 - x}{x} = \frac34$, which gives $12 - 4x = 3x$ and $x = \mathbf{\tfrac{12}{7}}$.

**6.** By the angle bisector theorem, $BD : DC = AB : AC = 6 : 9 = 2 : 3$. So $BD = \frac25 \cdot 10 = \mathbf{4}$.

**7.** Power of a point: $AP \cdot PB = CP \cdot PD$, so $24 = 3\,PD$ and $PD = 8$. Then $CD = 3 + 8 = \mathbf{11}$.

**8.** The tangent length from $P$ is $\sqrt{13^2 - 5^2} = 12$. Power of a point: $PA \cdot PB = 12^2 = 144$, so $PB = 16$ and $AB = PB - PA = 16 - 9 = \mathbf{7}$.

**9.** $s = 21$, so by Heron the area is $\sqrt{21 \cdot 8 \cdot 7 \cdot 6} = \sqrt{7056} = \mathbf{84}$. Then $r = \frac{84}{21} = \mathbf{4}$ and $R = \frac{13 \cdot 14 \cdot 15}{4 \cdot 84} = \frac{2730}{336} = \mathbf{\tfrac{65}{8}}$.

---

## Level 2

**10.** Menelaus in triangle $ADC$ with the line through $B$ (on line $DC$), $E$ (on $AD$) and $F$ (on $CA$), unsigned:

$$
\frac{AE}{ED}\cdot\frac{DB}{BC}\cdot\frac{CF}{FA} = 1 \quad\Rightarrow\quad 1 \cdot \frac13 \cdot \frac{CF}{FA} = 1,
$$

so $CF = 3\,FA$ and $AF : FC = \mathbf{1 : 3}$. Now Menelaus in triangle $BFC$ with the line through $D$ (on $BC$), $E$ (on $BF$) and $A$ (on line $FC$): here $\frac{CA}{AF} = 4$, so

$$
\frac{BD}{DC}\cdot\frac{CA}{AF}\cdot\frac{FE}{EB} = 1 \quad\Rightarrow\quad \frac12 \cdot 4 \cdot \frac{FE}{EB} = 1,
$$

so $BE : EF = \mathbf{2 : 1}$.

**11.** With $a = 7$, $b = 6$, $c = 5$:

$$
m_a^2 = \frac{2b^2 + 2c^2 - a^2}{4} = \frac{72 + 50 - 49}{4} = \frac{73}{4},
$$

so the median is $\mathbf{\tfrac{\sqrt{73}}{2}} \approx 4.27$.

**12.** $\angle C = 75^\circ$ and $2R = \frac{BC}{\sin A} = \frac{6}{\sqrt3/2} = 4\sqrt3$. Then

$$
AC = 2R\sin B = 4\sqrt3\cdot\frac{\sqrt2}{2} = \mathbf{2\sqrt6}, \qquad AB = 2R \sin 75^\circ = 4\sqrt3 \cdot \frac{\sqrt6 + \sqrt2}{4} = \mathbf{3\sqrt2 + \sqrt6},
$$

using $\sin 75^\circ = \sin 45^\circ\cos 30^\circ + \cos 45^\circ \sin 30^\circ = \frac{\sqrt6 + \sqrt2}{4}$. The area is

$$
\tfrac12 \cdot AB \cdot AC \cdot \sin 60^\circ = \tfrac12 (3\sqrt2 + \sqrt6)(2\sqrt6)\cdot\tfrac{\sqrt3}{2} = \tfrac{\sqrt3}{2}(6\sqrt3 + 6) = \mathbf{9 + 3\sqrt3}.
$$

**13.** First, line $PQ$ is not parallel to $T_1T_2$. The line $PQ$ (the radical axis) is perpendicular to the line of centres $O_1O_2$. If $T_1T_2$ were also perpendicular to $O_1O_2$, then the radii $O_1T_1$ and $O_2T_2$, which are perpendicular to the tangent, would lie along the line $O_1O_2$; so $T_1$ and $T_2$ would both be the point where $O_1O_2$ meets the tangent, and the circles would touch there, not meet in two points.

So let $PQ$ meet $T_1T_2$ at $N$. Since $N$ lies on the tangent at $T_1$, its power with respect to the first circle is $NT_1^2$ (Pythagoras in triangle $NT_1O_1$); likewise for the second circle. Since $N$ lies on line $PQ$, both powers also equal $NP \cdot NQ$. So

$$
NT_1^2 = NP \cdot NQ = NT_2^2 .
$$

So $NT_1 = NT_2$ with $N$ on line $T_1T_2$ and $T_1 \neq T_2$, which means $N$ is the **midpoint of $T_1T_2$**.

**14.** Since $\angle BEC = \angle BFC = 90^\circ$, Thales puts $E$ and $F$ on the circle with diameter $BC$. So **$B, C, E, F$ are concyclic**.

The triangle is acute, so $E$ lies inside segment $AC$ and $F$ inside segment $AB$, and $BCEF$ is a convex cyclic quadrilateral. Its opposite angles give $\angle FEC = 180^\circ - \angle FBC$. Since $A, E, C$ are collinear with $E$ between them,

$$
\angle AEF = 180^\circ - \angle FEC = \angle FBC = \angle ABC.
$$

**15.** From problem 9: area 84, $r = 4$, $R = \frac{65}{8}$. The cosine rule with $a = 14$, $b = 15$, $c = 13$ gives

$$
\cos A = \frac{15^2 + 13^2 - 14^2}{2 \cdot 15 \cdot 13} = \frac{198}{390} = \frac{33}{65}, \qquad \sin^2\tfrac A2 = \frac{1 - \cos A}{2} = \frac{16}{65},
$$

so $\sin\frac A2 = \frac{4}{\sqrt{65}}$. Let the incircle touch $AB$ at $F$. In right triangle $AFI$, $IF = r$ and $\angle FAI = \frac A2$, so $AI = \frac{r}{\sin(A/2)} = \frac{4\sqrt{65}}{4} = \mathbf{\sqrt{65}}$.

The inscribed angle $\angle BAM = \frac A2$ stands on chord $BM$, so by the sine rule in triangle $ABM$ (which has circumradius $R$), $BM = 2R\sin\frac A2 = \frac{65}{4}\cdot\frac{4}{\sqrt{65}} = \sqrt{65}$. By the incentre/excentre lemma, $MI = MB = \mathbf{\sqrt{65}}$. Since $I$ lies on segment $AM$ and $AI = IM$, **$I$ is the midpoint of $AM$**. (Numerically $\sqrt{65} \approx 8.06$.)

**16.** $AB \parallel CM$ and $AB = 2\,CM$, so triangles $PAB$ and $PCM$ are similar (alternate angles) with ratio $2$. Hence $CP = \frac13 CA$ and $PM = \frac13 BM$, so $PM : PB = 1 : 2$. Now $[ABC] = [ACD] = 30$. By the ratio lemma, $[BPC] = \frac13 [BAC] = 10$ and $[PCM] = \frac12 [PCB] = 5$. Quadrilateral $APMD$ is triangle $ACD$ with triangle $PCM$ removed, so its area is $30 - 5 = \mathbf{25}$.

**17.** With tangent lengths (notes, section 5): $BD = BF = s - b$, $CD = CE = s - c$, $AE = AF = s - a$. All three points lie inside the sides, and

$$
\frac{BD}{DC}\cdot\frac{CE}{EA}\cdot\frac{AF}{FB} = \frac{s-b}{s-c}\cdot\frac{s-c}{s-a}\cdot\frac{s-a}{s-b} = 1.
$$

By the converse of Ceva, **$AD$, $BE$, $CF$ are concurrent**. (The common point is called the Gergonne point.)

**18.** Let the side 7 be opposite angle $\theta$, between the sides 5 and 8. Then $\cos\theta = \frac{25 + 64 - 49}{2\cdot 5 \cdot 8} = \frac{40}{80} = \frac12$, so $\theta = \mathbf{60^\circ}$. Area $= \frac12 \cdot 5 \cdot 8 \cdot \sin 60^\circ = \mathbf{10\sqrt3}$. With $s = 10$: $r = \frac{10\sqrt3}{10} = \mathbf{\sqrt3}$. Sine rule: $R = \frac{7}{2\sin 60^\circ} = \frac{7}{\sqrt3} = \mathbf{\tfrac{7\sqrt3}{3}}$.

**19.** Put the square at $(0,0)$, $(2,0)$, $(2,2)$, $(0,2)$; the circle passes through $(0,0)$ and $(2,0)$ and touches the side $y = 2$. Its centre lies on the perpendicular bisector $x = 1$, say at $(1, k)$, and since the circle touches $y = 2$ from below, its radius is $2 - k$. Then $1 + k^2 = (2-k)^2 = 4 - 4k + k^2$, so $k = \frac34$ and the radius is $\mathbf{\tfrac54}$.

(With power of a point: by symmetry the circle touches the top side at its midpoint $T$, and the line through $T$ and the midpoint $N$ of the bottom side passes through the centre, so it meets the circle again at the point $T'$ with $TT'$ a diameter. The chords $AB$ and $TT'$ meet at $N$, so $NA \cdot NB = NT \cdot NT'$, that is, $1 \cdot 1 = 2\,NT'$. So $NT' = \frac12$, the diameter is $2 + \frac12 = \frac52$ and the radius is $\frac54$.)

**20.** The triangle is acute, so $H$, $O$, $I$ all lie inside it.

- Let $BE$, $CF$ be altitudes. In quadrilateral $AFHE$ the angles at $E$ and $F$ are $90^\circ$, so $\angle FHE = 180^\circ - A$, and $\angle BHC = \angle FHE$ (vertical angles). So $\angle BHC = \mathbf{110^\circ}$.
- Inscribed angle theorem: $\angle BOC = 2A = \mathbf{140^\circ}$.
- $\angle BIC = 90^\circ + \frac12 A = \mathbf{125^\circ}$ (notes, Example 1.1).

**21.** The angle bisector theorem gives $BD : DC = 4 : 6$, so $BD = 2$ and $DC = 3$. Stewart with $AD = d$:

$$
AB^2 \cdot DC + AC^2 \cdot BD = BC\,(d^2 + BD \cdot DC) \quad\Rightarrow\quad 16 \cdot 3 + 36 \cdot 2 = 5(d^2 + 6),
$$

so $120 = 5d^2 + 30$, $d^2 = 18$ and $AD = \mathbf{3\sqrt2}$.

---

## Level 3

**22.** **Answer: $\angle BDE = 30^\circ$.**

The base angles are $\angle B = \angle C = 80^\circ$. Since $\angle DBC = 60^\circ < 80^\circ$, $D$ lies inside $AC$ and $\angle ABD = 20^\circ$; since $\angle ECB = 50^\circ$, $E$ lies inside $AB$.

Let $G$ be the point of $AC$ with $\angle GBC = 20^\circ$. Since $20^\circ < 60^\circ$, the order on $AC$ is $A, D, G, C$.

- Triangle $BGC$: $\angle GBC = 20^\circ$, $\angle GCB = 80^\circ$, so $\angle BGC = 80^\circ$ and $BG = BC$.
- Triangle $BEC$: $\angle EBC = 80^\circ$, $\angle ECB = 50^\circ$, so $\angle BEC = 50^\circ$ and $BE = BC$.
- So $BE = BG$, and $\angle EBG = \angle ABC - \angle GBC = 60^\circ$. Hence triangle $BEG$ is equilateral: $GE = GB$ and $\angle BGE = 60^\circ$.
- Triangle $BGD$: $\angle DBG = 60^\circ - 20^\circ = 40^\circ$ and $\angle BGD = 180^\circ - \angle BGC = 100^\circ$ (as $D$, $G$, $C$ are collinear with $G$ between them). So $\angle BDG = 40^\circ$ and $GD = GB$.

So $GD = GE$. Since $E$ lies on segment $AB$, ray $GE$ lies inside angle $AGB = \angle DGB = 100^\circ$, so $\angle DGE = 100^\circ - 60^\circ = 40^\circ$. Triangle $GDE$ is isosceles with apex angle $40^\circ$, so $\angle GDE = 70^\circ$.

Finally, at $D$: $\angle ADE = 180^\circ - \angle GDE = 110^\circ$ and $\angle ADB = 180^\circ - \angle GDB = 140^\circ$. Since $E$ lies on segment $AB$, ray $DE$ lies between rays $DA$ and $DB$, so $\angle BDE = 140^\circ - 110^\circ = \mathbf{30^\circ}$.

**23.** The triangle is acute, so $H$ lies inside it, on the same side of $BC$ as $A$. As in problem 20, $\angle BHC = 180^\circ - A$.

(a) Let $H_1$ be the reflection of $H$ in $BC$. Reflection preserves angles, so $\angle BH_1C = \angle BHC = 180^\circ - A$, and $H_1$ lies on the opposite side of $BC$ from $A$. So in quadrilateral $ABH_1C$ the opposite angles at $A$ and $H_1$ sum to $180^\circ$, and **$H_1$ lies on the circumcircle**.

(b) Let $H_2$ be the reflection of $H$ in $M$. The diagonals of $BHCH_2$ bisect each other, so it is a parallelogram: $BH_2 \parallel HC$ and $CH_2 \parallel HB$. Also $H_2$ lies on the opposite side of $BC$ from $H$, hence from $A$. With $F$ the foot of the altitude from $C$, $\angle BCH = \angle BCF = 90^\circ - B$. Alternate angles give $\angle CBH_2 = \angle BCH = 90^\circ - B$, and since $A$ and $H_2$ lie on opposite sides of $BC$,

$$
\angle ABH_2 = \angle ABC + \angle CBH_2 = B + (90^\circ - B) = 90^\circ.
$$

In the same way $\angle ACH_2 = 90^\circ$. Let $A'$ be the point diametrically opposite $A$. By Thales, $\angle ABA' = \angle ACA' = 90^\circ$. So $H_2$ and $A'$ both lie on the line through $B$ perpendicular to $AB$ and on the line through $C$ perpendicular to $AC$. These two lines are not parallel (because $AB$ and $AC$ are not), so they meet in one point: **$H_2 = A'$**.

(c) In triangle $AHA'$, $O$ is the midpoint of $AA'$ and $M$ is the midpoint of $HA'$ (by (b)). So $OM$ is a midline: $OM = \frac12 AH$, that is, **$AH = 2\,OM$**.

**24.** The triangle is acute, so $D, E, F$ lie inside the sides and $H$ inside the triangle.

Since $\angle BDH = \angle BFH = 90^\circ$, the points $B, D, H, F$ lie on the circle with diameter $BH$; $D$ and $B$ lie on the same side of line $HF$ (the line $CF$), so inscribed angles on chord $HF$ give

$$
\angle HDF = \angle HBF = \angle EBA = 90^\circ - A
$$

(the last step in right triangle $ABE$). Similarly $C, D, H, E$ lie on the circle with diameter $CH$, and

$$
\angle HDE = \angle HCE = \angle FCA = 90^\circ - A.
$$

So $\angle HDF = \angle HDE$. Moreover $F$ and $E$ lie on opposite sides of line $AD$ (one on side $AB$, the other on side $AC$), so ray $DH$ is the **internal** bisector of $\angle EDF$. In the same way $EH$ bisects $\angle DEF$ and $FH$ bisects $\angle DFE$. The internal bisectors of triangle $DEF$ meet at its incentre, and they all pass through $H$, so **$H$ is the incentre of triangle $DEF$**.

**25.** We use directed angles modulo $180^\circ$, written $\measuredangle$. They are needed here: depending on which arc $P$ lies on, the feet $X, Y, Z$ can lie on the sides or on their extensions, and an argument with ordinary angles would need several cases.

If $P$ is a vertex, say $P = A$, then $Y = Z = A$ and there is nothing to prove. Otherwise, since $\angle PXC = \angle PYC = 90^\circ$, the points $P, X, Y, C$ lie on the circle with diameter $PC$; and since $\angle PYA = \angle PZA = 90^\circ$, the points $P, Y, Z, A$ lie on the circle with diameter $PA$. Then

$$
\begin{aligned}
\measuredangle(YX, YP) &= \measuredangle(CX, CP) = \measuredangle(CB, CP) && (P, X, Y, C \text{ concyclic}),\\
\measuredangle(YZ, YP) &= \measuredangle(AZ, AP) = \measuredangle(AB, AP) && (P, Y, Z, A \text{ concyclic}),\\
\measuredangle(CB, CP) &= \measuredangle(AB, AP) && (A, B, C, P \text{ concyclic}).
\end{aligned}
$$

So $\measuredangle(YX, YP) = \measuredangle(YZ, YP)$: the lines $YX$ and $YZ$ make the same directed angle with $YP$ and both pass through $Y$, so they are the same line. Hence **$X, Y, Z$ are collinear**. (If $X$ or $Z$ coincides with $Y$ the statement is trivial.)

**26.** Let the line through $P$ perpendicular to $AB$ meet $AB$ at $F$. In triangle $APB$ the angle at $P$ is $90^\circ$, so the angles at $A$ and $B$ are acute and $F$ lies inside segment $AB$. Hence ray $PF$ lies inside angle $APB$, and the opposite ray $PM$ lies inside the vertical angle $CPD$; so $M$ lies on segment $CD$.

In right triangle $APB$ with altitude $PF$: $\angle APF = 90^\circ - \angle PAF = \angle ABP$. Then

$$
\angle MPC = \angle APF = \angle ABP = \angle ABD = \angle ACD = \angle PCM,
$$

using vertical angles, and the inscribed angles on chord $AD$ (with $B$ and $C$ on the same arc). So triangle $MPC$ is isosceles: $MP = MC$.

Next, $\angle CPD = 90^\circ$ and $M$ lies inside it, so $\angle MPD = 90^\circ - \angle MPC$. In right triangle $CPD$, $\angle PDC = 90^\circ - \angle PCD = 90^\circ - \angle MPC$. So $\angle MPD = \angle MDP$ and $MP = MD$. Together, $MC = MP = MD$: **$M$ is the midpoint of $CD$**.

**27.** The external bisector at $A$ is parallel to $BC$ exactly when $AB = AC$; the sides are all different, so $X$, $Y$, $Z$ exist. None of them is a vertex.

**External bisector theorem.** $X$ lies outside segment $BC$ and $\frac{XB}{XC} = \frac{AB}{AC}$. *Proof:* the external bisector is perpendicular to the internal bisector, so it does not enter the angle $BAC$; hence $X$ lies outside segment $BC$. The external bisector makes the angle $90^\circ - \frac12 A$ with ray $AC$ and with the extension of $BA$ beyond $A$, so the angles $\angle XAB$ and $\angle XAC$ are $90^\circ - \frac12 A$ and $90^\circ + \frac12 A$ in some order: they add up to $180^\circ$ and have equal sines. Triangles $ABX$ and $ACX$ have the same height from $A$, so

$$
\frac{XB}{XC} = \frac{[ABX]}{[ACX]} = \frac{\frac12\, AB \cdot AX \sin\angle XAB}{\frac12\, AC \cdot AX \sin\angle XAC} = \frac{AB}{AC}.
$$

So, with signed ratios (negative because each point is outside its segment):

$$
\frac{BX}{XC}\cdot\frac{CY}{YA}\cdot\frac{AZ}{ZB} = \left(-\frac{c}{b}\right)\left(-\frac{a}{c}\right)\left(-\frac{b}{a}\right) = -1.
$$

By the converse of Menelaus, **$X$, $Y$, $Z$ are collinear**.

**28.** Put $B = (0,0)$, $C = (14,0)$, $A = (5,12)$; then $AB = 13$ and $AC = \sqrt{81 + 144} = 15$. The incentre is the weighted average with weights $a = 14$, $b = 15$, $c = 13$:

$$
I = \frac{14\,(5,12) + 15\,(0,0) + 13\,(14,0)}{42} = \left(\frac{252}{42}, \frac{168}{42}\right) = (6, 4),
$$

which agrees with $r = 4$. The circumcentre lies on $x = 7$, say $O = (7, y)$, with $OB = R = \frac{65}{8}$: $49 + y^2 = \frac{4225}{64}$, so $y^2 = \frac{1089}{64}$ and $y = \frac{33}{8}$ (positive, since the triangle is acute). Hence

$$
OI^2 = (7 - 6)^2 + \left(\tfrac{33}{8} - 4\right)^2 = 1 + \tfrac{1}{64} = \tfrac{65}{64}, \qquad OI = \mathbf{\tfrac{\sqrt{65}}{8}} \approx 1.008.
$$

Check with Euler's formula $OI^2 = R^2 - 2Rr = \frac{4225}{64} - 65 = \frac{65}{64}$.

**29.** Let $B_1$ and $C_1$ be the feet of the altitudes from $B$ and $C$. We use signed products: for a point $H$ and a line through $H$ meeting a circle at $U$ and $V$, the power of $H$ is $\overline{HU}\cdot\overline{HV}$, negative when $H$ is between $U$ and $V$.

Since $E$ lies on line $AC$ and $BB_1 \perp AC$, we have $\angle BB_1E = 90^\circ$ (or $B_1 = E$), so $B_1$ lies on the circle with diameter $BE$. The line $BH$ is the line $BB_1$, which meets this circle at $B$ and $B_1$. So the power of $H$ with respect to the circle with diameter $BE$ is $\overline{HB}\cdot\overline{HB_1}$. In the same way, the power of $H$ with respect to the circle with diameter $CF$ is $\overline{HC}\cdot\overline{HC_1}$.

The points $B, C, B_1, C_1$ lie on the circle with diameter $BC$ (Thales), and the chords $BB_1$ and $CC_1$ meet at $H$. Power of a point with respect to that circle gives $\overline{HB}\cdot\overline{HB_1} = \overline{HC}\cdot\overline{HC_1}$. So **$H$ has equal power** with respect to both circles, and lies on their radical axis (if the circles are different). When the circles meet in two points, the radical axis is the line through those points, so **that line passes through $H$**.

**30.** **Answer: $\frac17$.**

Let $X = AD \cap BE$, $Y = BE \cap CF$, $Z = CF \cap AD$, and $S = [ABC]$.

Menelaus in triangle $ADC$ with the line through $B$, $X$, $E$ (unsigned):

$$
\frac{AX}{XD}\cdot\frac{DB}{BC}\cdot\frac{CE}{EA} = 1 \quad\Rightarrow\quad \frac{AX}{XD}\cdot\frac13\cdot\frac12 = 1 \quad\Rightarrow\quad AX : XD = 6 : 1.
$$

Menelaus in triangle $ABD$ with the line through $C$, $Z$, $F$:

$$
\frac{AZ}{ZD}\cdot\frac{DC}{CB}\cdot\frac{BF}{FA} = 1 \quad\Rightarrow\quad \frac{AZ}{ZD}\cdot\frac23\cdot 2 = 1 \quad\Rightarrow\quad AZ : ZD = 3 : 4.
$$

So on $AD$ the order is $A, Z, X, D$ with $AZ : ZX : XD = 3 : 3 : 1$. By the ratio lemma, $[ABD] = \frac13 S$ and

$$
[ABX] = \frac{AX}{AD}\,[ABD] = \frac67 \cdot \frac13 S = \frac27 S.
$$

The conditions are unchanged when we rename $A \to B \to C \to A$; this renames $D \to E \to F \to D$ and $X \to Y \to Z \to X$. So also $[BCY] = [CAZ] = \frac27 S$. The triangle $ABC$ is cut by the three cevians into the triangles $ABX$, $BCY$, $CAZ$ and $XYZ$ (draw it: $ABX$ is bounded by $AB$, part of $BE$ and part of $AD$). Therefore

$$
[XYZ] = S - 3\cdot\frac27 S = \mathbf{\tfrac17}\,S.
$$
