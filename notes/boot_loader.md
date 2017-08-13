# Boot loader
- Executed before Linux
- Gives us more control on how we boot the system
- Can be used to select operating systems or kernel

## Requiring Boot Loader Passwords

- we can secure the boot process with a secure password to prevent someone from bypassing the user authentication step. 
- we can also force passwords for only certain boot choices rather than all. 

### For GRUB version 1
- **How-to**
    + invoke `grub-md5-crypt`, which will prompt we for a password and then encrypt as shown on the adjoining screen
    + edit `/boot/grub/grub.conf` by adding below the timeout entry:
        * `password --md5 $1$Wnvo.1$qz781HRVG4jUnJXmdSCZ30`
- we can also force passwords for only certain boot choices rather than all. 

### For GRUB version 2
- use user-specific passwords
- **How-to**
    + edit system configuration files in `/etc/grub.d` and then
    + run `update-grub`
- Note: we never edit the configuration file, `/boot/grub/grub.cfg`, directly, 
- [Ubuntu docs](https://help.ubuntu.com/community/Grub2/Passwords)
