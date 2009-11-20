# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_excelaroo_session',
  :secret      => '624a696edb398732fe01599cc7f85517eb99e0ceb2653d23cd2eab179db63e6432be0833e354a435a2c7b1e0841aa24f915dc45a1a6dd1ad179e68c6bdce68fa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
