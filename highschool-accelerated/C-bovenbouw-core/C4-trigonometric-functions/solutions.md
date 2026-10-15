# C4 Solutions: trigonometric functions

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

All exact values and equation solutions were checked numerically with Python; identities were checked with SymPy.

---

## Practice

**1a.** $135°=\frac{135}{180}\pi=\frac{3\pi}4$; $210°=\frac{7\pi}6$; $330°=\frac{11\pi}6$.
**1b.** $\frac{5\pi}3\cdot\frac{180°}\pi=300°$; $\frac{7\pi}{12}\cdot\frac{180°}{\pi}=105°$.
**1c.** $\frac{180°}\pi\approx57.3°$.

**2.**
a. $\frac{5\pi}6=\pi-\frac\pi6$, quadrant II, $\sin>0$: $\frac12$.
b. $\frac{4\pi}3=\pi+\frac\pi3$, quadrant III, $\cos<0$: $-\frac12$.
c. $\tan$ is odd: $-\tan\frac\pi4=-1$.
d. $\frac{7\pi}4=2\pi-\frac\pi4$, quadrant IV, $\sin<0$: $-\frac12\sqrt2$.
e. $\frac{11\pi}6=2\pi-\frac\pi6$, quadrant IV, $\cos>0$: $\frac12\sqrt3$.
f. $\frac{2\pi}3=\pi-\frac\pi3$, quadrant II, $\tan<0$: $-\sqrt3$.

**3a.** Equilibrium $y=3$, amplitude $2$, period $\frac{2\pi}4=\frac\pi2$, starting point $\left(\frac\pi8,3\right)$.

**3b.** Maximum $3+2=5$, a quarter period after the start: $x=\frac\pi8+\frac\pi8=\frac\pi4$. Minimum $3-2=1$, three quarters of a period after the start: $x=\frac\pi8+\frac{3\pi}8=\frac\pi2$. (Also at $x=\frac\pi2-\frac\pi2=0$, but the question asks for $x>0$.)

**3c.** On $[0,\pi]$ (two full periods): minimum at $0$, middle going up at $\frac\pi8$, maximum at $\frac\pi4$, middle going down at $\frac{3\pi}8$, minimum at $\frac\pi2$, and the same pattern again up to a minimum at $\pi$. Check with GeoGebra.

**4.** $\sin x=-\frac12=\sin\left(-\frac\pi6\right)$.
$x=-\frac\pi6+k2\pi$ or $x=\pi-\left(-\frac\pi6\right)+k2\pi=\frac{7\pi}6+k2\pi$.
In $[0,2\pi]$: $x=\frac{7\pi}6$ and $x=\frac{11\pi}6$.

**5.** $\cos2x=\cos\frac{5\pi}6$. So $2x=\frac{5\pi}6+k2\pi$ or $2x=-\frac{5\pi}6+k2\pi$, i.e. $x=\frac{5\pi}{12}+k\pi$ or $x=-\frac{5\pi}{12}+k\pi$.
In $[0,2\pi]$: $\frac{5\pi}{12},\frac{17\pi}{12}$ and $\frac{7\pi}{12},\frac{19\pi}{12}$.

**6a.** $\tan x=\tan\frac\pi3$, so $x=\frac\pi3+k\pi$.
**6b.** $\tan2x=\tan\left(-\frac\pi4\right)$, so $2x=-\frac\pi4+k\pi$, $x=-\frac\pi8+k\cdot\frac\pi2$.

**7.** Arc: $r\theta=6\cdot\frac{2\pi}3=4\pi$ cm. Sector: $\frac12r^2\theta=\frac12\cdot36\cdot\frac{2\pi}3=12\pi$ cm².

**8a.** $(\sin x+\cos x)^2=\sin^2x+2\sin x\cos x+\cos^2x=1+\sin2x$.

**8b.** $1-\cos2x=1-(1-2\sin^2x)=2\sin^2x$ and $\sin2x=2\sin x\cos x$. So the quotient is $\dfrac{2\sin^2x}{2\sin x\cos x}=\dfrac{\sin x}{\cos x}=\tan x$ (we may cancel $\sin x$, since $\sin2x\neq0$ implies $\sin x\neq0$ and $\cos x\neq0$).

**9.** $\gamma=180°-40°-65°=75°$. Sine rule: $b=\dfrac{a\sin\beta}{\sin\alpha}=\dfrac{10\sin65°}{\sin40°}\approx14.10$ and $c=\dfrac{10\sin75°}{\sin40°}\approx15.03$.

**10.** The largest angle is opposite the longest side, $13$. Cosine rule: $\cos\gamma=\dfrac{7^2+8^2-13^2}{2\cdot7\cdot8}=\dfrac{49+64-169}{112}=\dfrac{-56}{112}=-\dfrac12$. So $\gamma=\frac{2\pi}3$ ($120°$).

**11.** Equilibrium $a=\frac{7+1}2=4$, amplitude $b=\frac{7-1}2=3$. Half a period is $4-1=3$, so period $6$ and $c=\frac{2\pi}6=\frac\pi3$.
Cosine form (maximum at $x=1$): $y=4+3\cos\left(\frac\pi3(x-1)\right)$.
Sine form: the starting point is a quarter period ($1.5$) before the maximum, at $x=-\frac12$: $y=4+3\sin\left(\frac\pi3\left(x+\frac12\right)\right)$.

---

## CE-level

**12.** $\cos2x=1-2\sin^2x$, so $\sin x=1-2\sin^2x$, i.e. $2\sin^2x+\sin x-1=0$, $(2\sin x-1)(\sin x+1)=0$.
$\sin x=\frac12$: $x=\frac\pi6$ or $x=\frac{5\pi}6$. $\sin x=-1$: $x=\frac{3\pi}2$.
**Answer:** $x=\frac\pi6,\frac{5\pi}6,\frac{3\pi}2$.

**13.** $\sin A=\sin B$ with $A=2x$, $B=x+\frac\pi3$:
- $2x=x+\frac\pi3+k2\pi\Rightarrow x=\frac\pi3+k2\pi$;
- $2x=\pi-x-\frac\pi3+k2\pi\Rightarrow3x=\frac{2\pi}3+k2\pi\Rightarrow x=\frac{2\pi}9+k\frac{2\pi}3$.

In $[0,2\pi]$: $x=\frac\pi3$, and $x=\frac{2\pi}9,\frac{8\pi}9,\frac{14\pi}9$.

**14.** $\cos\frac\pi{12}=\cos\left(\frac\pi3-\frac\pi4\right)=\cos\frac\pi3\cos\frac\pi4+\sin\frac\pi3\sin\frac\pi4=\frac12\cdot\frac12\sqrt2+\frac12\sqrt3\cdot\frac12\sqrt2=\dfrac{\sqrt2+\sqrt6}4$.

**15a.** $2\sin\left(x+\frac\pi3\right)=2\left(\sin x\cos\frac\pi3+\cos x\sin\frac\pi3\right)=2\left(\frac12\sin x+\frac12\sqrt3\cos x\right)=\sin x+\sqrt3\cos x$.

**15b.** The maximum of $2\sin(\dots)$ is $2$.

**15c.** $\sin\left(x+\frac\pi3\right)=\frac12=\sin\frac\pi6$:
$x+\frac\pi3=\frac\pi6+k2\pi\Rightarrow x=-\frac\pi6+k2\pi$; or $x+\frac\pi3=\frac{5\pi}6+k2\pi\Rightarrow x=\frac\pi2+k2\pi$.
In $[0,2\pi]$: $x=\frac\pi2$ and $x=\frac{11\pi}6$.

**16a.** Period $12.4$ hours. The starting point is at $t=2$. High tide a quarter period later: $t=2+3.1=5.1$, i.e. 05:06. Low tide three quarters of a period after the start: $t=2+9.3=11.3$, i.e. 11:18. (Before $t=5.1$ there is no low tide after midnight: the previous one was at $11.3-12.4<0$.)

**16b.** $h(t)=165\iff\sin\left(\frac{2\pi}{12.4}(t-2)\right)=\frac12$. Write $u=\frac{2\pi}{12.4}(t-2)$. In one period starting at $u=0$, $\sin u>\frac12$ for $\frac\pi6<u<\frac{5\pi}6$, an interval of length $\frac{2\pi}3$, which is one third of the period $2\pi$.
So per tidal period the water is above 165 cm for $\frac13\cdot12.4=\frac{62}{15}$ hours $=4\frac2{15}$ hours $=$ **4 hours 8 minutes**.
(In terms of $t$: from $t=2+\frac{12.4}{12}\approx3.03$ to $t=2+\frac{5\cdot12.4}{12}\approx7.17$.)

**17a.** $\cos3x=\cos(2x+x)=\cos2x\cos x-\sin2x\sin x=(2\cos^2x-1)\cos x-2\sin^2x\cos x$.
Use $\sin^2x=1-\cos^2x$: $=2\cos^3x-\cos x-2\cos x+2\cos^3x=4\cos^3x-3\cos x$. $\square$

**17b.** With $x=\frac\pi9$: $\cos\frac\pi3=\frac12=4c^3-3c$. Multiply by 2: $8c^3-6c-1=0$. $\square$

**18.** $\angle ACB=180°-52°-71°=57°$. Sine rule in triangle $ABC$: $AC=\dfrac{500\sin71°}{\sin57°}\approx563.7$ m. The distance to the coast is the altitude from $C$ to line $AB$: $AC\sin52°\approx444.2$ m. **About 444 m.**

**19a.** Area $=\frac12bc\sin\alpha=\frac12\cdot6\cdot10\cdot\sin150°=30\cdot\frac12=15$.

**19b.** $a^2=b^2+c^2-2bc\cos\alpha=36+100-120\cdot\left(-\frac12\sqrt3\right)=136+60\sqrt3$. So $a=\sqrt{136+60\sqrt3}\approx15.49$.

**20a.** From $\cos2x=1-2\sin^2x$: $\sin^2x=\dfrac{1-\cos2x}2=\frac12-\frac12\cos2x$.

**20b.** Equilibrium $\frac12$, amplitude $\frac12$, period $\frac{2\pi}2=\pi$.

**21.** Put $u=\cos x$: $2u^2-3u+1=0$, $(2u-1)(u-1)=0$, $u=\frac12$ or $u=1$.
$\cos x=\frac12$: $x=\frac\pi3,\frac{5\pi}3$. $\cos x=1$: $x=0,2\pi$.
**Answer:** $x=0,\frac\pi3,\frac{5\pi}3,2\pi$.

---

## Challenge

**22a.** $OA=OB=1$ and $\angle AOB=\alpha-\beta$ (which lies in $(0,\pi)$, so $OAB$ is a real triangle). Cosine rule: $AB^2=1+1-2\cos(\alpha-\beta)=2-2\cos(\alpha-\beta)$.

**22b.** $AB^2=(\cos\alpha-\cos\beta)^2+(\sin\alpha-\sin\beta)^2=(\cos^2\alpha+\sin^2\alpha)+(\cos^2\beta+\sin^2\beta)-2(\cos\alpha\cos\beta+\sin\alpha\sin\beta)=2-2(\cos\alpha\cos\beta+\sin\alpha\sin\beta)$.
Compare with (a): $\cos(\alpha-\beta)=\cos\alpha\cos\beta+\sin\alpha\sin\beta$. $\square$

**22c.** The cosine rule is about angles of a triangle, which lie strictly between $0$ and $\pi$. So this proof only covers $0<\alpha-\beta<\pi$ (and, by symmetry, $-\pi<\alpha-\beta<0$). Values like $\alpha-\beta=0$, $\pi$ or $\frac{5\pi}2$ need a separate argument (periodicity, or degenerate cases). The rotation proof in the notes works for all real $\alpha$, $\beta$ at once.

**23.** *Case $\alpha$ acute.* Let $BD$ be the diameter through $B$, so $BD=2R$. If $D=C$, then $BC$ is a diameter, $\alpha=90°$, which is not acute; so $D\neq C$. Since $\alpha$ is acute, $A$ and $D$ lie on the same arc cut off by chord $BC$, so by the inscribed angle theorem $\angle BDC=\angle BAC=\alpha$. Angle $\angle BCD=90°$ (Thales: angle in a semicircle). In the right triangle $BCD$: $\sin\angle BDC=\dfrac{BC}{BD}$, i.e. $\sin\alpha=\dfrac a{2R}$. So $\dfrac a{\sin\alpha}=2R$.
*Case $\alpha=90°$:* $BC$ is a diameter, $a=2R$ and $\sin\alpha=1$. True.
*Case $\alpha$ obtuse:* $A$ and $D$ lie on opposite arcs, so $ABDC$ is a cyclic quadrilateral and $\angle BDC=180°-\alpha$. Since $\sin(180°-\alpha)=\sin\alpha$, the same computation works. $\square$

**24a.** $5\theta=\frac\pi2$, so $2\theta=\frac\pi2-3\theta$ and $\sin2\theta=\sin\left(\frac\pi2-3\theta\right)=\cos3\theta$.

**24b.** $2\sin\theta\cos\theta=4\cos^3\theta-3\cos\theta$. Divide by $\cos\theta\neq0$: $2\sin\theta=4\cos^2\theta-3=4(1-\sin^2\theta)-3=1-4\sin^2\theta$. So $4\sin^2\theta+2\sin\theta-1=0$.

**24c.** Quadratic in $s=\sin\theta$: $s=\dfrac{-2\pm\sqrt{4+16}}8=\dfrac{-1\pm\sqrt5}4$. Since $0<\theta<\frac\pi2$, $s>0$, so $\sin\frac\pi{10}=\dfrac{\sqrt5-1}4$. $\square$ (This number is $\frac{1}{2\varphi}$, with $\varphi$ the golden ratio; it is why the regular pentagon is full of golden ratios.)

**25a.** $\tan(\alpha+\beta)=\dfrac{\sin\alpha\cos\beta+\cos\alpha\sin\beta}{\cos\alpha\cos\beta-\sin\alpha\sin\beta}$. Divide numerator and denominator by $\cos\alpha\cos\beta$ (nonzero, since the tangents are defined): $=\dfrac{\tan\alpha+\tan\beta}{1-\tan\alpha\tan\beta}$. $\square$

**25b.** Let $\alpha=\arctan\frac12$ and $\beta=\arctan\frac13$. Then $\tan(\alpha+\beta)=\dfrac{\frac12+\frac13}{1-\frac16}=\dfrac{5/6}{5/6}=1$.
Both $\alpha$ and $\beta$ lie in $\left(0,\frac\pi4\right)$ because $0<\frac13<\frac12<1=\tan\frac\pi4$ and $\tan$ is increasing there. So $0<\alpha+\beta<\frac\pi2$, and the only angle in that interval with tangent $1$ is $\frac\pi4$. $\square$

**26.** Area $F=\frac12ab\sin\gamma$, so $16F^2=4a^2b^2\sin^2\gamma=4a^2b^2(1-\cos\gamma)(1+\cos\gamma)=(2ab-2ab\cos\gamma)(2ab+2ab\cos\gamma)$.
Cosine rule: $2ab\cos\gamma=a^2+b^2-c^2$. So
$$
\begin{aligned}
16F^2&=\big(2ab-a^2-b^2+c^2\big)\big(2ab+a^2+b^2-c^2\big)=\big(c^2-(a-b)^2\big)\big((a+b)^2-c^2\big)\\
&=(c-a+b)(c+a-b)(a+b-c)(a+b+c).
\end{aligned}
$$
With $a+b+c=2s$: $c-a+b=2(s-a)$, $c+a-b=2(s-b)$, $a+b-c=2(s-c)$. So $16F^2=16\,s(s-a)(s-b)(s-c)$ and $F=\sqrt{s(s-a)(s-b)(s-c)}$. $\square$
