# DNSSEC override - what invalid TLDs are used within an intranet
default['_dns']['invalid_tlds'] = [ 
#  'example.NOT_A_TLD'
]
# whether to enable rDNS access to rfc1918 by default
default['_dns']['rfc1918_rdns_enabled'] = false
# assuming rfc1918 is disabled, enable rfc1918 selectively for the following domains
default['_dns']['private_domains'] = [
#  'example.com'
]
# upstream DNS source - DNS-over-TLS is over port 853
default['_dns']['upstream_tls'] = true
default['_dns']['upstreams'] = [
# Quad9.net
#  '2620:fe::fe@853',
  '9.9.9.9@853',
# CloudFlare DNS
  '1.1.1.1@853'
# Google
#  '8.8.8.8@853'
]
