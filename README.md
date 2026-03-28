# P6's POSIX.2: p6df-signadot

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

p6df module for Signadot: CLI tools (`signadot`), profile/API key management,
prompt integration, and helpers for managing sandboxes, route groups, and clusters
for Kubernetes-native microservice testing.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### p6df-signadot

##### p6df-signadot/init.zsh

- `p6df::modules::signadot::aliases::init()`
- `p6df::modules::signadot::cluster::list()`
- `p6df::modules::signadot::deps()`
- `p6df::modules::signadot::external::brew()`
- `p6df::modules::signadot::init(_module, dir)`
  - Args:
    - _module
    - dir
- `p6df::modules::signadot::profile::off()`
- `p6df::modules::signadot::profile::on(profile, env)`
  - Args:
    - profile
    - env
- `str str = p6df::modules::signadot::prompt::mod()`
- `p6df::modules::signadot::routegroup::get(name)`
  - Args:
    - name
- `p6df::modules::signadot::routegroup::list()`
- `p6df::modules::signadot::sandbox::apply(file)`
  - Args:
    - file
- `p6df::modules::signadot::sandbox::delete(name)`
  - Args:
    - name
- `p6df::modules::signadot::sandbox::get(name)`
  - Args:
    - name
- `p6df::modules::signadot::sandbox::list()`

## Hierarchy

```text
.
├── init.zsh
├── lib
└── README.md

2 directories, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
