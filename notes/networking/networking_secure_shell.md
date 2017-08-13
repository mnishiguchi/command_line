# SSH: Executing Commands Remotely

- Cryptographic network protocol
- Connect securely to remote systems
- Used for
    + secure data communication
    + remote services
    + other secure services between two devices on the network
- Useful for administering systems which are not easily available to physically work on but to which you have remote access

==

## Running a command on a remote system via SSH
1. `ssh <remotesystem> my_command`
2. ssh prompts us for the remote password
- Note: Possible to configure ssh to securely allow your remote access without typing a password each time.

```
                            SSH Tunnel
SSH Client machine -----==================----- SSH Server machine
                                                 /
                                                /
                          Mail Server <--------
```

==

## Copying Files Securely with `scp`

- Can move files securely using Secure Copy (`scp`) between two networked hosts
- `scp` uses the SSH protocol for transferring data

```
            move files
Machine A  ---------->  Machine B
           <----------  
```

1. `scp <localfile> <user@remotesystem>:/home/user/`
2. `scp` prompts us for the remote password
- Note: Possible to configure `scp` to securely allow your remote access without typing a password each time.
