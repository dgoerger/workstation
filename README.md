# Chef Cookbook: workstation

## WARNING
Version 3.x.y is a work in progress. The codebase is undergoing a major
restructuring in order to provide software for specific use cases (roles) as
opposed to separating package installation by programming language.

I'm targeting early summer 2018 to finish this refactoring. In the interim,
unless you're brave and like to live on the edge of a potentially broken
codebase, please stick with 2.x.y.

## Objective

Configure a general-purpose Fedora Linux workstation, including everything from
common desktop applications to development libraries for university-level
courses, machine learning, and beyond!

This cookbook should remain usable *without* a Chef Server, and without a
[wrapper cookbook](https://blog.chef.io/2017/02/14/writing-wrapper-cookbooks/).
Full functionality (attribute overrides, etc) can be set up via either of these
methods, however, by default this cookbook should remain usable leveraging Chef
Solo or a tool such as [Chake](https://github.com/terceiro/chake).

## Supported Platforms

- Fedora 26: [finalized for Fall 2017](https://github.com/dgoerger/zoo_workstation)
- Fedora 27: [mostly complete](https://github.com/dgoerger/workstation/milestone/1)
- Fedora 28: wip (F28 is unreleased)

## Usage

### As-is

Using `chake`:

```
sudo dnf install -y rubygem-chake rubygem-json
sudo dnf install -y $(/usr/bin/curl 'https://omnitruck.chef.io/stable/chef/metadata?v=13&p=el&pv=7&m=x86_64' 2>/dev/null | /usr/bin/grep "^url" | /usr/bin/awk -F" " '{print $2}' | /usr/bin/grep -E "^https://.*\.el7\.x86_64\.rpm$")
sudo git clone --depth=1 https://github.com/dgoerger/chake_skel.git /var/chake
sudo git clone --depth=1 https://github.com/dgoerger/workstation.git /var/chake/cookbooks/workstation
echo -e "local://$(hostname):\n  run_list:\n      - recipe[workstation::gnome]" | sudo tee /var/chake/nodes.yaml
cd /var/chake; sudo rake converge
```
