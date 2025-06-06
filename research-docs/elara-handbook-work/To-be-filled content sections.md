## TODOs

See [[Elara Handbook TODOs tracker]]

## General

More emphasis of how space-based solar can power the world.

## Electromagnetism

### On electromagnetic waves

You can write a plane wave as $\mathbf{E}(\mathbf{r}, t) = \mathbf{E}_0 e^{i(\mathbf{k} \cdot \mathbf{r} -\omega t})$ but I think the more illustrative way is to write it like this:

$$
\mathbf{E}(\mathbf{r}, t) = \begin{pmatrix}
E_{0x} \\ E_{0y} \\ E_{0z}
\end{pmatrix}
e^{i(\mathbf{k} \cdot \mathbf{r} -\omega t})
$$

This clearly shows the **polarization** of the wave is a vector whose magnitude is $E_0 = \sqrt{E_{0x}^2 + E_{0y}^2 + E_{0z}^2}$.

## Laser physics

On macroscopic scales, light can interact with matter in a variety of different ways, including emission, reflection, absorption, transmission (passing through matter), and more complicated forms of scattering. But on a quantum level, there are only two fundamental ways light can interact with matter: emission and absorption.

A laser key property is its gain: the ration of output power (in the laser beam) to input power (used to power the laser) in a particular direction. Remember: a laser concentrates light but cannot violate conservation of energy, so its "amplification" of light doesn't add additional energy, but instead concentrates the energy along the optical axis.

Lasers can be modelled by a semiclassical approach. On the classical level, a laser can be modelled as an electromagnetic wave confined within an optical cavity (more precisely, a Fabry–Pérot cavity). Since the mirrors reflect the light, we can mathematically model this using Neumann boundary conditions: $\frac{\partial E}{\partial n}$, that is, the derivative of the electric field _parallel to the mirror_ is always **zero**. If we solve the electromagnetic wave equation with these boundary conditions, assuming that the cavity is box-shaped, the solutions we obtain are standing waves with wavevectors $k$ whose magnitudes are given by:

$$
k = \dfrac{n\pi}{L}, \quad n = 1, 2, 3, \dots
$$

Where $L$ is the length of the optical cavity and $n$ is a positive integer, so the electric field along the laser's optical axis is given by:

$$
E_x(x, t) = \sum_n E_0 e^{i(n\pi x/L)} = \sum_n E_0 \cos \dfrac{n\pi x}{L}
$$

> **Note:** A more realistic approximation is to consider a cylindrical cavity, for which the solution should involve Bessel functions.

These waves are **standing waves** and they constructively interfere. We can use these boundary conditions to do simulations of the electromagnetic field in a laser. The other area is to model the half-transparent mirror at one end of the optical cavity. Since some of the electromagnetic waves are transmitted (pass through), some are absorbed, and still others are reflected, this is a more complicated boundary-value problem that involves [electromagnetic wave scattering](https://engineering.purdue.edu/wcchew/ece604s20/Lecture%20Notes/Lect34.pdf). Furthermore, while we can approximate the walls of the optical cavity to be perfectly absorbant (thus reflect no light), this is of course just an approximation. So while we can find relatively simple analytical solutions in some cases (and they can be good reference solutions to compare numerical simulations to), we'll have to use numerical solutions in most cases, especially once we're using actual CAD models rather than simplified geometries.

## Antenna physics

Gain is also used for antennas, and measures the ratio output power to input power, _usually along a specific axis_. Lasers and antennas can't violate the conservation of energy: total output power is always equal to total input energy. But they _can_ redistribute energy (in this case, electromagnetic energy) so that it is concentrated along a specific direction.

## Numerical simulations

Elara Handbook: finite element have some substantial advantages over finite-difference methods. First, since the matrix elements that are solved-for are the coefficients of analytical basis functions, the resulting solution is simply a linear sum of basis functions, weighted by the coefficients. Thus, the solution can be plotted to great detail, since each basis function can be evaluated analytically to as high a resolution as is desired. However, for finite-difference methods, the solution is a matrix of discrete values, so the solution can only be plotted to the same resolution as the resolution of the mesh.

Consider also adding machine learning sections for electromagnetics simulations with PINNs, given that we already have a PINN tutorial at https://github.com/elaraproject/elara-pdes-tutorial

### Quantum electrodynamics

Lamb shift derivation: see https://gravityandlevity.wordpress.com/2013/04/24/the-lamb-shift/