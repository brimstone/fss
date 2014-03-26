# fss
`fss` is a simple, bare bones, only-needs-a-posix-shell idempotent system provisioner. Unlike another project with a similar name, you don't have to `gem install` anything. Unlike other idempotent things, this doesn't require 200MB and your time converting your previous shell scripts to some other fad language.

* You already have shell scripts.
* People tell you some cooking project is all the rage now.
* `fss` is your rope bridge across this gap.

Why does it have to be more complicated?

## Requirements
* a POSIX shell. `/bin/sh` usually

## Installation
None needed, you could `cp fss /usr/bin/fss` if you wanted. Or not.

## Building
This is where it gets tricky: `make fss`

Don't have `make`?

`cat header modules/* footer > fss`

Boom.


## Helper functions
### package
`package "name"`

It tries its best to figure out wtf package manager you've got installed and install the package by the name you passed into it. 

    package --name     "name"         \
            --file     "path/to/file" \
            --version  "version"      \
            --apt                     \
            --yum

`file`: Direct path to a file, if you think repositories are for chumps

`version`: Specify a specific version of the package from the repository, chump.

`apt`: What ubuntu uses. If for some reason you have yum or rpm on the box as well.

`yum`: Same thing that `--apt` does, but backwards. Who has dpkg on a RHEL box anyway? Weirdo.

### template
`template "src" "dest"`

This installs...