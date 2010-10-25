# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vmail_session',
  :secret      => 'fa20e7a96bf147713cfe19f10b7a8dfeacf53cf1a8d5b75001015a7325cc2ce8c7a76172043a470b694669d14ae3335f0db842e7f36f95aeabe33bf55c70e8ac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
