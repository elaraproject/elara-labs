## The basics of free-electron masers

At Project Elara, we are interested in making high-gain, all-weather masers for wireless power transmission. This necessitates extremely technologically-advanced laser design. One promising idea is to use a **free electron maser**.

Unlike regular lasers, free-electron masers do not operate on creating a population inversion in an ensemble of atoms, nor involve any sort of stimulated radiation. However, they produce light with the same characteristics as that of a regular laser, with high directionality, coherence (identical phase), and monochromaticity (light of one wavelength). In this guide, we explore the fundamental physics of free-electron masers.

### General design principles

A free-electron maser is composed of two parts: first, an electron source, and second, an undulator (also called a _wiggler_). Unlike "true" masers, which are fundamentally quantum devices, a free electron maser operates according to classical principles. The basic mode of operation is as follows: the electron source creates an electron beam by some method of accelerating electrons. The electron source does this by applying a high temperature by some means to a positively-charged cathode, leading to the emission of electrons via [thermionic emission](https://en.wikipedia.org/wiki/Thermionic_emission). Then, a negatively-charged anode attracts the electrons liberated from the material, with the resultant potential difference between the cathode and anode accelerating electrons to incredibly fast speeds (up to relativistic speeds, in fact). An opening in the anode allows the free electrons to exit the anode, becoming an **electron beam**. Then, the electron beam is passed into the undulator, whereby its interaction with a magnetic field causes the emission of microwave radiation. Much like a traditional laser, an undulator has mirrors on either end: perfectly reflective on one end, and partially-reflective on the other end (called the _output coupling mirror_ or alternatively just _output coupler_), which reflect the microwaves back and forth, allowing only a small portion of the microwaves through.


![A diagram of a general free-electron maser](https://ars.els-cdn.com/content/image/1-s2.0-S0030399212003118-gr1.jpg)

_Source: [ScienceDirect](https://www.sciencedirect.com/science/article/pii/S0030399212003118)_

#### Design of the electron source

The simplest type of electron source is a [vacuum tube](https://en.wikipedia.org/wiki/Vacuum_tube) (whose design we essentially just described), which relies purely on thermionic emission. However, one or more **linear accelerator(s)** are often preferred for making higher-energy electron beams, and can be used instead (with us applying necessary modifications to power its electron oscillator(s) with DC current from a thermocouple - more on that later). Another variation, often used for experimental physics, is to use a [photoinjector](https://en.wikipedia.org/wiki/Photoinjector), where a laser pulse is incident on the cathode, replacing the conventional heating element. Combinations of these devices can be used to make even more powerful electron beams. In all cases, one uses magnets to be able to collimate and confine the electron beam; the tighter the beam, the better the performance of the maser.

#### Design and working mechanism of the undulator

The undulator is where the "magic" of the maser happens. In highly-simplified terms, an undulator is a device that uses a particular arrangement of magnets to cause an electron beam to take a "wiggling" path, thus emitting radiation (like microwaves) as the electrons oscillate back and forth. However, that is too simple for our purposes: we need to take a closer look.

A free electron maser's undulator can be decomposed into several parts. The first part is the electron beam, which enters the undulator from the electron source, guided by bending magnets. The bending magnets are essentially just two magnets of opposite poles that create an effective magnetic field $\mathbf{B} = B_0 \hat z$. By the Lorentz force law, this leads to an acceleration of $\mathbf{a} = -(vB_0/m) \hat y$ on the electrons (where $e$ is the magnitude electron charge and is positive, and $m$ is the electron mass), leading the beam to curve into the undulator.

Inside the undulator, there are two rows of magnets, arranged in alternating order - the first magnet and the second magnet have oppositely-aligned poles, likewise for the third and fourth magnet, and so forth, as shown in the diagram below:

![[free-electron-laser.excalidraw.svg|600]]

This arrangement of magnets leads to a magnetic field that exerts a force perpendicular to the direction of the electron beam. More strictly speaking, since this magnetic field is produced by the permanent magnets, it is a _magnetostatic_ (time-independent) field - more on this later. This field can be approximated by[^15]:

$$
B_x = B_z = 0, \quad B_y = B_0 \sin k_0 x
$$

Where $B_0$ is the peak magnetic field amplitude, and $k_0 = 2\pi/L_u$ is the wavenumber (a common alternate notation is to use $\lambda_u$ instead of $L_u$, leading to the perhaps more familiar-looking formula $k_0 = 2\pi/\lambda_u$). One may write the peak amplitude $B_0$ in terms of a parameter $K$ (the "wiggler strength"), which is given by:

$$
B_0 = \dfrac{k_0 mc^2}{e} K
$$

From the Lorentz force equation for the magnetic field, $\mathbf{F} = q(\mathbf{v} \times \mathbf{B})$, where $\mathbf{F} = (m \ddot z) \hat z$, the path of the electron beam can be found to be[^15]:

$$
z = z_0 \sin (k_0 x)
$$

> **Note:** Indeed, this is not the fully relativistic Lorentz force, which is given by $\mathbf{F} = \dfrac{d}{dt}(\gamma m \mathbf{v})$, but we will use $\mathbf{F} \approx m\mathbf{a} = (m \ddot z) \hat z$ as a approximation.

Where $z_0$ is the maximum transverse displacement (displacement along the $z$ axis) of the electron beam as it travels in a sinusoidal path. Since the electrons in the electron beam are moving back and forth ("wiggling") as they travel through the magnetic fields of the undulator magnets, they emit **synchrotron radiation** in the form of electromagnetic waves, which have the associated fields:

$$
\begin{align}
\mathbf{E}_\text{rad.}(\mathbf{r}, t) &= \dfrac{1}{4\pi \varepsilon_0} \dfrac{e}{c^2 r}\mathbf{a}_\perp \\
\mathbf{B}_\text{rad.}(\mathbf{r}, t) &= \dfrac{1}{c} \hat r \times \mathbf{E}_\text{rad}(\mathbf{r}, t)
\end{align}
$$

Here, $r$ is the _retarded distance_ (in this context "retarded" means "delayed", as electromagnetic waves take time to travel), $e$ is the magnitude of the electron charge, and $\mathbf{a}_\perp$ is the _transverse acceleration_ of the electrons (we will derive these formulas later). Since the transverse acceleration is caused by the magnetostatic field $B_y$ of the undulator magnets (which creates an acceleration along the $z$ axis by the right-hand rule), $\mathbf{E}_\text{rad.}$ must therefore be (primarily) aligned along the $z$ axis, so we may write:

$$
E_{z \text{ (rad.)}} = -\dfrac{1}{4\pi \varepsilon_0} \dfrac{e}{c^2 r}\left(-\dfrac{e}{m}v_xB_y\right)
$$

As these electromagnetic waves travel outwards, they bounce off the mirrors at the end of the maser's optical cavity, and become reflected back and forth. Thus, at distances "far" from the electron beam (again, "far" is relative), the outward-radiating electric fields form **standing waves** in the cavity, of the form:

$$
\begin{gather}
\mathbf{E}_{m,n,j} = \mathbf{E}_0\sin \left(\dfrac{n\pi z}{L_z}\right) \sin \left(\dfrac{m\pi y}{L_y}\right) \sin \left(\dfrac{j\pi x}{L_x}\right) \cos \omega t,\\
\omega = \sqrt{\left(\frac{n\pi}{L_z}\right)^2 + \left(\frac{m\pi}{L_y}\right)^2 + \left(\frac{j\pi}{L_x}\right)^2}
\end{gather}
$$

Where $L_x, L_z$ and $L_y$ are the length, width, and height of the optical cavity, respectively, and $m, n, j$ are integers. By the superposition principle, the total field in the cavity is then given by the sum of the radiated waves from each of the electrons:

$$
\mathbf{E}_\text{cavity}(\mathbf{r},t) = \mathbf{E}_0 \sum_{n, m, j} \sin \left(\dfrac{n\pi z}{L_z}\right) \sin \left(\dfrac{m\pi y}{L_y}\right) \sin \left(\dfrac{j\pi x}{L_x}\right) \cos \omega t
$$

> **Note:** Something to be careful about is that the fields $\mathbf{E}_\text{rad.}, \mathbf{B}_\text{rad.}$ describe the _near-field_ behavior of the electromagnetic waves (synchrotron radiation) whereas $\mathbf{E}_\text{cavity}$ describes the _far-field_ behavior as the synchrotron radiation propagates "far away" from the wiggling electrons. Again, "far away" is a very relative term - since electrons are very very small compared to the size of the cavity, the $\mathbf{E}_\text{cavity}$ field is the dominant field for all but the shortest distances from the electron beam.

At this point, the standing waves are still **incoherent** (not in-phase), because while the possible modes of the electric field are restricted to those of integer $m, n, k$, each electron produces standing waves with a different phase, so the overall field $\mathbf{E}_\text{cavity}$ is not in-phase. However, with some time, the standing waves in the cavity build up and become strong enough to exert a force back on the electrons in the electron beam. As this force comes from the reflected radiation previously emitted by the electrons themselves, we may choose to call it the _recoil force_. This recoil force exerts a force _back_ on the electrons, causing some to oscillate more rapidly and some to oscillate rapidly, until the oscillations of all of the electrons are in-phase (or at least close to being all in-phase). Thus the electromagnetic waves become **coherent** (in-phase), and the electric fields of the propagating radiation becomes:

$$
\mathbf{E}(\mathbf{r}, t) = \mathbf{E}_0  \psi(x, z) \sin \left(\dfrac{2\pi x}{\lambda_r}\right) \cos \omega t 
$$

Where $\psi(x, z)$ is the **beam profile** that describes the beam cross-sectional "shape", and $\lambda_r$ is the the wavelength of the emitted radiation, which is given by[^20]:

$$
\lambda_r = \dfrac{L_u}{2\gamma^2} \left(1 + \dfrac{K^2}{2}\right) \approx \dfrac{1}{2} L_u \left(1 + \dfrac{K^2}{2}\right) \quad (\gamma \ll 1)
$$

In the ideal case, $\mathbf{E}(\mathbf{r}, t)$ becomes a perfect [Gaussian beam](https://en.wikipedia.org/wiki/Gaussian_beam), where the beam profile $\psi \sim e^{-(x^2 + z^2)}$ becomes a Gaussian. We show a plot of the intensity profile (time-averaged power density) of the electromagnetic field below:

![A plot of the intensity (energy density) profile of a Gaussian beam](https://upload.wikimedia.org/wikipedia/commons/f/ff/Gaussian_beam_w40mm_lambda30mm.png)

_Credit: [Wikipedia](https://commons.wikimedia.org/wiki/File:Gaussian_beam_w40mm_lambda30mm.png)_

The electromagnetic waves then pass out through the half-transparent mirror at one end of the free-electron maser, which creates the maser beam. Meanwhile, the electron beam is deflected away from the undulator via bending magnets (as shown previously); it is possible to recover some of the energy of the electron beam as the electrons decelerate[^4], before the slowed-down electrons are deposited onto a large block of dense, heat-resistant material, called a [beam dump](https://en.wikipedia.org/wiki/Beam_dump#Charged-particle_beam_dumps), bringing them to a final stop.

#### Derivation of the synchrotron radiation formula

The general expressions for the fields of a moving charge can be found by solving the (fully-relativistic) Maxwell equations, and are given by[^16]:

$$
\begin{align}
\mathbf{E}(\mathbf{r}, t) &= {\frac {q}{4\pi \varepsilon_{0}}}\left({\frac {(\mathbf{n}_s-{\boldsymbol {\beta }}_{s})}{\gamma ^{2}(1-\mathbf{n}_s\cdot {\boldsymbol {\beta }}_{s})^{3}|\mathbf {r} -\mathbf {r} _{s}|^{2}}}+{\frac {\mathbf{n}_s\times {\big (}(\mathbf{n}_s-{\boldsymbol {\beta }}_{s})\times {\dot {{\boldsymbol {\beta }}}_{s}}{\big )}}{c(1-\mathbf{n}_s\cdot {\boldsymbol {\beta }}_{s})^{3}|\mathbf {r} -\mathbf {r} _{s}|}}\right) \Bigg|_{t=t_{r}} \\
\mathbf{B}(\mathbf{r}, t) &= \frac{\mathbf{n}_s(t_{r})}{c}\times \mathbf {E} (\mathbf{r} ,t) \\
\boldsymbol {\beta }_s &= \mathbf{v}_s/c, \\
t_r &= t - |\mathbf{r} - \mathbf{r}_s|/c,\\
\mathbf{n}_s(t) &= \dfrac{\mathbf{r}-\mathbf{r}_s(t)}{|\mathbf{r}-\mathbf{r}_s(t)|}, \\
\gamma &= \dfrac{1}{\sqrt{1 - |\boldsymbol {\beta }_s|^2}}
\end{align}
$$

Where $\gamma$ is the Lorentz factor, $\mathbf{r}_s = \mathbf{r}_s(t)$ is the position of the charge, $\mathbf{n}_s$ is the unit vector pointing from $\mathbf{r}_s$ to $\mathbf{r}$, $\mathbf{v}_s$ is the velocity of the charge, and $t_r$ is the **retarded time** ("retarded" is an archaic term that means "delayed", since electromagnetic fields take time to propagate due to the finite speed of light). All quantities in the brackets for the electric field are evaluated at the retarded time $t_r$. In the case of synchrotron radiation, the acceleration of the charges is purely perpendicular to their velocity $\mathbf{v}_s$ (and thus also perpendicular to their position $\mathbf{r}_s$). This means that the charge has no acceleration in its _direction of motion_ and *only* acceleration _perpendicular_ to its direction of motion. 

We are specifically interested in the _radiated electromagnetic waves_ produced by the accelerated charge. Note how the first term in the expression for the electric field falls off as $\frac{1}{|\mathbf{r} - \mathbf{r}_s|^2}$ whereas the second term falls off as $\frac{1}{|\mathbf{r} - \mathbf{r}_s|}$, meaning that the first portion of the field decays quickly and thus cannot contribute to electromagnetic waves that radiate far from their source[^17] ("far" being a relative term considering that charged particles like electrons can be _tiny_). Thus, we can effectively ignore the first term when analyzing the radiation of accelerating charges, leaving us with:

$$
\mathbf{E}(\mathbf{r}, t)={\frac {q}{4\pi \varepsilon_{0}}}\left(\frac {\mathbf{n}_s\times {\big (}(\mathbf{n}_s-{\boldsymbol {\beta }}_{s})\times {\dot {{\boldsymbol {\beta }}}_{s}}{\big )}}{c(1-\mathbf{n}_s\cdot {\boldsymbol {\beta }}_{s})^{3}|\mathbf {r} -\mathbf {r} _{s}|}\right) \Bigg|_{t=t_{r}}
$$

We can clean up the notation by defining $r = |\mathbf{r}-\mathbf{r}_s(t_r)|$ and $\hat r = \mathbf{n}_s(t_r)$. This allows us to write a more elegant expression, as follows:

$$
\mathbf{E} = \dfrac{q}{4\pi \varepsilon_0} 
\dfrac{1}{r}\left(\dfrac{\hat r \times (\hat r - \boldsymbol{\beta}_s) \times \dot{\boldsymbol{\beta}}_s}{c(1 - \hat r \cdot \boldsymbol{\beta}_s)^3}\right)
$$

In the case of synchrotron radiation, since the charge is accelerating *transverse* (perpendicular) to its direction of motion, we thus denote the acceleration by $\mathbf{a} = \mathbf{a}_\perp$. And since $\boldsymbol{\beta} = \mathbf{v}_s/c$, we have $\dot{\boldsymbol{\beta}}_s = \dot{\mathbf{v}}/c = \mathbf{a}_\perp /c$. This allows us to write:

$$
\mathbf{E}(\mathbf{r}, t) = \dfrac{q}{4\pi \varepsilon_0} 
\dfrac{1}{c^2r}\left(\dfrac{\hat r \times (\hat r - \boldsymbol{\beta}_s) \times \mathbf{a}_\perp}{(1 - \hat r \cdot \boldsymbol{\beta}_s)^3}\right)
$$

Expanding out the cross product, we have $\hat r \times (\hat r - \boldsymbol{\beta}_s) = -\hat r \times \boldsymbol{\beta}_s$, so we have:

$$
\mathbf{E}(\mathbf{r}, t) = -\dfrac{q}{4\pi \varepsilon_0} 
\dfrac{1}{c^2r} \dfrac{(\hat r \times \boldsymbol{\beta}_s) \times \mathbf{a}_\perp}{(1 - \hat r \cdot \boldsymbol{\beta}_s)^3}
$$

Now, since $\hat r$ is the (retarded) unit vector, it must have unit magnitude. Assuming that we are examining the _transverse_ radiation of the field (most electromagnetic waves we encounter are transverse waves), then $\hat r$ and $\boldsymbol{\beta}_s$ are _nearly_ perpendicular, so $\hat r \cdot \boldsymbol{\beta}_s \approx 0$ and $(1 - \hat r \cdot \boldsymbol{\beta}_s)^3 \approx 1$. By the same reasoning, $|\hat r \times \boldsymbol{\beta}_s| \approx 1$, and thus we can simplify to[^18]:

$$
\mathbf{E}(\mathbf{r}, t) = -\dfrac{1}{4\pi \varepsilon_0} \dfrac{q}{c^2 r}\mathbf{a}_\perp, \quad \mathbf{B} = \dfrac{1}{c} \hat r \times \mathbf{E}(\mathbf{r}, t)
$$

Where it is important to note that this is shorthand for:

$$
\begin{gather}
\mathbf{E}(\mathbf{r}, t) = -\dfrac{1}{4\pi \varepsilon_0} \dfrac{q}{c^2 |\mathbf{r} - \mathbf{r}_s(t_r)|}\mathbf{a}_\perp(t_r), \\
t_r = t - \dfrac{|\mathbf{r} - \mathbf{r}_s|}{c}, \\
\hat r = \dfrac{\mathbf{r} - \mathbf{r}_s(t_r)}{|\mathbf{r} - \mathbf{r}_s(t_r)|}
\end{gather}
$$

(Here we must be careful to note that $\mathbf{a}_\perp(t_r)$ means the transverse acceleration _evaluated at_ the retarded time, that is, $\mathbf{a}_\perp$ is a _function_ of retarded time). An interactive visualization can be found [on Desmos](https://www.desmos.com/3d/lszl4fwhxo).

## Optical-powered maser technology

For our space-based application, we require that our lasers be **optically-powered**: that is, entirely (or near-entirely) powered purely by sunlight. This requires some modifications from the standard free-electron maser design:

- The power source for the electron source is sunlight, which heats the cathode, causing both thermionic and photoelectric emission of electrons
- All magnets must be permanent magnets, so that the maser does not need to use energy-hungry electromagnets that would need to be powered by an external source

In the following sections, we will give a basic discussion of the physics of an optically-powered free-electron maser that could work as a space-based power transmission system.

### Cathode temperature

We may calculate the cathode temperature caused by incident sunlight focused to a spot of area $A$ as follows. Let $I_\odot = \pu{1361 W/m^2}$ be the standard solar irradiance, $A_P$ be the primary mirror's surface area, and $I$ be the power density of the focused sunlight. Then, by the conservation of energy (total power is conserved and therefore constant) we have:

$$
P = I_\odot A_P = IA
$$

From which we find that $I = I_\odot A_P/A$. If we define $A = \pi a^2$, where $a$ is the radius of the spot that the sunlight is focused to, and $A_P = \pi R^2$, where $R$ is the radius of the primary mirror, then we have:

$$
I = I_\odot \left(\dfrac{R}{a}\right)^2
$$

Using the Stefan-Boltzmann law $I = \varepsilon \sigma T^4$, where $\varepsilon$ is the _emissivity_, $I$ is the power density, and $\sigma$ is the Sefan-Boltzmann constant. With a rearrangement, we have:

$$
T = \left(\dfrac{I}{\varepsilon \sigma}\right)^{1/4} = \left(\dfrac{I_\odot}{\varepsilon \sigma} \right)^{1/4} \sqrt{\dfrac{R}{a}}
$$

Letting $a = \pu{10 cm}$ and $R = \pu{1m}$, and assuming a tungsten plate (which has emissivity $\varepsilon = 0.27$[^11]), we find that the plate is heated to a temperature of approximately $\pu{1726 K}$, or about 1500 degrees Celsius - far more than enough to cause the [thermionic emission](https://en.wikipedia.org/wiki/Thermionic_emission) of electrons from a hot cathode. There are also other materials that are especially-suited for cathodes, such as [Barium oxide](https://pubchem.ncbi.nlm.nih.gov/compound/Barium-oxide), and can thus produce better-quality electron beams.

> **Note:** The theoretical maximum temperature is around 3,600K - this is due to the fact that this is very close to the melting point of tungsten, which is well-known for having the highest melting point of all known elements. While sunlight can be focused to higher temperatures, and [ultra-high temperature ceramics](https://en.wikipedia.org/wiki/Ultra-high_temperature_ceramic) can withstand higher temperatures of up to 4,300K, these materials do not seem(?) to generally be suitable for making cathodes, so 3,600K is a suitable approximation as a theoretical maximum.

### Photoelectric contribution

Since we are using sunlight as the heating source for the hot cathode, we gain some of the benefits of photoinjector, in that we additionally have the photoelectric effect to release additional electrons. We may calculate this contribution as follows.

To start with, the photoelectric effect, as the name suggests, is the phenomenon where electrons are released when light is shined on the cathode. The photoelectric effect contributes to the total electron beam's current by causing the emission of more electrons from the cathode, where they become free electrons and are accelerated by the potential difference between the anode and the cathode. The greater number of electrons thus increases the current, and thus, by $P = I \Delta V$, the power of the electron beam, which directly affects the power of the maser.

The **photocurrent density** $J$, which is the current produced by the cathode from photoelectric emission of light, depends on the number of photons incident on the cathode as well as a dimensionless parameter $\eta$, known as the **quantum efficiency** (more on that later). The precise expression is given by:

$$
J = -e \Phi_\gamma\eta
$$

Where $\Phi_\gamma$ is the **photon flux**, which is the number of photons incident on the cathode per unit area per second. We can derive an expression for $\Phi_\gamma$ as follows. First, the total number of incident photons can be found from dividing the energy of the incident light by the energy of a single photon. A single photon has an energy of $E_\gamma = \hbar \omega$ - this comes from the well-known Planck formula. The total power of the beam can be found from the light intensity $I_0$ and the surface area of the cathode $A$ that is exposed to the incident light by $P = I_0 A$ (more generally, $P = \mathbf{I} \cdot \mathbf{A} = I_0 A \cos \theta$ when we account for the fact that the incident light may be striking the cathode at an angle $\theta$). The total energy transmitted by the beam over time $t$ is found by simply integrating the power over time, so we have:

$$
\begin{align}
E_\text{total} &= \int_0^t P\, dt' = \int_0^t \mathbf{I} \cdot \mathbf{A}\, dt' \\
&= (\mathbf{I} \cdot \mathbf{A})t
\end{align}
$$

Thus. we find that the photon flux is therefore given by:

$$
\Phi_\gamma = \dfrac{\partial^2}{\partial A \partial t}\left(\dfrac{E_\text{total}}{E_\gamma}\right) = \dfrac{\partial^2}{\partial A \partial t}\left(\dfrac{(I_0 A \cos \theta) t}{\hbar \omega}\right) = \dfrac{I_0 \cos \theta}{\hbar \omega}
$$

However, we should note that this assumes a **monochromatic** (single-frequency) source of light, whereas most light (including sunlight) is a mix of different frequencies over a certain frequency range. For instance, sunlight is composed of a range of frequencies (corresponding to frequencies of 120-1000 THz, or equivalently, wavelengths from 300-2500nm[^9]), as shown by the plot below:

![[solar-spectrum.svg]]

Thus, to find the _average_ photon flux, we must take the average by performing the following integral, where $\omega_0$ is the _minimum frequency_ and $\Delta \omega$ is the _frequency range_ of the light:

$$
\begin{align}
\Phi_\gamma &= \dfrac{1}{\Delta \omega} \int_{\omega_0}^{\omega_0 + \Delta \omega}\dfrac{I_0 \cos \theta}{\hbar \omega} d\omega \\
&= \dfrac{I_0 \cos \theta}{\hbar\Delta \omega} \ln\left(\dfrac{\omega_0 + \Delta \omega}{\omega_0}\right) \\
&= \dfrac{I_0 \cos \theta}{\hbar\Delta \omega} \ln\left(1+\dfrac{\Delta \omega}{\omega_0}\right)
\end{align}
$$

And thus our expression for the current density becomes:

$$
J = -e\, \eta \left(\dfrac{I_0 \cos \theta}{\hbar\Delta \omega}\right) \ln\left(1 + \dfrac{\Delta \omega}{\omega_0}\right)
$$

The only undetermined factor now is the quantum efficiency $\eta$, which is likelihood of a single incident photon ejecting an electron. This value is typically a material property that is also dependent on wavelength, so technically speaking, $\eta$ should be written as $\eta(\omega)$. Calculating it theoretically is very difficult, so it is usually measured experimentally. We can obtain a ballpark figure by first determining the average wavelength of solar radiation, which we (loosely) term the **central wavelength** and denote it by $\lambda_c$. It can be found as follows:

$$
\rho(\lambda_c) = \dfrac{1}{\lambda_b - \lambda_a}\int_{\lambda_a}^{\lambda_b} \rho(\lambda) d\lambda, \quad \lambda_c = \rho^{-1}(\lambda_c)
$$

Where $\rho(\lambda)$ is the **spectral irradiance** of the solar spectrum (power density per wavelength of sunlight), which we just plotted above, and $\rho^{-1}$ is its inverse function. Evaluating the integral numerically corresponds to a central wavelength of about $\pu{393.7 nm}$ or a central frequency of about $\pu{761.5 THz}$, which we show in the Mathematica notebook in `notebooks/solar-spectrum.nb`. Experimental measurements of commerical photosensitive devices (used in cameras) at the central wavelength of $\lambda_c = \pu{393.7 nm}$ give values of quantum efficiencies between 45% to 66%[^21], so $\eta \approx 0.5$. Thus, after plugging in known values for sunlight (which has intensity of about $\pu{1361 W/m^2}$ and a frequency range starting at $\lambda_0 \approx \pu{300 nm}$ with $\Delta \lambda \approx \pu{2200 nm}$), and assuming normal incidence (so $\cos \theta = 1$), we have:

$$
\begin{align}
\omega_0 &= \dfrac{2\pi c}{\lambda_0} \approx \pu{6278.8 THz} \\
\Delta \omega &= \dfrac{2\pi c}{\Delta \lambda} \approx \pu{856.2 THz} \\
J & \approx I_0 \cdot \pu{0.113 A*m^{-2}} \\
&\approx\pu{154.4 A*m^{-2}}
\end{align}
$$

In everyday conditions, this does not result in a particularly high photocurrent - for a circular cathode of $\pu{3 cm}$ radius, the total photocurrent is only $\pu{0.43 A}$. However, what is important is that the photocurrent is _directly proportional_ to the light intensity. Thus, by increasing the light intensity (such as by focusing sunlight, say, to an area 10x smaller), then the total photocurrent increases linearly, leading to photocurrents of tens if not hundreds of amps for highly-concentrated sunlight, and contributing significantly to the power of the electron beam.

> **Note:** Of course, our result is an approximation, since the photocurrent does not linearly increase to infinity; a more sophisticated analysis would reveal that the photocurrent eventually reaches a saturation point, but that would involve sophisticated semiconductor physics that we'll not go into here.

### Maintaining a cathode-anode voltage

#### Option 1: Thermocouples

One idea is to use a thermocouple as the voltage source to maintain the potential difference between the anode and the cathode. The advantage is that a thermocouple involves no moving parts and has been used to power spacecraft (such as the Voyager space probes) for decades, using the decay heat of radioactive isotopes with a thermocouple to generate electricity. A thermocouple works by the Seebeck effect, where a potential difference (EMF) is induced across a material with a temperature difference acrosss its ends due to the [thermoelectric effect](https://en.wikipedia.org/wiki/Thermoelectric_effect). The EMF a thermocouple produces can be approximated by the equation:

$$
\Delta V = -S \Delta T
$$

where $S$ is the _Seebeck coefficient_ of a particular material, and $\Delta T$ is the temperature gradient (difference between the temperatures of the hot and cold sides of the thermocouple). The advantage of being in space is that the temperature in the vacuum of outer space is just $\pu{2.7 K}$, meaning that the temperature gradient can be in the thousands of kelvin.

If we assume a selenium thermocouple that is attached on one side to the hot tungsten cathode. Using our previous figure of $\pu{1726.72 K}$ for a hot tungsten cathode, and using the fact that the Seebeck coefficient of selenium is $\pu{895 \mu V/K}$[^2], we arrive at a figure of an EMF of around $\pu{1.5 V}$ - not substantial, but sufficient to power the electron beam, and definitely enough to accelerate the electrons to substantial velocities (remember: electrons have _tiny_ mass, so even a weak potential can cause a lot of acceleration to an electron!) With more specialized materials (specifically certain types of specialized semiconductors), we may be able to do better - for instance, high-temperature oxides (such as $\ce{CH3NH3PbI3(MAPbI3)}$) can have Seebeck coefficients up to $\pu{1693 \pm 146 \mu V \cdot K^{-1}}$[^8], which, combined with a tungsten cathode heated to $\pu{3600 K}$ with concentrated sunlight, may allow reaching an EMF up to $\pu{6V}$. Of course, we wouldn't have just one thermocouple; we'd want an array of thermocouples, which can then be able to produce an EMF somewhere in the range of $\pu{30V}$ to $\pu{100 V}$ (the low end is about the EMF of the thermocouples from the NASA Mars Perseverance rover[^12]).

#### Option 2: Electrets

Electrets are materials that have a permanent electrical polarization that gives them a permanent electric dipole moment. This means that electrets produce an electrostatic field, just as permanent magnets produce a magnetostatic field without needing a current source. In theory, if we make the anode and cathode out of electrets, this should mean that we can sustain a potential difference _without_ needing to resort to thermocouples or other power sources. Electrets have been demonstrated[^13] to maintain a potential difference of up to $\pu{1.618 kV}$ which should be well more than enough to create a successful electron beam. However, more familiarity with electrets are necessary before we can consider them as a workable option.

#### More exotic options

 In theory, we can choose to use a [radioisotope thermoelectric generator](https://en.wikipedia.org/wiki/Radioisotope_thermoelectric_generator) (RTG) instead for generating the potential difference without relying on any (onboard) electrical power source, or even more exotic devices such as [betavoltaic batteries](https://en.wikipedia.org/wiki/Betavoltaic_device) or [stirling radioisotope generators](https://en.wikipedia.org/wiki/Stirling_radioisotope_generator). These are not going to function forever, but can potentially work for 50+ years, or with better technology, perhaps more than a century.

### Output coupler

The output coupler is essentially a half-transparent mirror that allows some light (in our case, microwaves) to pass through, and is located on one of the ends of the maser. It is the output coupler that is responsible for creating the maser's beam. Thus, an output coupler is the classical example of a scattering problem for an electromagnetic wave through optical media. In less technical terms, it is the question of determining what fraction of the light (in our case, microwaves) incident on a material passes through that material. The solution is given by the classical [Fresnel equations](https://en.wikipedia.org/wiki/Fresnel_equations), which give the **transmittance** $T$ of light (the percentage of light that  passes from one medium to a second medium) as follows:[^14]

$$
T = 1 - \left|\dfrac{n_1 - n_2}{n_1 + n_2}\right|^2 = \dfrac{4n_1n_2}{(n_1 + n_2)^2}
$$

Where $n_1$ is the refractive index of the media the light _came from_, and $n_2$ is the refractive index of the material the light is _entering into_ (in our case, our light is in the form of microwaves).
In our case, since the interior of the free-electron maser is in vacuum (like everything else in the laser), we have $n_1 = 1$. Thus, our expression simplifies to:

$$
T = \dfrac{4n_2}{(1 + n_2)^2}
$$

Finding the roots of the expression (it can be done numerically) allows choosing a suitable material for the output coupler, based on a desired transmittance (again, this is the fraction of light/microwaves that is allowed to pass through). In practice, the output coupler will most likely require additional optics instead of being just a single mirror, probably including one or more lenses. However, as a start, we can use this relatively simple theoretical result.

> **Note:** The other limitation with this result is that it doesn't take into account the fact that the index of refraction is actually a _function of wavelength_, so technically-speaking, $n_2 = n_2(\lambda)$ where $\lambda$ is the wavelength of the incident radiation.

## Modelling techniques

In this section, we will discuss a general overview of the techniques to model the undulator. For our purposes, we consider free-electron masers that use only permanent magnets.

### A review of magnetic materials

The origins of ferromagnetism are quantum-mechanical in nature. They arise from the nonzero magnetic dipole moments of individual atoms within a magnetic material, which are caused by a combination of the effects of the orbital angular momentum and spin angular momentum of electrons within atoms. You do not need to understand what all of that means - the important point is that even in the *absence* of a magnetic field, ferromagnetic materials retain their magnetization, so they can be considered to have a **permanent magnetization**.

### Modelling permanent magnets

A permanent magnet generates a static magnetic field, as its magnetic field comes purely from its permanent magnetization, not from moving currents. Thus, the free current $\mathbf{J}_f$ is zero, and since the static regime is by definition time-independent, the Ampere-Maxwell law in matter must be modified to:

$$
\begin{align*}
\nabla \times \mathbf{H} &= \cancel{\mathbf{J}_f}^0 + \cancel{\dfrac{\partial \mathbf{D}}{\partial t}}^0 \\
&= 0
\end{align*}
$$

> **Note:** This is the explanation behind why permanent magnets can only form magnetostatic fields, which we mentioned earlier.

Since the $\mathbf{H}$ field now has zero curl, it is now a conservative field, which, from a theorem in vector calculus means that it can be written in terms of a potential, called the **magnetic scalar potential** $\psi_m$, by the expression:

$$
\mathbf{H} = -\nabla \psi_m
$$

The magnetic scalar potential $\psi$ satisfies the partial differential equation[^3]:

$$
\nabla \cdot (-\mu_0 \nabla \psi_m + \mathbf{M}) = 0
$$

The magnetization of a permanent magnet is approximately constant inside the magnet. This is because permanent magnet has an associated **remnant magnetic field** due to its permanent magnetization, and which is in general a material constant. The strength of this field is called the **residual induction** or **remanence**, denoted $B_r$, which is determined experimentally and usually specified by the magnet's manufacturer. One then finds the magnetic moment $\mathbf{m}$ from the remanence $B_r$ via[^1]:

$$
\mathbf{m} = \dfrac{1}{\mu_0} B_r V\hat{\mathbf{x}}
$$

Where $V$ is the volume of the magnet, which can be calculated from its geometry, and $\hat{\mathbf{x}}$ is the unit vector pointing along the **axis** of the magnet (which may not be a constant unit vector for curved magnets).

$$
\mathbf{M}_\text{interior} = \dfrac{d\mathbf{m}}{dV} = \dfrac{B_r}{\mu_0} \hat{\mathbf{x}}
$$

Outside the permanent magnet, the magnetization is zero, and thus the magnetization is in general a piecewise function:

$$
\mathbf{M} = \begin{cases}
\dfrac{B_r}{\mu_0} \hat{\mathbf{x}}, & \text{inside magnet} \\
0, & \text{outside magnet}
\end{cases}
$$

From there, one may impose the Dirichlet boundary condition that the magnetic scalar potential $\psi_m$ vanishes at infinity (or more realistically, in a numerical simulation, $\psi_m$ can be taken to vanish at the edge of a large sphere that approximates a large region of space[^3]). Usually, analytical solutions cannot be found, and numerical methods are necessary. We may then use a constitutive relation to find the magnetic field:

$$
\mathbf{B} = \mu_0 (\mathbf{H} + \mathbf{M}), \quad \mathbf{H} = -\nabla \psi_m
$$

Analytical solutions are quite hard to find, and in most cases, cannot be found. We will need to do numerical methods in general for precise modelling. However, we can use a simple theoretical mode as a first approximation: the **dipole model**.

### The dipole model

The dipole model is a very basic approximate model for the magnetic field in an undulator. It models permanent magnets as magnetic dipoles. This assumption is made by assuming that the separation $d$ between the magnets at the top and bottom of the undulator is large compared to the cross-sectional width of the magnets, so the magnets can be thought of as point-like.

Let us select a coordinate system where $y$ be the direction the magnets are pointing and $x$ be the direction of the particle beam. The undulator is composed of pairs of north-north and south-south facing magnets, arrayed along the $x$ axis: let us choose just a single pair to begin our analysis. Each pair is separated by distance $d$, where we let the electron beam be along $y = \frac{d}{2}$ and the two magnets be placed at $(0,0,0)$ and $(0,d,0)$ respectively.

Recall that the magnetic field of a single magnet with constant magnetization $\mathbf{m}$ could be approximated as a perfect dipole at distances "far" from the magnet, which has a magnetic field given by:

$$
\mathbf{B} = \dfrac{\mu_0}{4\pi} \left[\dfrac{3\mathbf{r}(\mathbf{m} \cdot \mathbf{r})}{r^5}- \dfrac{\mathbf{m}}{r^3}\right]
$$

The magnetic moments $\mathbf{m}$ of the pair of magnets are identical (both facing along either $y$ or $-y$, and of the same magnitude). We will consider a pair facing along $y$ to begin our analysis. Previously, we have already found that:

$$
\mathbf{m} = \dfrac{1}{\mu_0} B_r V\hat{\mathbf{y}}
$$

Where $B_r$ is the magnetic remanence (an intrinsic material property) of the magnet, and $V$ is the magnet's volume.

> **Note:** We adjusted the previously-derived formula $\mathbf{m} = \frac{1}{\mu_0} B_r V\hat{\mathbf{x}}$ since the magnetic fields and therefore magnetic moments of the magnets are aligned along $y$.

We now apply more simplifying assumptions: namely, that since the magnets are "far" from each other and from the electron beam, then the $1/r^5$ term drops off rapidly and can be effectively ignored. In addition, since the magnetic moment of the magnets are on the axis between the magnets (that is, along $y$, the direction), the magnetic field would be primarily concentrated along $y$ as well, so we can effectively ignore $B_x, B_z$. This leaves us with:

$$
\begin{align}
\mathbf{B} &= \dfrac{\mu_0}{4\pi} \left[\dfrac{3\mathbf{r}(\mathbf{m} \cdot \mathbf{r})}{r^5}- \dfrac{\mathbf{m}}{r^3}\right] \\
&\approx -\dfrac{\mu_0}{4\pi} \dfrac{\mathbf{m}}{r^3} \\
B_x = B_z \approx 0, &\quad  B_y \approx -\dfrac{\mu_0}{4\pi} \dfrac{\|\mathbf{m}\|}{(x^2 + y^2 + z^2)^\frac{3}{2}}
\end{align}
$$

Using this approximation, the magnetic fields of the upper magnet and lower magnets in the pair are therefore, respectively:

$$
\begin{align}
\mathbf{B}_{y,\text{ upper}} &= -\dfrac{\mu_0}{4\pi} \dfrac{\|\mathbf{m}\|}{(x^2 + z^2)^\frac{3}{2}} \\
\mathbf{B}_{y,\text{ lower}} &= -\dfrac{\mu_0}{4\pi} \dfrac{\|\mathbf{m}\|}{\left(x^2 + z^2 + \left(y - d\right)^2\right)^\frac{3}{2}}
\end{align}
$$

And by the superposition principle, their combined field is given by:

$$
B_y = -\dfrac{\mu_0}{4\pi} \|\mathbf{m}\| \left(\dfrac{1}{(x^2 + z^2)^\frac{3}{2}} + \dfrac{1}{\left(x^2 + z^2 + \left(y - d\right)^2\right)^\frac{3}{2}}\right)
$$

At $y = d/2$, which is the position of the electron beam, we therefore have:

$$
\begin{align}
B_y(x, d/2, z) &= -\dfrac{\mu_0}{4\pi} \|\mathbf{m}\| \left(\dfrac{1}{(x^2 + z^2)^\frac{3}{2}} + \dfrac{1}{\left(x^2 + z^2 + \left(- \frac{d}{2}\right)^2\right)^\frac{3}{2}}\right) \\
&= -\dfrac{\mu_0}{4\pi} \|\mathbf{m}\| \left(\dfrac{1}{(x^2 + z^2)^\frac{3}{2}} + \dfrac{1}{\left(x^2 + z^2 + \frac{d^2}{4}\right)^\frac{3}{2}}\right) \\
\end{align}
$$

We can now use the approximation that $d$ is very large compared to $x, z$, so we have:

$$
\dfrac{1}{\left(x^2 + z^2 + \frac{d^2}{4}\right)^\frac{3}{2}} \approx \dfrac{1}{\left(\frac{d^2}{4}\right)^{3/2}} = \dfrac{8}{d^3}
$$

And at $(0, d/2, z)$, that is, right between the two magnets, where the electron beam is located, we find that:

$$
B_y = -\dfrac{\mu_0}{4\pi}\|\mathbf{m}\| \left(\dfrac{1}{z^3} + \dfrac{8}{d^3}\right) 
$$

While this expression becomes infinite (and thus unphysical) at $z = 0$, showcasing the limitations of our model, we note that $1/z^3$ rapidly decays by the inverse cube of the distance, so even at a small (but nonzero) distance $z$ we have $1/z^3 \approx 0$. Therefore, we may approximate the ambient field as:

$$
\begin{align}
B_y &= -\dfrac{\mu_0}{4\pi}\|\mathbf{m}\| \left(\dfrac{1}{z^3} + \dfrac{8}{d^3}\right) \\
&\approx -\dfrac{\mu_0}{4\pi}\|\mathbf{m}\| \dfrac{8}{d^3} \\
&\approx -\dfrac{\mu_0}{2\pi d^3}\|\mathbf{m}\|
\end{align}
$$

Now using $\mathbf{m} = \dfrac{1}{\mu_0} B_r V\hat{\mathbf{y}}$, we obtain the ambient field strength between the magnets:

$$
\begin{align}
B_y &= -\dfrac{\mu_0}{2\pi d^3} \left(\dfrac{1}{\mu_0} B_r V\right) \\
&= -\dfrac{B_r V}{2\pi d^3}
\end{align}
$$

This yields field strengths of about 1/1000th of a Tesla - not ideal at all, at least for magnets of a small volume. However, recognize that this is only the case for large $d$, meaning that the paired magnets are far apart from each other. If the two magnets are brought close to each other, the dipole approximation breaks down; however, if we make the approximation of _small_ $d$, or at least where at least one dimension of the magnet's geometry is roughly equal to $d$, then we have $V \approx d^3$, giving us

$$
\begin{align}
B_y &= -\dfrac{B_r V}{2\pi d^3} \\
&\approx -\dfrac{B_r d^3}{2\pi d^3} \\
&\approx -\dfrac{B_r}{2\pi} \\
&\approx -\dfrac{1}{6} B_r
\end{align}
$$

From which we may obtain fairly high field strengths of $\pu{0.15T - 0.25T}$. Note that if one of the dimensions is greater than $\sqrt[3]{6} \approx 1.8$ times the separation distance $d$, then we have $B_y \approx -B_r$ and we can achieve very high field strengths of up to $\pu{1 T}$ or even more.


#### Basic experimental verification using a simple compass magnet

A rudimentary way to test the correctness of this theoretical result is with a simple toy experiment. Place a small compass needle near a pair of alternating neodynium magnets. Here $\vec m$ is the magnetic moment of the test (compass-style) magnet, which has a magnetic remanence $B_{r, c}$ approximately that of Earth's magnetic field ($25-65 \mathrm{\mu G}$, where $1\mu G = 1 \times 10^{-6}\text{ T}$). Thus its magnetic moment magnitude is:

$$
|\vec m| = \dfrac{1}{\mu_0} B_{r, c}V_{compass}
$$

Where $V_{compass}$ is the compass needle volume. Meanwhile, $\mathbf{B}_0$ is the ambient field generated by the primary magnet. We assume that the test magnet does not disturb the field to a great degree. The magnetic field $\mathbf{B}_m$ of each magnet would have the following magnitude, as per our calculations:

$$
B_m = \pm \dfrac{B_r V}{2\pi d^3}
$$

We would expect the magnetic field to vary sinusoidally along the alternating magnets, but as a first approximation, we can assume the magnetic field to vary linearly along the $x$ axis between them. Thus, the field in between the two magnets is then:

$$
B_0 = \dfrac{B_{m^+} - B_{m^-}}{2} = \dfrac{B_r V}{2\pi d^3}
$$

The magnitude of the force on the compass needle due to the ambient field is given by:

$$
F_B = \nabla(\vec m \cdot \mathbf{B}) = \dfrac{\partial}{\partial d} |\vec m| \dfrac{B_r V}{2\pi d^3} = -3|\vec m| \dfrac{B_r V}{2\pi d^2} = -3 |\vec m|B_0/d
$$

Assuming small oscillations, we can model this as simple harmonic oscillator, where $F = m_{mag}R\omega^2$, where $R$ is the length of the test magnet needle and $m_{mag}$ is its mass. Therefore, we have:

$$
\omega^2 = \dfrac{|F_B|}{m_{mag}R} = \dfrac{3|\vec m|B_0/d}{m_{mag}R} \Rightarrow \omega = \sqrt{\dfrac{3|\vec m|B_0}{m_{mag}Rd}}
$$

> **Note:** It should be pretty evident that this can yield at most an **order-of-magnitude** agreement with theory. An EMF meter and a much more sensitive experiment would be necessary for anything more precise.

### The free-electron maser equations

We can now put everything together to derive a set of equations to describe the free-electron maser. First, we write the magnetic field as the sum of a purely spatial component $\mathbf{B}_u$ (for the field of the undulator magnets) and a radiative component $\mathbf{B}_r$ (for the electromagnetic radiation emitted by the moving electrons). This does not require any approximations since we know that the magnets are permanent magnets, so $\mathbf{B}_u$ is necessarily time-independent. Thus we have:

$$
\mathbf{B} = \mathbf{B}_u(\mathbf{r}) + \mathbf{B}_r(\mathbf{r}, t)
$$

By contrast, since no static electric fields are present within the maser's optical cavity, so we consider the electric field to be a purely radiative field $\mathbf{E}_r$, that is:

$$
\mathbf{E} = \mathbf{E}_r(\mathbf{r}, t)
$$

The magnetostatic field $\mathbf{B}_u$ can be found via solving for the magnetic scalar potential $\psi_m$, from which $\mathbf{H}_u = -\nabla \psi_m$, and $\mathbf{B}_u = \mu_0 (\mathbf{H}_u + \mathbf{M})$. The radiative fields, however, require the time-dependent Maxwell's equations. From Faraday's law, we have:

$$
\begin{align}
\nabla \times \mathbf{E} &= \nabla \times \mathbf{E}_r \\
&= -\dfrac{\partial \mathbf{B}}{\partial t} \\
&= -\dfrac{\partial}{\partial t}\big(\cancel{\mathbf{B}_u(\mathbf{r})} + \mathbf{B}_r(\mathbf{r}, t)\big) \\
&= -\dfrac{\partial \mathbf{B}_r}{\partial t}
\end{align}
$$

Meanwhile, for Ampere's law, we have:

$$
\begin{align}
\nabla \times \mathbf{B} &= \nabla \times (\mathbf{B}_u + \mathbf{B}_r) \\
&= \mu_0 \mathbf{J} + \dfrac{1}{c^2}\dfrac{\partial \mathbf{E}}{\partial t}
\end{align}
$$

We can write out the current density term using the same current density term used to derive the radiation of a moving point charge from the [Liénard–Wiechert potentials](https://en.wikipedia.org/wiki/Li%C3%A9nard%E2%80%93Wiechert_potential)[^19]:

$$
\mathbf{J} = q\mathbf{v}_s \delta^3(\mathbf{r} - \mathbf{r}_s(t_r)), \quad t_r \equiv t_r = t - \dfrac{|\mathbf{r} - \mathbf{r}_s|}{c}
$$

Where we must be careful to use the _retarded time_ $t_r$ for both the position $\mathbf{r}_s$ and velocity $\mathbf{v}_s$ of the charge, that is, $\mathbf{r}_s = \mathbf{r}_s(t_s)$ and $\mathbf{v}_s = \mathbf{v}_s(t_s)$. Finally, we have the relativistically-correct version of the Lorentz force law:

$$
\begin{align}
\dfrac{d}{dt}(\gamma m\mathbf{v}_s) 
&= q(\mathbf{E} + \mathbf{v}_s \times \mathbf{B}) \\
&= q(\mathbf{E}_r + \mathbf{v}_s(t_r) \times (\mathbf{B}_u + \mathbf{B}_r))
\end{align}
$$

Collecting all our previous results, we obtain the following system of differential equations for the free-electron maser, where we solve for the trajectory $\mathbf{r}_s(t)$ of the electron beam, as well as the static ($\mathbf{B}_u$) and radiative ($\mathbf{E}_r, \mathbf{B}_r$) fields:

$$
\begin{gather*}
\nabla \cdot (-\mu_0 \nabla \psi_m + \mathbf{M}) = 0 \\
\mathbf{B}_u = \mu_0 (\mathbf{M} - \nabla \psi_m) \\
\nabla \times \mathbf{E}_r = -\dfrac{\partial \mathbf{B}_r}{\partial t} \\
\nabla \times (\mathbf{B}_u + \mathbf{B}_r) = -\mu_0 e \mathbf{v}_s(t_r) \delta^3(\mathbf{r} - \mathbf{r}_s(t_r)) + \dfrac{1}{c^2} \dfrac{\partial \mathbf{E}_r}{\partial t}\\
\dfrac{d}{dt}(\gamma m_e \mathbf{v}_s(t_r)) = -e(\mathbf{E}_r + \mathbf{v}_s(t_r) \times (\mathbf{B}_u + \mathbf{B}_r))
\end{gather*}
$$

Where $e$ is the magnitude (absolute value) of the electron charge, $\mathbf{B}_u$ is the undulator field, $\mathbf{B}_r$ is the radiative magnetic field, $\mathbf{E}_r$ is the radiative electric field, $m_e$ is the electron mass, $\mathbf{v}_s$ is the electron velocity, $t_r$ is the retarded time, and $\mathbf{M}, \psi_m$ are the magnetization and magnetic scalar potential of the undulator's (permanent) magnets. We may also impose certain boundary conditions - for instance, we know that one side of the cavity is a reflecting mirror, so we would want reflective (Neumann) boundary conditions on that side. Unlike our previous theoretical models, this is an _exact_ model that doesn't use many approximations, and well-suited for performing numerical simulations.

## Maser performance characteristics

In a free-electron maser, the aim is to maximize output power in the direction of the beam. To quantify this, we want the efficiency of the maser to be as high as possible, meaning the ratio of the output power to the input power should be maximized.

There are several major locations in the laser that are major possible sources of inefficiencies. The first is in the electron source. Assuming a basic single anode-cathode vacuum tube as the electron source, the power of the electron beam can be calculated through $P_b = I_b\Delta V$, where $I_b$ is the beam current and $\Delta V$ is the potential difference between the anode and cathode. The power of the incident light, $P_i$, will depend on the intensity $I_\ell$ of the light, and the cross-sectional area $A$ of the cathode. Thus, the efficiency $\Gamma_b$ of the electron source is given by:

$$
\Gamma_b = \dfrac{P_b}{P_i} = \dfrac{I_b\Delta V}{I_\ell A}
$$

We may now derive an expression for $I_b$. From Richardson's law of thermionic emission, we find that the current density $J_b$ of electrons emitted by a material heated to temperature $T$ takes the form[^5]: 

$$
J = A_G T^2 e^{-W/kT}
$$

Where $W$ is the work function of the material (again, for metals this is typically between 2-5 eV[^6]), $k_B$ is the Boltzmann constant, and $A_G$ is the Richardson constant, which is a material-dependent constant. The current $I_b$ is simply the integral over the cross-section of the beam, which, assuming the beam to have radius $R_b$, comes out to be:

$$
I_b = \int J\, dA = A_G \pi R_b^2\, T^2 e^{-W/k_BT}
$$

For large $T$, $T^2 e^{-W/kT} \approx T^2$, thus the current grows approximately quadratically with increasing temperature, and linearly with increasing surface area.

We will now head to the next source of inefficiencies, which is in the undulator itself. The losses due to the electron beam are expected to be compounded depending on the quality of the vacuum, but with a very good vacuum, we can assume no power loss between the beam as it exits the electron source and when it enters the undulator.

### Laser gain



## Free electron masers vs. gyrotrons

Gyrotrons are incredibly similar to free-electron masers.

[^1]: From [Physics Stack Exchange](https://physics.stackexchange.com/questions/189004/finding-the-magnetic-moment-of-a-permanent-magnet-to-calculate-the-torque-when-e)
[^2]: See [this answer](https://physics.stackexchange.com/questions/748197/field-lines-of-two-bar-magnets-becoming-one-bar-magnet)
[^3]: From the [mathematica tutorial](https://reference.wolfram.com/language/PDEModels/tutorial/Electromagnetics/MagnetostaticsForPermanentMagnets.html)
[^4]: See [here](https://apps.dtic.mil/sti/tr/pdf/ADA556259.pdf) (page 24)
[^5]: See the [Wikipedia article on Richardson's law](https://en.wikipedia.org/wiki/Thermionic_emission#Richardson's_law)
[^6]: See [here](http://hyperphysics.phy-astr.gsu.edu/hbase/Tables/photoelec.html)
[^7]: From [Los Alamos US Particle Accelerator School](https://uspas.fnal.gov/materials/09UNM/Day%202.pdf)
[^8]: See Ye et. al. (2017), https://pubs.rsc.org/en/content/articlehtml/2017/tc/c6tc04594d
[^9]: See Wang and Yu (2023), _Principles of photocatalysis_, _"Solar spectrum"_, https://www.sciencedirect.com/science/article/abs/pii/B9780443187865000020
[^10]: See [this Physics SE answer](https://physics.stackexchange.com/questions/340592/photoelectric-effect-how-can-number-of-electrons-emitted-be-independent-of-freq/340648#340648)
[^11]: From a [table of emissivity values](https://www.design1st.com/Design-Resource-Library/engineering_data/ThermalEmissivityValues.pdf)
[^12]: According to the [official NASA documentation](https://mars.nasa.gov/internal_resources/788/) on the RTG of the [Perseverance rover](https://science.nasa.gov/mission/mars-2020-perseverance/)
[^13]: According to [section 2.1 of this paper](https://advanced.onlinelibrary.wiley.com/doi/full/10.1002/advs.202203150)
[^14]: See the [associated Wikipedia article](https://en.wikipedia.org/wiki/Fresnel_equations#Power_(intensity)_reflection_and_transmission_coefficients). We assume normal incidence as the electromagnetic waves in a laser propagate almost exclusively parallel to the optical axis.
[^15]: From Jackson, _Classical Electrodynamics, 3rd ed._ Chapter 14.5 (pg. 677). Note that Jackson gives $x = a \sin k_0 z$, where $a$ is the maximum amplitude of oscillations. We have changed this to $z = z_0 \sin k_0 x$ due to our differing conventions for the coordinate system (our $x$ and $z$ are swapped compared to Jackson's coordinates) and we have replaced $a$ with $z_0$ to avoid confusion with the acceleration.
[^16]: See the [associated Wikipedia article](https://en.wikipedia.org/wiki/Li%C3%A9nard%E2%80%93Wiechert_potential#Field_computation)
[^17]: From the [Physics 222 course web notes](http://labman.phys.utk.edu/phys222core/modules/m6/production_of_em_waves.html) from the University of Tennessee, quote: _"The radiation field Erad produced by an accelerating point charge decreases as $1/r$, while the static Coulomb field decreases as $1/r^2$.  The static field decreases with distance much faster than the radiation field, and therefore the radiation field will dominate at large distance for accelerating charge distributions._
[^18]: Also from the [Physics 222 course web notes](http://labman.phys.utk.edu/phys222core/modules/m6/production_of_em_waves.html) from the University of Tennessee. They give the equation as $\mathbf{E}(\mathbf{r}, t) = -\frac{1}{4\pi \varepsilon_0} \frac{q}{c^2 r'} \mathbf{a}_\perp(t - r'/c)$, where $r'$ is the _"...distance at some earlier time, called the retarded time, when the radiation field was produced"_, which we write as $r' = |\mathbf{r}-\mathbf{r}_s(t)|$.
[^19]: From the [associated Wikipedia article](https://en.wikipedia.org/wiki/Li%C3%A9nard%E2%80%93Wiechert_potential#Derivation)
[^20]: From the CERN accelerator school's slides for an [Introduction to Free Electron Lasers](https://cas.web.cern.ch/sites/default/files/lectures/granada-2012/wolskifreeelectronlasers.pdf)
[^21]: From [Scientific Imaging](https://scientificimaging.com/knowledge-base/quantum-efficiency-spec-res/). Data taken from the interactive comparative QE curve plot at $\lambda = \pu{390 nm}$.