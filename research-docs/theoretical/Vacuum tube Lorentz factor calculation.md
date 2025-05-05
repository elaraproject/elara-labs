When we discussed free electron masers (see [[Calculation of free electron maser parameters]] and [[Satellite maser engineering]]) we mentioned how one of the key components is the creation of an electron beam. In particular, the velocity of the electrons in the electron beam is pivotal to the radiative wavelength of the free electron maser.

In a vacuum tube, a potential difference $\Delta V$ is applied between a hot cathode and an anode, which has a small opening for the beam. Electrons leave the surface of the hot cathode (this is colloquially-referred to as "boiling off" or "evaporating" though that is not technically accurate), and given they are travelling through vacuum, they rapidly accelerate and head towards the anode.

Since the electrons are in near-vacuum, we can assume essentially no air resistance or friction. Thus, we can reasonably assume that the potential energy gained through the constant potential difference between the anode and cathode equals the kinetic energy of the electron right at the moment it reaches the anode. That is:

$$
\Delta K = \Delta U = e\Delta V
$$

Assuming that the electrons start at rest (this is not technically correct but we will assume it for now), this gives us $(\gamma - 1)m_ec^2 = e\Delta V$, or:

$$
\gamma = 1+\dfrac{e\Delta V}{m_e c^2} \approx 1 + \Delta V \cdot \pu{1.95695E-6} \approx 1
$$

Where we must use the relativistic expression for the kinetic energy, $K = (\gamma - 1)mc^2$, because the electron beam approaches the relativistic domain (for instance, for $\Delta V = \pu{100 V}$ the electrons move nearly $1/50$th the speed of light).