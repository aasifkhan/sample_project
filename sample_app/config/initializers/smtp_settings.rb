
ActionMailer::Base.smtp_settings = {   
:address => "smtp.gmail.com", 
:domain => "google.com",
:port => 587,   
:user_name => "asif.khan7723100",   
:password => "hafizasif",   
:authentication => :plain }

ActionMailer::Base.delivery_method = :smtp
