# Chef Cookbook: workstation

## WARNING

This code is a work in progress. It may not work. Maintaining this is no-longer
my dayjob, so I may not notice when things break.

## Objective

Configure a general-purpose Fedora Linux workstation, including everything from
common desktop applications to development libraries for university-level
courses, machine learning, and beyond!

This cookbook should remain usable *without* a Chef Server, and without a
[wrapper cookbook](https://blog.chef.io/2017/02/14/writing-wrapper-cookbooks/).
Full functionality (attribute overrides, etc) can be set up via either of these
methods; however, by default this cookbook should remain usable leveraging Chef
Solo or a tool such as [Chake](https://github.com/terceiro/chake).

## Supported Platforms

- Fedora 29: wip

## Usage

### As-is

Using `chake`:

```
sudo dnf install -y rubygem-chake rubygem-json rsync cronie git-core
sudo dnf install -y $(/usr/bin/curl 'https://omnitruck.chef.io/stable/chef/metadata?v=14&p=el&pv=7&m=x86_64' 2>/dev/null | /usr/bin/grep "^url" | /usr/bin/awk -F" " '{print $2}' | /usr/bin/grep -E "^https://.*\.el7\.x86_64\.rpm$")
sudo mkdir /var/chake; cd /var/chake; sudo chake init
sudo git clone --depth=1 https://gitlab.com/dgoerger/workstation.git /var/chake/cookbooks/workstation
echo -e "local://$(hostname):\n  run_list:\n      - recipe[workstation::gnome]" | sudo tee /var/chake/nodes.yaml
cd /var/chake; sudo rake converge
```
