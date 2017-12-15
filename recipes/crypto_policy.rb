### manages the system crypto policies

execute 'update_crypto_policies' do
  command 'update-crypto-policies'
  action :nothing
end

template '/etc/crypto-policies/config' do
  source 'crypto_policy.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :run, 'execute[update_crypto_policies]', :delayed
end
