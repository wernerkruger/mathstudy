# C4 Notes: trigonometric functions

[← Module README](README.md) · [Problems](problems.md) · [Solutions](solutions.md)

In stage B, sine, cosine and tangent were ratios of sides in a right triangle, so they only made sense for angles between $0°$ and $90°$. Here they become **functions defined for every real number**, which makes them the natural language for anything that repeats: tides, sound, the seasons, a swinging pendulum, alternating current. Dutch books call this subject *goniometrie*.

---

## 1. Radians

A full turn is $360°$, a number chosen by the Babylonians. Mathematics prefers a unit that comes from the circle itself.

> **Definition.** The size of an angle in **radians** (*radialen*) is the length of the arc it cuts from a circle of radius 1 centred at the vertex.

The circumference of the unit circle is $2\pi$, so
$$
360°=2\pi\text{ rad},\qquad180°=\pi\text{ rad},\qquad1\text{ rad}=\frac{180°}{\pi}\approx57.3° .
$$
To convert degrees to radians multiply by $\frac{\pi}{180}$; back, multiply by $\frac{180}{\pi}$.

| degrees | 30 | 45 | 60 | 90 | 120 | 135 | 150 | 180 | 270 | 360 |
|---|---|---|---|---|---|---|---|---|---|---|
| radians | $\frac\pi6$ | $\frac\pi4$ | $\frac\pi3$ | $\frac\pi2$ | $\frac{2\pi}3$ | $\frac{3\pi}4$ | $\frac{5\pi}6$ | $\pi$ | $\frac{3\pi}2$ | $2\pi$ |

**Arc length and sector area.** In a circle of radius $r$, an angle of $\theta$ radians cuts off an arc of length $r\theta$ (scale the unit-circle arc by $r$) and a sector of area $\frac12r^2\theta$ (the fraction $\frac{\theta}{2\pi}$ of the area $\pi r^2$). These clean formulas are the first reason to use radians.

> **Going further: the real reason for radians.** For small $x$ in radians, $\sin x\approx x$: the vertical half-chord and the arc are almost equal. In degrees you would get $\sin x°\approx\frac{\pi}{180}x$, an ugly factor that would then appear in every derivative. In stage D you will prove $(\sin x)'=\cos x$, which is true **only** in radians.

From now on, angles are in radians unless a $°$ is written. Set your calculator to RAD.

---

## 2. The unit circle

Let $P$ be the point on the unit circle (*eenheidscirkel*) $x^2+y^2=1$ reached by turning from $(1,0)$ through an angle $t$, **anticlockwise** for $t>0$ and clockwise for $t<0$. Then define
$$
\cos t=x_P,\qquad \sin t=y_P,\qquad \tan t=\frac{\sin t}{\cos t}\ \ (\cos t\neq0).
$$
For $0<t<\frac\pi2$ this agrees with the triangle definitions: drop a perpendicular from $P$ to the $x$-axis; the hypotenuse is $1$, so the opposite side is $\sin t$ and the adjacent side is $\cos t$.

Immediate consequences:
- $-1\le\sin t\le1$ and $-1\le\cos t\le1$.
- **Periodicity:** turning a further $2\pi$ gives the same point, so $\sin(t+2\pi)=\sin t$ and $\cos(t+2\pi)=\cos t$.
- **Pythagoras:** $P$ lies on $x^2+y^2=1$, so $\sin^2t+\cos^2t=1$ for every $t$. (Notation: $\sin^2t$ means $(\sin t)^2$.)
- $\tan t$ is the slope of the line $OP$. Since $P$ and $-P$ (turning a further $\pi$) give the same line, $\tan(t+\pi)=\tan t$: the period of $\tan$ is $\pi$.

**Signs per quadrant.** $\sin$ is positive in quadrants I and II (upper half), $\cos$ in I and IV (right half), $\tan$ in I and III.

---

## 3. Exact values and symmetry

The two special triangles from stage B give the values in the first quadrant:

| $t$ | $0$ | $\frac\pi6$ | $\frac\pi4$ | $\frac\pi3$ | $\frac\pi2$ |
|---|---|---|---|---|---|
| $\sin t$ | $0$ | $\frac12$ | $\frac12\sqrt2$ | $\frac12\sqrt3$ | $1$ |
| $\cos t$ | $1$ | $\frac12\sqrt3$ | $\frac12\sqrt2$ | $\frac12$ | $0$ |
| $\tan t$ | $0$ | $\frac13\sqrt3$ | $1$ | $\sqrt3$ | undefined |

(Memory aid: $\sin$ goes $\frac12\sqrt0,\frac12\sqrt1,\frac12\sqrt2,\frac12\sqrt3,\frac12\sqrt4$.)

Dutch exams write $\frac12\sqrt2$ rather than $\frac{1}{\sqrt2}$; use that form.

**Symmetries of the unit circle** give all other values:

| Symmetry | Formula |
|---|---|
| reflection in the $x$-axis | $\sin(-t)=-\sin t$, $\cos(-t)=\cos t$ |
| reflection in the $y$-axis | $\sin(\pi-t)=\sin t$, $\cos(\pi-t)=-\cos t$ |
| point reflection in $O$ | $\sin(t+\pi)=-\sin t$, $\cos(t+\pi)=-\cos t$ |
| reflection in $y=x$ | $\sin\left(\frac\pi2-t\right)=\cos t$, $\cos\left(\frac\pi2-t\right)=\sin t$ |

So $\sin$ is odd and $\cos$ is even.

**Example 1.** $\cos\frac{5\pi}6$. The angle $\frac{5\pi}6=\pi-\frac\pi6$ is in quadrant II, where $\cos<0$. So $\cos\frac{5\pi}6=-\cos\frac\pi6=-\frac12\sqrt3$.

**Example 2.** $\sin\left(-\frac{11\pi}{4}\right)$. Add $4\pi$: $-\frac{11\pi}4+4\pi=\frac{5\pi}4=\pi+\frac\pi4$, in quadrant III. $\sin\frac{5\pi}{4}=-\sin\frac\pi4=-\frac12\sqrt2$.

Method: (1) reduce to $[0,2\pi)$ by adding multiples of $2\pi$; (2) find the reference angle in the first quadrant; (3) fix the sign by the quadrant.

---

## 4. Graphs

Unrolling the unit circle along the $t$-axis gives the graphs.

- $y=\sin x$: period $2\pi$, zeros at $k\pi$, maximum $1$ at $\frac\pi2+k2\pi$, minimum $-1$ at $\frac{3\pi}2+k2\pi$. Odd.
- $y=\cos x$: the sine graph shifted $\frac\pi2$ to the **left**, because $\cos x=\sin\left(x+\frac\pi2\right)$. Even.
- $y=\tan x$: period $\pi$, zeros at $k\pi$, vertical asymptotes at $x=\frac\pi2+k\pi$, increasing on each branch.

### Sinusoids

Using the transformations from C1, every graph of the form
$$
y=a+b\sin\big(c(x-d)\big)\qquad(b>0,\ c>0)
$$
is a **sinusoid** (*sinusoïde*) with
- **equilibrium** (*evenwichtsstand*) $y=a$: the middle line;
- **amplitude** $b$: the distance from the middle line to a maximum;
- **period** $\dfrac{2\pi}{c}$: because $c(x-d)$ must grow by $2\pi$ for one full cycle;
- **starting point** (*beginpunt*) $(d,a)$: a point on the middle line where the graph goes **up**.

So the maximum is $a+b$ and the minimum is $a-b$. For $y=a+b\cos(c(x-d))$, the point $(d,a+b)$ is a **maximum**.

**Example 3.** $f(x)=2+3\sin\left(2\left(x-\frac\pi4\right)\right)$: equilibrium $2$, amplitude $3$, period $\pi$, starting point $\left(\frac\pi4,2\right)$. Maximum $5$ at $x=\frac\pi4+\frac14\pi=\frac\pi2$ (a quarter period after the start), minimum $-1$ at $x=\pi$.

> **Common mistake.** Reading the horizontal shift from $\sin(2x-\frac\pi2)$ as $\frac\pi2$. Factor out $c$ first: $2x-\frac\pi2=2\left(x-\frac\pi4\right)$, so the shift is $\frac\pi4$.

### A formula from a graph

**Example 4.** A sinusoid has a maximum at $(2,5)$ and the next minimum at $(6,-1)$.
- Equilibrium $a=\frac{5+(-1)}2=2$; amplitude $b=\frac{5-(-1)}2=3$.
- Half a period is $6-2=4$, so the period is $8$ and $c=\frac{2\pi}8=\frac\pi4$.
- A maximum at $x=2$ suggests a cosine: $y=2+3\cos\left(\frac\pi4(x-2)\right)$.
- Or with sine: the starting point (middle, going up) is a quarter period, $2$, before the maximum, at $x=0$: $y=2+3\sin\left(\frac\pi4x\right)$.

Both formulas are correct; there are infinitely many ($d$ can be shifted by any number of periods).

---

## 5. Equations with all solutions

Because sine and cosine are periodic, an equation like $\sin x=\frac12$ has **infinitely many** solutions. On the unit circle there are two points with $y=\frac12$: at $t=\frac\pi6$ and at $t=\pi-\frac\pi6=\frac{5\pi}6$. Every solution is one of these plus a whole number of turns:
$$
\sin x=\tfrac12\iff x=\tfrac\pi6+k\cdot2\pi\ \text{ or }\ x=\tfrac{5\pi}6+k\cdot2\pi\qquad(k\in\mathbb Z).
$$

The general rules (learn these; they are what the CE expects):

> $$\sin A=\sin B\iff A=B+k\cdot2\pi\ \text{ or }\ A=\pi-B+k\cdot2\pi$$
> $$\cos A=\cos B\iff A=B+k\cdot2\pi\ \text{ or }\ A=-B+k\cdot2\pi$$
> $$\tan A=\tan B\iff A=B+k\cdot\pi$$

*Why:* two angles have the same sine iff their points on the unit circle have the same height, i.e. are equal or mirror images in the $y$-axis (that mirror sends $B$ to $\pi-B$). For cosine, the mirror is the $x$-axis (sending $B$ to $-B$). For tangent, the same line through $O$: the same point or the opposite point ($B+\pi$).

**Method.**
1. Bring the equation to the form $\sin A=\sin B$ (etc.), writing the number as a sine of a known angle: $\sin A=\frac12\sqrt3$ becomes $\sin A=\sin\frac\pi3$.
2. Apply the rule and solve each case for $x$. **Divide the $k\cdot2\pi$ term too.**
3. If an interval is given, list the solutions in it by trying $k=0,\pm1,\pm2,\dots$

**Example 5.** Solve $\cos 3x=\frac12$ on $[0,\pi]$.
$\cos3x=\cos\frac\pi3\iff3x=\frac\pi3+k2\pi$ or $3x=-\frac\pi3+k2\pi\iff x=\frac\pi9+k\frac{2\pi}3$ or $x=-\frac\pi9+k\frac{2\pi}3$.
In $[0,\pi]$: from the first, $\frac\pi9,\frac{7\pi}9$; from the second, $\frac{5\pi}9$ (with $k=1$). **Answer:** $x=\frac\pi9,\frac{5\pi}9,\frac{7\pi}9$.
(Check the count: $\cos3x$ has period $\frac{2\pi}3$, so on an interval of length $\pi$ there are one and a half periods, and about three solutions. Good.)

**Example 6.** $\sin\left(2x\right)=\cos x$. Rewrite the right side: $\cos x=\sin\left(\frac\pi2-x\right)$. Then
$2x=\frac\pi2-x+k2\pi\Rightarrow x=\frac\pi6+k\frac{2\pi}3$, or $2x=\pi-\left(\frac\pi2-x\right)+k2\pi\Rightarrow x=\frac\pi2+k2\pi$.

> **Common mistake.** Writing $2x=\frac\pi3+k2\pi$ and then $x=\frac\pi6+k2\pi$. You must divide everything by 2: $x=\frac\pi6+k\pi$. Otherwise you lose half the solutions.

---

## 6. Identities

An **identity** (*formule, identiteit*) is an equation that holds for all values of the variable. You already know $\sin^2t+\cos^2t=1$ and $\tan t=\frac{\sin t}{\cos t}$.

### The difference formula for cosine

> $$\cos(\alpha-\beta)=\cos\alpha\cos\beta+\sin\alpha\sin\beta .$$

**Proof.** Take the points $A=(\cos\alpha,\sin\alpha)$ and $B=(\cos\beta,\sin\beta)$ on the unit circle. The angle between $OA$ and $OB$ is $\alpha-\beta$.

*Compute $AB^2$ with coordinates:*
$$
AB^2=(\cos\alpha-\cos\beta)^2+(\sin\alpha-\sin\beta)^2=2-2(\cos\alpha\cos\beta+\sin\alpha\sin\beta),
$$
using $\cos^2+\sin^2=1$ twice.

*Compute $AB^2$ after rotating:* rotate the whole picture by $-\beta$. Distances do not change. Now $B$ goes to $(1,0)$ and $A$ to $(\cos(\alpha-\beta),\sin(\alpha-\beta))$. So
$$
AB^2=(\cos(\alpha-\beta)-1)^2+\sin^2(\alpha-\beta)=2-2\cos(\alpha-\beta).
$$
Comparing the two expressions gives the formula. $\square$

### Everything else follows

- Replace $\beta$ by $-\beta$ (using $\cos(-\beta)=\cos\beta$, $\sin(-\beta)=-\sin\beta$):
 $$\cos(\alpha+\beta)=\cos\alpha\cos\beta-\sin\alpha\sin\beta.$$
- Use $\sin\theta=\cos\left(\frac\pi2-\theta\right)$:
 $\sin(\alpha+\beta)=\cos\left(\left(\frac\pi2-\alpha\right)-\beta\right)=\cos\left(\frac\pi2-\alpha\right)\cos\beta+\sin\left(\frac\pi2-\alpha\right)\sin\beta$, so
 $$\sin(\alpha+\beta)=\sin\alpha\cos\beta+\cos\alpha\sin\beta,\qquad\sin(\alpha-\beta)=\sin\alpha\cos\beta-\cos\alpha\sin\beta.$$
- Put $\beta=\alpha$: the **double-angle formulas**
 $$\sin2\alpha=2\sin\alpha\cos\alpha,\qquad\cos2\alpha=\cos^2\alpha-\sin^2\alpha=2\cos^2\alpha-1=1-2\sin^2\alpha.$$

The CE formula sheet (*formulekaart*) lists these, but knowing where they come from means you can never misremember a sign.

**Example 7.** $\sin\frac{\pi}{12}=\sin\left(\frac\pi3-\frac\pi4\right)=\frac12\sqrt3\cdot\frac12\sqrt2-\frac12\cdot\frac12\sqrt2=\frac{\sqrt6-\sqrt2}{4}$.

**Example 8 (equation needing an identity).** Solve $\cos2x=\cos x$ on $[0,2\pi]$.
Method 1 (identity): $2\cos^2x-1=\cos x$, so $2\cos^2x-\cos x-1=0$, $(2\cos x+1)(\cos x-1)=0$, $\cos x=-\frac12$ or $\cos x=1$. So $x=\frac{2\pi}3,\frac{4\pi}3$ or $x=0,2\pi$.
Method 2 (rule): $2x=x+k2\pi$ or $2x=-x+k2\pi$, so $x=k2\pi$ or $x=k\frac{2\pi}3$. In $[0,2\pi]$: $0,\frac{2\pi}3,\frac{4\pi}3,2\pi$. Same answer.

**Writing $a\sin x+b\cos x$ as one sinusoid.** $\sin x+\cos x=\sqrt2\left(\frac12\sqrt2\sin x+\frac12\sqrt2\cos x\right)=\sqrt2\left(\sin x\cos\frac\pi4+\cos x\sin\frac\pi4\right)=\sqrt2\sin\left(x+\frac\pi4\right)$. So the sum of a sine and a cosine with the same period is again a sinusoid, here with amplitude $\sqrt2$. In general $a\sin x+b\cos x=\sqrt{a^2+b^2}\,\sin(x+\varphi)$ for a suitable $\varphi$.

**Lowering the power.** From the double-angle formulas: $\sin^2x=\frac12-\frac12\cos2x$ and $\cos^2x=\frac12+\frac12\cos2x$. So $\sin^2 x$ is a sinusoid too, with period $\pi$.

> **Common mistake.** $\sin(\alpha+\beta)=\sin\alpha+\sin\beta$. Test: $\alpha=\beta=\frac\pi2$ gives $\sin\pi=0$ on the left and $2$ on the right.

---

## 7. Sine rule and cosine rule

In any triangle $ABC$, label the sides opposite $A,B,C$ as $a,b,c$ and the angles $\alpha,\beta,\gamma$.

### Area formula

Drop the altitude from $C$ to line $AB$. Its length is $h=b\sin\alpha$ (also when $\alpha$ is obtuse, because $\sin(\pi-\alpha)=\sin\alpha$). So
$$
\text{area}=\tfrac12\,c\,h=\tfrac12\,bc\sin\alpha .
$$

### Sine rule

> $$\frac{a}{\sin\alpha}=\frac{b}{\sin\beta}=\frac{c}{\sin\gamma}.$$

**Proof.** The area is $\frac12bc\sin\alpha=\frac12ac\sin\beta=\frac12ab\sin\gamma$ (same formula from each vertex). Divide all three by $\frac12abc$: $\frac{\sin\alpha}a=\frac{\sin\beta}b=\frac{\sin\gamma}c$. $\square$

Problem 23 shows that the common value is $2R$, the diameter of the circumscribed circle.

**Use:** when you know two angles and a side, or two sides and an angle opposite one of them.

> **Common mistake: the ambiguous case.** Given $a$, $b$ and $\alpha$, the sine rule gives $\sin\beta$; but $\beta$ and $\pi-\beta$ have the same sine. Both may give a valid triangle. Check whether $\alpha+(\pi-\beta)<\pi$.

### Cosine rule

> $$c^2=a^2+b^2-2ab\cos\gamma .$$

**Proof.** Place $C$ at the origin and $CB$ along the positive $x$-axis: $C=(0,0)$, $B=(a,0)$, $A=(b\cos\gamma,b\sin\gamma)$ (this is the unit circle definition, scaled by $b$, so it works for obtuse $\gamma$ too). Then
$$
c^2=AB^2=(b\cos\gamma-a)^2+(b\sin\gamma)^2=b^2(\cos^2\gamma+\sin^2\gamma)-2ab\cos\gamma+a^2=a^2+b^2-2ab\cos\gamma.\ \square
$$
For $\gamma=\frac\pi2$ this is Pythagoras. For $\gamma>\frac\pi2$, $\cos\gamma<0$ and $c^2>a^2+b^2$: an obtuse angle faces a longer side than Pythagoras would give.

**Use:** two sides and the angle between them (find the third side), or three sides (find an angle).

**Example 9.** A triangle has sides $a=5$, $b=7$, $c=8$. Find the angle $\beta$ opposite the side $7$, and the area. By the cosine rule $b^2=a^2+c^2-2ac\cos\beta$, so
$\cos\beta=\dfrac{5^2+8^2-7^2}{2\cdot5\cdot8}=\dfrac{40}{80}=\dfrac12$, so $\beta=\frac\pi3$ ($60°$). Area $=\frac12\cdot5\cdot8\cdot\sin\frac\pi3=10\sqrt3$.

---

### The ambiguous case in numbers

**Example 10.** In triangle $ABC$: $a=7$, $b=10$, $\alpha=35°$. Find $\beta$.
Sine rule: $\sin\beta=\dfrac{b\sin\alpha}{a}=\dfrac{10\sin35°}{7}\approx0.819$. The calculator gives $\beta\approx55.0°$, but $\beta\approx180°-55.0°=125.0°$ has the same sine.
- $\beta\approx55.0°$: $\gamma\approx90.0°$, a valid triangle.
- $\beta\approx125.0°$: $\gamma\approx20.0°$, also valid (since $35°+125.0°<180°$).

So there are **two** triangles with these data, with $c\approx12.20$ and $c\approx4.18$. Draw it: with $A$ and side $b=AC$ fixed, a circle of radius $7$ around $C$ meets the other ray from $A$ in two points. If $a$ had been $\ge b$, only one triangle would exist.

---

## 8. Inverse trigonometric functions and modelling

### Inverse functions

On the whole real line $\sin$ is not one-to-one, so it has no inverse. Restricted to $\left[-\frac\pi2,\frac\pi2\right]$ it is increasing and takes every value in $[-1,1]$ once; the inverse is $\arcsin$ (on the calculator $\sin^{-1}$). Similarly $\arccos:[-1,1]\to[0,\pi]$ and $\arctan:\mathbb R\to\left(-\frac\pi2,\frac\pi2\right)$.

The calculator gives only **one** solution of $\sin x=0.3$, namely $\arcsin0.3\approx0.305$. The other family comes from the rule: $x=\pi-0.305+k2\pi\approx2.837+k2\pi$. Never stop at the calculator answer.

### Modelling a periodic process

**Example 11.** In the Netherlands, the number of hours of daylight on day $t$ of the year is roughly modelled by
$$D(t)=12.3+4.5\sin\left(\frac{2\pi}{365}(t-80)\right).$$
(The model is a simplification; the numbers are illustrative.) Equilibrium $12.3$ h around 21 March ($t=80$), maximum $16.8$ h a quarter year later, minimum $7.8$ h.

*On how many days is there more than 15 hours of daylight?* $D(t)>15\iff\sin u>0.6$ with $u=\frac{2\pi}{365}(t-80)$. In one period: $\arcsin0.6<u<\pi-\arcsin0.6$, i.e. $0.6435<u<2.4981$. Converting back: $117.4<t<225.1$, an interval of about $107.7$ days. So on about 108 days.

> **Going further: why $\sin x\approx x$ for small $x$.** For $0<x<\frac\pi2$, compare three areas in the unit circle: the triangle $O$, $(1,0)$, $(\cos x,\sin x)$ has area $\frac12\sin x$; the sector has area $\frac12x$; the right triangle $O$, $(1,0)$, $(1,\tan x)$ has area $\frac12\tan x$. Each contains the previous one, so
> $$\sin x<x<\tan x .$$
> Dividing by $\sin x$ and inverting: $\cos x<\dfrac{\sin x}{x}<1$. As $x\to0$, $\cos x\to1$, so $\dfrac{\sin x}x\to1$. This limit is the key step in proving $(\sin x)'=\cos x$ in stage D, and the sector area $\frac12x$ is exactly where radians are needed. Numerically: $\sin0.1\approx0.09983$, $\tan0.1\approx0.10033$.

### Common mistakes, collected

- Calculator in DEG mode when the problem is in radians (or the reverse).
- Giving only the calculator solution of $\sin x=c$ and forgetting $\pi-x$.
- Dividing by $\sin x$ or $\cos x$ in an equation, which loses the solutions where it is $0$. Factor instead: $\sin x\cos x=\sin x\iff\sin x(\cos x-1)=0$.
- Forgetting to divide $k\cdot2\pi$ by the coefficient of $x$.
- $\sin2x=2\sin x$ (wrong) instead of $\sin2x=2\sin x\cos x$.
- Ignoring the second triangle in the ambiguous case of the sine rule.

---

## 9. A complete CE-style example

**Example 12.** A Ferris wheel has diameter 40 m; its axle is 22 m above the ground. It turns anticlockwise once every 8 minutes. At $t=0$ a passenger is at the lowest point.

*a. Give a formula for the height $h(t)$.* Equilibrium 22, amplitude 20, period 8, so $c=\frac{2\pi}8=\frac\pi4$. At $t=0$ the passenger is at a minimum: $h(t)=22-20\cos\left(\frac\pi4t\right)$.

*b. Bereken exact during how many minutes per turn the passenger is higher than 32 m.*
$22-20\cos\left(\frac\pi4t\right)=32\iff\cos\left(\frac\pi4t\right)=-\frac12\iff\frac\pi4t=\frac{2\pi}3+k2\pi$ or $\frac\pi4t=-\frac{2\pi}3+k2\pi$.
In the first turn ($0\le t\le8$): $t=\frac83$ and $t=-\frac83+8=\frac{16}3$. Between these the passenger is above 32 m (around the maximum at $t=4$). Duration $\frac{16}3-\frac83=\frac83$ minutes, i.e. $2$ minutes $40$ seconds.

---

## Summary

- Radians: arc length on the unit circle; $\pi$ rad $=180°$; arc $r\theta$, sector $\frac12r^2\theta$.
- $\cos t$, $\sin t$ are the coordinates of the point at angle $t$ on the unit circle.
- Exact values from the special triangles plus symmetry plus the sign per quadrant.
- $y=a+b\sin(c(x-d))$: equilibrium $a$, amplitude $b$, period $\frac{2\pi}c$, starting point $(d,a)$.
- $\sin A=\sin B$: $A=B+k2\pi$ or $A=\pi-B+k2\pi$; $\cos A=\cos B$: $A=\pm B+k2\pi$; $\tan$: $+k\pi$.
- Everything follows from $\cos(\alpha-\beta)=\cos\alpha\cos\beta+\sin\alpha\sin\beta$.
- Sine rule from the area formula; cosine rule from coordinates.
