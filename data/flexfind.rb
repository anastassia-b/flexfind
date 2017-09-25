require 'octokit'
require 'dotenv'
require 'json'


Dotenv.load

client = Octokit::Client.new(
  access_token: ENV['GITHUB_ACCESS_TOKEN']
)

students = []
students_data = {}

File.open("data/students.txt", "r") do |f|
  f.each_line do |github_name|
    students << github_name.chomp
  end
end

students.each do |student|
  user = Octokit.user student
  students_data[student] = user.to_h
end

File.write('data/students.json', students_data.to_json)

#need to do with students2.txt, but exceeded API request rate limit.
