#!/bin/bash
gobgp global rib add 10.0.10.11/32
gobgp global rib -a ipv4-flowspec add match destination 10.0.10.11/32 source 10.0.10.10/32 then discard
gobgp global rib -a ipv4-flowspec
