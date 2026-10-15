# C3 Problems: differential calculus I

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

No chain rule is needed anywhere in this set. "Bereken exact" means no decimal approximations; "bereken" means a GR or calculator may be used.

---

## Practice

**1.** Given $f(x)=x^3-2x$.
a. Compute the average rate of change of $f$ on $[1,3]$.
b. Simplify the difference quotient of $f$ on $[2,2+h]$ for $h\neq0$, and use it to find $f'(2)$.

**2.** Find the derivative from the definition $f'(x)=\lim\limits_{h\to0}\dfrac{f(x+h)-f(x)}{h}$.
a. $f(x)=x^2-3x$
b. $f(x)=\dfrac{1}{x+1}$

**3.** Differentiate. Use the product or quotient rule where it helps, and simplify.
a. $f(x)=4x^5-3x^2+7$
b. $f(x)=6\sqrt x$
c. $f(x)=\dfrac{2}{x^3}$
d. $f(x)=(x^2+1)(x^3-x)$: once with the product rule and once by expanding first
e. $f(x)=\dfrac{3x-1}{x+2}$
f. $f(x)=x^2\sqrt x$

**4.** Find the equation of the tangent line to the graph of $f(x)=x^3-3x$ at the point with $x=2$.

**5.** Given $f(x)=2x^3+3x^2-12x$. Bereken exact the extreme values of $f$ and say which is a maximum and which a minimum.

**6.** Given $f(x)=x^4-8x^2$.
a. On which intervals is $f$ increasing, and on which decreasing?
b. Give all extreme values.

**7.** Given $f(x)=x^4-6x^2+1$. Bereken exact the coordinates of the inflection points.

**8.** A particle moves along a line with position $s(t)=2t^3-15t^2+36t$ (metres, $t$ in seconds, $t\ge0$).
a. Find the velocity $v(t)$ and acceleration $a(t)$.
b. At which moments is the particle at rest?
c. At which moment is the acceleration zero? What is the velocity then?

**9.** Find the equation of the tangent line to the graph of $f(x)=x^2+1$ that is parallel to the line $y=4x+7$.

---

## CE-level

**10.** From a square sheet of cardboard of $30$ by $30$ cm, equal squares of side $x$ cm are cut from the four corners. The sides are folded up to make an open box.
a. Toon aan that the volume is $V(x)=x(30-2x)^2$, and give the domain.
b. Bereken exact for which $x$ the volume is maximal, and give the maximum volume.

**11.** Given $f(x)=\dfrac{x^2}{x-1}$.
a. Toon aan that $f'(x)=\dfrac{x^2-2x}{(x-1)^2}$.
b. Bereken exact the extreme values of $f$.

**12.** For every $p$ the function $f_p(x)=x^3-px$ is given.
a. For which values of $p$ does $f_p$ have two extreme values?
b. Toon aan that for all these $p$ the points of the graph where $f_p$ has an extreme value lie on the curve $y=-2x^3$.

**13.** Given $f(x)=x^2$ and the point $P(1,-3)$, which does not lie on the graph.
Bereken exact the equations of the tangent lines to the graph of $f$ that pass through $P$.

**14.** A farmer has $120$ m of fencing. He fences a rectangular field along a straight river; the side along the river needs no fence. Calculate the dimensions that give the largest area, and that area.

**15.** Given $f(x)=\sqrt x$ and the point $A(4,0)$. $P$ is a point on the graph of $f$.
Bereken exact the smallest possible distance $AP$.
*Hint:* minimise the square of the distance.

**16.** Given $f(x)=x^3-3x^2+4$.
a. Bereken exact the inflection point of the graph of $f$.
b. Give the equation of the tangent line at the inflection point (the *buigraaklijn*).
c. Toon aan that this tangent line has no other point in common with the graph.

**17.** Given $f(x)=\dfrac1x$ with $x>0$. The tangent line at the point with $x=a$ intersects the $x$-axis at $A$ and the $y$-axis at $B$.
Toon aan that the area of triangle $OAB$ is $2$ for every $a>0$.

**18.** A closed cylindrical can must contain $500$ cm³.
a. Toon aan that the surface area is $S(r)=2\pi r^2+\dfrac{1000}{r}$, with $r$ the radius in cm.
b. Calculate the radius that minimises $S$, in two decimals, and show that the height is then equal to the diameter.

**19.**
a. Show that $f(x)=x^4$ has $f''(0)=0$ but that $(0,0)$ is not an inflection point.
b. Given $g(x)=x^5-5x^4$. Bereken exact all inflection points of the graph of $g$.

**20.** Of a function $f$ it is known that $f'(x)=(x-1)^2(x+2)$. (The formula of $f$ itself is not given.)
a. For which $x$ does $f$ have an extreme value? Maximum or minimum?
b. For which $x$ does the graph of $f$ have an inflection point?

---

## Challenge

**21.**
a. Prove by induction on $n$, using only the product rule and $(x)'=1$, that $(x^n)'=nx^{n-1}$ for all positive integers $n$.
b. Use the quotient rule to prove that $(x^{-n})'=-nx^{-n-1}$ for all positive integers $n$.

**22.**
a. Prove from the definition that $\left(\dfrac1{g}\right)'=-\dfrac{g'}{g^2}$ (where $g(x)\neq0$ and $g$ is differentiable).
b. Use (a) and the product rule to derive the quotient rule.

**23.** Prove that the graph of every cubic function $f(x)=ax^3+bx^2+cx+d$ ($a\neq0$) is point-symmetric in its inflection point.

**24.** Given $f(x)=x^3$ and a number $a\neq0$.
a. Find the tangent line at $x=a$.
b. Prove that this tangent line meets the graph again at exactly one other point, with $x=-2a$.

**25.** Find $a$ and $b$ such that $f(x)=x^3+ax^2+bx$ has a local maximum at $x=-1$ and an inflection point at $x=1$. Verify that it really is a maximum.

**26.** Prove from the definition that $\left(\sqrt x\right)'=\dfrac1{2\sqrt x}$ for $x>0$.
*Hint:* multiply numerator and denominator of the difference quotient by $\sqrt{x+h}+\sqrt x$.
