# Kmax VM

This repository provides a virtual machine running
[Kmax](https://github.com/paulgazz/kmax), a tool for deducing presence
conditions and more from the KConfig language and KBuild build system.

All dependencies for Kmax are set up automatically. Some scripts for analyses
are included.

## Getting Started

Clone recursively:

```
git clone --recurse-submodules git@github.com:ekuiter/kmax-vm.git
```

Install [Vagrant](https://www.vagrantup.com/).

Run `vagrant up` inside this repository. This will also prompt you to install the
`ubuntu/trusty64` box, the base system for the VM.

After `vagrant up`, use `vagrant ssh` to log on, then `cd kmax`.

Now you can run different analyses, e.g.

```
source busybox-1_28_stable.sh # obtain presence conditions for every file in Busybox
source busybox-1.25.0.sh # alternate version
source linux-4.16.9-x86.sh # obtain presence conditions for every file in the Linux kernel
source linux-4.14.13-x86.sh # alternate version
```

The appropriate sources are automatically downloaded.

The results are stored in the `data` directory.