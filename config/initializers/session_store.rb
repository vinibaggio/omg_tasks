# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_omg_tasks_session',
  :secret      => '12468bfb21972d5b4c31eb93b254aa127c9054c81e9b88d062650f0cfd3b604cd4f24c30ff344d4db92b5b3119752056032be3a7b5eac8c4c674e2b7c0e2c7b0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
