# workstation

## Supported Platforms

- Fedora 27

## Usage

### As-is

This cookbook should remain usable *without* a Chef Server, and without a [wrapper cookbook](https://blog.chef.io/2017/02/14/writing-wrapper-cookbooks/). Full functionality (attribute overrides, etc) can be set up via either of these methods, however, by default this cookbook should remain usable on leveraging Chef Solo or a tool such as [Chake](https://github.com/terceiro/chake).

```
sudo dnf install -y rubygem-chake rubygem-json
sudo dnf install -y $(/usr/bin/curl 'https://omnitruck.chef.io/stable/chef/metadata?v=13&p=el&pv=7&m=x86_64' 2>/dev/null | /usr/bin/grep "^url" | /usr/bin/awk -F" " '{print $2}' | /usr/bin/grep -E "^https://.*\.el7\.x86_64\.rpm$")
sudo git clone --depth=1 https://github.com/dgoerger/chake_skel.git /var/chake
sudo git clone --depth=1 https://github.com/dgoerger/workstation.git /var/chake/cookbooks/workstation
echo -e "local://$(hostname):\n  run_list:\n      - recipe[workstation]" | sudo tee /var/chake/nodes.yaml
cd /var/chake; sudo rake converge
```
