A free-electron maser is a specific type of maser that is of interest because it is _tunable_ - it can emit different wavelengths, according to need. This gives us a lot of flexibility and means that we don't have to design for a fixed wavelength.

The free-electron maser consists of an electron beam (produced by something like a vacuum tube) and a specialized arrangement of magnets, called an [undulator](https://en.wikipedia.org/wiki/Undulator). In our case, concentrated sunlight can be used as the heat source for the vacuum tube. Electrons from the heated cathode escape from the surface and are attrached to the negatively-charged anode, traveling through the vacuum tube at nearly the speed of light. We can maintain the potential difference with either current from external solar panels (not recommended) or through current from a thermocouple (better option) attached to the hot cathode.

The relativistic electron beam from the vacuum tube then passes through the undulator, where the magnetic field causes the electrons to "wiggle" and emit [synchrotron radiation](https://en.wikipedia.org/wiki/Synchrotron_radiation) (which can be tuned to be in the microwave wavelengths). The undulator is enclosed by two mirrors on either end, creating an optical cavity (much like that of any other laser) that (long story short) creates a collimated beam of photons. We show this below:

![[free-electron-laser.excalidraw|800]]

The free-electron maser can be _precisely tuned_ to a desired wavelength, because it doesn't rely on atomic transitions - instead, it relies on the radiation emitted by the relativistic electrons, and the geometric and magnetic characteristics of the undulator. The undulator strength is often expressed with the dimensionless constant $K$, given by:

$$
K = \dfrac{eB_0 L_u}{2\pi m_e c} \approx 93.4\,B_0L_u
$$

Where $e$ is the elementary charge, $m_e$ is the electron mass, $c$ is the speed of light, and $B_0, L_u$ are the tunable parameters, corresponding to the magnetic field strength and the period of the magnets respectively. The emitted wavelength of the free-electron maser is given by:

$$
\lambda_r = \dfrac{L_u}{2\gamma^2}\left(1 + \dfrac{1}{2}K^2\right)
$$

Where $\gamma$ is the Lorentz factor of the electrons, and $L_u, K$ are the same as their definitions, given before. Since we can tune $\gamma, L_u, B_0$ by varying the geometry and structure of the laser, we can essentially create whichever wavelength $\lambda_r$ we want.