As we know, the Helmholtz equation $\nabla^2 E + k^2 E = 0$ is the time-independent wave equation, obtained after separation of variables of the electromagnetic wave equation. The most well-known of the solutions of the Helmholtz equation that describe laser light is the **Gaussian beam**, which we explored in [[Ideal laser beam divergence]]. However, a Gaussian beam diffracts, meaning it always diverges, and furthermore, there is a fundamental limit (the diffraction limit) to the spot size that a Gaussian beam can be focused to (which we also calculated in that same article).

Thus, we want to extend our search to non-diffractive solutions of the Helmholtz equation. The naive solution would be that of the plane wave, but creating a plane wave is impossible (for a lot of different reasons), so it is not a particularly meaningful solution for our purposes. An intriguing possibility that has had on-and-off interest is the **Bessel beam**, whose (scalar) form is given in cylindrical coordinates by[^1]:

$$
E(r, \theta, z, t) = J_0(k\, r\sin \theta) e^{i(kz\cos \theta - \omega t)}
$$

A Bessel beam's cross-section resembles a cone in nature, since its cross-sectional intensity profile is that of a Bessel function:

![[bessel-function.svg]]

A cross-sectional plot of the Bessel beam (for fixed $t$) is shown below (and the code is available in the `notebooks/bessel-beams.nb` Mathematica notebook in the `elara-labs` repository):

![[bessel-beam-cylindrical.svg]]

Bessel beams do not diffract - their intensity profile along their propagation axis (that is, $r = 0$) stays constant along all $z$. We can see this in the cross-section density plot below:

![[bessel-beam-density2d.svg]]

And even more clearly in the isosurface plot shown, where we should note that $t$ is left-right axis, that is, the plot shows slices of the beam through time:

![[bessel-beam-isosurfaces.svg]]

Unfortunately, Bessel beams are unphysical in nature, and this is _precisely_ how they are able to be non-diffractive. One can understand a Bessel beam as an axially-symmetric superposition of plane waves. Like a plane wave, a Bessel beam takes infinite energy to create, so it is only a theoretical idealization.

Thus we come to the conclusion: **All realistic beams are diffraction-limited.** In the context of laser (or any electromagnetic beam-based) power transmission, this means that some power loss is always present. The best we can do for long-distance power transmission is to concentrate the cross-sectional intensity along along the transmission axis - for instance, by finding electric-field solutions in the form $E(r, \theta, z, t) = f(\theta, z) e^{-\alpha r^2 - i\omega t}$ for large $\alpha$ (this is in cylindrical coordinates, where the beam's propagation axis is taken to be along $z$). For instance, if 70% of a beam's intensity is kept within a reasonable cross-sectional radius $R$, we have something that can be considered "good enough" (the theoretical limit is $1/e^2 \approx 86 \%$ for a Gaussian beam).

[^1]: https://web.ics.purdue.edu/~nowack/nowackpubs-dir/gmigpaper1.2009.pdf