package :update_fresh_server do 
  description 'Setting the server to update repositories and any base packages before we begin'
  pacman "base-devel" do
    pre :install, 'pacman -Syu', :sudo => true
  end
end

package :build_tools do
  puts "I'm in the build tools"
  
  puts "----------------------"
  description 'Build tools'

  pkgs = %w(git curl)
  pacman pkgs, :sudo => true

  verify do
    pkgs.each do |pkg|
      pacman_query pkg
    end
  end
end