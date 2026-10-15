# C2 Solutions: exponential and logarithmic functions

[← Module README](README.md) · [Notes](notes.md) · [Problems](problems.md)

Exact answers were checked with SymPy and approximations with Python.

---

## Practice

**1.**
a. $2^6=64$, so ${}^2\!\log64=6$.
b. $5^{-3}=\frac1{125}$, so $-3$.
c. $8^{2/3}=(\sqrt[3]8)^2=4$, so $\frac23$. (Or: $8^y=4\Rightarrow2^{3y}=2^2\Rightarrow y=\frac23$.)
d. $\left(\frac13\right)^{-3}=27$, so $-3$.
e. $e^2\sqrt e=e^{5/2}$, so $\frac52$.
f. $0.0001=10^{-4}$, so $-4$.

**2a.** ${}^2\!\log12+{}^2\!\log6-{}^2\!\log9={}^2\!\log\dfrac{12\cdot6}{9}={}^2\!\log8=3$.

**2b.** $\ln x^3-\ln x^2+\ln\frac4x=\ln\dfrac{x^3\cdot4}{x^2\cdot x}=\ln4$. The expression is constant (for $x>0$).

**3a.** $81=3^4$, so $x+1=4$, $x=3$.
**3b.** $3^{2x}=3^{3(x-2)}$, so $2x=3x-6$, $x=6$.
**3c.** $x={}^7\!\log20=\dfrac{\log20}{\log7}\approx1.54$.
**3d.** $2^x\cdot5^x=10^x=10^{-2}$, so $x=-2$.

**4a.** Domain $2x-1>0$. By definition $2x-1=3^2=9$, so $x=5$ (in the domain).

**4b.** Domain: $x>0$ and $x>-2$, so $x>0$. Combine: ${}^2\!\log(x(x+2))=3$, so $x^2+2x=8$, $(x+4)(x-2)=0$. $x=-4$ is outside the domain. **Answer:** $x=2$.

**5.** $9^x=(3^x)^2$. Put $u=3^x>0$: $u^2-4u+3=0$, $(u-1)(u-3)=0$, $u=1$ or $u=3$. So $x=0$ or $x=1$.

**6a.** $g=\left(\frac12\right)^{1/30}\approx0.9772$.

**6b.** $\left(\frac12\right)^{t/30}=0.05\Rightarrow\frac t{30}={}^{0.5}\!\log0.05=\dfrac{\ln0.05}{\ln0.5}\Rightarrow t=30\cdot\dfrac{\ln0.05}{\ln0.5}\approx129.7$. About **130 years**.

**7a.** $1.06^T=2\Rightarrow T={}^{1.06}\!\log2=\dfrac{\ln2}{\ln1.06}\approx11.90$ years.

**7b.** Rule of 70: $\frac{70}6\approx11.67$ years. Close, but a little low, because $\ln(1.06)\approx 0.058$ is a bit smaller than $0.06$.

**8a.** $3\cdot2^{x+1}>0$, and it takes every positive value, so $f(x)>-12$. Asymptote $y=-12$, range $(-12,\infty)$.

**8b.** $3\cdot2^{x+1}=12\Rightarrow2^{x+1}=4=2^2\Rightarrow x=1$.

**8c.** $y=3\cdot2^{x+1}-12\Rightarrow2^{x+1}=\dfrac{y+12}3\Rightarrow x+1={}^2\!\log\dfrac{y+12}3\Rightarrow x={}^2\!\log\dfrac{y+12}{3}-1$.
So $f^{-1}(x)={}^2\!\log\dfrac{x+12}3-1$, domain $x>-12$.

**9a.** $3x=\ln7$, so $x=\tfrac13\ln7$.

**9b.** Domain $x>2$. $\ln(x(x-2))=\ln8\Rightarrow x^2-2x-8=0\Rightarrow(x-4)(x+2)=0$. **Answer:** $x=4$ ($x=-2$ is outside the domain).

**10.** $[\text H^+]=10^{-\text{pH}}$. Ratio $\dfrac{10^{-2.5}}{10^{-6.0}}=10^{3.5}\approx3162$. About 3200 times as large.

**11a.** $0.6^x=0.2\Rightarrow x={}^{0.6}\!\log0.2=\dfrac{\ln0.2}{\ln0.6}\approx3.15$. Since $0.6<1$, $0.6^x$ is decreasing, so $0.6^x>0.2$ for $x<\dfrac{\ln0.2}{\ln0.6}$, i.e. $x<3.15$ approximately.

**11b.** Domain $x>-2$. Equation: ${}^{1/3}\!\log(x+2)=-1\iff x+2=\left(\frac13\right)^{-1}=3\iff x=1$. ${}^{1/3}\!\log$ is decreasing, so the left side is smaller than $-1$ when $x+2>3$. **Answer:** $x>1$.

---

## CE-level

**12a.** $9-x^2>0\iff-3<x<3$.

**12b.** $\ln$ is one-to-one: $9-x^2=5$, $x^2=4$, $x=\pm2$ (both in the domain).

**12c.** $\ln$ is increasing: $9-x^2\ge8\iff x^2\le1\iff-1\le x\le1$. (Then automatically $9-x^2>0$.)

**12d.** For all $x$ in the domain, $9-x^2\le9$, with equality only at $x=0$. Since $\ln$ is increasing, $f(x)\le\ln9=\ln3^2=2\ln3$, and $f(0)=2\ln3$. So the maximum is $2\ln3$.

**13a.** Reflection in the line $x=2$ sends the point $(x,y)$ to $(4-x,y)$. So the reflected graph of $f$ is $y=f(4-x)=\ln(4-x)=g(x)$.

**13b.** $\ln x=\ln(4-x)\iff x=4-x\iff x=2$. Point $(2,\ln2)$. (As expected, it lies on the mirror line.)

**13c.** Domain $0<x<4$. $\ln(x(4-x))=\ln3\iff4x-x^2=3\iff x^2-4x+3=0\iff x=1$ or $x=3$. Both lie in the domain.

**14a.** $0.85^T=\frac12\Rightarrow T=\dfrac{\ln0.5}{\ln0.85}\approx4.27$ hours.

**14b.** $0.85^t=e^{t\ln0.85}$, so $-k=\ln0.85$, $k=-\ln0.85=\ln\frac{20}{17}\approx0.1625$.

**14c.** $12\cdot0.85^t=1\Rightarrow0.85^t=\frac1{12}\Rightarrow t=\dfrac{\ln(1/12)}{\ln0.85}=\dfrac{\ln12}{\ln(20/17)}\approx15.29$ hours. Since $C$ is decreasing, $C>1$ for $0\le t<15.29$. It works for about **15 hours and 17 minutes**.

**15a.** By change of base (any base $h$, say 10): ${}^a\!\log b\cdot{}^b\!\log c=\dfrac{\log b}{\log a}\cdot\dfrac{\log c}{\log b}=\dfrac{\log c}{\log a}={}^a\!\log c$. (We used $\log a\neq0$ and $\log b\neq0$, which holds since $a,b\neq1$.)

**15b.** Apply 15a repeatedly: the product collapses to ${}^2\!\log16=4$.

**16a.** $e^x(e^x-4)=0$. $e^x>0$, so $e^x=4$, $x=\ln4=2\ln2$.

**16b.** Put $u=e^x>0$: $u^2-4u-5=0$, $(u-5)(u+1)=0$, $u=5$. So $x=\ln5$.

**16c.** $e^x(e^x-4)<0\iff e^x-4<0$ (since $e^x>0$) $\iff e^x<4\iff x<\ln4$.

**17a.** Two machines: intensity $2I$. $L=10\log\dfrac{2I}{I_0}=10\log2+10\log\dfrac I{I_0}=10\log2+80\approx83.0$ dB.

**17b.** $n$ machines give $80+10\log n$ dB. $80+10\log n=100\Rightarrow\log n=2\Rightarrow n=100$ machines.

**18a.** $M=\frac23\log\frac E{E_0}\Rightarrow\log\frac E{E_0}=\frac32M\Rightarrow E=E_0\cdot10^{1.5M}$. Replacing $M$ by $M+1$ multiplies $E$ by $10^{1.5}$.

**18b.** Difference $1.4$: factor $10^{1.5\cdot1.4}=10^{2.1}\approx126$.

**19a.** Slope of the line: $\dfrac{4-1.5}{5-0}=0.5$. So $\log N=1.5+0.5t$ and
$N=10^{1.5}\cdot(10^{0.5})^t$. So $b=10^{1.5}=10\sqrt{10}\approx31.62$ and $g=\sqrt{10}\approx3.16$.

**19b.** $(\sqrt{10})^T=2\Rightarrow0.5T=\log2\Rightarrow T=2\log2=\log4\approx0.602$ hours $\approx36$ minutes.

---

## Challenge

**20.** ${}^2\!\log3>0$ because $3>1$. Suppose ${}^2\!\log3=\frac pq$ with positive integers $p,q$. Then $2^{p/q}=3$, so (raising to the power $q$) $2^p=3^q$. The left side is even (as $p\ge1$) and the right side is odd. Contradiction. So ${}^2\!\log3$ is irrational. $\square$

**21.** $31^{11}<32^{11}=2^{55}<2^{56}=(2^4)^{14}=16^{14}<17^{14}$. So $17^{14}$ is larger.

**22.** Domain $x>0$. Take $\log$ of both sides: $\log x\cdot\log x=\log100+\log x$. Put $u=\log x$: $u^2-u-2=0$, $(u-2)(u+1)=0$, $u=2$ or $u=-1$. So $x=100$ or $x=0.1$.
Check: $100^{2}=10\,000=100\cdot100$. $0.1^{-1}=10=100\cdot0.1$. Both correct.

**23a.** $x=2$: $4=4$. $x=4$: $16=16$.

**23b.** Let $h(x)=2^x-x^2$. $h(-1)=\frac12-1<0$ and $h(0)=1>0$. Both terms are continuous, so $h$ has a zero between $-1$ and $0$. With a calculator: $x\approx-0.77$ (more precisely $-0.7667$).

**23c.** *Negative $x$:* for $x<0$, $2^x$ is increasing and $x^2$ is decreasing, so $h$ is strictly increasing and has at most one zero there. *$x=0$:* $h(0)=1\neq0$.
*Positive $x$:* for $x>0$ the equation is equivalent (take $\ln$) to $x\ln2=2\ln x$, i.e. $k(x)=x\ln2-2\ln x=0$. A full proof uses calculus from stage D: $k'(x)=\ln2-\frac2x$, which is negative for $x<\frac2{\ln2}$ and positive after it. So $k$ first decreases and then increases, and has at most two zeros. We have found two ($x=2$ and $x=4$), so there are no more. In total there are exactly three solutions.

**24.** Domain $x>0$, $x\neq1$. Put $u={}^2\!\log x$ (so $u\neq0$). Then ${}^x\!\log2=\dfrac{1}{{}^2\!\log x}=\dfrac1u$. The equation becomes $u+\frac1u=\frac52$, i.e. $2u^2-5u+2=0$, $(2u-1)(u-2)=0$, so $u=2$ or $u=\frac12$.
**Answer:** $x=4$ or $x=\sqrt2$.

**25.** $\left(\frac12\right)^{t/5730}=0.30\Rightarrow t=5730\cdot\dfrac{\ln0.3}{\ln0.5}\approx9953$. About **9950 years**.
