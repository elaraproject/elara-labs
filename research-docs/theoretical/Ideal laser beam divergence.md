Consider a laser beam equipped with a [beam expander](https://www.edmundoptics.com/knowledge-center/application-notes/lasers/beam-expanders/). The laser's _beam waist_ $w_0$ is the initial radius of the laser beam, assuming a perfect laser. We align our coordinate system on the $+z$ axis such that the beam width of the laser, $w(z)$ has $w = w_0$ at $z = 0$. 

![[GaussianBeamWaist.svg.png|400]]

Let us now consider the beam at a distance $z_1$ from the origin $z = 0$, where it is incident on a beam expander. This beam expander is composed of a set of two convex lenses with focal lengths $f_1, f_2$. If we let the two lenses be separated by $d = f_1 + f_2$, then the beam emerges out of the beam expander as a collimated, wider beam. For convenience, we denote the lens at $z = z_1$ (where laser light enters the beam expander) as the _first lens_, and the lense at $z = z_2 = z_1 + d$ (where laser light exits the beam expander) as the _second lens_. The magnification factor $M$ of the beam expander is given by the following formula (which we will not prove):

$$
M = \dfrac{f_2}{f_1} = \dfrac{R_2}{R_1}
$$

Where $R_1, f_1$ and $R_2, f_2$ are the focal lengths and radii of curvature of lens 1 and lens 2, respectively. From here, the beam width of the exiting beam $w_2$ can be expressed in terms of the beam width of the entering beam $w_1 = w(z_1)$ with:

$$
\begin{align*}
w_2 &= M w_1 = \left(\dfrac{f_2}{f_1}\right) w_1 \\
&\approx \left(\dfrac{f_2}{f_1}\right)w_0,\quad w_2 \approx w_1
\end{align*}
$$

Where the approximation on the second line can be used _if_ the beam expander is located very close to the laser. It is also possible to chain several beam expanders together to incrementally expand the size of the beam. And since the ratio $f_2/f_1$ can be made very large by using a lens with a very short focal length as the first lens, it is indeed possible to engineer a beam expander (in theory) with a magnification of $M \geq 1000$.
t
The [Gaussian beam model](https://www.idexot.com/media/wysiwyg/02_Gaussian_Beam_Optics.pdf) describes the divergence of a focused beam over distance. It gives the laser beam in terms of the beam waist with:

$$
w\left(z\right)=w_{0}\sqrt{1+\left(\frac{z}{z_{R}}\right)^{2}},
\quad z_R = \frac{\pi w_{0}^{2}}{\lambda} = \text{const.}
$$

We want to find the optimal $w_0$ for which $w(z)$ both _grows_ the most slowly and takes the *smallest* value. These are in general conflicting objectives, as $w(z)$ initially takes smaller *values* for small $w_0$, whereas $w(z)$ *diverges* most slowly for large $w_0$ (although it will always diverge with distance). However, since we are interested in minimizing $w(z)$ at _long distances_, it makes much more sense to choose a large $z_0$ so that the beam diverges (comparatively) slowly and remains more collimated. In particular, at a mean distance of $D = \pu{35,786 km}$ we have the following beam widths for our maximum wavelength of operation $\lambda = \pu{30 cm}$ as well as our minimum wavelength $\lambda = \pu{2.5 cm}$ (which gives a sense of the range of values):

| Beam waist $w_0$ | Beam radius at Earth's surface for $\lambda = \pu{2.5 cm}$/$f = \pu{12 GHz}$ | Beam radius at Earth's surface for $\lambda = \pu{30 cm}$/$f = \pu{1GHz}$ |
| ---------------- | ---------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| 1 m              | 278 km                                                                       | 3415.0 km                                                                 |
| 3 m              | 92.8 km                                                                      | 1138.3 km                                                                 |
| 7 m              | 39.8 km                                                                      | 487.9 km                                                                  |
| 15 m             | 18.56 km                                                                     | 227.7 km                                                                  |
| 25 m             | 11.1 km                                                                      | 136.6 km                                                                  |
| 50 m             | 5.6 km                                                                       | 68.3 km                                                                   |
| 75 m             | 3.7 km                                                                       | 45.5 km                                                                   |
| 100 m            | 2.8 km                                                                       | 34.1 km                                                                   |
| 500 m            | 749 m                                                                        | 6.8 km                                                                    |
| 1 km             | 1.04 km                                                                      | 3.6 km                                                                    |

The numbat script for this calculation is shown below:

```rust
let D = 35786 km

fn earth_radius(w0: Length, lambda: Length) -> Length = w0 * sqrt(1 + (D * lambda/(pi * w0^2))^2)

fn earth_radius_1GHz(w0: Length) -> Length = earth_radius(w0, c/1GHz) to km

fn earth_radius_12GHz(w0: Length) -> Length = earth_radius(w0, c/12GHz) to km

map(earth_radius_1GHz, [1m, 3m, 7m, 15m, 25m, 50m, 75m, 100m, 500m, 1000m])

map(earth_radius_12GHz, [1m, 3m, 7m, 15m, 25m, 50m, 75m, 100m, 500m, 1000m])
```

Note that we can also minimize the function $f(w_0) = w_{0}\sqrt{1+\left(\frac{D\lambda}{\pi w_{0}^{2}}\right)^2}$ (where $D, z_R$ are constants) to find an exact mathematical result for the optimal $w_0$ that minimizes spot size. The solution is $w_0 = \sqrt{D\lambda/\pi}$, and for which the beam radius on Earth is $w_\text{earth} = \sqrt{2D\lambda/\pi}$. This evaluates to $w_0 \approx \pu{1.85 km}$ for $f = \pu{1 GHz}$ and $w_0 \approx \pu{534 m}$ for $f = \pu{12 GHz}$. The respective spot radii are $w_\text{earth} \approx \pu{2.6 km}$ for $f = \pu{1 GHz}$ and $w_\text{earth} \approx \pu{755 m}$ for $f = \pu{12 GHz}$.  See [this Desmos interactive calculator](https://www.desmos.com/calculator/ctymemopx1) to play around with the values (the calculation results in the calculator are in meters).

To achieve the minimal beam width at the Earth's surface, we would need a very very high magnification factor, especially because the beam width is technically the _radius_ of the beam, meaning that its diameter is twice as large. We will need to beam power down to a remote location (e.g. in the Southern Pacific Ocean) so that the 100+ km power beam - much of which we won't be able to capture with a small <100m (compound) array that we'll start with - will not affect inhabited regions or the environment (out of an abundance of caution). Of course, we can expand the ground array and perform incremental updates to the space hardware to be able to improve the array (and thereby make the beam more concentrated) over time. Indeed, there are [very large radio telescope arrays](https://en.wikipedia.org/wiki/Atacama_Large_Millimeter_Array) (albeit land-based) that we have already constructed, so this is not exactly (completely) unprecendented, and we can also just repurpose an old (or aging) radio telescope array to refurbish and convert them to become our power receivers. But all this hinges on one thing: we'll have to manage our money very carefully to be able to maintain the equipment long-term - which may be centuries - and avoid running out of money with no one to be able to keep it running.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/ALMA_Site_%28artist%27s_impression%29.jpg/1200px-ALMA_Site_%28artist%27s_impression%29.jpg?20121001210137)

_Photo of the Atacama Large Milimeter Array (ALMA), a series of connected large radio telescopes in the Atacama desert. The Project Elara receiver stations are likely to be of a similar design. [Source](https://commons.wikimedia.org/wiki/File:ALMA_Site_(artist%27s_impression).jpg)_

> **Important note:** even with a beam expander (and therefore a smaller laser aperture), we will need a very wide secondary lens specialized for microwaves. Luckily, since microwaves are much longer wavelength, we can get away with porous, lightweight, and thin materials, and maybe even just meshes (like those used in mesh antenna dishes) will do, minimizing the amount of (optical) light we block out. Even if we could build a thin, composite microwave lens, however, it would still need to be tens, if not hundreds of meters in diameter (since its radius must be greater than $w_0$ to capture all of the laser/maser light).

It should be noted that there is a **fundamental physical limit** to how small we can make a beam. This is the **diffraction limit**, which comes from the [Airy diffraction formula](https://en.wikipedia.org/wiki/Airy_disk#Size). It states that a beam that has initial diameter $D_\text{aperture}$ at the source *cannot be focused* smaller than a diameter of $D_\text{spot}$ at some distance $z$ away from the source. Mathematically, it is given by:

$$
D_\text{spot}=2.44\frac{z\lambda}{D_\text{aperture}}
$$

We can derive this from the Airy diffraction formula $\sin \theta = \dfrac{1.22 \lambda}{D_\text{aperture}}$. It is useful to consult the below diagram for this derivation:

![[diffraction-limit.excalidraw.svg]]

To get our desired result, we just need to perform some algebra. The derivation is as follows:

$$
\begin{gather*}
\sin \theta = 1.22 \dfrac{\lambda}{D_\text{aperture}} \\
\dfrac{R_\text{spot}}{\sqrt{z^2 + R_\text{spot}^2}} = 1.22 \dfrac{\lambda}{D_\text{aperture}} \\
\dfrac{2R_\text{spot}}{\sqrt{z^2 + R_\text{spot}^2}} =\dfrac{D_\text{spot}}{\sqrt{z^2 + R_\text{spot}^2}} = 2.44 \dfrac{\lambda}{D_\text{aperture}} \\
D_\text{spot} = 2.44\lambda \dfrac{\sqrt{z^2 + R_\text{spot}^2}}{D_\text{aperture}} \\
D_\text{spot} \approx 2.44 \dfrac{\lambda z}{D_\text{aperture}}, \quad z \gg R_\text{spot}
\end{gather*}
$$

Where $z$ is the straight-line distance from the source to the receiving point, $D_\text{aperture}$ is the diameter of the beam at the source, and $D_\text{spot}$ is the diameter of the beam at the receiving point (we assume that the source and receiving point are on the same axis). Since the only variables we can control in the diffraction limit formula are the aperture size (that is, $D_\text{aperture}$) and wavelength ($\lambda$), and the wavelength is fixed in a tight range, we want to maximize $D_\text{aperture}$ to make sure that the beam can be focused smaller. See [this calculator](https://www.desmos.com/calculator/n4ltbqxty6) which calculates the diffraction-limit spot size.

> **Note:** Be careful that $D_\text{aperture} \neq w_0$, that is, the beam waist is [not necessarily](https://physics.stackexchange.com/questions/254445/what-is-the-divergence-of-a-beam-from-the-output-of-a-laser) the beam diameter at the source. In general, $w_0 < D_\text{aperture}$, where the beam waist itself typically must be experimentally-determined, using other (measurable) parameters of a laser/maser.

Lastly, all of what we have mentioned above is not the end of the story. The space around Earth is not technically empty, so [particulate matter leads to unusual effects](https://physics.stackexchange.com/questions/445421/do-radio-beams-self-focus-in-the-interstellar-medium?rq=1). Furthermore, at strong electric field intensities, [quantum effects](https://physics.stackexchange.com/questions/607253/self-focusing-of-laser-beam) start to come into play. We will investigate these effects at a later point in time.