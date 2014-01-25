#
# Cookbook Name:: postgresql
# Recipe:: service
#


file "/usr/sbin/policy-rc.d" do
  action :delete
end

# define the service
service "postgresql" do
  supports restart: true
  provider Chef::Provider::Service::Init::Debian
  action [:enable, :start]
end
