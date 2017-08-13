# Random Numbers and Data

It is often useful to generate random numbers and other random data when performing tasks such as:

- Performing security-related tasks.
- Reinitializing storage devices.
- Erasing and/or obscuring existing data.
- Generating meaningless data to be used for tests.

==

## The `$RANDOM` environment variable
- Derived from the Linux kernel’s built-in random number generator.
```bash
$ echo $RANDOM
10960

$ echo $RANDOM
204

$ echo $RANDOM
15118
```

==

## The OpenSSL library function
- Uses the FIPS140 algorithm to generate random numbers for encryption.

```bash
$ OpenSSL
OpenSSL> rand -base64 123
OaR6xdRDmVCMJUGr7QEGV6ZJn/qPyRYKtLfdwGgMYC+g4caXS+viPgaaz4rYZrZq
TkYT88dmPABjcDZFtqZkaDAC3Al8fgRGni/n1YznQV+zHIyR+M5/33VBz3NRNC1M
MG616DCTt2i+HxSrkX49vi9R0dA/rc4SqB8P
OpenSSL>
```

==

## How the Kernel Generates Random Numbers
- Most common computers do not contain specialized hardware random number generators and instead rely on events created during booting to create the raw data needed.
- The system maintains a so-called `entropy pool` of these digital numbers/random bits, from which random numbers are created.
- The Linux kernel offers the `/dev/random` and `/dev/urandom` device nodes which draw on the `entropy pool` to provide random numbers which are drawn from the estimated number of bits of noise in the `entropy pool`.

### `/dev/random` 
- Used where very high quality randomness is required.
- Such as one-time pad or key generation.
- Relatively slow to provide vaules.
- When the entropy pool is empty, `/dev/random` is blocked and does not generate any number until additional environmental noise (network traffic, mouse movement, etc.) is gathered.

### `/dev/urandom`
- Faster and suitable (good enough) for most cryptographic purposes.
- When the entropy pool is empty, `/dev/urandom` reuses the internal pool to produce more pseudo-random bits.





