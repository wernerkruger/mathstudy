# 3.4 Algebraic Topology — Problems

Work these alongside the [schedule](README.md). Full solutions are in [solutions.md](solutions.md); try each problem for at least 30 minutes before looking. You may quote standard results from Hatcher (Chapters 0–2, §§3.1–3.2) unless the problem asks you to prove them.

---

## Warm-up

**1.** Show that $S^n$ is simply connected for $n\ge2$. (Use van Kampen with two open sets.)

**2.** Prove there is no retraction $r:D^2\to S^1$, and deduce that every map $h:D^2\to D^2$ has a fixed point.

**3.** (a) Compute $\pi_1(T^2)$ and $\pi_1(S^1\vee S^1)$.
(b) Show that $T^2$ and $S^1\vee S^1$ are not homotopy equivalent, using $\pi_1$ only.

**4.** Use the Mayer–Vietoris sequence to compute $\tilde H_k(S^n)$ for all $k$ and $n\ge 1$, by induction on $n$.

**5.** Using the standard CW structure, compute $\chi(M_g)$ for the closed orientable surface of genus $g$ and $\chi(N_h)$ for the connected sum of $h$ projective planes. For which $g,h$ do the Euler characteristics agree? Show that even in those cases $M_g$ and $N_h$ are not homotopy equivalent, using $H_1$ (computed from the same CW structures).

**6.** Let $X$ be contractible. Show that $\tilde H_n(X)=0$ for all $n$ and that $\pi_1(X,x_0)=0$ for all $x_0$.

---

## Core

**7.** (a) Show that the quotient map $S^2\to\mathbb{RP}^2$ is a 2-sheeted covering, and deduce $\pi_1(\mathbb{RP}^2)\cong\mathbb{Z}/2$.
(b) Show that every map $\mathbb{RP}^2\to S^1$ is nullhomotopic.

**8.** The Klein bottle $K$ is the square $[0,1]^2$ with the identifications $(0,y)\sim(1,y)$ and $(x,0)\sim(1-x,1)$.
(a) Give a CW structure on $K$ and use it to show $\pi_1(K)\cong\langle a,b\mid abab^{-1}\rangle$.
(b) Show that $\pi_1(K)$ is non-abelian.
(c) Compute $H_1(K)$ from (a).

**9.** Compute $H_k(\mathbb{RP}^n;\mathbb{Z})$ for all $k$ using cellular homology. State clearly the degree of the relevant attaching maps and justify it.

**10.** (a) Show that the antipodal map $a:S^n\to S^n$ has degree $(-1)^{n+1}$.
(b) Prove the hairy ball theorem: $S^n$ admits a nowhere-vanishing continuous tangent vector field if and only if $n$ is odd.

**11.** Prove Brouwer's fixed point theorem for $D^n$, $n\ge1$, using homology.

**12.** Describe all connected 2-sheeted covering spaces of $X=S^1\vee S^1$ up to isomorphism. For each, identify $p_*\pi_1$ as a subgroup of $F_2=\langle a,b\rangle$ and say whether the cover is normal.

**13.** Let $m\ge2$ and $q$ be coprime to $m$. Let $\mathbb{Z}/m$ act on $S^3\subset\mathbb{C}^2$ by $k\cdot(z,w)=(\zeta^k z,\zeta^{kq}w)$ with $\zeta=e^{2\pi i/m}$. Show that this is a covering space action and that $L(m,q)=S^3/(\mathbb{Z}/m)$ has $\pi_1\cong\mathbb{Z}/m$.

**14.** Use Mayer–Vietoris to compute $H_*(K)$ for the Klein bottle $K$, viewing $K$ as the union of two Möbius bands glued along their boundaries.

**15.** Show that if $\mathbb{R}^m$ and $\mathbb{R}^n$ are homeomorphic then $m=n$. (Use local homology.)

---

## Qualifying-exam level

**16.** Let $A\subseteq X$ be a retract of $X$, with retraction $r$ and inclusion $i$.
(a) Show $i_*:H_n(A)\to H_n(X)$ is injective and $H_n(X)\cong H_n(A)\oplus H_n(X,A)$.
(b) Deduce that the Möbius band $M$ does not retract onto its boundary circle.

**17.** (a) Show that every map $f:S^2\to T^2$ is nullhomotopic.
(b) Construct a map $g:T^2\to S^2$ that induces an isomorphism on $H_2$.
(c) Deduce that for any maps $f:S^2\to T^2$ and $g:T^2\to S^2$, the composite $g\circ f:S^2\to S^2$ has degree $0$.

**18.** Using the cup product structure of $H^*(\mathbb{CP}^2;\mathbb{Z})\cong\mathbb{Z}[x]/(x^3)$, $|x|=2$, show that $\mathbb{CP}^2$ and $S^2\vee S^4$ have isomorphic homology groups but are not homotopy equivalent.

**19.** (a) Show that a connected covering space of a connected graph is a graph, and deduce that every subgroup of a free group is free.
(b) Let $H\le F_n$ have finite index $k$. Show that $H$ is free of rank $k(n-1)+1$.
(c) Deduce that $F_2$ contains a subgroup isomorphic to $F_3$.

**20.** Let $f:S^n\to S^n$ be a map. Show:
(a) if $f$ has no fixed point, then $\deg f=(-1)^{n+1}$;
(b) if $f(x)\ne -x$ for all $x$, then $\deg f=1$;
(c) if $n$ is even, then for every map $f:S^n\to S^n$ there is $x$ with $f(x)=x$ or $f(x)=-x$. Deduce that every map $\mathbb{RP}^{2k}\to\mathbb{RP}^{2k}$ has a fixed point (you may use that a map $\mathbb{RP}^n\to\mathbb{RP}^n$, $n\ge2$, lifts to a map $S^n\to S^n$).

**21.** Show that there is no map $g:S^2\to S^1$ with $g(-x)=-g(x)$ for all $x$. Deduce the Borsuk–Ulam theorem for $n=2$: every map $f:S^2\to\mathbb{R}^2$ has some $x$ with $f(x)=f(-x)$.
