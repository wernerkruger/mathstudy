# C3 Solutions: differential calculus I

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

All derivatives, extremes and tangent lines were checked with SymPy.

---

## Practice

**1a.** $f(3)=27-6=21$, $f(1)=1-2=-1$. Average rate of change $\dfrac{21-(-1)}{3-1}=11$.

**1b.** $f(2)=4$. $f(2+h)=(2+h)^3-2(2+h)=8+12h+6h^2+h^3-4-2h=4+10h+6h^2+h^3$.
$\dfrac{f(2+h)-f(2)}{h}=\dfrac{10h+6h^2+h^3}{h}=10+6h+h^2$ for $h\neq0$. As $h\to0$ this tends to $10$, so $f'(2)=10$. (Check with the rules: $f'(x)=3x^2-2$, $f'(2)=10$.)

**2a.** $f(x+h)-f(x)=(x+h)^2-3(x+h)-x^2+3x=2xh+h^2-3h$.
Divide by $h$: $2x+h-3\to2x-3$. So $f'(x)=2x-3$.

**2b.** $\dfrac{1}{x+h+1}-\dfrac1{x+1}=\dfrac{(x+1)-(x+h+1)}{(x+h+1)(x+1)}=\dfrac{-h}{(x+h+1)(x+1)}$.
Divide by $h$: $\dfrac{-1}{(x+h+1)(x+1)}\to\dfrac{-1}{(x+1)^2}$. So $f'(x)=-\dfrac1{(x+1)^2}$.

**3a.** $f'(x)=20x^4-6x$.

**3b.** $6x^{1/2}\to3x^{-1/2}=\dfrac3{\sqrt x}$.

**3c.** $2x^{-3}\to-6x^{-4}=-\dfrac6{x^4}$.

**3d.** Product rule: $f'(x)=2x(x^3-x)+(x^2+1)(3x^2-1)=2x^4-2x^2+3x^4+2x^2-1=5x^4-1$.
Expanding first: $f(x)=x^5-x^3+x^3-x=x^5-x$, so $f'(x)=5x^4-1$. Same answer.

**3e.** $f'(x)=\dfrac{3(x+2)-(3x-1)\cdot1}{(x+2)^2}=\dfrac{7}{(x+2)^2}$.

**3f.** $x^2\sqrt x=x^{5/2}$, so $f'(x)=\tfrac52x^{3/2}=\tfrac52x\sqrt x$.

**4.** $f(2)=8-6=2$. $f'(x)=3x^2-3$, $f'(2)=9$. $y=9x+b$ through $(2,2)$: $b=2-18=-16$. **Tangent line:** $y=9x-16$.

**5.** $f'(x)=6x^2+6x-12=6(x+2)(x-1)$. Zeros $x=-2$ and $x=1$. The sign of $f'$ is $+,-,+$ (an upward parabola).
Maximum $f(-2)=-16+12+24=20$. Minimum $f(1)=2+3-12=-7$.

**6a.** $f'(x)=4x^3-16x=4x(x-2)(x+2)$. Zeros $-2,0,2$, each simple; for large $x$, $f'>0$. Signs: $-,+,-,+$.
Decreasing on $(-\infty,-2]$ and $[0,2]$; increasing on $[-2,0]$ and $[2,\infty)$.

**6b.** Minima $f(-2)=f(2)=16-32=-16$. Maximum $f(0)=0$.

**7.** $f'(x)=4x^3-12x$, $f''(x)=12x^2-12=12(x-1)(x+1)$. $f''$ changes sign at $x=-1$ (from $+$ to $-$) and at $x=1$ (from $-$ to $+$). $f(\pm1)=1-6+1=-4$.
**Inflection points:** $(-1,-4)$ and $(1,-4)$.

**8a.** $v(t)=s'(t)=6t^2-30t+36$, $a(t)=v'(t)=12t-30$.

**8b.** $v(t)=6(t^2-5t+6)=6(t-2)(t-3)=0$: at $t=2$ s and $t=3$ s.

**8c.** $a(t)=0\iff t=2.5$ s. Then $v(2.5)=6\cdot0.5\cdot(-0.5)=-1.5$ m/s. (This is the largest speed backwards: $v$ has its minimum where $v'=a=0$.)

**9.** Parallel means slope $4$: $f'(x)=2x=4$, so $x=2$, point $(2,5)$. $y=4x+b$ through $(2,5)$: $b=-3$. **Tangent line:** $y=4x-3$.

---

## CE-level

**10a.** After cutting, the base is a square of side $30-2x$ and the height is $x$. So $V=x(30-2x)^2$. We need $x>0$ and $30-2x>0$: domain $0<x<15$.

**10b.** Product rule: $V'(x)=1\cdot(30-2x)^2+x\cdot\big(-4(30-2x)\big)$. (For the derivative of $(30-2x)^2$, expand it to $900-120x+4x^2$: derivative $-120+8x=-4(30-2x)$.)
So $V'(x)=(30-2x)\big((30-2x)-4x\big)=(30-2x)(30-6x)$.
$V'(x)=0\iff x=15$ or $x=5$; only $x=5$ is in the domain. For $0<x<5$, both factors are positive: $V'>0$. For $5<x<15$: $30-2x>0$ and $30-6x<0$, so $V'<0$. Maximum at $x=5$.
**Maximum volume:** $V(5)=5\cdot20^2=2000$ cm³.

**11a.** Quotient rule: $f'(x)=\dfrac{2x(x-1)-x^2\cdot1}{(x-1)^2}=\dfrac{x^2-2x}{(x-1)^2}$.

**11b.** $f'(x)=0\iff x(x-2)=0\iff x=0$ or $x=2$. The denominator is positive (for $x\neq1$), so the sign of $f'$ is that of $x(x-2)$: $+$ for $x<0$, $-$ for $0<x<1$ and $1<x<2$, $+$ for $x>2$.
Maximum $f(0)=0$; minimum $f(2)=\dfrac41=4$.

**12a.** $f_p'(x)=3x^2-p$. Two extreme values need two zeros of $f_p'$ where the sign changes: $3x^2=p$ has two solutions iff $p>0$. (For $p=0$, $f_0'(x)=3x^2\ge0$ has one zero without a sign change; for $p<0$ no zeros.)
**Answer:** $p>0$.

**12b.** At an extreme, $3x^2=p$. Then $f_p(x)=x^3-px=x^3-3x^2\cdot x=-2x^3$. So the point $(x,f_p(x))$ lies on $y=-2x^3$. $\square$

**13.** Let the touching point be $(a,a^2)$. Slope $f'(a)=2a$. Tangent: $y=2a(x-a)+a^2=2ax-a^2$.
It passes through $P(1,-3)$: $-3=2a-a^2$, so $a^2-2a-3=0$, $(a-3)(a+1)=0$, $a=3$ or $a=-1$.
**Tangent lines:** $a=3$: $y=6x-9$; $a=-1$: $y=-2x-1$.

**14.** Let $x$ be the length of each of the two sides perpendicular to the river. The side parallel to the river is $120-2x$. Area $A(x)=x(120-2x)=120x-2x^2$, domain $0<x<60$.
$A'(x)=120-4x=0\iff x=30$; $A'$ changes from $+$ to $-$: maximum.
**Dimensions:** $30$ m by $60$ m (the 60 m side along the river). **Area:** $1800$ m².

**15.** $P=(x,\sqrt x)$ with $x\ge0$. $AP^2=d(x)=(x-4)^2+(\sqrt x)^2=x^2-7x+16$.
$d'(x)=2x-7=0\iff x=\frac72$; $d$ is an upward parabola, so this is the minimum. $d\left(\frac72\right)=\frac{49}4-\frac{49}2+16=\frac{15}4$.
Since the square root is increasing, the distance is smallest where its square is smallest.
**Smallest distance:** $\sqrt{\frac{15}4}=\tfrac12\sqrt{15}$.

**16a.** $f'(x)=3x^2-6x$, $f''(x)=6x-6$, which changes sign at $x=1$. $f(1)=1-3+4=2$. **Inflection point** $(1,2)$.

**16b.** $f'(1)=3-6=-3$. $y=-3x+b$ through $(1,2)$: $b=5$. **Buigraaklijn:** $y=-3x+5$.

**16c.** Intersect: $x^3-3x^2+4=-3x+5\iff x^3-3x^2+3x-1=0\iff(x-1)^3=0\iff x=1$. So the only common point is the inflection point itself. $\square$

**17.** $f(a)=\frac1a$, $f'(x)=-\frac1{x^2}$, $f'(a)=-\frac1{a^2}$. Tangent: $y=-\dfrac1{a^2}(x-a)+\dfrac1a=-\dfrac{x}{a^2}+\dfrac2a$.
$x=0$: $y=\frac2a$, so $B=\left(0,\frac2a\right)$. $y=0$: $x=2a$, so $A=(2a,0)$.
Area of the right triangle $OAB$: $\tfrac12\cdot2a\cdot\tfrac2a=2$, independent of $a$. $\square$

**18a.** Volume $\pi r^2h=500$, so $h=\dfrac{500}{\pi r^2}$. Surface: two discs and the side: $S=2\pi r^2+2\pi rh=2\pi r^2+2\pi r\cdot\dfrac{500}{\pi r^2}=2\pi r^2+\dfrac{1000}r$.

**18b.** $S'(r)=4\pi r-\dfrac{1000}{r^2}=0\iff r^3=\dfrac{250}\pi\iff r=\sqrt[3]{\dfrac{250}{\pi}}\approx4.30$ cm. For smaller $r$, $S'<0$; for larger $r$, $S'>0$: minimum.
Height: $h=\dfrac{500}{\pi r^2}=\dfrac{2\cdot250}{\pi r^2}=\dfrac{2\pi r^3}{\pi r^2}=2r$ (using $250=\pi r^3$). So the height equals the diameter, $\approx8.60$ cm.

**19a.** $f''(x)=12x^2$, so $f''(0)=0$. But $f''(x)>0$ for all $x\neq0$, so $f''$ does not change sign at $0$; the graph bends upwards on both sides. No inflection point (in fact $(0,0)$ is a minimum).

**19b.** $g'(x)=5x^4-20x^3$, $g''(x)=20x^3-60x^2=20x^2(x-3)$. Zeros $x=0$ and $x=3$. At $x=0$, $20x^2\ge0$ and $x-3<0$ on both sides: no sign change. At $x=3$, $g''$ changes from $-$ to $+$. $g(3)=243-405=-162$.
**Inflection point:** $(3,-162)$ only.

**20a.** $f'$ has zeros at $x=1$ and $x=-2$. Sign: $(x-1)^2\ge0$, so the sign of $f'$ is that of $x+2$ (except at $x=1$ where it is 0). At $x=-2$: from $-$ to $+$: **minimum**. At $x=1$: $f'$ is positive on both sides: **no extreme**.

**20b.** Expand: $f'(x)=(x^2-2x+1)(x+2)=x^3-3x+2$. So $f''(x)=3x^2-3=3(x-1)(x+1)$, which changes sign at $x=-1$ and $x=1$. Inflection points at $x=-1$ and $x=1$. (At $x=1$ the graph has a horizontal inflection point, *horizontaal buigpunt*.)

---

## Challenge

**21a.** *Base case* $n=1$: $(x^1)'=1=1\cdot x^0$.
*Step:* assume $(x^n)'=nx^{n-1}$. Then by the product rule
$(x^{n+1})'=(x^n\cdot x)'=nx^{n-1}\cdot x+x^n\cdot1=(n+1)x^n$.
So the formula holds for $n+1$. By induction it holds for all positive integers. $\square$

**21b.** $x^{-n}=\dfrac1{x^n}$. Quotient rule with numerator $1$ (derivative $0$):
$\left(\dfrac{1}{x^n}\right)'=\dfrac{0\cdot x^n-1\cdot nx^{n-1}}{x^{2n}}=-nx^{n-1-2n}=-nx^{-n-1}$. $\square$

**22a.** $\dfrac{1}{h}\left(\dfrac1{g(x+h)}-\dfrac1{g(x)}\right)=\dfrac{g(x)-g(x+h)}{h\,g(x+h)g(x)}=-\dfrac{g(x+h)-g(x)}{h}\cdot\dfrac{1}{g(x+h)g(x)}$.
As $h\to0$: the first factor tends to $g'(x)$; $g(x+h)\to g(x)$ because a differentiable function is continuous. So the limit is $-\dfrac{g'(x)}{g(x)^2}$. $\square$

**22b.** $\dfrac fg=f\cdot\dfrac1g$. Product rule and (a):
$\left(\dfrac fg\right)'=f'\cdot\dfrac1g+f\cdot\left(-\dfrac{g'}{g^2}\right)=\dfrac{f'g}{g^2}-\dfrac{fg'}{g^2}=\dfrac{f'g-fg'}{g^2}$. $\square$

**23.** $f''(x)=6ax+2b$, which is zero and changes sign at $x_0=-\dfrac{b}{3a}$ (since $a\neq0$). Point symmetry in $(x_0,f(x_0))$ means: $f(x_0+h)+f(x_0-h)=2f(x_0)$ for all $h$.
Compute $f(x_0+h)+f(x_0-h)$ term by term. Terms with odd powers of $h$ cancel:
- $a\big((x_0+h)^3+(x_0-h)^3\big)=a(2x_0^3+6x_0h^2)$
- $b\big((x_0+h)^2+(x_0-h)^2\big)=b(2x_0^2+2h^2)$
- $c\big((x_0+h)+(x_0-h)\big)=2cx_0$
- $d+d=2d$

Sum: $2(ax_0^3+bx_0^2+cx_0+d)+h^2(6ax_0+2b)=2f(x_0)+h^2\cdot f''(x_0)=2f(x_0)$, since $f''(x_0)=0$. $\square$

**24a.** $f'(a)=3a^2$, $f(a)=a^3$. Tangent: $y=3a^2(x-a)+a^3=3a^2x-2a^3$.

**24b.** Intersect: $x^3-3a^2x+2a^3=0$. We know $x=a$ is a double root (the line touches there), so $(x-a)^2=x^2-2ax+a^2$ is a factor. Division gives
$x^3-3a^2x+2a^3=(x-a)^2(x+2a)$. (Check: $(x^2-2ax+a^2)(x+2a)=x^3+2ax^2-2ax^2-4a^2x+a^2x+2a^3=x^3-3a^2x+2a^3$.)
So the other intersection is at $x=-2a$, which differs from $a$ because $a\neq0$. $\square$

**25.** $f'(x)=3x^2+2ax+b$, $f''(x)=6x+2a$.
Inflection point at $x=1$: $f''(1)=0\Rightarrow a=-3$. (Then $f''$ is linear with a sign change at 1.)
Extreme at $x=-1$: $f'(-1)=3-2a+b=3+6+b=0\Rightarrow b=-9$.
Check: $f'(x)=3x^2-6x-9=3(x-3)(x+1)$ changes from $+$ to $-$ at $x=-1$: a maximum. (Or $f''(-1)=-12<0$.)
**Answer:** $a=-3$, $b=-9$.

**26.**
$$
\frac{\sqrt{x+h}-\sqrt x}{h}=\frac{(\sqrt{x+h}-\sqrt x)(\sqrt{x+h}+\sqrt x)}{h(\sqrt{x+h}+\sqrt x)}=\frac{(x+h)-x}{h(\sqrt{x+h}+\sqrt x)}=\frac{1}{\sqrt{x+h}+\sqrt x}.
$$
As $h\to0$, $\sqrt{x+h}\to\sqrt x$, so the limit is $\dfrac1{2\sqrt x}$. $\square$
(This agrees with the power rule: $\left(x^{1/2}\right)'=\frac12x^{-1/2}$.)
