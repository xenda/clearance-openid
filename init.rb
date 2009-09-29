# Include hook code here
begin
require 'openid'  

require 'clearance_openid'

rescue Exception => ex
  puts "------------------------------------------------------"
  puts  "Can't find the openid gem. Please install it through"
  puts  "gem install ruby-openid"
  puts "------------------------------------------------------"
  puts "#{ex}"
  Process.exit  
end
 
  
