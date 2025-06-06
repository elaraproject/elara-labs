## The basics of free-electron masers

At Project Elara, we are interested in making high-gain, all-weather masers for wireless power transmission. This necessitates extremely technologically-advanced laser design. One promising idea is to use a **free electron maser**.

Unlike regular lasers, free-electron masers do not operate on creating a population inversion in an ensemble of atoms, nor involve any sort of stimulated radiation. However, they produce light with the same characteristics as that of a regular laser, with high directionality, coherence (identical phase), and monochromaticity (light of one wavelength). In this guide, we explore the fundamental physics of free-electron masers.

### General design principles

A free-electron maser is composed of two parts: first, an electron source, and second, an undulator (also called a _wiggler_). Unlike "true" masers, which are fundamentally quantum devices, a free electron maser operates according to classical principles. The basic mode of operation is as follows: the electron source creates an electron beam by some method of accelerating electrons. The electron source does this by applying a high temperature by some means to a positively-charged cathode, leading to the emission of electrons via [thermionic emission](https://en.wikipedia.org/wiki/Thermionic_emission). Then, a negatively-charged anode attracts the electrons liberated from the material, with the resultant potential difference between the cathode and anode accelerating electrons to incredibly fast speeds (up to relativistic speeds, in fact). An opening in the anode allows the free electrons to exit the anode, becoming an **electron beam**. Then, the electron beam is passed into the undulator, whereby its interaction with a magnetic field causes the emission of microwave radiation. Much like a traditional laser, an undulator has mirrors on either end: perfectly reflective on one end, and partially-reflective on the other end (called the _output coupling mirror_), amplifying the microwaves


![A diagram of a general free-electron maser](https://ars.els-cdn.com/content/image/1-s2.0-S0030399212003118-gr1.jpg)

_Source: [ScienceDirect](https://www.sciencedirect.com/science/article/pii/S0030399212003118)_

#### Design of the electron source

The simplest type of electron source is a [vacuum tube](https://en.wikipedia.org/wiki/Vacuum_tube) (whose design we essentially just described), which relies purely on thermionic emission. However, one or more **linear accelerator(s)** are often preferred for making higher-energy electron beams, and can be used instead (with us applying necessary modifications to power its electron oscillator(s) with DC current from a thermocouple - more on that later). Another variation, often used for experimental physics, is to use a [photoinjector](https://en.wikipedia.org/wiki/Photoinjector), where a laser pulse is incident on the cathode, replacing the conventional heating element. Combinations of these devices can be used to make even more powerful electron beams. In all cases, one uses magnets to be able to collimate and confine the electron beam; the tighter the beam, the better the performance of the maser.

#### Design and working mechanism of the undulator

As the electron beam exits from the electron source, it is directed by **bending magnets** into the undulator (which is the part that actually produces microwaves). The bending magnets are essentially just two magnets of opposite poles that create an effective magnetic field $\mathbf{B} = B_0 \hat z$. By the Lorentz force law, this leads to an acceleration of $\mathbf{a} = -(|e|vB_0/m) \hat y$ on the electrons (where $e$ is the electron charge, $m_e$ is the electron mass), leading the beam to curve into the undulator.

In an undulator, magnets are arranged in alternating order - the first magnet and the second magnet have oppositely-aligned poles, likewise for the third and fourth magnet, and so forth, as shown in the diagram below:

![[free-electron-laser.excalidraw|600]]

This arrangement of magnets leads to a magnetic field that exerts a force perpendicular to the direction of the electron beam.

Synchrotron radiation...

At the end, the electron beam is deflected away from the undulator via bending magnets (as shown above); it is possible to recover some of the energy of the electron beam as the electrons decelerate[^4]. Afterwards, the electrons are deposited onto a large block of dense, heat-resistant material, called a [beam dump](https://en.wikipedia.org/wiki/Beam_dump#Charged-particle_beam_dumps).

### Optical power

For our space-based application, we require that our lasers be **optically-powered**: that is, entirely (or near-entirely) powered purely by sunlight. This requires some modifications from the standard free-electron maser design:

- The power source for the electron source is sunlight, which heats the cathode

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

To start with, the photoelectric effect, as the name suggests, is the phenomenon where electrons are released from a cathode when light is shined on the cathode. From Einstein's classical derivation of the photoelectric effect, we find that the maximum kinetic energy of the emitted electrons is given by:

$$
K = h\nu - W
$$

Where $\nu$ is the frequency of the incident light, and $W$ is the work function, a material constant. Note that _technically_, sunlight is composed of a range of wavelengths (from 300-2500nm[^9]), as shown by the plot below:

![[solar-spectrum.svg]]

Therefore, $\nu$ should be replaced with $\nu_c$, the _central wavelength_, which can be found as follows:

$$
\rho(\nu_c) = \dfrac{1}{\nu_b - \nu_a}\int_{\nu_a}^{\nu_b} \rho(\nu) d\nu, \quad \nu_c = \rho^{-1}(\nu_c)
$$

Where $\rho(\nu)$ is the **spectral irradiance** of the solar spectrum (power density per frequency of sunlight), which well-studied in the literature, and $\rho^{-1}$ is its inverse function. Note that we can equivalently write the spectral irradiance in terms of wavelength, that is, $\rho(\lambda)$, since $\lambda = c/\nu$. This corresponds to a central wavelength of about $\pu{393.7 nm}$ or a central frequency of about $\pu{761.5 THz}$, which we show in the Mathematica notebook in `notebooks/solar-spectrum.nb`. In any case, using the modified equation $K = h\nu_c - W$, we may solve for the max velocity of the electrons. Since the electrons could well be relativistic, we use the relativistic kinetic energy $K = (\gamma - 1)m_e c^2$ where $\gamma$ is the Lorentz factor, $m_e$ is the electron mass, and $c$ is the speed of light, to obtain:

$$
\begin{gather*}
K = (\gamma-1) m_e c^2 = h\nu_c - W \\
\gamma = 1 + \dfrac{h\nu_c - W}{m_e c^2}, \quad \beta \equiv v/c = \sqrt{1 - \dfrac{1}{\gamma^2}}
\end{gather*}
$$

Now substituting in numerical values, since metals typically have work functions between 2-5 eV[^6] (we use the minimum, so $W = \pu{2 eV}$), using our previously-obtained figure of $\nu_c = \pu{761.5 THz}$, we find that:

$$
\begin{gather*}
\dfrac{h\nu_c - W}{m_e c^2} = 2.24894 \times 10^{-6}, \\
\beta \approx 0.0021, \quad v_e \approx  \pu{635,805 m/s}
\end{gather*}
$$

The current density of the electrons is given by:

$$
J(t) = -n v_e |e| = -n_t v_e|e| t
$$

Where $v$ is the electron velocity, $e$ is the electron charge, $n$ is the number of electrons per unit volume, and $n_t = n/t$. We may calculate $n$ from the cross-sectional area $A_b$ of the electron beam, the volume $V_b$ of the beam, and the mean solar intensity of $I_\odot = \pu{1361 W/m^2}$, to obtain[^10]:

$$
\dfrac{n}{t} = \dfrac{1}{V_b} \dfrac{I_\odot A_b}{hf_c} \quad \Rightarrow \quad J(t) = -\dfrac{|e|}{V_b}t \left(\dfrac{v_e I_\odot A_b}{hf_c}\right)
$$

(Note that here, $f_c = \nu_c$ is still the central frequency, we just changed notation to avoid confusion between $v_e$ and $\nu_c$). Note that $A_b$ and $V_b$ are dependent on the magnets that confine the electron beam. Assuming that the electron source is a vaccum tube of length $L$, and a beam radius of $r_b$, this expression simplifies to:

$$
\dfrac{A_b}{V_b} = \dfrac{\pi r_b^2}{\pi r_b^2 L} = \dfrac{1}{L} 
\quad \Rightarrow \quad
J(t) = -\dfrac{|e|}{L}t \left(\dfrac{v_e I_\odot }{hf_c}\right)
$$

If the vaccum tube were of length $L = \pu{30 cm}$, and the electron beam were of radius $r_b = \pu{1 mm}$, then the total current is given by:

$$
I(t) = \pi r_b^2 J(t) \approx (\pu{2877A/s})t
$$

> **Note:** Of course, our result is an approximation, since the current does not linearly increase to infinity; a more sophisticated analysis would reveal that the current $I(t)$ eventually reaches a saturation point.

In physical terms, the photoelectric effect contributes to the total electron beam's current by causing the emission of more electrons from the cathode, where they become free electrons and are accelerated by the potential difference between the anode and the cathode. The greater number of electrons thus increases the current, and thus, by $P = I \Delta V$, the power of the electron beam, and indirectly, the power of the maser beam.

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

Analytical solutions are quite hard to find, but let us attempt an analytical solution with some simplifying assumptions. We assume that the interior of the undulator is a perfect vacuum (which is a reasonable assumption given that it is a vacuum chamber anyway) and that the distance between adjacent magnets is (relatively) small.

### The free-electron maser equations

We can now put everything together to derive a set of equations to describe the free-electron maser. We start from the quasistatic approximation, where we assume that we can write the magnetic field in terms of a purely spatial component $\mathbf{B}_u$ (for the field of the undulator magnets), as well as a radiative component $\mathbf{B}_\text{rad}$, that is:

$$
\mathbf{B} = \mathbf{B}_u(\mathbf{r}) + \mathbf{B}_\text{rad}(\mathbf{r}, t)
$$

Using all our previous results, we obtain the following system of equations for the free-electron maser:

$$
\begin{gather*}
\nabla \cdot (-\mu_0 \nabla \psi_m + \mathbf{M}) = 0 \\
\mathbf{B}_u = -\nabla \psi_m \\
\nabla \times \mathbf{E} = -\dfrac{\partial \mathbf{B}_\text{rad}}{\partial t} \\
\nabla \times (\mathbf{B}_u + \mathbf{B}_\text{rad}) = -\mu_0 n \mathbf{v}_e e\, t + \dfrac{1}{c^2} \dfrac{\partial \mathbf{E}}{\partial t} \\
\dot{\mathbf{v}}_e = -(e/m_e)(\mathbf{E} + \mathbf{v}_e \times \mathbf{B})
\end{gather*}
$$

Where $e$ is the magnitude (absolute value) of the electron charge, $\mathbf{B}_u$ is the undulator field, $\mathbf{B}_\text{rad}$ is the radiative magnetic field, $\mathbf{E}$ is the electric field in the cavity, $n$ is the electron density, $m_e$ is the electron mass, $\mathbf{v}_e$ is the electron velocity, and $\mathbf{M}, \psi_m$ are the magnetization and magnetic scalar potential of the undulator (permanent) magnets.

## Maser performance characteristics

The power of the electron beam can be calculated through $P_b = I_b\Delta V$, where $I_b$ is the beam current and $\Delta V$ is the potential difference between the anode and cathode. We may now derive an expression for $I_b$. From Richardson's law of thermionic emission, we find that the current density $J_b$ of electrons emitted by a material heated to temperature $T$ takes the form[^5]: 

$$
J = A_G T^2 e^{-W/kT}
$$

Where $W$ is the work function of the material (again, for metals this is typically between 2-5 eV[^6]), $k_B$ is the Boltzmann constant, and $A_G$ is the Richardson constant, which is a material-dependent constant. The current $I_b$ is simply the integral over the cross-section of the beam, which, assuming the beam to have radius $R_b$, comes out to be:

$$
I_b = \int J\, dA = A_G \pi R_b^2\, T^2 e^{-W/k_BT}
$$

For large $T$, $T^2 e^{-W/kT} \approx T^2$, thus the current grows approximately quadratically with increasing temperature, and linearly with increasing surface area.

The maximum power output of the maser is then given by[^7]:

$$
P_\text{max} = \left(\dfrac{\Gamma_\text{out}}{\Gamma_\text{out} + \Gamma_\text{loss}}\right) \dfrac{P_b}{2.4 N_w}
$$

Calculate:

- Heat generated by maser

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