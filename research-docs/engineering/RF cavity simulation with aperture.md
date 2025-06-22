An RF cavity is the equivalent of a laser optical cavity, but hosting EM waves in the microwave range rather than visible light. It is an essential component of a maser, but it is also a problem that can only be solved numerically, so we detail how to do so below.

## Model

We will consider two cases, a simpler case and a more complex (but realistic) case:

1. Solving the 2D Helmholtz equation in 2D cartesian coordinates
2. Solving the 3D Helmholtz equation in cylindrical coordinates

We consider a RF cavity of aperture width $a$, total width $w$, and total length $L$. We'll assume the cavity is square and of unit length $L = 1$ for simplicity. The (scalar) Helmholtz equation for the electric field $E(\mathbf{x})$ is given by:

$$
(\nabla^2 + k^2)E = 0
$$

Here, we'll mostly focus on the 2D case, where the Helmholtz equation takes the form:

$$
\dfrac{\partial^2 E}{\partial x^2} + \dfrac{\partial^2 E}{\partial y^2} + k^2 E = 0
$$

To solve the Helmholtz equation, we use the **finite element method** with the open-source FreeFEM software. To speak in broad terms, the finite element method approximates a solution to a PDE as a sum of lots of simple piecewise functions called _basis functions_[^1]. If we let $\psi_i(\mathbf{x})$ be the $i$-th basis function, and $c_i$ be a constant coefficient to multiply the basis function by, then the solution $E(\mathbf{x})$ can be approximated using the sum of basis functions as:

$$
E(\mathbf{x}) \approx \sum_i c_i \psi_i(\mathbf{x})
$$

The goal of the finite element is to find the unknown coefficients $c_i$ that best approximate the true solution $E(\mathbf{x})$ of our PDE (the Helmholtz equation). The first step in doing so is to convert the PDE into the _variational form_ (also known as the "weak form") - essentially, an integral equation that contains the same information as the PDE. We'll do this in several steps. The first step is to write the PDE in standard form, meaning that we need to move all terms to the left-hand side such that the right-hand side is equal to zero. Luckily, the Helmholtz equation is already in this form:

$$
\nabla^2E + k^2 E = 0
$$

The next step is to multiply every term of the Helmholtz equation with a _test function_ $\phi$, and integrate the entire left-hand side. A test function is a simple function that has a well-known form, such as a polynomial. This results in:

$$
\int_\Omega \phi\nabla^2 E + \int_\Omega k^2 \phi E = 0
$$

Where $\Omega$ denotes the domain in which we're solving the Helmholtz equation over. Now, the crucial part of the finite element method is that we have to write this integral equation as two terms: one integrated over the domain $\Omega$, and one integrated over the _boundary_ of the domain, which we denote as $\partial \Omega$. To do this, we use integration by parts. Recall that the integration by parts formula in one variable says that:

$$
\int_a^b u dv = uv\bigg|_a^b - \int_a^b vdu
$$

The multivariable version of integration by parts takes the form:

$$
\int_\Omega u dv = \int_{\partial \Omega} uv - \int_\Omega vdu
$$

Here, we apply integration by parts to our term $\displaystyle \int_\Omega \phi \nabla^2 E$. Let $u = \phi$ and $dv = \nabla^2 E$. Then, we have $du = \nabla \phi$ and $v = \displaystyle \int_\Omega \nabla^2 E = \nabla E$. So using the formula, we get:

$$
\int_\Omega \phi \nabla^2 E = \int_{\partial \Omega} \phi \nabla E - \int_\Omega \nabla \phi \cdot \nabla E
$$

Substituting this result back into the integral equation we got previously, we have:

$$
\int_{\partial \Omega} \phi \nabla E - \int_\Omega \nabla \phi \cdot \nabla E + \int_\Omega k^2 \phi E = 0
$$

We can combine the two integrals over $\Omega$ so that we have the simplified result:

$$
\int_{\partial \Omega} \phi \nabla E - \int_\Omega \nabla \phi \cdot \nabla E - k^2 \phi E = 0
$$

This is the most general **variational form** of the Helmholtz equation. The boundary term (the integral over $\partial \Omega$) is the one we're most interested in, because it depends on our choice of boundary conditions (more on that in the next section). The reason we need to do all this work to get the variational form is that finite element software (like FreeFEM, which we use) can convert this to a _matrix equation_ to solve for $c_i$ using the typical methods of linear algebra. And since integrals are well-defined even over discontinuous or non-smooth domains (unlike partial derivatives), the variational form used by the finite element method means that you can solve PDEs on very complex geometries, including those with sharp corners, holes, and edges, which are commonly encountered in real-life objects.

## Boundary conditions

An RF cavity has reflective walls made of metal (which we can assume to be a perfect conductor), so it can be modelled by reflective (Dirichlet) boundary conditions:

$$
\begin{gather*}
E(x, 0) = E(x, L) = 0 \\
E(0, y) = E(L, y) = 0
\end{gather*}
$$

For the aperture, unfortunately, things are not so simple. To accurately model outgoing waves that radiate to infinity, we must use the **Sommerfeld radiation condition**, which, in $d$ dimensions, takes the form:

$$
\lim_{r \to \infty} r^{\frac{d-1}{2}} \left(\dfrac{\partial}{\partial r} - ik\right)u = 0
$$

Where $r \equiv |\mathbf{r}|$ is the magnitude of the radial vector pointing from the origin of the coordinate system (and is always positive). For instance, the two- and three-dimensional variants of the Sommerfeld radiation condition take the form:

$$
\begin{align*}
\lim_{r \to \infty} \sqrt{r} \left(\dfrac{\partial}{\partial r} - ik\right)u = 0, &\quad & \text{(2D)} \\
\lim_{r \to \infty} r \left(\dfrac{\partial}{\partial r} - ik\right)u = 0, &\quad &\text{(3D)}
\end{align*}
$$

One can approximate the 2D Sommerfield radiation condition up to first-order with[^2]:

$$
\dfrac{\partial u}{\partial r} - iku = 0
$$

The requirement for this to be valid, of course, is that the domain is infinitely-large. Of course, we know that simulating infinite domains computationally is impractical. However, we can approximate this boundary condition by surrounding our RF cavity in a large circular region of radius $R$ (shown below), where $R \gg L$ (the circular region is much larger than the RF cavity). Thus, we can say that $R \approx \infty$; it may *seem* preposterous, but our assumption that $R \gg L$ means that the circular domain can be effectively treated as infinite.

![[helmholtz-RF-cavity.excalidraw.svg|400]]

Note that this idea can easily be extended into 3D: the only difference is that the circular boundary will need to be changed into a spherical boundary.

## Simulation results

The FreeFEM code for the simulation can be found in `freefem/dev/lasers/solve-Efield.edp`. The result is shown below:

![[rf-cavity.png|400]]

We see some notable features from the simulation. First, the radiation pattern rapidly decays away to infinity and doesn't stay collimated. This suggests that it would be better to add waveguide to the aperture instead of a bare opening as the output coupler of a maser. Second, as we would expect, the field is zero almost everywhere but the interior of the RF cavity and right in front and around the aperture. Indeed, this is not very different from visible light in a dark room with a small hole in it (see _camera obscura_).

> **Note:** The code does have some issues right now, including the fact that it is necessary to hard-code a value of the electric field at the aperture (here it is set to $E = E_0 = 1$) when in theory there should be no physical requirement for this.

The simulation also gives reference values of the electric field strengths for us to compare experimental results against, and thus improve our models. An idea is to put a square plate in front of the maser, with lots of tiny wires criss-crossing the plate. Then, we can measure the voltage across each of the wires at regular intervals to get an approximate idea of the voltage across the entire plate (or we can interpolate numerically). Once we know the voltage $V(x, y)$ we can then figure out the power density (intensity) of the EM waves and compare this against the simulation.

[^1]: This is only a basic overview of the finite element method - more details and a much more comprehensive guide to the finite element method can be found on the [COMSOL software blog](https://www.comsol.com/multiphysics/finite-element-method).
[^2]: Taken from an [oomph library example](https://oomph-lib.github.io/oomph-lib/doc/helmholtz/scattering/html/index.html) for solving the Helmholtz equation with the finite element method.