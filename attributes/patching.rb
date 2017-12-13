### disable patching by default - CHANGE THIS ON YOUR DEPLOYMENT
default['workstation']['patching']['auto'] = false

### patching definition methods: attributes vs databags
# if ['workstation']['patching']['schedules'] is NOT EMPTY, attributes are ALWAYS used

## attributes definition might look like this (requires wrapper cookbook, lower overhead, hence default):
default['workstation']['patching']['schedules'] = {
#  'host1.domain.tld' => {
#    'day' => '*',
#    'weekday' => '2',
#    'hour' => '7',
#    'minute' => '30'
#  },
#  'host2.domain.tld' => {
#    'day' => '*',
#    'weekday' => '3',
#    'hour' => '8',
#    'minute' => '10'
#  }
}

## databag definition might look like this (requires a chef server, hence NOT default):
#$ cat data_bags/updates/host1.domain.tld.json
# {"id": "host1.domain.tld", "hour": "7", "weekday": "2", "type": "default", "day": "*", "minute": "30"}

### don't patch during these windows - e.g. restrictions from the academic year
default['workstation']['patching']['no_patch_windows'] = {
# MONTH => EXCLUDE_DAYS_OF_MONTH
#  '12' => '-ge 20',
#  '1' => '-lt 5'
}

### delay reboot by X minutes - default from reboot.sh is 5 if unset - i.e. let users save their work and log off
default['workstation']['patching']['reboot_delay'] = '5'
