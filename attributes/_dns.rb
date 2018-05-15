# what invalid TLDs are used within an intranet
default['_dns']['invalid_tlds'] = [ 
#  'example.NOT_A_TLD'
]
# whether to enable access to rfc1918 by default
default['_dns']['rfc1918_enabled'] = false
# upstream DNS source - DNS-over-TLS is over port 853
default['_dns']['upstream_tls'] = true
default['_dns']['upstreams'] = [
#  '2620:fe::fe@853',
  '9.9.9.9@853'
]
