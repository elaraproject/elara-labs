## For Elara PDE

> **Note:** Elara PDE is still in development and hasn't yet been publicly-released but will be once it's ready.

- PINN support that can solve for complicated geometries
- Train PINN to be able to solve the EM wave equation for *arbitrary* (well-posed) initial and boundary conditions for fast prediction
- Solve PDE by creating a model based on a series solution of Chebyshev polynomials then using neural net (or just regular least-squares optimization) to predict the vector of coefficients $\mathbf{x}$ such that the series solution matches the real solution as best as possible. This may allow a PINN to solve one PDE to solve the PDE with arbitrary boundary conditions. 
- We will use a formulation that allows solving on point cloud grids to extend to arbitrary geometries, if we have time
- And sympy integration - define a PDE using Sympy and solve using PINN - would be even greater, especially if you could do this in a notebook-style environment to preview stuff with latex and make plots direction in the notebook
- Neural operators: https://arxiv.org/abs/2101.07206 and see https://mathlab.github.io/PINA/_tutorial.html#neural-operator-learning

## For Elara Math

### ODE solver

For elara math, we should add back the numerical (ODE) solver. It is automatically adaptive (though this can be turned off); the step size is chosen via an optimization algorithm that runs using autodiff. In addition, it uses an nth-order Taylor series to time-step, which is more flexible and accurate compared with fixed methods like RK23/RK4/RK45 - see https://fse.studenttheses.ub.rug.nl/25354/1/bMATH_2021_LeviN.pdf. It computes this Taylor series using autodiff to get & evaluate the derivatives, to ensure accuracy. Remember:

$$
f(t + h) = f(t_0) + f'(t_0) (t - t_0) + \dfrac{1}{2!} f''(t_0) (t - t_0)^2 + \dfrac{1}{3!} f'''(t_0) (t - t_0)^3 + \dots
$$

The order of the Taylor series can optionally be determined automatically, again based on an optimization algorithm that runs using autodiff (it can also be manually set). The point is an ODE solver that is as _stable_, _accurate_, and _reliable_ as possible.

### New API for autodiff

Idea for jax-style `elara_math.grad(func, index)` as thin wrapper over our `backward()` autodiff functionality: take in a closure `x |-> f(x)` and then just basically `eval f(x)` then `f.backward()` and then extract gradient from `x`.

### Autodiff-based rootfinding

We also eventually add an implementation of newton's method using elara-math's autodiff.

### Differential coordinate transforms

Use the inverse function theorem and numpy for computing inverses to be able to make an auto coordinate transform library. The user can just define their (forwards) coordinate transforms, then the library auto-calculates the backwards transforms by the inverse function theorem:

$$
(J [f^{- 1}]) = (J [f])^{- 1}
$$

Note: $J$ is the Jacobian.

### References

- https://arxiv.org/abs/physics/9705023
- https://github.com/kochlisGit/Physics-Informed-Neural-Network-PINN-Tensorflow/blob/main/TF_PINN_PDE_System.ipynb
- https://georgemilosh.github.io/blog/2022/distill/
- https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4634151
- https://arxiv.org/abs/2310.20360
- https://physicsbaseddeeplearning.org/overview-ns-forw.html?highlight=geometry
- https://tum-pbs.github.io/PhiFlow/
- https://pypi.org/project/pyodesys/
- https://github.com/bjodah/pyneqsys