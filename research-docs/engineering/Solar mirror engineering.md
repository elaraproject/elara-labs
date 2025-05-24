One critically-important part of the entire design is the shape, material composition, and engineering of the the solar mirrors used. The key engineering challenges are numerous, but we'll start by focusing on one particular area: as the power satellites orbit in geostationary orbit, the solar mirror must be designed to reflect sunlight regardless of its orientation with respect to the Earth or the Sun. This means that the orientation of the solar mirror with respect to Earth varies across the day. Addressing this issue is a major challenge, compounded by the fact that, for optimal solar collection, we want to make sure that the mirror is always oriented towards the Sun, regardless of where it is during its orbit.

## A naive solution

A "simple" solution to the issue can be for the mirror to have a "hole" at its center so that sunlight can travel right through to an off-axis light inlet on the transmitting satellites, as shown in the diagram below:

![[off-angle-laser-diagram.excalidraw|600]]

However, this approach is wasteful, because it means that the mirrors will always be at an angle with respect to the Sun. Recall that the irradiance $I$ - that is, the power density of light - is given by[^1]:

$$
I = \langle \mathbf{S}\rangle \cos \alpha
$$

Where $\mathbf{S}$ is the Poynting vector and $\langle \mathbf{S}\rangle$ denotes its time-averaged value. Since the axial tilt $\theta_a$ of the Earth is about $\theta_a = 23.4 \degree$ and $\cos(\theta_a) \approx 0.92$, we lose about 8% of solar irradiance (and thus 8% of the power we could collect) using this method, which is obviously not ideal. There is also a bigger problem, and this is with the idea of using an opening in the mirror itself. To understand this

## A more sophisticated solution

A better solution, then, is to consider a more advanced mirror configuration, where, instead of just one mirror, we have a primary mirror (the big parabolic reflector) and a secondary mirror, where the transmitter satellite is located at the root of the primary mirror. This is a common configuration in large reflecting telescopes on Earth. In addition, the mirror is continually turned so that it constantly faces the Sun. This approach is much more challenging, since turning the mirror requires more complex station-keeping and perhaps reaction wheels to turn the mirrors. (Alternative turning approaches, such as pre-spinning the mirrors on launch, may be a viable alternative, since reaction wheel failures are a common cause of spacecraft malfunctions). Additionally, the transmitter satellites will need _two_ gimbal-mounted output couplers, one behind and one in front of the satellite; they will use their front output coupler during points in the orbit when the mirror is *behind* the Earth, and switch to their back output coupler during points in the orbit when the mirror is _in front of_ the Earth. We illustrate this in the diagram below:

![[sun-facing design.excalidraw|800]]

While this approach is technologically-complex (since it requires an additional secondary mirror as well as two gimbal-mounted output couplers and a mechanism to continuously turn the mirror very precisely), it allows the primary mirror to be facing the Sun and oriented parallel to the Sun's rays, making the best use of the solar irradiance. **This is the design we are currently going for**.

### Other design considerations

We spoke previously about the difficulties involved with reaction wheels and similar mechanisms. One promising technology that may solve many issues with reaction wheels is to use [magnetically-suspended reaction wheels](https://ntrs.nasa.gov/citations/19760012100), which, to quote the linked NASA paper, offers _"low drag torque, wearfree, unlubricated, vacuum-compatible operation, and unlimited life"_. 

Additionally, to protect the sensitive electronics in gimbal-mounted output couplers from being damaged by cosmic rays and micrometeorite impacts, it may be a good idea to use a [radome](https://en.wikipedia.org/wiki/Radome). Radomes are transparent to long-wavelength electromagnetic radiation (presumably including microwaves) but can provide much-needed shielding for the maser output couplers; otherwise, micrometeorites, which can have the kinetic energy of a bullet (if not more), can seriously damage the output couplers.

[^1]: See https://en.wikipedia.org/wiki/Irradiance