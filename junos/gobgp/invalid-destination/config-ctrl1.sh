#!/bin/sh
gobgp global rib -a ipv4-flowspec add match destination 10.0.0.0/16 then discard
