require 'octokit'
require 'dotenv'

Dotenv.load

client = Octokit::Client.new(
  access_token: ENV['GITHUB_ACCESS_TOKEN']
)

user = Octokit.user 'anastassia-b'
p user
