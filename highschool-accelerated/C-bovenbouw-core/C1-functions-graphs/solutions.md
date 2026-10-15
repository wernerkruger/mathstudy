# C1 Solutions: functions, graphs and equations

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

All answers were checked with SymPy (exact algebra) and, for problem 23, with a numerical count.

---

## Practice

**1a.** Domain: $8-4x\ge0 \iff x\le 2$, so $D_f=(-\infty,2]$. As $x$ runs through $(-\infty, 2]$, $8-4x$ runs through all of $[0,\infty)$, so $\sqrt{8-4x}$ takes every value in $[0,\infty)$ and $f(x)=3-\sqrt{8-4x}$ takes every value in $(-\infty,3]$. $B_f=(-\infty,3]$.

**1b.** Domain: $x^2-9\neq0$, so $x\neq\pm3$.
Range: $x^2-9$ takes every value in $[-9,0)$ (for $-3<x<3$) and every value in $(0,\infty)$ (for $\lvert x\rvert >3$).
- If $u\in[-9,0)$ then $\frac1u\in(-\infty,-\frac19]$ (for example $u=-9$ gives $-\frac19$, and $u\to0^-$ gives $-\infty$).
- If $u\in(0,\infty)$ then $\frac1u\in(0,\infty)$.

So $B_g=(-\infty,-\tfrac19]\cup(0,\infty)$.

**2a.** $x\neq-1$.

**2b.** Vertical asymptote $x=-1$ (the denominator is $0$, the numerator is $-5 \neq 0$). Horizontal: $\dfrac{3x-2}{x+1}=\dfrac{3-2/x}{1+1/x}\to3$, so $y=3$.

**2c.** Write $g(x)=\dfrac{3(x+1)-5}{x+1}=3-\dfrac{5}{x+1}$. The fraction $\frac{5}{x+1}$ takes every value except $0$, so $g$ takes every value except $3$. $B_g=\mathbb R\setminus\{3\}$. (Problem 5 confirms this: the inverse is defined for every $x \neq 3$.)

**3.** Start with $y=\frac1x$.
1. Translate $(-1,0)$: $y=\dfrac{1}{x+1}$.
2. Stretch from the $x$-axis by factor $-3$ (stretch by 3 and reflect in the $x$-axis): $y=-\dfrac{3}{x+1}$.
3. Translate $(0,2)$: $y=2-\dfrac{3}{x+1}$.

(Steps 1 and 2 may be swapped, because one acts inside and the other outside. Step 3 must come after step 2.)

**4a.** Stretch from the $y$-axis by $\tfrac12$: replace $x$ by $x/\tfrac12=2x$: $y=\sqrt{2x}$. Then translate $(3,-1)$: replace $x$ by $x-3$ and subtract 1: $y=\sqrt{2(x-3)}-1=\sqrt{2x-6}-1$.

**4b.** Translate first: $y=\sqrt{x-3}-1$. Then stretch from the $y$-axis by $\tfrac12$: replace $x$ by $2x$: $y=\sqrt{2x-3}-1$. This is a different graph: it starts at $(1\tfrac12,-1)$ instead of $(3,-1)$. The horizontal stretch also halves the horizontal translation.

**5.** $y=\dfrac{3x-2}{x+1}\Rightarrow y(x+1)=3x-2\Rightarrow yx-3x=-2-y\Rightarrow x(y-3)=-(y+2)\Rightarrow x=\dfrac{y+2}{3-y}$.
So $g^{-1}(x)=\dfrac{x+2}{3-x}$, domain $x\neq3$.

**6a.** $3x+2=8$ or $3x+2=-8$, so $x=2$ or $x=-\tfrac{10}{3}$.

**6b.** $\lvert 3x+2\rvert\ge8\iff 3x+2\ge8$ or $3x+2\le-8$, so $x\ge2$ or $x\le-\tfrac{10}3$.

**7.** $x^3-x^2-6x=x(x^2-x-6)=x(x-3)(x+2)$. Zeros $-2,0,3$, each of multiplicity 1, so the sign changes at each zero. For large $x$ the product is positive. Signs from left to right: $-,+,-,+$.
**Answer:** $-2<x<0$ or $x>3$.

**8a.** Square: $2x+9=x^2+6x+9\Rightarrow x^2+4x=0\Rightarrow x=0$ or $x=-4$.
Check $x=-4$: $\sqrt1=1$ but $x+3=-1$. False.
Check $x=0$: $\sqrt9=3=0+3$. Correct.
**Answer:** $x=0$.

**8b.** Square: $x+5=x^2-2x+1\Rightarrow x^2-3x-4=0\Rightarrow x=4$ or $x=-1$.
Check $x=-1$: $\sqrt4=2$ but $x-1=-2$. False.
Check $x=4$: $\sqrt9=3=4-1$. Correct.
**Answer:** $x=4$.

**9a.** $2-\dfrac{1}{x^2+1}=\dfrac{2(x^2+1)-1}{x^2+1}=\dfrac{2x^2+1}{x^2+1}=f(x)$.

**9b.** As $x\to\pm\infty$, $\frac{1}{x^2+1}\to0$, so the horizontal asymptote is $y=2$.
Since $x^2+1\ge1$, we have $0<\frac{1}{x^2+1}\le1$ with the maximum $1$ at $x=0$, and every value in $(0,1]$ occurs. So $1\le f(x)<2$: $B_f=[1,2)$.

**10a.** $f(-x)=-x^3+x=-(x^3-x)=-f(x)$: odd.
**10b.** $g(-x)=x^4+x^2=g(x)$: even.
**10c.** $h(1)=2$, $h(-1)=0$. Since $h(-1)\neq h(1)$ it is not even; since $h(-1)\neq-h(1)$ it is not odd. Neither. (One counterexample is enough to disprove a "for all" statement.)
**10d.** $k(-x)=\dfrac{-x}{x^2+1}=-k(x)$: odd.

**11.** $f(x)=(x+3)^2-4$. On $x\le-3$, $f$ is decreasing and its range is $[-4,\infty)$.
$y=(x+3)^2-4\Rightarrow(x+3)^2=y+4\Rightarrow x+3=-\sqrt{y+4}$ (negative root, because $x+3\le0$).
So $f^{-1}(x)=-3-\sqrt{x+4}$, domain $x\ge-4$.

---

## CE-level

**12a.** Factorise: $x^2-9=(x-3)(x+3)$ and $x^2+x-6=(x+3)(x-2)$. The denominator is zero for $x=-3$ and $x=2$.
- At $x=2$ the numerator is $4-9=-5\neq0$: vertical asymptote $x=2$.
- At $x=-3$ the numerator is also zero, and for $x\neq-3$ we have $f(x)=\dfrac{x-3}{x-2}$, which is defined at $x=-3$. So $x=-3$ is not an asymptote.

So the graph has exactly one vertical asymptote, $x=2$.

**12b.** The hole is at $x=-3$, with $y$-value $\dfrac{-3-3}{-3-2}=\dfrac65$. The point $\left(-3,\tfrac65\right)$.

**12c.** Equal degrees, leading coefficients $1$ and $1$: $y=1$.

**13a.** $\sqrt{x+4}=\tfrac12x+2$. Square: $x+4=\tfrac14x^2+2x+4\Rightarrow\tfrac14x^2+x=0\Rightarrow x(\tfrac14x+1)=0\Rightarrow x=0$ or $x=-4$.
Check $x=0$: $2=2$. Check $x=-4$: $0=0$. Both are correct.

**13b.** The domain of $f$ is $x\ge-4$. On $(-4,0)$, test $x=-3$: $f(-3)=1$, $g(-3)=\tfrac12$, so $f>g$. For $x>0$, test $x=5$: $f(5)=3$, $g(5)=4.5$, so $f<g$. At $x=-4$ and $x=0$ they are equal.
**Answer:** $-4<x<0$.

**14.** $\dfrac1x=-x+p\Rightarrow 1=-x^2+px$ (multiply by $x\neq0$) $\Rightarrow x^2-px+1=0$. Note that $x=0$ is never a solution of this quadratic, so no solutions are lost or gained.
Discriminant $D=p^2-4$.
- $D>0\iff p<-2$ or $p>2$: two intersection points.
- $D=0\iff p=\pm2$: one point, where the line touches the hyperbola (at $x=\tfrac p2=\pm1$, the points $(1,1)$ and $(-1,-1)$).
- $D<0\iff -2<p<2$: no intersection points.

**15a.** $x-1\ge0$, so $D_f=[1,\infty)$. $\sqrt{x-1}$ takes all values in $[0,\infty)$, so $B_f=[1,\infty)$.

**15b.** $y=1+\sqrt{x-1}\Rightarrow\sqrt{x-1}=y-1$ (requires $y\ge1$) $\Rightarrow x-1=(y-1)^2\Rightarrow x=(y-1)^2+1$. Swap letters: $f^{-1}(x)=(x-1)^2+1$ with domain $B_f=[1,\infty)$.

**15c.** $f$ is increasing, so the intersection points lie on $y=x$ (notes §4). Solve $1+\sqrt{x-1}=x$: $\sqrt{x-1}=x-1$. Put $u=\sqrt{x-1}\ge0$: $u=u^2$, so $u=0$ or $u=1$, so $x=1$ or $x=2$. Both satisfy the original equation ($1+0=1$, $1+1=2$).
**Answer:** $(1,1)$ and $(2,2)$.

**16a.** $x-1+\dfrac{3}{x-2}=\dfrac{(x-1)(x-2)+3}{x-2}=\dfrac{x^2-3x+2+3}{x-2}=\dfrac{x^2-3x+5}{x-2}$.

**16b.** Vertical asymptote $x=2$ (numerator at 2 is $3\neq0$). As $x\to\pm\infty$, $\frac{3}{x-2}\to0$, so the graph approaches the oblique asymptote $y=x-1$. There is no horizontal asymptote.

**17.** $\dfrac{2x-1}{x+3}-1=\dfrac{2x-1-(x+3)}{x+3}=\dfrac{x-4}{x+3}\le0$.
Numerator zero at $x=4$, denominator zero at $x=-3$. Sign diagram: for $x<-3$ both factors negative, quotient $+$; for $-3<x<4$ quotient $-$; for $x>4$ quotient $+$.
**Answer:** $-3<x\le4$ ($x=-3$ excluded because the expression is undefined there, $x=4$ included because the quotient is $0$).

**18.** *Case 1:* $x^2-2x\ge0$, i.e. $x\le0$ or $x\ge2$. Then $x^2-2x=x$, $x^2-3x=0$, $x=0$ or $x=3$. Both satisfy the case condition.
*Case 2:* $0<x<2$. Then $-(x^2-2x)=x$, $x^2-x=0$, $x=0$ or $x=1$. Only $x=1$ satisfies $0<x<2$.
Check: $x=0$: $0=0$. $x=1$: $\lvert -1\rvert=1$. $x=3$: $\lvert 3\rvert=3$.
**Answer:** $x=0$, $x=1$ or $x=3$.

**19a.** $g(x)=f\left(\tfrac x3\right)-2=\tfrac{x^2}{9}+\tfrac{4x}{3}-2$.

**19b.** *From the formula:* the vertex of $ax^2+bx+c$ is at $x=-\frac{b}{2a}=-\dfrac{4/3}{2/9}=-6$, and $g(-6)=\tfrac{36}9-8-2=-6$. Vertex $(-6,-6)$.
*By transforming:* $f(x)=(x+2)^2-4$ has vertex $(-2,-4)$. Stretch from the $y$-axis by 3: $(-6,-4)$. Translate $(0,-2)$: $(-6,-6)$. Same answer.

**20a.** $N(t)=\dfrac{1200}{1+6/t}$ for $t>0$. As $t\to\infty$, $\frac6t\to0$, so $N\to1200$: in the long run about 1.2 million downloads.

**20b.** Since $t+6>0$ we may multiply without changing the inequality sign: $1200t>900(t+6)\iff300t>5400\iff t>18$. So after 18 weeks.

**20c.** $N(t+6)=1200t\Rightarrow Nt+6N=1200t\Rightarrow t(1200-N)=6N\Rightarrow t=\dfrac{6N}{1200-N}$, for $0\le N<1200$.

---

## Challenge

**21a.** $y=\dfrac{ax+b}{cx+d}\Rightarrow y(cx+d)=ax+b\Rightarrow x(cy-a)=b-dy\Rightarrow x=\dfrac{-dy+b}{cy-a}$.
So $f^{-1}(x)=\dfrac{-dx+b}{cx-a}$, for $x\neq\frac ac$.

**21b.** If $d=-a$, then $f^{-1}(x)=\dfrac{ax+b}{cx-a}=\dfrac{ax+b}{cx+d}=f(x)$. So $f$ is its own inverse. (Its graph is symmetric in the line $y=x$.)

**21c.** If $ad-bc=0$, then the numerator is a multiple of the denominator: for example with $c\neq0$, $ax+b=\frac ac(cx+d)+\left(b-\frac{ad}{c}\right)=\frac ac(cx+d)-\frac{ad-bc}{c}=\frac ac(cx+d)$. So $f(x)=\frac ac$ for all $x$ in the domain: a constant function, which is not one-to-one and has no inverse. In the computation of 21a, solving $x(cy-a)=b-dy$ fails.

**22.** Let $t=\sqrt{x-1}\ge0$, so $x=t^2+1$. Then
$x+3-4t=t^2-4t+4=(t-2)^2$ and $x+8-6t=t^2-6t+9=(t-3)^2$.
Since $\sqrt{u^2}=\lvert u\rvert$, the equation becomes $\lvert t-2\rvert+\lvert t-3\rvert=1$.
The left side is the sum of the distances from $t$ to $2$ and to $3$ on the number line. If $2\le t\le3$, that sum is exactly $3-2=1$. If $t<2$ or $t>3$, the sum is more than 1. So $2\le t\le3$, i.e. $4\le x-1\le9$:
**Answer:** $5\le x\le10$ (a whole interval of solutions). Check $x=7$: $t=\sqrt6$, $\lvert\sqrt6-2\rvert+\lvert\sqrt6-3\rvert=(\sqrt6-2)+(3-\sqrt6)=1$.

**23.** Let $h(x)=x^2-4\lvert x\rvert+3$. It is even, so first study $x\ge0$: $h(x)=x^2-4x+3=(x-1)(x-3)=(x-2)^2-1$. On $x\ge0$: $h(0)=3$, zeros at $1$ and $3$, minimum $-1$ at $x=2$.
So $g=\lvert h\rvert$ on $x\ge0$: decreases from $3$ to $0$ on $[0,1]$, increases to $1$ on $[1,2]$, decreases to $0$ on $[2,3]$, then increases to $\infty$. The graph for $x<0$ is the mirror image.

Count solutions of $g(x)=k$ for $x>0$ and double, then treat $x=0$ separately ($g(0)=3$).

| $k$ | solutions with $x>0$ | total |
|---|---|---|
| $k<0$ | 0 | 0 |
| $k=0$ | 2 ($x=1,3$) | 4 |
| $0<k<1$ | 4 (one in each of $(0,1),(1,2),(2,3),(3,\infty)$) | 8 |
| $k=1$ | 3 (one in $(0,1)$, $x=2$, one in $(3,\infty)$) | 6 |
| $1<k<3$ | 2 (one in $(0,1)$, one in $(3,\infty)$) | 4 |
| $k=3$ | 1 (in $(3,\infty)$, namely $x=4$) | 3 (including $x=0$) |
| $k>3$ | 1 (in $(3,\infty)$) | 2 |

**24a.** Suppose $(a,b)$ is on both graphs: $f(a)=b$ and $f^{-1}(a)=b$, so $f(b)=a$. If $a<b$, then since $f$ is strictly increasing, $f(a)<f(b)$, i.e. $b<a$: contradiction. If $a>b$, then $f(a)>f(b)$, i.e. $b>a$: contradiction. Hence $a=b$.

**24b.** $f(x)=1-x$. Then $f^{-1}(x)=1-x=f(x)$, so the graphs coincide and meet for example at $(0,1)$, which is not on $y=x$. (Another example: $f(x)=-x^3$ and $f^{-1}(x)=-\sqrt[3]{x}$ meet at $(1,-1)$.)

**25a.** Write $A=f(x)$ and $B=f\left(\frac1x\right)$. The given equation is $A+2B=3x$. Replacing $x$ by $\frac1x$ in the given equation gives $f\left(\frac1x\right)+2f(x)=\frac3x$, i.e. $2A+B=\frac3x$.
Multiply the second by 2: $4A+2B=\frac6x$. Subtract the first: $3A=\frac6x-3x$, so
$$f(x)=\frac2x-x.$$
Check: $f(x)+2f\left(\tfrac1x\right)=\tfrac2x-x+2\left(2x-\tfrac1x\right)=\tfrac2x-x+4x-\tfrac2x=3x$.

**25b.** $f(-x)=-\frac2x+x=-f(x)$, so $f$ is odd. Then $f(x)=f(-x)\iff f(x)=-f(x)\iff f(x)=0\iff\frac2x=x\iff x^2=2\iff x=\pm\sqrt2$.
