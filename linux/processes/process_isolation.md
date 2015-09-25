## Process Isolation

- Linux is considered to be more **secure** than many other operating systems because processes are naturally isolated from each other.
- One process normally **cannot access the resources of another process**, even when that process is running with the same user privileges.
- Linux thus makes it difficult (though certainly not impossible) for viruses and security exploits to access and attack random resources on a system.

### Additional security mechanisms

#### Control Groups (cgroups)
- Allows system administrators to group processes and associate finite resources to each cgroup.

#### Linux Containers (LXC)
- Makes it possible to run multiple isolated Linux systems (containers) on a single system by relying on cgroups.

#### Virtualization
- Hardware is emulated in such a way that not only processes can be isolated, but entire systems are run simultaneously as isolated and insulated guests (virtual machines) on one physical host.
