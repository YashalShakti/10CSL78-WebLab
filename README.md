# How to setup/install/execute
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
        
## Fedora
* Start Apache web Server - `systemctl start httpd.service`
* Change the directory to `/var/www/html` and write HTML/XML/CSS/PHP.
* Open http://localhost/name.html,.xml,.php
* Change the directory to `/var/www/cgi-bin` for Perl/CGI programs. 
* Change the permission to 777 - `chmod 777`
* Open http://localhost/cgi-bin/name.cgi,.pl
* Start MySQL service - `systemctl start mysqld.service`
* Create MySQL user - `CREATE USER 'username'@'localhost' IDENTIFIED BY 'some_pass'`;
* Grant access to user - `GRANT ALL ON *.* to username@localhost identified by 'some_pass'`;


# For MySQL DBI
`perl -MCPAN -e shell # Choose sudo or local`

`perl Makefile.PL --testdb=test --testuser=username --testpassword=password --testhost=localhost`

`make`

`make test`

`sudo make install`

`sudo apachectl restart`


