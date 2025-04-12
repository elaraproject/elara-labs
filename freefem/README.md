# FreeFEM finite-element simulations

This part hosts finite-element simulations done with the open-source software FreeFEM. FreeFEM is a finite-element package that has been developed since 1987. It uses a custom scripting language to specify boundary-value problems for partial differential equations; these scripts are FreeFEM scripts, and they have `.edp` as their file extension. To install FreeFEM, go to [their website](https://freefem.org/) and download the right version for your platform. Once you have it installed, running a simulation is easy - find the simulation you want in this directory, and run:

```sh
FreeFem++ some_script_to_run.edp
```

Here, we use the `dev/` and `release/` folders to distinguish between finished code and prototyping code. Subfolders in each of those folders correspond to a specific simulation task, which we show in the table below:

| Subfolder in `dev/` and `release` | Published report |
|-------|-----|
| `report-1/` | [2024 Research Report 1](https://elaraproject.github.io/research/html/elara-research-report-2024-latest.html) (same graphs re-used in [2024 Project Technical Overview 1](https://elaraproject.github.io/research/html/elara-overview-2024-latest.html)) |
