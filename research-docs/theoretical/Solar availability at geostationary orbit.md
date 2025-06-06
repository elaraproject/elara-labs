Let us consider a solar satellite orbiting in geostationary orbit, which is located at a distance of around 35,000 km. Because a geostationary satellite always orbits above the equator (which we call its _orbital plane_), and the Earth is tilted, the Earth's shadow does _not_ actually block sunlight. We have a diagram below to show this:

![[solar-availability-calculation.excalidraw.svg|600]]

Because the Earth's rotational axis is tilted by an angle of $\phi \approx 23.44 \degree$, the geostationary orbit lies above a straight-line plane drawn through an Earth (known as the _plane of reference_). We can in fact calculate its height above the reference plane as follows. Using trigonometry, it is possible to show that the satellite's angle of elevation $\theta_\text{sat}$ above the reference plane satisfies $\theta_\text{sat} = \phi_e$. We may derive this as follows: since the Earth's axis is perpendicular to the satellite's orbital plane, while a vertical line through the Earth is perpendicular to the plane of reference. Thus:

$$
\begin{align*}
\phi_e' &= 90 \degree - \phi_e \\
\theta_\text{sat} &= 90 \degree - \phi_e' \\
&= 90 \degree - (90 \degree - \phi_e) \\
&= \phi_e
\end{align*}
$$

Therefore, by simple trigonometry, the height of the satellite above the reference plane is given by:

$$
h = D \sin (\theta_\text{sat}) = D \sin (\phi_e) \approx \text{16,772.4 km}
$$

Where $D \approx \pu{42,164 km}$ is the satellite's orbital distance relative to the center of the Earth (we may derive this from the equations of uniform circular motion). Meanwhile, we will derive the height of the Earth's shadow (using our idealized model of a perfect solar beam; in reality, diffraction modifies this, but we'll use this approximation for now, and calculate the corrections later). The angle $\phi_s$ made by the Earth's shadow with respect to the plane of reference would be given by:

$$
\phi_s = \tan^{-1} \left(\dfrac{R_e}{s}\right)
$$

Where $R_e \approx \pu{6,357 km}$ is the Earth's radius at the North Pole, and $s \approx \pu{1.4E6 km}$ is the [length of Earth's umbra](https://www.astronomy.ohio-state.edu/pogge.1/Ast161/Unit2/eclipses.html). Using our diagram, the height of the Earth's shadow above the plane of reference directly above the plane of reference becomes $b = R_e - a$, where:

$$
\begin{align*}
\tan(\phi_s) &= \dfrac{a}{D \cos (\theta_\text{sat})} \\
&\Rightarrow a = D \cos (\phi_e) \tan (\phi_s) \\
&\qquad \quad = D \cos (\phi_e) \left(\dfrac{R_e}{s}\right)
\end{align*}
$$

From this, we find that $b \approx \pu{6181.1 km} \ll h$; in fact, the satellite orbits more than 10,000 km above the Earth's shadow. Therefore, at least for much of the year, the satellite experiences 24-hour sunlight. The reason why we say _much of the year_ instead of _all of the year_ is that in our calculations, we didn't include the [orbital inclination](https://en.wikipedia.org/wiki/Orbital_inclination) of the Earth. As the Earth itself doesn't perfectly rotate in the [ecliptic plane](https://en.wikipedia.org/wiki/Ecliptic) (the reference plane of the Solar System), but rather, orbits at $\Omega_i = 7.155 \degree$ above it, the overall angle will change. The effective tilt of the Earth, therefore, is not $\phi_e$, but rather $\phi_e + \phi_i(t)$, where $\phi_i(t)$ is the additional angle caused by the Earth's angled orbital plane (which in general is a function of time); this effect is shown in the below diagram:


![[Orbit1.svg.png|400]]

_Source: [Wikipedia](https://commons.wikimedia.org/wiki/File:Orbit1.svg)_

The additional angle can be found using trigonometry from the true anomaly $\nu(t)$ and the orbital radius $r$, which is a function of time. Using trigonometry, the height of the Earth above the ecliptic is given by:

$$
h' = (r \sin \nu) \sin \Omega_i
$$

This nonzero height leads to the shadow height $b$ gaining an additional height $\Delta y = (r \sin \nu) \sin \Omega_i$. The result is that in a 1-month period around those two days of the year, near the solar equinoxes (when the Earth passes through the ecliptic), [the satellite will be in the dark for a short period of time](https://www.sws.bom.gov.au/Educational/5/4/3) (about an hour at maximum, usually less). However, for the other ~10 months of the year, it will not be affected. This issue can readily be solved by having a constellation of satellites

Also, note that as stated earlier, we did not account for diffraction. If we account for the effects of diffraction, the calculations become [much more involved](https://arxiv.org/abs/1004.5365) as we then need to solve the full Helmholtz equation (no approximations!) with the boundary condition $u(x, y, 0) = 0$ for all $x^2 + y^2 = R_e$, which is so complicated that we might as well solve it numerically. However, the main result is that the scattering of the Sun's light due to diffraction leads to a semi-transparent shadow that spreads wider than the main shadow. There will still be 24-hour sunlight here; it will just be a percentage weaker than the standard solar irradiance (the power output by the Sun received at Earth) of $\pu{1.362 kW/m^2}$.

**Additional thought:** Note that Strauss's textbook _Partial Differential Equations, ed. 2_ has a section (pg. 367) called "Scattering of plane wave by a sphere", that might be a helpful read. The important quantity is the falloff, that is, how quickly does the intensity of the sunlight decrease as it diffracts around the planet?