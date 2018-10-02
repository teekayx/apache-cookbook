# ~/cookbooks/apache/recipes/server.rb

package 'httpd' do
   action :install
end

template  '/var/www/html/index.html' do
   source 'index.erb'
   variables(
	:name => 'teekay'
   )
end

service 'httpd' do
   action [:enable,:start ]
end
