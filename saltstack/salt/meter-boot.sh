#!/bin/sh

#saltstack apply command to Install Meter on Master.
sudo salt-call --local state.apply
