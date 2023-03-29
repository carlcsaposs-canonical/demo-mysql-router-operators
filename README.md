[machine](machine) is the mysql-router vm charm

[kubernetes](kubernetes) is the mysql-router k8s charm

They share a common Python package [common](common). (In this demo, the package is only implemented in the machine charm)

## Differences between Python package and charm library
1. Charm library is a single file, Python package supports multiple files and subdirectories that can import from each other
2. This demo uses a local Python package (not on PyPI), so any changes to the package do not require separate PRs to the vm/k8s charms to update the package. Also, changes to the package are automatically tested on both charms
3. Package can maintain its own Python dependencies (though they must be compatible with the charm Python dependencies)
4. Packages are part of the [standard Python ecosystem](https://docs.python.org/3/tutorial/modules.html#packages) and well-supported by Python tooling (e.g. poetry)

## How it works
[build.sh](machine/build.sh) is a wrapper for `charmcraft pack` (run `./build.sh` instead of `charmcraft pack`)—this could be moved into a tox enviornment or make target

`charmcraft` cannot access directories outside the charm directory

1. `build.sh` copies the package directory to the charm directory

2. `charmcraft pack`

3. Remove copied package directory from step 1
