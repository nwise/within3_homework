# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_where_is_within3_session',
  :secret      => '23b461e23d63836a05d183506d95d201f4c2a246c22c2b10abb27ba251fad0fecdc425ee602ac352479c9e32bd3abb7bfe21a881328bda0549513883682e1849'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
