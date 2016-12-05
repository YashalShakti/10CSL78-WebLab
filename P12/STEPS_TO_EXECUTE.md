rails v5
rails new -d mysql rails5
rake db:create
rails generate scaffold bookinfo acct:integer title:string author:string edition:string publication:string
rake db:migrate
rails generate controller main search
rails server

rails v2/Instant rails
rails -d mysql rails2
rake db:create
ruby script/generate scaffold bookinfo acct:integer title:string author:string edition:string publication:string
rake db:migrate
ruby script/generate controller main search
ruby script/server