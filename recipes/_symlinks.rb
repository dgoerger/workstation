### creates system-level symlinks

unless node['workstation']['symlinks'].empty?
  node['workstation']['symlinks'].each do |link,target|
    link "#{link}" do
      to target
      link_type :symbolic
      action :create
    end
  end
end
