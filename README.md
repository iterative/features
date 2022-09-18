# Development Container Features

A set of simple and reusable Iterative tools-specific 
[development container 'features'](https://github.com/devcontainers/features).
E.g. to quickly add DVC to a development container.


## Usage

To reference a feature from this repository, add the desired features to a
`devcontainer.json`. Each feature has a `README.md` that shows how to reference
the feature and which options are available for that feature.

See the relevant feature's README for supported options.

```jsonc
"name": "example-get-started",
"image": "mcr.microsoft.com/devcontainers/base:ubuntu",  // Any generic, debian-based image.
"features": {
    "ghcr.io/iterative/features/dvc:1"
}
```

Read more how to use development container features
[here](https://github.com/devcontainers/features).


## Contributing

This repository will accept improvement, bug fix, and new features
contributions.
