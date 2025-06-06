# Elara Labs

Elara Labs is the current centralized repository where the majority of Project Elara's research and development work is ongoing. Here, we work on (or are going to start work on):

- Power transmission calculations
- Microwave propagation finite-difference and finite-element simulations
- Orbital placement
- Visualizations of quantum states and plane waves

Our latest (and frequently experimental) work is typically put here; when we are satisfied with the results, we publish our work on [Elara Handbook](https://elaraproject.github.io/elara-handbook/) (and our paces other places, like arXiv (TBA) and our website). 

**Documentation:** see the [research docs](research-docs/README.md) for our research documentation. The docs can also be viewed online at the [Elara Labs documentation website](https://publish.obsidian.md/elara-labs)

> Everything in Elara Labs is released to the **public domain** like the rest of [Project Elara](https://github.com/elaraproject/), meaning it is essentially **unlicensed research/software**, so you can use it for basically any project you want, _however_ you want, with or without attribution.

## Usage

The code in Elara Labs mostly consists of Jupyter notebooks (which have inline Python code with descriptive text), standalone Python code, and finite element simulation scripts. For the Python-based code, we use a tool called [poetry](https://python-poetry.org/) to manage our packages for us. To get started, make sure you have a fairly recent (Python 3.10+) version of Python. Follow [poetry's install guide](https://python-poetry.org/docs/#installation) for how to install it. After installing Poetry, start a new terminal window, and run:

```sh
poetry install
poetry shell
```

Then, to launch a notebook, just run:

```sh
cd notebooks/
python -m jupyter notebook
```

> **What are the `.tm` files?** These are [TeXmacs](https://www.texmacs.org) documents that we use for formal publishing purposes. Go to the [TeXmacs website](https://www.texmacs.org) and download TeXmacs to be able to view them.

## Software information

Elara labs currently runs on the following:

- Python 3.10 or later
- Poetry 1.8.5 or later
