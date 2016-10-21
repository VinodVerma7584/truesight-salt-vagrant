# This Salt state file will install the BMC Truesight Pulse meter on server.
# It start sending data from server to Truesight Pulse Dashboard of your account.
##{#{% from "truesight-meter/map.jinja" import apiToken %}#}#.

download_meter:
  cmd.run:
    - name: 'sudo curl -q -f https://meter.truesight.bmc.com/setup_meter > setup_meter.sh'
    - cwd: /root
    - unless: sudo test -e /root/setup_meter.sh

set_permission:
  cmd.run:
    - name: chmod +x /root/setup_meter.sh
    - cwd: /root
    - unless: test -x /root/setup_meter.sh
    - require:
      - cmd: download_meter

install_meter:
  cmd.run:
    - name: /root/setup_meter.sh -d -i {{pillar['apiToken']}}
    - cwd: /root
    - require:
      - cmd: set_permission
    - unless: which boundary-meter
