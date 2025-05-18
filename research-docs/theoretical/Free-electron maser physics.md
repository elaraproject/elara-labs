## The basics of free-electron masers

Unlike regular lasers, free-electron masers do not operate on creating a population inversion in an ensemble of atoms, nor involve any sort of stimulated radiation. However, they produce light with the same characteristics as that of a regular laser, with high directionality, coherence (identical phase), and monochromaticity (light of one wavelength).

![[free-electron-laser.excalidraw]]

## Design of an undulator

In an undulator, magnets are arranged in alternating order - the first magnet and the second magnet have oppositely-aligned poles, likewise for the third and fourth magnet, and so forth.

...

Synchrotron radiation...

For our purposes, we consider free-electron masers that use only permanent magnets

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

[^1]: From [Physics Stack Exchange](https://physics.stackexchange.com/questions/189004/finding-the-magnetic-moment-of-a-permanent-magnet-to-calculate-the-torque-when-e)
[^2]: See [this answer](https://physics.stackexchange.com/questions/748197/field-lines-of-two-bar-magnets-becoming-one-bar-magnet)
[^3]: From the [mathematica tutorial](https://reference.wolfram.com/language/PDEModels/tutorial/Electromagnetics/MagnetostaticsForPermanentMagnets.html)