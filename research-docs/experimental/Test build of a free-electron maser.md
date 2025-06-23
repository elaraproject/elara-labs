This article details the basic steps for building and testing a free-electron maser. The key components of a free-electron maser are:

- An electron source that provides an electron beam
- An undulator composed of alternating magnets
- An optical cavity sealing the undulator, composed of two mirrors at each end of the undulator

Notably all components have to be kept in vacuum or the maser will not work. What follows is a very rudimentary setup for creating a free-electron maser, and hasn't considered the broad literature on the topic. Consider this a proof-of-concept engineering sketch.

## Suggested shopping list

- Vacuum chamber - note, however, that we need a very good vacuum to make this work, and this is not really something we'd "buy" as much as getting permission to use
- [EMF meter](https://www.amazon.com/gp/product/B0C4L12RB4) and multimeter
- [Adjustable voltage source](https://www.amazon.com/AITRIP-Adjustable-Generator-Controller-Calibration/dp/B0B2CRBT54)
- [Wires/fasteners](https://www.amazon.com/gp/product/B09RZQFGGH) (while in theory it would be best to solder the wires, it may be too much work and risky to do in a closed lab environment)
- Laser diodes
- Zinc plates (for anode/cathode, must be scoured (that is, scraped and polished) prior to experiment and placed in vacuum)
- [Circular metal disks](https://www.amazon.com/gp/product/B0BVVYVDMC) used as microwave reflectors
- Electron source (can be adapted from a vacuum tube)
- [N52 neodynium magnets](https://www.amazon.com/DIYMAG-Powerful-Neodymium-Rare-Earth-Incredibly/dp/B0CGX6BXMJ) (and we'll need _lots_ of them)
- Small dish radio antenna with digital interface
- Optical table or at least a table with small holes that allows fastening items to it

## Experimental objectives

The point of the concept is to (a) demonstrate that we can indeed build a functional (if impractical) free-electron maser and (b) test our our theoretical models with actual results, so we can check discrepancies, identify inefficiencies, and improve our understanding.

## Experimental design

The experiment will consist of three parts:

1. Working prototype of an electron source producing an electron beam
2. Working prototype of an undulator
3. Demonstration of lasing

### Part 1: Electron beam

To create the electron beam, we'll be making something _somewhat_ similar to a vacuum tube. However, instead of relying on thermionic emission (electrons "boil off" the cathode when it gets really hot), we will use photoelectric emission by arranging the laser diodes to be incident on the (scoured) Zinc plate. By the [photoelectric effect](https://en.wikipedia.org/wiki/Photoelectric_effect), the photons in the laser beam knock off electrons in the cathode, setting them free. By applying a voltage between the anode and cathode with the voltage source, we can create a potential difference between the two electrodes, so  electrons fly towards the anode. With a magnet lens (see [sextuple magnet](https://en.wikipedia.org/wiki/Sextupole_magnet)), we can collimate the flying electrons into a beam that exits out from a hole in the anode.

> **Note:** Among other reasons, to make sure that the scoured Zinc plate does not rapidly oxidize, everything must be placed in an oxygen-free environment. To more clearly see the electron beam, it might be useful to pass it through a chamber filled with some sort of noble gas so that the electron beam becomes clearly visible, although the same process causes the electrons to lose energy, so it should only be used for alignment and test purposes.

![A diagram of a general free-electron maser](https://ars.els-cdn.com/content/image/1-s2.0-S0030399212003118-gr1.jpg)

We'll then need to use two other sets of magnets to be able to bend the electron beam so it enters the undulator, and another set to let the electron beam escape after it passes through the undulator (shown in the above diagram). These should be relatively straightforward to set up, especially because our maser will have no moving parts and (in theory) a minimum of electrical wiring required.

### Part 2: Undulator

The undulator will be the most important part of the design, but probably the hardest to actually work right. It consists of a set of alternating magnets in two rows (one upper, one lower) that causes the electron beam to "wiggle" and therefore emit radiation. From [[Calculation of free electron maser parameters]] we know that:

$$
\lambda_r \approx \dfrac{L_u}{2}\left(1 + \dfrac{1}{2}K^2\right) , \quad K \approx (\pu{93.4 A/N})\,B_0L_u
$$

Where $L_u$ is the spatial period of the magnets and $K$ is the undulator parameter. We recall that the magnetic field $B_0 = B_y = -\dfrac{B_r V}{2\pi d^3}$ between a pairs of magnets, derived in [[Free-electron maser physics]] reduces to $B_y \approx -B_r / 2\pi$ when the magnets are brought within a distance $d \le \sqrt[3]{V}$ of each other, and $B_y \approx -B_r$ for $d \leq \sqrt[3]{V/2\pi}$. In our case, as we are buying magnets of dimensions $60 \times 10 \times \pu{5 mm}$, the following parameters should be fairly suitable:

| Parameter  | Description                                                                                                          | Suggested value                            |
| ---------- | -------------------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| $B_0$      | Undulator magnetic field strength                                                                                    | $\pu{0.8-1.4 T}$                           |
| $d$        | Separation between upper and lower rows of magnets                                                                   | $\leq \pu{7.8 mm}$                         |
| $L_u$      | Double of the separation of two adjacent magnets (see [[Calculation of free electron maser parameters]] for diagram) | $\pu{3.4 - 4.4 cm}$                        |
| $\Delta V$ | Applied voltage between anode and cathode                                                                            | $\geq {\pu{1 V}}$ but unsure at the moment |

Since microwaves have relatively long wavelengths, we do not need to worry much about surface imperfections[^1]. Additionally, the type of mirror does not especially matter, and essentially any type of metal (or metal-coated surface) will be sufficient.[^2]. We have put aluminium disks in the suggested shopping list to serve as mirrors, since aluminium is relatively lightweight (compared to steel). Shielding, however, will be important, because it is near-certain that this first experimental prototype will be extremely low-efficiency and thus produce an extremely-weak microwave beam (on the order of a watt or even lower). Moreover, our target microwave range is close to typical frequencies for telecommunications equipment and Wi-Fi. Thus, it goes without saying that the entire experimental setup must be completely shielded and we cannot use phones, computers, or other similar electronic devices anywhere close to the experimental apparatus.

To be able to transmit part of the microwaves, we'll need to make a very small aperture (hole, in plain language) in one of the two mirrors, and attach a small waveguide to it. This is the **output coupler** of the maser. It is not possible to calculate (in exact terms) how much of the microwaves will be (or indeed, should be) transmitted through the aperture since the problem has no analytical solution. We have done numerical simulations that do give approximate results - see [[RF cavity simulation with aperture]].

> **Note:** A heuristic, however, is to presume that the transmission coefficient is proportional the the ratio of the aperture area to the mirror area, and thus proportional to the square of the ratio between the aperture radius $r_{ap}$ and the mirror radius $R_{m}$, that is, $T \sim \frac{A_{ap}}{A_{mirror}} \sim \left(\frac{r_{ap}}{R_m}\right)^2$

The optical (RF) cavity can be 3D-printed or welded metal (or strong plastic) and should be painted with an EM-absorbing coating everywhere except for the mirrors to absorb any microwaves that are not along the optical axis. This means that only the microwaves along the axis are reflected, thus producing a directional beam. It will also need slots to be able to put in our neodynium magnets for the undulator, as well as the aforementioned. Other than that, there should be two sets of beam-bending magnets to guide the electron beam into (and out of) the optical cavity. Once the electron beam exits the cavity, it should be directed into an electron dump, which, for our purposes, can just be a concrete block.

## Precautions

It is important to observe the following safety and isolation measures when building and testing the free-electron maser:

- Electron beams can be dangerous as they consist of very fast charged particles that is considered ionizing radiation. No one should be in the way of the electron beam when it is turned on. It must be operated remotely.
- For the maser to work, it must be placed inside a vacuum chamber at extremely-low pressures. Operating a vacuum chamber is also hazardous and should be done with care.
- The entire maser and all its components must be shielded in a Faraday cage (or similar device) to prevent unwanted electromagnetic interference, or otherwise the readings from the antenna will be unreliable. All wires must be properly shielded for the same reason. We must also do a control test of the antenna with the maser turned off as well as the maser on but aperture closed to ensure our results are reliable.

Note that these precautions are just a few of the safety measures that should be observed. Other lab safety measures and an experienced research mentor/technician must also be present **at all times**.

## Data collection and results to measure

### Maser output

To collect our data, we will need to rely on an antenna placed in front of the maser that can pick up the maser's microwave beam and therefore measure both its wavelength and signal power. We will need to connect this antenna by a well-shielded wire to a device outside the vacuum chamber and shielding.

The primary way we will be controlling the maser's beam characteristics is by varying the separation $L_u$ between the pairs of magnets, which yields a change in the wavelength approximately proportional to ${L_u}^2$.

We can also vary the distance $d$ between the upper and lower rows of magnets in the undulator, which, in principle, should yield a change in the wavelength proportional to $d^{2/3}$.

Finally, we can vary the voltage applied between the anode and the cathode. Increasing the voltage increases the Lorentz factor $\gamma$ of the electrons (as they move faster) and should yield a (very small) change proportional to $\gamma^{-2}$ in the wavelength of the emitted radiation by the equation - see [[Calculation of free electron maser parameters]] for more on this.

### Magnetic fields

We would ideally want to determine the _actual_ magnetic fields of the magnets, which may deviate significantly from our theoretical result of $B \approx B_r/2\pi$. For this, a rather crude way is to use iron filings and photographs to be able to trace the field lines, which we can then interpolate and compare to our theoretical models. More realistically, we would take readings from a gauss meter/EMF meter at set intervals and fit the measured values to an inverse cubic curve.

## Resources

Tables of magnetic remanence:

- [HyperPhysics](https://hyperphysics.phy-astr.gsu.edu/hbase/Tables/magprop.html)
- [Magnet source](https://cdn.shopify.com/s/files/1/0075/1026/1857/files/Raw_Materials_Comparison_Chart.pdf?38789) (commercial)
- [International Ocean Discoverer Program](https://www.iodp.tamu.edu/publications/193_IR/chap_03/c3_t27.htm)
- [Wikipedia](https://www.arnoldmagnetics.com/wp-content/uploads/2021/11/White-Paper-Measurement-07.23.2021MS2a4.pdf)

Other tables:

- [Neodynium N52 specs](https://www.shinetsu.co.jp/serem/e/download/N52sheet.pdf)

Other useful links:

- [More about magnetic remanence](https://www.e-magnetica.pl/doku.php/remanence)
- [Measurement techniques for magnetic remanence](https://www.arnoldmagnetics.com/wp-content/uploads/2021/11/White-Paper-Measurement-07.23.2021MS2a4.pdf)

Measuring instruments:

- [Magnetic field 3D meter](https://www.magcam.com/magnetic-field-measurement-systems/MiniCube-3D)

[^1]: From [this interactive tutorial](https://micro.magnet.fsu.edu/primer/java/scienceopticsu/reflection/specular/), _"...when surface imperfections are smaller than the wavelength of the incident light (as in the case of a mirror), virtually all of the light is reflected equally."_ So we don't have to machine things super super precisely.
[^2]: From _[Physics of the Microwave Oven](https://iopscience.iop.org/article/10.1088/0031-9120/39/1/006)_ (Vollmer, 2004) ([alternate link](https://www.sfu.ca/phys/346/121/resources/physics_of_microwave_ovens.pdf)), "_...the refractive index of many metals gives reflectivities close to 100% at low frequencies...._" Thus the type of metal does not matter and it should not be necessary to polish the metal.