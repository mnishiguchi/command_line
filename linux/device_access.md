## Hardware Device Access

- Linux limits user access to non-networking hardware devices in a manner that is **extremely similar to regular file access**.
- Applications **interact by engaging the filesystem layer** (which is independent of the actual device or hardware the file resides on).
- This layer will then **opens a device special file (device node)** under the `/dev` directory that corresponds to the device being accessed.
- Each device special file has **standard owner, group and world permission fields**. Security is naturally enforced just as it is when standard files are accessed.
- e.g., Hard disks, for example, are represented as `/dev/sd*`.
    + The normal reading and writing of files on the hard disk by applications is done at a higher level through the filesystem, and never through direct access to the device node.
