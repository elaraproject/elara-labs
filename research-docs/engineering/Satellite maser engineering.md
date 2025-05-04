## Design of space-based maser

We could do any of the following:

- Easiest - pumpless [ammonia maser](https://bingweb.binghamton.edu/~suzuki/QuantumMechanicsFiles/7-3_Maser_physics.pdf). Since masers naturally work well in vacuum and cryogenic conditions (which naturally occurs in space) this is no issue.
- Second-easiest - [microwave diode](https://www.ebay.com/itm/203511955893) pumped gas maser. This uses electricity from solar panels to power a microwave diode (e.g. tiny gunn diode), which produces the microwaves that excite atoms in the gain medium (e.g. water/ammonia/methanol), leading to stimulated emission
- Hard but not impossible: [optically-pumped maser](https://www.nature.com/articles/nature25970#Sec2) pumped by a [laser diode powered by solar panels](https://www.jstage.jst.go.jp/article/lsj1973/23/3/23_3_244/_article/-char/en) or a NdCrYAG laser. [Laser diodes](https://en.wikipedia.org/wiki/Laser_diode) are very cheap, it's the optical maser part that's difficult.
- Very hardest: optically-pumped maser that exclusively uses _focused sunlight_ as the pump source. This would require a large parabolic solar mirror to reflect and focus sunlight used for pumping the maser.

### Past idea: radiative pumped astrophysically-inspred maser

Previously, we considered the idea of building the artificial equivalent of an [astrophysical maser](https://en.wikipedia.org/wiki/Astrophysical_maser). Astrophysical masers are naturally-arising masers formed by gas clouds around planets and stars. Energy from the central astronomical body acts as a pump source for surrounding high-temperature, ultra-low-density gases, typically requiring temperatures of several hundred to over a thousand kelvin[^1]. Larger astrophysical lasers tend to be radiatively pumped[^3] whereas the smaller ones tend to be pumped via collisional excitation - that is, by molecular collisions, which itself arises from the high kinetic energy of the heated gas itself. Both mechanisms, are, of course, related; masing within circumstellar clouds receives both heat and light from its central star. This causes lasing[^3], although only with gases spread over extremely long distances.

A few known natural masers and the necessary conditions for masing to take place (not including the density requirements) are listed below[^1]:

| Gas molecule                  | Emission frequencies       | Required temperature                                                                      |
| ----------------------------- | -------------------------- | ----------------------------------------------------------------------------------------- |
| Silicon monoxide ($\ce{SiO}$) | 43, 86, 344 GHz            | $\ge \pu{1500 K}$                                                                         |
| Water vapor ($\ce{H2O}$)      | 22, 183, 321, 325, 658 GHz | $\pu{400-1000 K}$                                                                         |
| Methanol ($\ce{CH3OH}$)       | 6.7, 12.2, 95 GHz          | $\geq \pu{10000 K}$ based on [source](https://en.wikipedia.org/wiki/H_II_region)          |
| Hydroxyl radical ($\ce{OH}$)  | 1612, 1665, 1667, 1720 MHz | $\approx \pu{1500 K}$ based on [source](https://www.pnas.org/doi/10.1073/pnas.0602277103) |

> **Note:** For the appropriate density and temperatures conditions see the solar atmospheric data on [Stanford solar center information page](https://solar-center.stanford.edu/vitalstats.html). We may presume that it is a good model for circumstellar conditions.

Note that these wavelengths are typically associated with rotational transitions in the gas molecules which commonly produce microwaves. In all cases, high temperatures are responsible for exciting the gain medium to allow lasing to occur. While this can be modelled using the effect of a pump EM field (after all, the light and heat emitted by stars *does* take the form of EM waves), we think it may be better to model this using a thermodynamical model by assuming molecules of high kinetic energy that undergo frequent elastic collisions, similar to the HeNe laser. Calculation of the rotational transitions can then identify suitable gaseous species for lasing - menthanol is particularly promising, but the very high required temperatures required for it to lase makes it incredibly impractical. Again, mixtures of gases may achieve better performance than a single gas, so we should simulate the effects of multiple interacting gases as well.

> **Note:** for a model of high temperature-pressure quantum gases, there is [this guide](http://helper.ipam.ucla.edu/publications/pltut/pltut_10436.pdf), which (while not being very comprehensible) seems to introduce some of the theory/models behind this branch of molecular physics.

Highly-concentrated sunlight does indeed hold potential for heating gases to those high temperatures required for lasing; indeed, the solar furnace of Uzbekistan[^2] can reach temperatures of up to 3200 K using focused sunlight alone. But to use highly-concentrated sunlight, as would be needed for a solar maser, efficient transfer of heat to the gaseous gain medium is very crucial. Purely requiring the sunlight to heat the gas is possible, but we've come up with an intriguing idea to make better use of the available wavelengths in sunlight, particularly in the UV range. The concentrated sunlight can be split with some more advanced version of a prism into its component wavelengths, with the short visible and UV wavelengths diverted to be incident on a photocathode (you would then need another beam collimator + prism to re-focus and recombine the beams of light). Here, the high-energy photons in the short visible/UV range would lead to the emission of photoelectrons that further collide with the gas molecules to transfer kinetic energy to them, leading to the overall effect of heating the gas. This is because UV is not really so good at _heating_ as much as it is good for ionizing, but we don't necessarily want ionizing (otherwise it chemically changes the composition of the gain medium) so this may be a better way.

Unfortunately, we found through some calculations and the literature that this design was impractical. See [[Calculation of a hypothetical astrophysical-like artificial maser]] for more details.

## References

[^1]: https://arxiv.org/abs/1104.2306
[^2]: https://en.wikipedia.org/wiki/Solar_furnace_of_Uzbekistan
[^3]: https://link.springer.com/referenceworkentry/10.1007/978-3-642-11274-4_946