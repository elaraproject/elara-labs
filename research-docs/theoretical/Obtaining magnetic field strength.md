> **Note:** This experiment is probably not going to be done as it is far too imprecise. Using a true magnetic meter would probably be a far better idea.

For the free electron maser design (see [[Calculation of free electron maser parameters]]) we will need to use strong permanent magnets for the undulator because on the real (proposed) spacecraft we'd want as few external power sources as possible (so power-hungry electromagnets are out of the question). As of the time of writing, we only have neodynium magnets, some of which have unknown field strengths. This means that in our experimental testing we need to be able to measure the strength of these magnets in our possession.

Unfortunately, commercial magnetographers are rather expensive. But there is a relatively straightforward way to calculate the ambient field of a permanent magnet, just by invoking Faraday's law. We only need:

- A metal container (such as a baking dish) with a slit cut on top
- A multimeter
- A conducting metal loop of some kind (just has to be pure metal)
- Some electrical tape
- A string
- A counterweight
- A scale
- Some form of experimental stand, or at least a structure that a string can hang from
- The permanent magnet

We present the experimental apparatus here:

![[measurement-magnetic-field.excalidraw.svg|300]]

The theory behind it is straightforward. Recall that by Faraday's law, the potential difference due to a changing magnetic flux is given by:

$$
\mathcal{E} = -\dfrac{d\Phi_B}{dt}, \quad \Phi_B =\iint \mathbf{B} \cdot d\mathbf{A}
$$

Let $M$ be the mass of the permanent magnet, and $m$ be the mass of the counterweight. As the counterweight is released, the permanent magnet falls under gravity from height $z_0$. We assume that the inductance of the metal loop is minimal for our calculations. Since the area $A$ of the loop is constant, we have:

$$
\Phi_B = B_z(t) A
$$

Thus, we have:

$$
\mathcal{E} = -A\dfrac{dB_z}{dt}
$$

We can measure the EMF $\mathcal{E}$ on the multimeter, and thereby deduce $dB_z/dt$. We can numerically-integrate this to get $B_z$, but there is another way. The acceleration of the magnet is given by Atwood's formula:

$$
a = \dfrac{(M - m)g}{m+M}
$$

Thus, the total time of the fall is given by:

$$
z(t)=z_0-\dfrac{1}{2}at^2 = 0 \Rightarrow t=\sqrt{\dfrac{2z_0}{a}}
$$

Since a bar magnet is essentially a magnetic dipole, whose magnetic field decays $\propto 1/r^3$, we can obtain a linear approximation by Taylor expansion. Let $\mu$ be the proportionality constant, such that $B_z = \mu / z^3$, where we neglect $B_x$ and $B_y$ since the metal loop's size is not much bigger than the cross-sectional area of the magnet. The second-order Taylor expansion of $B_z$ about a point $z = z_0$ is given by:

$$
B_z \approx \mu \left[\dfrac{1}{z_0^3} - \dfrac{3(z-z_0)}{z_0^4} + \dfrac{6(z-z_0)^2}{z_0^5}\right]
$$

> **Note:** $\mu$ here is **not** the magnetic moment; it is just a proportionality constant, but the notation is chosen to be suggestive of the magnetic moment, as it is also associated with the dipole field.

Substituting in our expression for $z(t)$, we have:

$$
\begin{align*}
B_z &= \mu \bigg[\dfrac{1}{z_0^3} + \dfrac{3}{2}\dfrac{at^2}{z_0^4} + \dfrac{3}{2}\dfrac{(at^2)^2}{z_0^5}\bigg] \\
&= \dfrac{\mu}{z_0^3} \bigg[1 + \dfrac{3}{2}\dfrac{at^2}{z_0} + \dfrac{3}{2}\dfrac{(at^2)^2}{z_0^2}\bigg]
\end{align*}
$$

Taking the time derivative yields:

$$
\begin{align*}
\dfrac{dB_z}{dt}=\dfrac{\mu}{z_0^3} \bigg[1 + \dfrac{3a}{z_0} + \dfrac{6a^2 t^3}{z_0^2}\bigg]
\end{align*}
$$

Integrating this value from $t = 0$ to the point the magnet lands (at $t=\sqrt{\dfrac{2z_0}{a}}$) gives:

$$
\begin{align*}
\Delta B_z &= \int_0^\sqrt{2z_0/a} \dfrac{dB_z}{dt}\,dt \\
&= \int_0^\sqrt{2z_0/a}\dfrac{\mu}{z_0^3} \bigg[1 + \dfrac{3a}{z_0} + \dfrac{6a^2 t^3}{z_0^2}\bigg]dt \\
&= \dfrac{\mu}{z_0^3}\bigg[1 + \dfrac{3a}{z_0} + \dfrac{3a^2 t^4}{2z_0^2}\bigg]_0^\sqrt{2z_0/a} \\
&= \dfrac{\mu}{z_0^3}\bigg[1 + \dfrac{3a}{z_0} + \cancel{\dfrac{6a^2 z_0^2}{z_0^2 a^2}}^6\bigg] \\
&= \dfrac{\mu}{z_0^3}\bigg[7 + \dfrac{3a}{z_0}\bigg]
\end{align*}
$$

Meanwhile, from $\mathcal{E} = -A\dfrac{dB_z}{dt}$ we can rearrange to find that:

$$
|\Delta B_z| = \int_0^\sqrt{2z_0/a}\dfrac{\mathcal{E}}{A}\, dt = \dfrac{\mathcal{E}}{A}\sqrt{\dfrac{2z_0}{a}}
$$

Equating these expressions, we can find the proportionality constant $\mu$:

$$
\begin{gather*}
\dfrac{\mu}{z_0^3}\bigg[7 + \dfrac{3a}{z_0}\bigg] = \dfrac{\mathcal{E}}{A}\sqrt{\dfrac{2z_0}{a}} \\
\mu = \dfrac{\mathcal{E}}{A}z_0^{7/2}\sqrt{\dfrac{2}{a}}\bigg[7 + \dfrac{3a}{z_0}\bigg]^{-1}
\end{gather*}
$$

From which we can directly derive an expression for $B_z$, via:

$$
B_z = \dfrac{\mu}{z^3}
$$