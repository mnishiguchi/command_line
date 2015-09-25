# Password

## How Passwords are Stored
- The system verifies authenticity and identity using user credentials.
- Stored in an encrypted format.

**Modern systems**
- stored in a secondary file named `/etc/shadow`.
- Only those with **root access** can modify/read this file.

**Older systems**
- stored in the `/etc/passwd` file, which was **readable by everyone**.
- This made it rather easy for passwords to be cracked.

==

## Password Encryption

- Most Linux distributions rely on a modern password encryption algorithm called **SHA-512** (Secure Hashing Algorithm 512 bits), developed by the U.S. National Security Agency (NSA) to encrypt passwords.

### The SHA-512 algorithm
- one of the most tested hashing algorithms.
- widely used for security applications and protocols, including TLS, SSL, PHP, SSH, S/MIME and IPSec.

e.g., Experimening with SHA-512 encoding
- The word “test” can be encoded using the program sha512sum to produce the SHA-512 form

LinuxMint
```bash
masa@linuxmint-VM ~ $ echo -n test | sha512sum
ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff  -
```

OS X
```bash
masa@Masas-Mac:~/linux_and_git_notebook (master)
$ echo -n test | shasum -a 512
ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff  -
```

==

## Good Password Practices

- **Password aging**
    + ensure that users get prompts that remind them to create a new password after a specific period.
    + ensure that passwords, if cracked, will only be usable for a limited amount of time.
    + Implemented using the **chage** utility, which configures the password expiry information for a user.

    + The **chage** command
        * changes the number of days between password changes and the date of the last password change.
        * This information is used by the system to determine when a user must change his/her password.

- **Pluggable Authentication Modules (PAM)**
    - force users to set strong passwords
    - can be configured to automatically verify that a password created or modified using the passwd utility is sufficiently strong.
    - PAM configuration is implemented using a library called pam_cracklib.so, which can also be replaced by pam_passwdqc.so for more options.

- **Install password cracking programs** 
    - such as John The Ripper
    - secure the password file and detect weak password entries
    - It is recommended that written authorization be obtained before installing such tools on any system that you do not own.
