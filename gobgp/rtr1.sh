#!/bin/bash
# rtr1> gobgp global rib
gobgp global rib
#    Network              Next Hop             AS_PATH              Age        Attrs
# *> 10.0.10.0/24         0.0.0.0                                   00:11:06   [{Origin: ?}]
# *> 10.0.12.10/32        0.0.0.0                                   00:11:06   [{Origin: ?}]
# *> 10.0.12.20/32        10.0.12.20           65002                00:09:47   [{Origin: ?}]
# *> 10.0.13.10/32        0.0.0.0                                   00:11:06   [{Origin: ?}]
# *> 10.0.13.30/32        10.0.13.30           65003                00:08:39   [{Origin: ?}]
# *> 10.0.15.10/32        0.0.0.0                                   00:11:06   [{Origin: ?}]
# *> 10.0.15.50/32        10.0.15.50           65005                00:06:23   [{Origin: ?}]
# *> 10.0.20.0/24         10.0.12.20           65002                00:09:47   [{Origin: ?}]
# *> 10.0.24.20/32        10.0.12.20           65002                00:09:47   [{Origin: ?}]
# *> 10.0.24.40/32        10.0.13.30           65003 65004          00:07:24   [{Origin: ?}]
# *  10.0.24.40/32        10.0.12.20           65002 65004          00:07:24   [{Origin: ?}]
# *> 10.0.30.0/24         10.0.13.30           65003                00:08:39   [{Origin: ?}]
# *> 10.0.34.30/32        10.0.13.30           65003                00:08:39   [{Origin: ?}]
# *> 10.0.34.40/32        10.0.13.30           65003 65004          00:07:24   [{Origin: ?}]
# *  10.0.34.40/32        10.0.12.20           65002 65004          00:07:24   [{Origin: ?}]
# *> 10.0.40.0/24         10.0.13.30           65003                00:08:39   [{Origin: ?}]
# *  10.0.40.0/24         10.0.12.20           65002 65004          00:07:24   [{Origin: ?}]
# *> 10.0.50.0/24         10.0.15.50           65005                00:06:23   [{Origin: ?}]
# *> 10.0.50.1/32         10.0.12.20           65002 65004          00:07:24   [{Origin: ?}]
# *  10.0.50.1/32         10.0.13.30           65003 65004          00:07:24   [{Origin: ?}]

# rtr1> gobgp global rib -a ipv4-flowspec
gobgp global rib -a ipv4-flowspec
#    Network                 Next Hop             AS_PATH              Age        Attrs
# *> [source: 10.0.15.10/32] fictitious           65005                00:00:10   [{Origin: ?} {Extcomms: [discard]}]
