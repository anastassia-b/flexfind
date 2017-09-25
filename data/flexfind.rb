require 'octokit'
require 'dotenv'
require 'json'

Dotenv.load

client = Octokit::Client.new(
  access_token: ENV['GITHUB_ACCESS_TOKEN']
)

user = Octokit.user 'anastassia-b'

user_json = user.to_h.to_json

File.write('data/testing.json', user_json)
