ns = node['golang']

d = ns['staging_d']

directory d do
  recursive true
end

targz = ns['targz']
local_targz_path = "#{d}/#{targz}"

remote_file local_targz_path do
  source ns['dl_url']
  checksum ns['targz_checksum_sha256']
end

install_d_base = ns['install_d_base']
install_d = ns['install_d']

execute 'extract_golang' do
  command "tar -C #{install_d_base} -xzf #{local_targz_path}"
  creates install_d
end

template ns['var_sh'] do
  source 'golang.sh.erb'
end

include_recipe 'mg_golang::workspace' if ns['install_workspace']
