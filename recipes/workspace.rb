ns = node['golang']

d = ns['ws_d']

directory d do
  recursive true
end

sample_proj_d = "#{d}/src/hello"

directory sample_proj_d do
  recursive true
end

cookbook_file "#{sample_proj_d}/hello.go" do
  source 'sample_go/hello.go'
end
