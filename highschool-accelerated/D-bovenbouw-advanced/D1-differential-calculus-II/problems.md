# D1 Differential calculus II: problems

[← Module README](README.md) · [Notes](notes.md) · [Solutions](solutions.md)

Unless stated otherwise, angles are in radians and "exact" means no decimals: keep $\pi$, $e$, $\ln 2$, $\sqrt3$ and so on. The point values in the CE-level section, such as (4p), show how many points a similar question would be worth on the central exam (CE = *centraal examen*). Use them to judge how much work an answer needs.

## Practice

**1.** Differentiate (chain rule).

(a) $f(x) = (3x^2 - 5)^4$  
(b) $g(x) = \sqrt{1 + x^2}$  
(c) $h(x) = \dfrac{1}{(2x - 1)^3}$  
(d) $k(x) = \sin(3x^2)$

**2.** Differentiate. Simplify where possible.

(a) $f(x) = x^2 e^{-x}$  
(b) $g(x) = \ln(x^2 + 1)$  
(c) $h(x) = x\cdot 2^x$  
(d) $k(x) = {}^{3}\!\log(5x)$  
(e) $m(x) = \tan(2x)$  
(f) $n(x) = e^{\sin x}$

**3.** Given $f(x) = \dfrac{\ln x}{x}$ for $x > 0$.

(a) Show that $f'(x) = \dfrac{1 - \ln x}{x^2}$.  
(b) Calculate exactly the coordinates of the extreme of $f$, and show it is a maximum.  
(c) Use (b) to decide, without a calculator, which is larger: $e^\pi$ or $\pi^e$. (Hint: compare $f(e)$ and $f(\pi)$.)

**4.** Let $f(x) = \sin^2 x + \cos^2 x$. Without using the identity $\sin^2 x + \cos^2 x = 1$, compute $f'(x)$ with the chain rule. What does your answer prove about $f$? What is the value of the constant?

**5.** (a) Prove that $\left({}^{g}\!\log x\right)' = \dfrac{1}{x\ln g}$ for $g > 0$, $g \neq 1$.  
(b) Given $f(x) = {}^{2}\!\log(x^2 - 4)$. Calculate $f'(3)$ exactly.

**6.** The circle $x^2 + y^2 = 25$ passes through $P(3, -4)$.

(a) Use implicit differentiation to find the slope of the tangent line at $P$.  
(b) Show that this tangent line is perpendicular to the radius $OP$.

**7.** The *folium of Descartes* is the curve $x^3 + y^3 = 6xy$.

(a) Show that $(3, 3)$ lies on the curve and find the equation of the tangent line there.  
(b) Show that $\dfrac{dy}{dx} = \dfrac{x^2 - 2y}{2x - y^2}$.  
(c) Calculate exactly the point with $x > 0$ where the tangent line is horizontal.

**8.** A spherical balloon is inflated at a rate of $100$ cm³/s. How fast is its radius increasing at the moment the radius is $10$ cm? Give an exact answer. ($V = \tfrac43\pi r^3$.)

**9.** A ladder of $5$ m leans against a vertical wall. The foot slides away from the wall at $0.5$ m/s. How fast does the top slide down the wall when the foot is $3$ m from the wall?

**10.** (a) Find the inflection points of $f(x) = x^4 - 6x^2 + 1$.  
(b) Find the inflection point of $g(x) = x e^{-x}$.

**11.** The function $f(x) = x^3 + x + 1$ has an inverse function $f^{-1}$.

(a) Explain why $f$ has an inverse.  
(b) Calculate $(f^{-1})'(3)$ exactly.

## CE-level (*centraal-examenniveau*)

**12.** Given $f(x) = x^2\ln x$ for $x > 0$.

(a) Calculate exactly the coordinates of the extreme of $f$. (4p)  
(b) Calculate exactly the coordinates of the inflection point (*buigpunt*) of $f$. (4p)  
(c) *Toon aan* (show) that the tangent line at the inflection point intersects the $y$-axis at $\left(0, \dfrac{1}{2e^3}\right)$. (4p)

**13.** Given $f(x) = \sin x + \tfrac12\sin(2x)$ on $[0, 2\pi]$.

(a) Show that $f'(x) = (2\cos x - 1)(\cos x + 1)$. (3p)  
(b) Calculate exactly the maximum value of $f$. (4p)  
(c) Show that $f'(\pi) = 0$ but that $f$ has no extreme at $x = \pi$. (3p)

**14.** (a) *Toon aan dat de lijn $y = ex$ de grafiek van $f(x) = e^x$ raakt.* (3p)  
(b) The line $k$ passes through the origin and touches the graph of $g(x) = \ln x$. Calculate exactly the coordinates of the point of contact and give an equation of $k$. (4p)

**15.** For every $p$ the function $f_p(x) = x^4 + px^2$ is given.

(a) Show that for $p \ge 0$ the function $f_p$ has exactly one extreme. (3p)  
(b) For $p < 0$, $f_p$ has three extremes. Calculate the coordinates of the two minima in terms of $p$. (4p)  
(c) Show that for $p < 0$ the two minima lie on the curve $y = -x^4$. (3p)

**16.** For every $p \neq 0$ the function $f_p(x) = x e^{-px}$ is given.

(a) Calculate the coordinates of the extreme of $f_p$ in terms of $p$. (4p)  
(b) Show that all these extremes lie on one straight line through the origin, and give its equation. (3p)  
(c) Calculate $p$ for which the inflection point of $f_p$ lies at $x = 4$. (4p)

**17.** A cylindrical drinks can must hold $330$ cm³. The material cost is proportional to the total surface area (side, top and bottom).

(a) Show that the surface area is $S(r) = 2\pi r^2 + \dfrac{660}{r}$, where $r$ is the radius in cm. (3p)  
(b) Calculate the radius that makes $S$ minimal, in two decimals, and show that for this can the height equals the diameter. (5p)

**18.** Point $P$ moves along the parabola $y = x^2$. Point $A$ is $(0, 3)$. Calculate exactly the smallest possible distance $AP$ and the points $P$ where it is reached. (5p)

**19.** A water tank has the shape of an upside-down cone (point at the bottom) with height $4$ m and top radius $2$ m. Water flows in at $0.5$ m³/min.

(a) Show that when the water is $h$ m deep, the volume of water is $V = \dfrac{\pi h^3}{12}$. (3p)  
(b) Calculate exactly how fast the water level rises at the moment the water is $1$ m deep. (4p)

**20.** *Functieonderzoek.* Given $f(x) = \dfrac{x^2 + 3}{x - 1}$.

(a) Give the equations of all asymptotes of the graph of $f$. (4p)  
(b) Calculate exactly the coordinates of the extremes, and say which is a maximum and which a minimum. (5p)  
(c) Show that the graph has no inflection points. (3p)  
(d) Give the range (*bereik*) of $f$. (2p)

**21.** Curve $K$ is given by $x^2 - xy + y^2 = 3$.

(a) Show that $\dfrac{dy}{dx} = \dfrac{y - 2x}{2y - x}$. (3p)  
(b) Show that the tangent line to $K$ at the point $(2, 1)$ is vertical. (3p)  
(c) Calculate exactly the coordinates of the highest point of $K$. (4p)

**22.** Given $f(x) = x + 2\cos x$ on $[0, 2\pi]$.

(a) Calculate exactly the coordinates of the extremes (not the boundary extremes). (4p)  
(b) Show that the tangent line at the inflection point with $x = \tfrac{\pi}{2}$ passes through $(\pi, 0)$. (4p)

## Challenge

**23.** Let $p$ and $q$ be whole numbers with $q > 0$, and $y = x^{p/q}$ for $x > 0$. Use $y^q = x^p$ and implicit differentiation to prove that $y' = \dfrac{p}{q}x^{p/q - 1}$.

**24.** (a) Prove that $(\arctan x)' = \dfrac{1}{1 + x^2}$.  
(b) Let $h(x) = \arctan x + \arctan\dfrac1x$ for $x > 0$. Show that $h'(x) = 0$, and find the constant value of $h$.  
(c) What is $h(x)$ for $x < 0$?

**25.** Let $f(x) = x^x$ for $x > 0$.

(a) Find $f'(x)$.  
(b) Find the exact minimum value of $f$.  
(c) What happens to $f(x)$ as $x \to 0^+$? (Hint: what happens to $x\ln x$?)

**26.** For which base $a > 1$ does the graph of $y = a^x$ touch the line $y = x$? Find the point of contact. Then explain for which $a > 1$ the equation $a^x = x$ has zero, one or two solutions.

**27.** The *astroid* is the curve $x^{2/3} + y^{2/3} = 1$. Take a point $(x_0, y_0)$ on it with $x_0, y_0 > 0$.

(a) Show that the slope of the tangent line there is $-\left(\dfrac{y_0}{x_0}\right)^{1/3}$.  
(b) Show that the tangent line meets the $x$-axis at $(x_0^{1/3}, 0)$ and the $y$-axis at $(0, y_0^{1/3})$.  
(c) Conclude that the piece of every such tangent line between the axes has length $1$. (A ladder of length $1$ sliding down a wall sweeps out exactly this curve.)

**28.** Investigate, for every real $p$, how many solutions the equation $e^x = px$ has.

**29.** Let $f(x) = x^2\sin\dfrac1x$ for $x \neq 0$ and $f(0) = 0$.

(a) Using the definition of the derivative, show that $f'(0) = 0$.  
(b) Compute $f'(x)$ for $x \neq 0$.  
(c) Show that $f'(x)$ does not tend to a limit as $x \to 0$. So $f$ is differentiable everywhere, but $f'$ is not continuous.  
(d) Explain why this $f$ is exactly the kind of inner function that breaks the simple proof of the chain rule in notes section 3.
