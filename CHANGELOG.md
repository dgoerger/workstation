Changelog
=========

27.0 - unreleased
-----------------

- versioning rebase: cookbook releases now correspond with Fedora releases
- BREAKING CHANGE: [replace denyhosts with fail2ban](https://github.com/dgoerger/workstation/issues/1)
- [support VNC as additional remote desktop option](https://github.com/dgoerger/workstation/issues/21) - previously we only supported the proprietary FastX
- [manage system-level crypto policies](https://github.com/dgoerger/workstation/issues/22) `man 8 update-crypto-policies`
- BREAKING CHANGE: [upgrade Botan major version 1->2](https://github.com/dgoerger/workstation/issues/2)
- [local dns cache dnsmasq -> unbound + dnssec validation via dnssec-triggerd](https://fedoraproject.org/wiki/Features/DNSSEC_on_workstations)
- [support Java 9](https://fedoraproject.org/wiki/Changes/Java9TechPreview)
- [support Flatpak](https://github.com/dgoerger/workstation/issues/19)
- [OpenSSH adheres to system-level crypto policy](https://github.com/dgoerger/workstation/issues/3)
- [OpenSSH no-longer supports protocol version 1](https://fedoraproject.org/wiki/Changes/Remove_SSH-1_from_OpenSSH)


2.0 - August 2017
-------------------

- upgrade to [Fedora 26](https://fedoraproject.org/wiki/Releases/26/ChangeSet) from Fedora 24

  - GCC 7.1 from GCC 6.3

  - Glasgow Haskell Compiler 8.0 from GHC 7.8.4

  - Python 3.6 from Python 3.5

- inclusion of the [Jupyter Notebook](https://jupyter.readthedocs.io/en/latest/content-quickstart.html)

- inclusion of the [Anaconda package manager](https://conda.io/docs/intro.html) for Python

- Chromium web browser is included in the Fedora repositories now, and supersedes proprietary Google Chrome in the default configuration

- Firefox and Chromium now ship with a default user profile, blocking web trackers out of the box

- workstations now maintain a local DNS cache, to provide marginal resiliency in the event of campus network issues

- inclusion of the [firejail](https://firejail.wordpress.com/) sandboxing mechanism (not used anywhere by default, but available)

- GNOME users now have a traditional applications launcher menu and Accessibility options (improved ADA compliance) enabled out of the box

- inclusion of [golang](https://golang.org/)

- Message of the Day now indicates a machine-specific reboot schedule, if defined

- users can now change their network password using the `passwd` command, if connected to a Kerberos domain

- inclusion of robotics software, curated by the [Fedora Robotics Lab](https://labs.fedoraproject.org/en/robotics/)

- inclusion of security research software, curated by the [Fedora Security Lab](https://labs.fedoraproject.org/en/security/)

- inclusion of audio editing software and the Jackd audio server

- inclusion of [SuperCollider](https://supercollider.github.io/)

- inclusion of [Zotero](https://www.zotero.org/)

- added the [PGI GPU-aware C/C++/Fortran compilers](http://www.pgroup.com/products/community.htm), community edition

- new command: `force_quit_all_on_host` will quit all active processes under the current user (will force log-out the user)

- graphical users are correctly notified of pending reboot; previously alert was limited to console/ssh users

- optional remote syslog with rsyslog or Filebeat

- support for [Duo Security 2FA](https://duo.com/docs/duounix) for SSH (this is not a product endorsement)

- deprecation: python2-spacy requires python2-ffty, which has discontinued support of python2

- reminder that [python2 reaches End Of Life in 2020](https://pythonclock.org/)
