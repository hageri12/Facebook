server '13.113.133.33', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/yuhei/.ssh/id_rsa'
