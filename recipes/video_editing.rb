### installs and configures video editing software

unless node['workstation']['video_editing']['packages'].empty?
  node['workstation']['video_editing']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
