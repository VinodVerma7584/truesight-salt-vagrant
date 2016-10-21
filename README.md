# truesightpulse-meter-standalone
This is standalone vagrant  salt provision of BMC Truesight Pulse Meter installation using Truesight Salt Formula in Saltstack.  

##Pre-Requisite:

VirtualBox, Vagrant and Git must already be installed with below version.

a. Virtual Box :version 5.0.16

b. Vagrant :version 1.8.1

c. Git :version 2.6.4

##Getting Started:

This will download an selected VirtualBox image and bring it up virtual machines up and running with Salt provisoning will install
salt-master on machine and sync your saltstack folders too.

##Supported OS:

|     OS    | Ubuntu   | Centos | Debian | Redhat |
|:----------|:--------:|:-------:|:-------:|:----:|
| Version   |   12/14  |   6/7    |    7/8 |  7   |


##How to Run:

Execute below commands to install truesight meter using truesight-salt-formula (https://github.bmc.com/vinverma/truesightpulse-formula).

a). git clone https://github.bmc.com/vinverma/truesightpulse-meter-standalone.git

b). cd truesightpulse-meter-standalone/

c). Copy your api token in meter.sls under truesightpulse-meter-standalone/saltstack/pillar/

d). vagarant status

O/P: Current machine states:

machine_name not created (virtualbox)


e). vagrant up machine_name

f). vagrant ssh machine_name

g). sudo su

h). salt-call --local state.apply

i). service boundary-meter status  #check meter is runnning or not.
 
 
##Destroy Machine :
 
 a). vagrant destroy machine_name                                     
