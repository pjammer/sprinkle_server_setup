# Be sure to fill in your server host name or IP.
role :app, "12.2123.123.", :primary => true

# Fill user in - if remote user is different to your local user
# remote user needs to have sudo, so visudo if necessary
set :user, "eatshit"
set :password, "fuckyoustupidcap"
set :use_sudo, true

default_run_options[:pty] = true
ssh_options[:paranoid] = false