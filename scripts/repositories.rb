require 'octokit'
require 'dotenv'
require 'json'

Dotenv.load

client = Octokit::Client.new(
  access_token: ENV['GITHUB_ACCESS_TOKEN']
)

students = ["andydennisonbooth", "gevuong", "lee-cjanet", "JaredTan"]

user = Octokit.user students[1]
repos = user.rels[:repos].get.data

p "repos", repos

repo_data = {}

repos.each do |repo|
  repo_data[repo.name] = repo.to_h
end

p "repo_data", repo_data

File.write('data/sample_george.json', repo_data.to_json)
