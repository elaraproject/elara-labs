For Elara future, while we use Mathematica + MATLAB right now (especially for plotting data and making visualizations, which they are good at) we should slowly switch over to using [Mathics3](https://mathics.org/) + GNU Octave + [Sage](https://www.sagemath.org/) to replace these for Project Elara (which are open-source). Remember that **long-term preservation of code and information is paramount to our mission**.

In general, any of our Mathematica stuff should be written to be compatible with Mathics as well. This does have several issues, which will need to be addressed:

- Mathics doesn't implement `NdSolve` or the majority of the numerical differential equation tools of Mathematica at the moment
- It also has limited support for a lot of mathematica functions in general

Finite element work should be ported from FreeFEM++ to [FEniCS](fenicsproject.org). FEniCS is written in Python, easier to debug, and has a much larger community; more importantly, given that it's in Python, it has a well-documented syntax (rather than FreeFEM's admittedly esoteric syntax) which integrates nicely with the rest of Project Elara's Python-based ecosystem, and provides a common standard for Project Elara tooling. Ultimately, Project Elara should be a Python-based project in general, with only low-level routines written in Rust (though always with Python bindings).