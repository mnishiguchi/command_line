# Networking operations

## Touting tables
- Servers maintain routing tables containing the addresses of each node in the network.
- The IP Routing protocols enable routers to build up a forwarding table that correlates final destinations with the next hop addresses.

==

## Common utilities

### `ifconfig` 
- Displays currently active network interfaces
- We may have to run as the superuser, or at least, give the full path, i.e., /sbin/ifconfig, on some distributions.
- Network Configuration Files: Essential to ensure that interfaces function correctly

### `ip` 
- A very powerful and versatile program
- Note:  It replaces most of the functionality of older `ifconfig`, `route`, `netstat` and a few others.
- http://unix.stackexchange.com/questions/83096/what-is-the-difference-between-sbin-ip-route-and-sbin-route

### `ping` 
-  Check whether a machine attached to the network can receive and send data
-  Confirm that the remote host is online and is responding
-  Measure network latency between machines

### `route` 

- Used to **view or change the IP routing table**.
- e.g., change the IP routing table to add, delete or modify specific (static) routes to specific hosts or networks

### `traceroute` 

- Used to inspect the route which the data packet takes to reach the destination host
- Useful for troubleshooting network delays and errors.
- Allows us to isolate connectivity issues between hops, which helps resolve them faster

### `ethtool`
- Queries network interfaces and can also set various parameters such as the speed.

### `netstat` 
- Displays all active connections and routing tables. Useful for monitoring performance and troubleshooting.

### `nmap`    
- Scans open ports on a network. Important for security analysis

### `tcpdump` 
- Dumps network traffic for analysis.

### `iptraf`
- Monitors network traffic in text mode.

### `hostname`
- Used to view a system’s hostname.

==

## Common operations

### Viewing the IP address
- `$ ip addr show`

### Viewing the routing information
```
$ route –n
```

```
$ ip route show
```

### Adding static route
```
$ route add -net address
```

### Deleting static route
```
$ route del -net address
```

### Confirming that the remote host is online and responding
-  check if the remote host is alive and responding
-  `ping <hostname>` then abort by `Ctrl` + `C`
-  `ping -c <n> <hostname>` to specify the number of packets to be shown

### Printing the route taken by the packet to reach the network host
- `traceroute <domain>`

```
$ traceroute google.com

traceroute: Warning: google.com has multiple addresses; using 173.194.121.38
traceroute to google.com (173.194.121.38), 64 hops max, 52 byte packets
 1  10.0.0.1 (10.0.0.1)  5.821 ms  12.261 ms  1.669 ms
 2  96.120.107.5 (96.120.107.5)  41.778 ms  21.811 ms  24.392 ms
 3  68.87.131.37 (68.87.131.37)  24.479 ms  77.462 ms  13.482 ms
 4  ae-20-0-ar01.capitolhghts.md.bad.comcast.net (68.85.115.201)  21.100 ms  27.704 ms  30.317 ms
 5  hu-0-1-0-6-cr02.ashburn.va.ibone.comcast.net (68.86.91.37)  17.329 ms  34.152 ms
    hu-0-1-0-7-cr02.ashburn.va.ibone.comcast.net (68.86.91.101)  19.166 ms
 6  be-20-pe06.ashburn.va.ibone.comcast.net (68.86.82.98)  30.219 ms  16.516 ms  14.796 ms
 7  173.167.57.234 (173.167.57.234)  24.744 ms  46.120 ms  15.735 ms
 8  216.239.46.250 (216.239.46.250)  24.340 ms  13.114 ms  30.587 ms
 9  72.14.233.97 (72.14.233.97)  22.716 ms  17.737 ms  29.045 ms
10  iad23s26-in-f6.1e100.net (173.194.121.38)  13.244 ms  18.751 ms  14.901 ms
```

### Showing information about a network device
- `ethtool <devname>`

e.g., showing information about the network device, eth0.
```
test1@ubuntu:~$ ethtool eth0

Settings for eth0:
Supported ports:[TP]    
Supported link modes:   10baseT/Half 10baseT/Full
100baseT/Half 100baseT/Full
1000baseT/Full
Supported pause frame use: No   
Supports auto-negotiation: Yes  
.
.
.
```

### Monitoring network traffic in text mode
- `netstat -r` to show the routing tables

### Viewing a system’s hostname

```
$ hostname

Masas-Mac.local
```
