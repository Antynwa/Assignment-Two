# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_holiday_session',
  :secret      => '84cf033cad540a4257432a39245eb6bef29646cbbd70c1d02314dcdd85a1b0e65be146b28feb93383f0757f1b586b329a846e377a9bb47decfcd6c6c4e11cd9d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
