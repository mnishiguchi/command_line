# IP addresses

- The IP (Internet Protocol) address is a unique logical network address that is assigned to a device on a network.
- Devices attached to a network **must have at least one** unique network address identifier known as the IP (Internet Protocol) address.
- IPv4 uses 32-bits for addresses and IPv6 uses 128-bits for addresses.
- Essential for routing packets of information through the network.
- Every IP address contains both a network and a host address field.
- There are five classes of network addresses available: A, B, C, D & E.

==

## IPv4 and IPv6
- There are two different types of IP addresses available: IPv4 (version 4) and IPv6 (version 6).
- IPv4 is older and by far the more widely used, while IPv6 is newer and is designed to get past the limitations of the older standard and furnish many more possible addresses.

### IPv4
- uses 32-bits for addresses
- only 4.3 billion unique addresses available
- many addresses are allotted and reserved but not actually used
- becoming inadequate because the number of devices available on the global network has significantly increased over the past years.

### IPv6
- uses 128-bits for addresses
- allows for 3.4 x 1038 unique addresses.
- it is difficult to move to IPv6 as the two protocols do not inter-operate. 
- migrating equipment and addresses to IPv6 requires significant effort and hasn't been as fast as was originally intended.

==

## Decoding IPv4 Addresses
- IP addresses are divided into two parts: Network and Host

### Four 8-bit sections called octets

```
IP address =>       172    .   16     .   31     .   46
Bit format =>     10101100 . 00010000 . 00011111 . 00101110
```

### Five classes
 - Classes A, B, and C are classified into two parts:
     + Network addresses (Net ID)
        * used to identify the network
     + Host address (Host ID)
        * used to identify a host in the network
 - Class D: used for special multicast applications (information is broadcast to multiple computers simultaneously
 - Class E: reserved for future use.
 
```
         | Octet 1   | Octet 2   | Octet 3   | Octet 4 |
---------+-----------+-----------+-----------+---------|
Class A  | NetworkID | HostID    | HostID    | HostID  |
Class B  | NetworkID | NetworkID | HostID    | HostID  |
Class C  | NetworkID | NetworkID | NetworkID | HostID  |

Class D  |<----------Multicast addresses-------------->|
Class E  |<----------Reserved for future use --------->|
```

### Class A Network Addresses

- Use the first octet of an IP address as their Net ID and use the other three octets as the Host ID
- The first bit of the first octet is always set to zero. (only 7-bits for unique network numbers)
- maximum of 126 Class A networks available (the addresses `0000000`(0) and `1111111`(127) are reserved)
- Each Class A network can have up to 16.7 million unique hosts on its network.
- The range of host address: from `1.0.0.0` to `127.255.255.255`
- only feasible when there were very few unique networks with large numbers of hosts

```
Octet 1 | NetworkID | 1-126 (always 0*******)
Octet 2 | HostID    | 0-255
Octet 3 | HostID    | 0-255
Octet 4 | HostID    | 0-255

- 0.*.*.*   : reserved
- 127.*.*.* : reserved
```

### Class B Network Addresses
- use the first two octets of the IP address as their Net ID and the last two octets as the Host ID. 
- The first two bits of the first octet are always set to binary 10
- maximum of 16,384 (14-bits) Class B networks. 
- Each Class B network can support a maximum of 65,536 unique hosts on its network.
- The range of host address: from `128.0.0.0` to `191.255.255.255`.

```
Octet 1 | NetworkID | 128-191 (always 10******)
Octet 2 | NetworkID | 0-255
Octet 3 | HostID    | 0-255
Octet 4 | HostID    | 0-255
```

### Class C Network Addresses
- use the first three octets of the IP address as their Net ID and the last octet as their Host ID.
- The first three bits of the first octet are set to binary 110
- almost 2.1 million (21-bits) Class C networks are available
- The first octet of a Class C address has values from 192 to 223.
- Most common for smaller networks which don't have many unique hosts.
- Each Class C network can support up to 256 (8-bits) unique hosts.
- The range of host address: from `192.0.0.0` to `223.255.255.255`.

```
Octet 1 | NetworkID | 192-223 (always 110*****)
Octet 2 | NetworkID | 0-255
Octet 3 | NetworkID | 0-255
Octet 4 | HostID    | 0-255
```

==

## IP Address Allocation

- Range of IP addresses
    + Typically, requested from our Internet Service Provider (ISP) by our organization's network administrator
- Which class of IP address to be used
    + Often depends on the size of our network and expected growth needs

- Can assign IP addresses to computers over a network:
    + **manually**
        * static (never changing) addresses to the network
    + **dynamically**
        * can change every time we reboot or even more often
        * the Dynamic Host Configuration Protocol (DHCP) is used to assign IP addresses

==

## Manually Allocating an IP Address

- Before an IP address can be allocated manually, one **must identify the size of the network** by determining the host range; this determines which network class (A, B, or C) can be used.

### The ipcalc program
- Can be used to ascertain the host range. 
- From the result, we can check the **HostMin** and **HostMax** values to manually assign a static address available from 1 to 254 (e.g., 192.168.0.1 to 192.168.0.254).

```
ipcalc 192.168.0.0/24
```

==

