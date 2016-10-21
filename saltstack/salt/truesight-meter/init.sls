# This Salt state file will install the BMC Truesight Pulse meter on server.
# It start sending data from server to Truesight Pulse Dashboard of your account.
##{#{% from "truesight-meter/map.jinja" import apiToken %}#}#.
{% if grains['os'] == 'Debian' %}
boundary-meter.repo:
  pkgrepo.managed:
    - humanname: truesightpulse
    - name: deb http://apt.truesight-staging.com/debian {{ salt['grains.get']('lsb_distrib_codename') }} main
    - file: /etc/apt/sources.list.d/boundary.list
    - keyid: 6532CC20
    - keyserver: http://apt.truesight-staging.com/APT-GPG-KEY-Truesight

boundary-meter.packages:
  pkg.installed:
    - fromrepo: {{ salt['grains.get']('lsb_distrib_codename') }}
    - user: root
    - group: root
    - mode: 644
    - pkgs:
      - truesight-meter

{% elif grains['os'] == 'Ubuntu' %}

truesight-meter.repo:
  pkgrepo.managed:
    - humanname: truesightpulse
    - name: deb https://apt.truesight-staging.bmc.com/ubuntu/ {{ salt['grains.get']('lsb_distrib_codename') }} universe
    - gpgcheck: 1
  #  - keyid: 6532CC20
  #  - keyserver: http://apt.truesight-staging.bmc.com/APT-GPG-KEY-Truesight
    - gpgkey: https://apt.truesight-staging.bmc.com/APT-GPG-KEY-Truesight

truesight-meter.packages:
  pkg.installed:
    - fromrepo: {{ salt['grains.get']('lsb_distrib_codename') }}
    - user: root
    - group: root
    - mode: 644
    - pkgs:
      - truesight-meter
{% elif grains['os'] == 'CentOS' or 'centos' or 'redhat' or 'RedHat' or 'RHEL'%}
truesight-meter.repo:
  pkgrepo.managed:
    - humanname: boundary
    - name: boundary
    - baseurl: http://yum.truesight.bmc.com/centos/os/{{ salt['grains.get']('osmajorrelease') }}/{{ salt['grains.get']('osarch') }}/
    - gpgcheck: 1
    - keyid: 6532cc20
    - file: /etc/pki/rpm-gpg/RPM-GPG-KEY-Truesight
    - gpgkey: http://yum.truesight.bmc.com/RPM-GPG-KEY-Truesight

truesight-meter.packages:
  pkg.installed:
    - fromrepo: boundary
    - user: root
    - group: root
    - mode: 644
    - pkgs:
      - truesight-meter
{% elif grains['os'] == 'openSUSE' %}
boundary-meter.repo:
 pkgrepo.managed:
   - humanname: boundary
   - name: boundary
   - baseurl: http://yum.boundary.com/opensuse/os/{{ salt['grains.get']('osmajorrelease') }}/{{ salt['grains.get']('osarch') }} boundary
   - gpgcheck: 1
   - keyid: 6532cc20
   - file: /tmp/RPM-GPG-KEY-Boundary
   - gpgkey: /tmp/RPM-GPG-KEY-Boundary

boundary-meter.packages:
 pkg.installed:
   - fromrepo: boundary
   - user: root
   - group: root
   - mode: 644
   - pkgs:
     - boundary-meter
{% endif %}

config_meter:
  cmd.run:
    - name: truesight-meter -l create --token {{pillar['apiToken']}}

service_meter:
  cmd.run:
    - name: sudo service truesight-meter restart
