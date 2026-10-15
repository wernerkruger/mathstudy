# B3 Solutions: Geometry, proof, Pythagoras, similarity and trigonometry

[← Module overview](README.md) · [Problems](problems.md)

Rounding: lengths to 2 decimals, angles to 1 decimal of a degree, computed from unrounded intermediate values. All numerical answers were checked with a computer algebra system (SymPy).

## Practice

**1.** (a) At $P$: the angle below $\ell$, left of $t$, is 68° (vertically opposite). The angles above-left and below-right are $180° - 68° = 112°$ (straight angle).
(b) At $Q$: above $m$, right of $t$: 68° (F-angle with the 68° at $P$, $\ell \parallel m$). Below $m$, left of $t$: 68° (vertically opposite to the angle just found). Above-left and below-right: 112°.
(c) The co-interior pair is below $\ell$, right of $t$ (112°) and above $m$, right of $t$ (68°): $112° + 68° = 180°$. (The pair on the left, 68° and 112°, works too.)

**2.** (a) $x + 2x + 3x = 180°$, so $6x = 180°$ and $x = 30°$. The angles are 30°, 60°, 90°: a right triangle (in fact a half-equilateral triangle).
(b) Way 1: the third angle is $180° - 47° - 68° = 65°$, so the exterior angle is $180° - 65° = 115°$. Way 2: exterior angle theorem, $47° + 68° = 115°$.
(c) By the exterior angle theorem $\angle A + \angle B = 130°$, and $\angle A = \angle B + 25°$. So $2\angle B + 25° = 130°$, $\angle B = 52.5°$ and $\angle A = 77.5°$.

**3.** (a) $(9 - 2)\cdot 180° = 1260°$.
(b) $\dfrac{10 \cdot 180°}{12} = 150°$.
(c) Each exterior angle is $180° - 156° = 24°$, and the exterior angles add up to 360°, so $n = 360 / 24 = 15$. (Check: $\frac{13 \cdot 180°}{15} = 156°$.)
(d) Label the convex pentagon $A, B, C, D, E$ in order. The star consists of the segments $AC, CE, EB, BD, DA$, and the star's point at each vertex is the angle between the two star segments there: at $A$ between $AC$ and $AD$, at $C$ between $CA$ and $CE$, and so on. Write $\angle A, \dots, \angle E$ for these five angles.

Let $X$ be the intersection of $AC$ and $EB$, and $Y$ the intersection of $AD$ and $EB$. On segment $EB$ the order is $E, Y, X, B$.

- Triangle $XCE$: its angle at $C$ is $\angle C$ (between $CA$ and $CE$) and its angle at $E$ is $\angle E$ (between $EB$ and $EC$). $A$ lies on the extension of $CX$ beyond $X$, so $\angle AXE$ is an exterior angle: $\angle AXE = \angle C + \angle E$. Since $Y$ lies between $X$ and $E$, $\angle AXY = \angle AXE$.
- Triangle $YDB$: its angles at $D$ and $B$ are $\angle D$ and $\angle B$. $A$ lies on the extension of $DY$ beyond $Y$, so $\angle AYB = \angle D + \angle B$, and $\angle AYX = \angle AYB$.
- Triangle $AXY$ has angles $\angle A$, $\angle AXY$, $\angle AYX$, so

$$
\angle A + (\angle C + \angle E) + (\angle B + \angle D) = 180°. \quad\square
$$

(Checked numerically with an irregular convex pentagon: the sum came out at 180°.)

**4.** (a) Yes: SAS (ZHZ). $\angle B$ lies between $AB$ and $BC$.
(b) Yes: ASA (HZH). $AB$ lies between angles $A$ and $B$.
(c) Not necessarily. $\angle B$ is not between $AB$ and $AC$; it lies opposite $AC$, and $AC$ is the shorter given side. That is the ambiguous SSA case: there can be two different triangles (see the counterexample in notes §4).
(d) Yes: RHS (ZZR). Hypotenuse $AB = DE$ and leg $AC = DF$.
(e) No. Equal angles only give similar triangles; one can be an enlargement of the other.
(f) Yes: AAS (ZHH). $BC$ is not between angles $A$ and $B$, but the third angles are also equal, so this reduces to ASA.

**5.** (a)

```
Gegeven:      triangle ABC with AB = AC; M is the midpoint of BC
Te bewijzen:  AM is perpendicular to BC, and angle BAM = angle CAM

Statement                                  Reason
1. AB = AC                                 given
2. BM = CM                                 M is the midpoint of BC
3. AM = AM                                 common side
4. triangle ABM congruent to triangle ACM  SSS (ZZZ), from 1, 2, 3
5. angle AMB = angle AMC                   corresponding angles of 4
6. angle AMB + angle AMC = 180             B, M, C on one line (straight angle)
7. angle AMB = angle AMC = 90              from 5 and 6
8. so AM is perpendicular to BC            definition of perpendicular
9. angle BAM = angle CAM                   corresponding angles of 4
```

So $AM$ is perpendicular to $BC$ and bisects $\angle A$. $\square$

(b) By Thales, $\angle ACB = 90°$, so $\angle ABC = 180° - 90° - 34° = 56°$.
Triangle $OAC$ is isosceles ($OA = OC$), so $\angle OCA = 34°$ and $\angle AOC = 180° - 68° = 112°$. Then $\angle BOC = 180° - 112° = 68°$ (straight angle along diameter $AB$). (Alternatively, triangle $OBC$ is isosceles with base angles 56°, so $\angle BOC = 180° - 112° = 68°$.)
$BC = \sqrt{10^2 - 6^2} = \sqrt{64} = 8$, using the right angle at $C$.

**6.** (a) $AB = \sqrt{7^2 + 24^2} = \sqrt{625} = 25$.
(b) $AC = \sqrt{13^2 - 5^2} = \sqrt{144} = 12$.
(c) $AB = \sqrt{25 + 64} = \sqrt{89} \approx 9.43$.

**7.** In each case let $c$ be the longest side and compare $a^2 + b^2$ with $c^2$.
(a) $20^2 + 21^2 = 400 + 441 = 841 = 29^2$: right.
(b) $8^2 + 15^2 = 289 > 256 = 16^2$: acute.
(c) $6^2 + 7^2 = 85 < 100 = 10^2$: obtuse.
(d) $(\sqrt5)^2 + (\sqrt{11})^2 = 5 + 11 = 16 = 4^2$: right.

**8.** (a) $\frac{9}{6} = \frac{12}{8} = \frac{15}{10} = 1.5$, so $\triangle ABC \sim \triangle DEF$ (zzz) with scale factor $k = 1.5$.
(b) $AB^2 + BC^2 = 36 + 64 = 100 = AC^2$, so by the converse of Pythagoras the angle at $B$ is 90°. Area $= \tfrac12 \cdot 6 \cdot 8 = 24$.
(c) Way 1: area factor $k^2 = 2.25$, so area $= 2.25 \cdot 24 = 54$. Way 2: $DEF$ is right-angled at $E$ (the vertex matching $B$), so area $= \tfrac12 \cdot 9 \cdot 12 = 54$.

**9.** (a) $\angle A$ is common, and $\angle ADE = \angle ABC$ (F-angles, $DE \parallel BC$). So the triangles are similar (hh).
(b) $AB = 4 + 6 = 10$, so the scale factor from $ADE$ to $ABC$ is $\frac{10}{4} = 2.5$. Then $BC = 2.5 \cdot 5 = 12.5$, $AC = 2.5 \cdot 3 = 7.5$, and $EC = 7.5 - 3 = 4.5$.

**10.** (a) $\angle ASB = \angle DSC$ (vertically opposite) and $\angle SAB = \angle SDC$ (Z-angles, $AB \parallel CD$, transversal $AD$). So the triangles are similar (hh), with $A \leftrightarrow D$, $B \leftrightarrow C$.
(b) Scale factor $\frac{SD}{SA} = \frac{9}{6} = 1.5$. So $CD = 1.5 \cdot 8 = 12$ and $SC = 1.5 \cdot 5 = 7.5$.

**11.** $BC$ is opposite $A$ and $AC$ is adjacent: $\tan 35° = \frac{BC}{12}$, so $BC = 12\tan 35° \approx 8.40$. $\cos 35° = \frac{12}{AB}$, so $AB = \frac{12}{\cos 35°} \approx 14.65$.

**12.** Let the angle opposite the leg 5 be $\alpha$. $\tan\alpha = \frac59$, so $\alpha \approx 29.1°$, and the other angle is $90° - \alpha \approx 60.9°$. Hypotenuse $\sqrt{25 + 81} = \sqrt{106} \approx 10.30$.

**13.** (a) $\left(\tfrac12\sqrt2\right)^2 + \left(\tfrac12\right)^2 = \tfrac12 + \tfrac14 = \tfrac34$.
(b) $\tfrac13\sqrt3 \cdot \sqrt3 = \tfrac33 = 1$.
(c) $\tfrac12\sqrt3 \cdot \tfrac12\sqrt3 - \tfrac12 \cdot \tfrac12 = \tfrac34 - \tfrac14 = \tfrac12$.
(d) $\cos^2\alpha = 1 - \tfrac{9}{25} = \tfrac{16}{25}$, and $\cos\alpha > 0$ for an acute angle, so $\cos\alpha = \tfrac45$. Then $\tan\alpha = \frac{3/5}{4/5} = \tfrac34$. (A 3-4-5 triangle.)

**14.** $k = 200$.
(a) Area factor $k^2 = 40\,000$: $50 \cdot 40\,000 = 2\,000\,000$ cm² $= 200$ m² (because 1 m² $= 10\,000$ cm²).
(b) Volume factor $k^3 = 8\,000\,000$: $1500 \cdot 8\,000\,000 = 1.2 \cdot 10^{10}$ cm³ $= 12\,000$ m³ (because 1 m³ $= 1\,000\,000$ cm³).

## School-exam level

**15.** The wall, the ground and the ladder form a right triangle with hypotenuse 6.50.
(a) Height $= \sqrt{6.50^2 - 1.80^2} = \sqrt{39.01} \approx 6.25$ m.
(b) $\cos\alpha = \frac{1.80}{6.50}$, so $\alpha \approx 73.9°$.
(c) New height $= \sqrt{6.50^2 - 2.30^2} = \sqrt{36.96} \approx 6.08$ m. The top slides down $\sqrt{39.01} - \sqrt{36.96} \approx 0.17$ m.
(d) Before: $73.9°$ lies between 70° and 76°, so it is safe. After: $\cos\alpha = \frac{2.30}{6.50}$ gives $\alpha \approx 69.3° < 70°$: not safe.

**16.** (a) At most 1 m up per 12 m horizontally, so the horizontal length is at least $12 \cdot 0.45 = 5.40$ m.
(b) $\sqrt{5.40^2 + 0.45^2} \approx 5.42$ m.
(c) $\tan\alpha = \frac{0.45}{5.40} = \frac{1}{12}$, so $\alpha \approx 4.8°$. As a percentage: $\frac{1}{12}\cdot 100\% \approx 8.33\%$.

**17.** (a) Let $F$ be the foot of the tower and $T$ the top. In the right triangle $AFT$: $\tan 32° = \frac{h}{AF}$, so $AF = \frac{h}{\tan 32°}$. In $BFT$: $BF = \frac{h}{\tan 51°}$. Since $AF - BF = AB = 40$:

$$
\frac{h}{\tan 32°} - \frac{h}{\tan 51°} = 40.
$$

(b) Factor out $h$:

$$
h = \frac{40}{\dfrac{1}{\tan 32°} - \dfrac{1}{\tan 51°}} \approx 50.60 \text{ m}.
$$

$BF = \frac{h}{\tan 51°} \approx 40.97$ m. (Check: $AF \approx 80.97$ m, and $80.97 - 40.97 = 40$.)

**18.** (a) $AC = \sqrt{60^2 + 40^2} = \sqrt{5200} \approx 72.11$ cm.
(b) $CG \perp$ bottom face, so triangle $ACG$ is right-angled at $C$: $AG = \sqrt{5200 + 30^2} = \sqrt{6100} \approx 78.10$ cm.
(c) The longest segment on the bottom is the diagonal, 72.11 cm $< 75$ cm, so the rod cannot lie flat. The longest segment in the box is the space diagonal, 78.10 cm $> 75$ cm, so the rod does fit, slanting along (near) the space diagonal.
(d) The angle is $\angle GAC$: $\tan\angle GAC = \frac{30}{\sqrt{5200}}$, so the angle is about 22.6°.

**19.** (a) $MN = 3$ (half the side) and $TM = 4$, with a right angle at $M$: $TN = \sqrt{9 + 16} = 5$.
$AC = 6\sqrt2$, so $AM = 3\sqrt2$ and $TA = \sqrt{(3\sqrt2)^2 + 4^2} = \sqrt{18 + 16} = \sqrt{34} \approx 5.83$.
(b) The projection of $TA$ on the base is $MA$, so the angle is $\angle TAM$ with $\tan\angle TAM = \frac{4}{3\sqrt2}$: about 43.3°.
(c) $TN \perp BC$ (triangle $TBC$ is isosceles, $N$ the midpoint) and $MN \perp BC$, so the angle is $\angle TNM$ with $\tan\angle TNM = \frac43$: about 53.1°.
(d) Base $6 \cdot 6 = 36$; four faces of $\tfrac12 \cdot 6 \cdot 5 = 15$ each. Total $36 + 60 = 96$.
(e) Front view: an isosceles triangle with base 6 (edge $AB$; $CD$ is hidden behind it) and height 4; its slanted sides have length $\sqrt{3^2 + 4^2} = 5$. Top view: a square $6 \times 6$ with both diagonals drawn, crossing at the point $T$ (above $M$); each half-diagonal has length $3\sqrt2 \approx 4.24$. The slanted sides of the front view are the images of the edges $TA$ and $TB$ (with $TD$ and $TC$ hidden behind them). They have length 5, not the true edge length $TA = \sqrt{34} \approx 5.83$: the edges slope away from the viewer, are not parallel to the front plane, and so appear shorter. In the view the apex is 3 to the side of $A$ and 4 above it, so the slanted side is $\sqrt{3^2 + 4^2} = 5$. This equals the true length of $TN$ for the side faces $TBC$ and $TAD$, because $TN$ of those faces lies in a plane parallel to the front plane.

**20.** Side view: Lisa's eye $L$ at height 4.50, the top of the wall $W$ at height 3.00, at horizontal distance 6.00.
(a) The sight line over $W$ drops $4.50 - 3.00 = 1.50$ m over 6.00 m, that is 0.25 m per metre. From $W$ it must drop another 3.00 m to reach the ground: that takes $3.00 / 0.25 = 12.00$ m. The blind spot is 12.00 m deep. (Similar triangles: $\frac{d}{6} = \frac{3}{1.5}$.)
(b) At 5.00 m behind the wall, the sight line is at height $3.00 - 5 \cdot 0.25 = 1.75$ m. Tom is 1.80 m, so Lisa sees the top $1.80 - 1.75 = 0.05$ m (5 cm) of his head.
(c) The sight line must go through the top of the wall (height 3.00, at 6.00 m) and hit the ground 4.00 m behind the wall. So it drops 3.00 m over 4.00 m, i.e. 0.75 m per metre. Going back 6.00 m to Lisa it rises $6 \cdot 0.75 = 4.50$ m, so her eyes must be at $3.00 + 4.50 = 7.50$ m.

**21.** (a) Let $s$ be the shadow length. The lamp, the foot of the lamppost and the tip of the shadow form a big right triangle; Ella and her shadow form a small one inside it (A-figure, both vertical). So

$$
\frac{1.60}{4.80} = \frac{s}{s + 3}\ \Longrightarrow\ 3s = s + 3\ \Longrightarrow\ s = 1.50 \text{ m}.
$$

(b) With distance $d$: $\frac{1.60}{4.80} = \frac{s}{s + d}$ gives $3s = s + d$, so $s = \tfrac12 d$, for every $d$.

**22.** (a) Join the centre $O$ to all six vertices. The six triangles are congruent (SSS: two radii and one side each), so the six angles at $O$ are equal: $360° / 6 = 60°$. Each triangle is isosceles with apex angle 60°, so its base angles are $\frac{180° - 60°}{2} = 60°$: equilateral.
(b) Height $= \sqrt{4^2 - 2^2} = \sqrt{12} = 2\sqrt3$. Area of one triangle $= \tfrac12 \cdot 4 \cdot 2\sqrt3 = 4\sqrt3$. Hexagon: $6 \cdot 4\sqrt3 = 24\sqrt3 \approx 41.57$.
(c) Two opposite sides are the bases of two opposite triangles, and the heights from $O$ to those sides lie on one line (both are perpendicular to parallel sides through $O$). Distance $= 2 \cdot 2\sqrt3 = 4\sqrt3 \approx 6.93$.

**23.** (a) Triangle $ABC$ has no right angle (its angles are 40°, 65° and 75°). SOS-CAS-TOA only applies in right triangles; use the right triangles $ADC$ and $BDC$.
(b) In $ADC$: $\tan 40° = \frac{5}{AD}$, so $AD = \frac{5}{\tan 40°} \approx 5.96$. In $BDC$: $DB = \frac{5}{\tan 65°} \approx 2.33$. $AB = AD + DB \approx 8.29$ (computed from unrounded values: 8.2903...).
(c) $AC = \frac{5}{\sin 40°} \approx 7.78$; $BC = \frac{5}{\sin 65°} \approx 5.52$. Area $= \tfrac12 \cdot AB \cdot CD \approx \tfrac12 \cdot 8.2903 \cdot 5 \approx 20.73$.

## Challenge

**24.** ($\Rightarrow$) Since $\angle C = 90°$, the converse of Thales' theorem says $C$ lies on the circle with diameter $AB$. Its centre is the midpoint $M$ and its radius is $\tfrac12 AB$. So $MC = \tfrac12 AB$.

A direct proof without the converse of Thales: reflect $C$ in $M$ to get $D$. As in notes §6, $ACBD$ is a rectangle, its diagonals are equal ($CD = AB$) and they bisect each other, so $MC = \tfrac12 CD = \tfrac12 AB$.

($\Leftarrow$) Suppose $MC = \tfrac12 AB$. Then $MA = MB = MC$. Triangle $MAC$ is isosceles, so $\angle MAC = \angle MCA =: \alpha$; triangle $MBC$ is isosceles, so $\angle MBC = \angle MCB =: \beta$. The angle sum in $ABC$ gives $\alpha + \beta + (\alpha + \beta) = 180°$, so $\angle C = \alpha + \beta = 90°$. $\square$

**25.** (a) Let the line through $C$ parallel to $AD$ meet line $BA$ (extended beyond $A$) at $E$. Write $\angle BAD = \angle DAC = \varphi$.

1. $\angle AEC = \angle BAD = \varphi$ (F-angles: $AD \parallel EC$, transversal $BE$).
2. $\angle ACE = \angle DAC = \varphi$ (Z-angles: $AD \parallel EC$, transversal $AC$).
3. So triangle $ACE$ has two equal angles at $E$ and $C$; by the converse of the isosceles triangle theorem, $AE = AC$.
4. In triangle $BEC$, $AD \parallel EC$ with $A$ on $BE$ and $D$ on $BC$: an A-figure. So $\triangle BAD \sim \triangle BEC$, giving $\frac{BA}{BE} = \frac{BD}{BC}$. Hence $\frac{BA}{BE - BA} = \frac{BD}{BC - BD}$, i.e. $\frac{BA}{AE} = \frac{BD}{DC}$. (Taking reciprocals: $\frac{BE}{BA} = \frac{BC}{BD}$, subtract 1 from both sides.)
5. With step 3: $\dfrac{BD}{DC} = \dfrac{AB}{AE} = \dfrac{AB}{AC}$. $\square$

(b) $\frac{BD}{DC} = \frac{6}{9} = \frac23$ and $BD + DC = 10$, so $BD = \frac25 \cdot 10 = 4$ and $DC = 6$. (Verified with coordinates in SymPy.)

**26.** Let $O$ be the intersection of the perpendicular bisectors of $AB$ and $BC$. (They intersect: if they were parallel, $AB$ and $BC$ would be parallel, but they meet at $B$ and are not on one line.)

1. $O$ is on the perpendicular bisector of $AB$, so $OA = OB$ (notes §5, $\Rightarrow$).
2. $O$ is on the perpendicular bisector of $BC$, so $OB = OC$.
3. So $OA = OC$, and by the converse ($\Leftarrow$ in notes §5) $O$ lies on the perpendicular bisector of $AC$.

So all three perpendicular bisectors pass through $O$. Since $OA = OB = OC$, the circle with centre $O$ and radius $OA$ passes through $B$ and $C$: the circumscribed circle (*omgeschreven cirkel*). $\square$

**27.** (a) Let the other leg be $b$ and the hypotenuse $c$. Then $c^2 - b^2 = 144$, so $(c - b)(c + b) = 144$ with $0 < c - b < c + b$. Since $(c+b) - (c-b) = 2b$ is even, both factors have the same parity; their product is even, so both are even. The even factor pairs of 144 with the smaller factor first are $2 \cdot 72$, $4 \cdot 36$, $6 \cdot 24$, $8 \cdot 18$ ($12 \cdot 12$ would give $b = 0$). Solving $c - b = s$, $c + b = t$ gives $c = \frac{s+t}{2}$, $b = \frac{t-s}{2}$:

| $c - b$ | $c + b$ | $b$ | $c$ | triangle |
|---|---|---|---|---|
| 2 | 72 | 35 | 37 | 12, 35, 37 |
| 4 | 36 | 16 | 20 | 12, 16, 20 |
| 6 | 24 | 9 | 15 | 9, 12, 15 |
| 8 | 18 | 5 | 13 | 5, 12, 13 |

There are exactly four. (A computer search over all $b, c < 200$ found the same four.)

(b) $(m^2 - n^2)^2 + (2mn)^2 = m^4 - 2m^2n^2 + n^4 + 4m^2n^2 = m^4 + 2m^2n^2 + n^4 = (m^2 + n^2)^2$, and all three numbers are positive whole numbers when $m > n \ge 1$. $\square$
$m = 6, n = 1$ gives $(35, 12, 37)$; $m = 3, n = 2$ gives $(5, 12, 13)$; $m = 4, n = 2$ gives $(12, 16, 20)$. The triple $(9, 12, 15)$ does not come from the formula directly (no $m, n$ give a 9 or a 15 together with a 12); it is $3 \cdot (3, 4, 5)$, with $(3,4,5)$ from $m = 2, n = 1$. So you need the formula *times a factor* to get every triple.

**28.** Take cube $ABCD.EFGH$ with $E, F, G, H$ above $A, B, C, D$. The space diagonals $AG$ and $CE$ both lie in the plane through $A, C, G, E$. In that plane $ACGE$ is a rectangle: $AC = a\sqrt2$ (face diagonal) and $CG = AE = a$, with right angles because the vertical edges are perpendicular to the bottom face. Its diagonals $AG$ and $CE$ are equal and bisect each other at the centre $S$ of the cube.

In the right triangle $ACG$: $\tan\angle GAC = \frac{a}{a\sqrt2} = \frac{1}{\sqrt2}$, so $\angle GAC \approx 35.26°$. Triangle $SAC$ is isosceles ($SA = SC$), so $\angle SCA = \angle SAC \approx 35.26°$ and

$$
\angle ASC = 180° - 2\cdot 35.26° \approx 109.5°.
$$

The acute angle between the diagonals is $180° - 109.47° \approx 70.5°$. (These agree with the exact value $\cos^{-1}\tfrac13 \approx 70.53°$, checked in SymPy.) The answer does not depend on $a$ because all cubes are similar: $a$ cancels in $\frac{a}{a\sqrt2}$, and angles are unchanged by enlargement.

**29.** (a) Triangles $ADC$ and $CDB$ are both right-angled at $D$. $\angle ACD = 90° - \angle A$ (angle sum in $ADC$) and $\angle B = 90° - \angle A$ (angle sum in $ABC$), so $\angle ACD = \angle B$. Thus $\triangle ADC \sim \triangle CDB$ (hh), with $A \leftrightarrow C$, $D \leftrightarrow D$, $C \leftrightarrow B$. So

$$
\frac{AD}{CD} = \frac{CD}{BD}\ \Longrightarrow\ \frac{q}{h} = \frac{h}{p}\ \Longrightarrow\ h^2 = pq. \quad\square
$$

(b) Compute the area of $ABC$ in two ways: with base $BC$ and height $AC$ (the legs are perpendicular), area $= \tfrac12 ab$; with base $AB$ and height $CD$, area $= \tfrac12 ch$. So $ab = ch$. $\square$
(c) $h = \sqrt{9 \cdot 4} = 6$ and $c = 13$. From notes §7, $a^2 = cp = 13 \cdot 9 = 117$, so $a = \sqrt{117} = 3\sqrt{13}$; $b^2 = cq = 52$, so $b = 2\sqrt{13}$. (Or: $a = \sqrt{p^2 + h^2} = \sqrt{81 + 36}$.) Check (b): $ab = 3\sqrt{13} \cdot 2\sqrt{13} = 6 \cdot 13 = 78$ and $ch = 13 \cdot 6 = 78$.

**30.** Let the incircle touch $BC$ at $P$, $CA$ at $Q$ and $AB$ at $R$.
(a) Take vertex $A$ with tangent points $Q$ and $R$. The radius to a point of tangency is perpendicular to the tangent, so $\angle AQI = \angle ARI = 90°$. Triangles $AQI$ and $ARI$ have a right angle, the common hypotenuse $AI$ and $IQ = IR = r$. By RHS (ZZR) they are congruent, so $AQ = AR$. The same works at $B$ and $C$. $\square$
(b) Quadrilateral $CPIQ$ has right angles at $C$ (given), $P$ and $Q$ (radius perpendicular to tangent), so the fourth angle is $360° - 270° = 90°$ too: it is a rectangle, and opposite sides of a rectangle are equal, so $CP = IQ = r$ and $CQ = IP = r$. Now
$$
a + b = (CP + PB) + (CQ + QA) = 2r + PB + QA = 2r + BR + AR = 2r + c,
$$
using (a) for $PB = BR$ and $QA = AR$. So $r = \dfrac{a + b - c}{2}$. $\square$
(c) $\frac{3 + 4 - 5}{2} = 1$, $\frac{5 + 12 - 13}{2} = 2$, $\frac{8 + 15 - 17}{2} = 3$. (Checked against $r = \frac{\text{area}}{\text{half the perimeter}}$.) For Pythagorean triples the inradius is always a whole number: $a + b - c$ is always even (since $a^2 + b^2 = c^2$, $a + b$ and $c$ have the same parity). For these three triangles it happens to be 1, 2, 3.
