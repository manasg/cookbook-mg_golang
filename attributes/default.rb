default['golang']['targz'] = 'go1.9.linux-amd64.tar.gz'
default['golang']['targz_checksum_sha256'] = 'd70eadefce8e160638a9a6db97f7192d8463069ab33138893ad3bf31b0650a79'
default['golang']['dl_url'] = "https://storage.googleapis.com/golang/#{node['golang']['targz']}"
default['golang']['staging_d'] = '/var/tmp'

default['golang']['install_d'] = '/usr/local/go'

# sample workspace
default['golang']['install_workspace'] = true

# /cookbook is shared using kitchen/vagrant with the VM
# useful to share code
default['golang']['ws_d'] = '/cookbook/golang_ws'
