# C4 Problems: trigonometric functions

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

Angles are in radians unless a degree sign is written. "Bereken exact" means: use exact values, no calculator.

---

## Practice

**1.** Convert.
a. $135°$, $210°$ and $330°$ to radians (exactly).
b. $\frac{5\pi}3$ and $\frac{7\pi}{12}$ to degrees.
c. $1$ radian to degrees, rounded to one decimal.

**2.** Give the exact values.
a. $\sin\frac{5\pi}6$  b. $\cos\frac{4\pi}3$  c. $\tan\left(-\frac\pi4\right)$  d. $\sin\frac{7\pi}4$  e. $\cos\frac{11\pi}6$  f. $\tan\frac{2\pi}3$

**3.** Given $f(x)=3+2\sin\left(4\left(x-\frac\pi8\right)\right)$.
a. Give the equilibrium, amplitude, period and a starting point.
b. Give the maximum and minimum values and the first $x>0$ where each occurs.
c. Sketch the graph on $[0,\pi]$.

**4.** Solve $\sin x=-\frac12$. Give all solutions, and the solutions in $[0,2\pi]$.

**5.** Solve exactly: $\cos2x=-\frac12\sqrt3$ on $[0,2\pi]$.

**6.** Give all solutions.
a. $\tan x=\sqrt3$
b. $\tan2x=-1$

**7.** A circle has radius $6$ cm. A central angle of $\frac{2\pi}3$ cuts off an arc and a sector. Give the exact arc length and sector area.

**8.** Prove these identities.
a. $(\sin x+\cos x)^2=1+\sin2x$
b. $\dfrac{1-\cos2x}{\sin2x}=\tan x$ (where $\sin2x\neq0$)

**9.** In triangle $ABC$: $\alpha=40°$, $\beta=65°$ and $a=10$. Calculate $\gamma$, $b$ and $c$ (two decimals).

**10.** A triangle has sides $7$, $8$ and $13$. Bereken exact the largest angle.

**11.** A sinusoid has a maximum at $(1,7)$ and the next minimum at $(4,1)$. Give a formula of the form $y=a+b\cos(c(x-d))$, and one of the form $y=a+b\sin(c(x-d))$.

---

## CE-level

**12.** Solve exactly on $[0,2\pi]$: $\sin x=\cos2x$.

**13.** Solve exactly: $\sin2x=\sin\left(x+\frac\pi3\right)$. Give all solutions, then those in $[0,2\pi]$.

**14.** Bereken exact $\cos\frac\pi{12}$ using an addition formula.

**15.**
a. Toon aan that $\sin x+\sqrt3\cos x=2\sin\left(x+\frac\pi3\right)$.
b. Give the maximum value of $\sin x+\sqrt3\cos x$.
c. Solve exactly on $[0,2\pi]$: $\sin x+\sqrt3\cos x=1$.

**16.** In a harbour the water height (in cm above a reference level) is modelled by
$$h(t)=120+90\sin\left(\frac{2\pi}{12.4}(t-2)\right),$$
with $t$ in hours after midnight.
a. Give the period and the times of the first high tide and the first low tide after midnight.
b. A ship needs a water height of more than $165$ cm. Bereken exact, and then in hours and minutes, how long per tidal period the ship can enter.

**17.**
a. Prove that $\cos3x=4\cos^3x-3\cos x$.
*Hint:* $3x=2x+x$.
b. Show that $c=\cos\frac\pi9$ satisfies $8c^3-6c-1=0$.

**18.** Two observers $A$ and $B$ stand on a straight coast, $500$ m apart. A boat $C$ is at sea. The angles $\angle CAB=52°$ and $\angle CBA=71°$ are measured. Calculate the distance from the boat to the coast, rounded to whole metres.

**19.** In triangle $ABC$: $b=6$, $c=10$ and $\alpha=150°$.
a. Bereken exact the area.
b. Bereken exact $a^2$, and give $a$ to two decimals.

**20.** Given $f(x)=\sin^2x$.
a. Toon aan that $f(x)=\frac12-\frac12\cos2x$.
b. Give the equilibrium, amplitude and period of the graph of $f$.

**21.** Solve exactly on $[0,2\pi]$: $2\cos^2x-3\cos x+1=0$.

---

## Challenge

**22.** A second proof of the difference formula. Let $0<\beta<\alpha<\beta+\pi$ and let $A=(\cos\alpha,\sin\alpha)$, $B=(\cos\beta,\sin\beta)$ be points on the unit circle with centre $O$.
a. Use the cosine rule in triangle $OAB$ to express $AB^2$ in $\cos(\alpha-\beta)$.
b. Use coordinates to express $AB^2$ in $\cos\alpha,\cos\beta,\sin\alpha,\sin\beta$, and conclude $\cos(\alpha-\beta)=\cos\alpha\cos\beta+\sin\alpha\sin\beta$.
c. Why does this proof cover fewer cases than the rotation proof in the notes?

**23.** Triangle $ABC$ has circumscribed circle with centre $M$ and radius $R$. Prove that $\dfrac a{\sin\alpha}=2R$.
*Hint:* draw the diameter through $B$, with other endpoint $D$, and use the inscribed angle theorem (*stelling van de constante hoek*) to compare $\angle BDC$ with $\alpha$. Treat the case where $\alpha$ is acute; then explain what changes if $\alpha$ is obtuse.

**24.** Let $\theta=\frac\pi{10}$ ($18°$).
a. Explain why $\sin2\theta=\cos3\theta$.
b. Use the double-angle formula and problem 17a to derive $4\sin^2\theta+2\sin\theta-1=0$.
c. Conclude that $\sin\frac\pi{10}=\dfrac{\sqrt5-1}4$.

**25.**
a. Prove that $\tan(\alpha+\beta)=\dfrac{\tan\alpha+\tan\beta}{1-\tan\alpha\tan\beta}$ (when all tangents are defined and the denominator is not $0$).
b. Prove that $\arctan\frac12+\arctan\frac13=\frac\pi4$. ($\arctan$ is the inverse of $\tan$ on $\left(-\frac\pi2,\frac\pi2\right)$.)

**26.** Heron's formula. A triangle has sides $a,b,c$ and semi-perimeter $s=\frac{a+b+c}2$. Prove that its area is
$$\sqrt{s(s-a)(s-b)(s-c)}.$$
*Hint:* start from area $=\frac12ab\sin\gamma$, write $\sin^2\gamma=1-\cos^2\gamma=(1-\cos\gamma)(1+\cos\gamma)$, and substitute the cosine rule.
