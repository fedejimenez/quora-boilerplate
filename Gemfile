source 'https://rubygems.org'

gem 'byebug'

# Adding Sinatra Drivers
gem 'sinatra'
gem 'sinatra-contrib'

# Adding thin gem as advised
gem 'thin'

# Adding ActiveRecord and Database Components
# gem 'activerecord'
gem 'activerecord', '~> 5.2.0'
gem 'activesupport'
gem 'sinatra-activerecord'

# Adding Database elements
gem 'pg', "~> 0.18"

# Adding rake for management
gem 'rake'

# Adding rspec for running unit testing
gem 'rspec'

# Adding encryption for password
gem 'bcrypt'

# Add pagination
gem 'will_paginate'

# group :development, :test do
group :development do
	# Adding shotgun for local web hosting
	gem 'shotgun'
end

group :production do
	# Heroku
	# ==================
	gem 'rails_12factor' # Heroku Gem Supports
	gem 'puma' # Using puma for
end