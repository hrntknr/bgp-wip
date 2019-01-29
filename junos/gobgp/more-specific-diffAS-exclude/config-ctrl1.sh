#!/bin/sh
gobgp global rib -a ipv4-flowspec add match destination 10.1.10.0/25 then discard
