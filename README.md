# How to setup/install
## MacOS

`sudo apachectl start`

`cd /etc/apache2/`

`sudo cp httpd.conf httpd.conf.bkp`

`sudo nano httpd.conf`

* Uncomment LoadModule php5_module libexec/apache2/libphp5.so (ctrl + w to search)
* Uncomment the cgi-script line (remove the "#" that appears before this text):

        `AddHandler cgi-script .cgi`

* This causes any file with a .cgi extension to be processed as a CGI program. If you want to also have files with a .pl extension be processed as CGI programs, add the .pl extension on that same line:

        `AddHandler cgi-script .cgi .pl`
* Also uncomment these two lines to allow for server-side includes:

        `AddType text/html .shtml`
        `AddOutputFilter INCLUDES .shtml`

* Uncomment
        
        `LoadModule cgi_module libexec/apache2/mod_cgi.so`

* Changed the Options line in :

        <Directory "/Library/WebServer/CGI-Executables">
            AllowOverride None
            Options None
            Require all granted
        </Directory>

to

        <Directory "/Library/WebServer/CGI-Executables">
            AllowOverride None
            Options +ExecCGI
            Require all granted
        </Directory>

`sudo apachectl restart`

* Document root at /Library/WebServer/Documents


