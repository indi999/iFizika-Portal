== README


Projekat je ralizovan preko IDE online okruzenja Nitrous.io
Adresa sajta:http://fizikaportalradni-143521.euw1.nitrousbox.com/users/sign_in

CLAUD9 link na kojoj je aplikacija:https://fizikaportal-indi9-2.c9.io/

 Specijalisticki Rad " Ruby on Rails “ 

    Portal “ Fizika “ je namenjem mladim ljubiteljima fizike osnvnih škola.
    Na ovom portalu možete pristupiti testovima sa takmičenja iz fizike održanim na svim nivoima
    i razredima. Svi testovi su postavljeni i dostupni za preuzimanje sa rešenjima. Takođe je moguće
    besplatno preuzeti pripremne zadatke iz fizike za VI, VII i VIII razred osnovnih škola. Dostupna je
    skupljena baza svih takmičenja od 1991. godine do danas, kao i korisnih linkova za takmičenje osnovih
    škola .Cilj ovog portala je da olakša pristup učenicima pri takmičenju iz fizike u traženju testova i rešenja .
    Portal “ Fizika “nastao je kao Specijalsticki rad studenta Visoke Škole Tehničkih Strukovnih Studija
    Čačak Nenada Milenkovića sa profesorom-mentorom mr Brankom Markovićem.
    Ceo portal je rađen u Ruby on Rails-u i Zurb Foundation framework-a
    
    
Things you may want to cover:

* Ruby version
    Ruby 1.9.3 --  Rails 4.0.0
    
* System 
    Ubintu 
       
* Database 
     MySQL

# DODATNI FRAMEWORK #################### ##################################################
# Server
gem 'thin'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks - Dodato
gem 'turbolinks'
#Use simple_form  - Dodato
gem 'simple_form'
# Use carrierwave for uploading pdf in ruby-dodato
gem 'carrierwave'
# User autentifiticaon-Dodato
gem 'devise', '~> 3.0.0.rc'
# User Privilegie
gem 'cancan'
# User role_model uz cancan-Dodatak
gem 'role_model'
# Heroku -Dodato
gem 'rails_12factor', group: :production
# Pretrega
gem 'ransack'
# Pagination
gem 'will_paginate', '3.0.4'
gem 'foundation-will_paginate'
###########################################################################################

  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 4.0.0'
  # Use CoffeeScript for .javascript.coffee assets and views
  gem 'coffee-rails', '~> 4.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'
  # Use Zurb-Foundation css - Dodato
  gem 'zurb-foundation'
 
 #########################################################################################    




