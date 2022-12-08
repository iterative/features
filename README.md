# Container Features for Machine Learning

A set of simple and reusable 
[development container 'features'](https://github.com/devcontainers/features)
for Machine Learning and Data Science.
E.g. to quickly add [DVC](https://dvc.org) to a development container,
install [nvtop](https://github.com/Syllo/nvtop) for GPUs monitoring, etc.


## Usage

To reference a feature from this repository, add the desired features to a
`devcontainer.json`. Each feature has a `README.md` that shows how to reference
the feature and which options are available for that feature.

See the relevant feature's README for supported options.

```jsonc
"name": "example-get-started",
"image": "mcr.microsoft.com/devcontainers/base:ubuntu",  // Any generic, debian-based image.
"features": {
    "ghcr.io/iterative/features/dvc:1": {},
    "ghcr.io/iterative/features/nvtop:1": {}
}
```

Read more how to use development container features
[here](https://github.com/devcontainers/features).


## Contributing

This repository will accept improvement, bug fix, and new features
contributions.
