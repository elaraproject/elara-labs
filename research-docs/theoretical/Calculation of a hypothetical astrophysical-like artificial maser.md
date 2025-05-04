Consider a borad-spectrum light source with central wavelength $\lambda_0$ and wavelength range $\Delta \lambda$, incident on a Fabry–Pérot cavity containing water vapour. Let us calculate the conditions for lasing to occur in a manner analogous to [astrophysical masers](https://link.springer.com/referenceworkentry/10.1007/978-3-642-11274-4_946).

Microwave emission, at least in gases, are most commonly due to rotational transitions. This can be modelled through the [quantum rigid rotor](https://en.wikipedia.org/wiki/Rigid_rotor#Quantum_mechanical_linear_rigid_rotor), where the Hamiltonian is given by:

$$
\hat H = \dfrac{\hat L^2}{2I}
$$

Where $I = \dfrac{m_1 m_2}{m_1 + m_2}d^2$ is the moment of inertia of the molecule. One may find that a rotational transition yields energy levels given by:

$$
E_j = j(j+1)B, \quad B= \dfrac{h}{8 {\pi}^2 c I}
$$

The selection rules for rotational transitions indicate that transitions may _only_ occur between two levels of $\pm j$, that is, between adjacent energy levels. By the Boltzmann distribution, the population of the higher energy level $N_i$ versus the ground state $N_0$ is related by:

$$
\dfrac{N_i}{N_0} = (2j+1)\exp\left(-\dfrac{\hbar^2 j(j+1)}{2Ik_B T}\right)
$$

For lasing to occur, there must be a population inversion in the gas, which requires that $N_i/N_0 > 1$. The difficulty is to create and sustain this population inversion. One method of creating the population inversion is to bring the gas to a high temperature with some energy source, also called a _pump source_. If, however, the gas is confined within a (metal) cavity tuned to the transition frequency of the rotational transition, then the microwave-wavelength photons will be re-absorbed and re-emitted as they travel back and forth through the cavity, resulting in lasing (in theory).

The issue is that unfortunately, known astrophysical lasers have optical path lengths of around 4 stellar radii[^1], which, for the Sun, is about $\pu{2.782E6 km}$[^2]. For a Fabry-Perot cavity of about a meter is size, this corresponds to somehow making the cavity well enough for the average photon to undergo **several billion reflections** before exiting the cavity. This is clearly absurd. Therefore, we conclude, that replicating natural astrophysical masers is not possible.

[^1]: https://link.springer.com/referenceworkentry/10.1007/978-3-642-11274-4_946
[^2]: https://nssdc.gsfc.nasa.gov/planetary/factsheet/sunfact.html