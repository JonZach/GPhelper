# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.development? or Rails.env.test?
  GPhelper::Application.config.secret_token = '633e4551b3975869820ba5abc5b907bdd0ae26114a86e47b8dd085245463b1de4f2bd15b292d317ce8e7bb11b922b5f13bf3f3e4a7ed9d03487d87ca7829f451'
else
  GPhelper::Application.config.secret_token = ENV['SECRET_TOKEN']
end