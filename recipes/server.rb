# ~/cookbooks/apache/recipes/server.rb

package 'httpd' do
   action :install
end

file '/var/www/html/index.html' do
   content "<h1>Hello, world!</h1>
	<h2>Your IP is #{node['ipaddress']}</h2>
	<h2>Your hostname is #{node['hostname']}</h2>   
"
end

service 'httpd' do
   action [:enable,:start ]
end
