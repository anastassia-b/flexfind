require 'octokit'
require 'dotenv'
require 'json'

Dotenv.load

@client = Octokit::Client.new(
  access_token: ENV['GITHUB_ACCESS_TOKEN']
)

student = "gevuong"
repo = "transitninja"

contributors = @client.contribs "#{student}/#{repo}"

p "contributors", contributors

c = {}

contributors.each_with_index do |contrib, i|
  c[i] = contrib.to_h
end

p "c hash", c

File.write('data/sample_george_contributors.json', c.to_json)



=begin

"contributors"
[{:login=>"noahskang", :id=>25189440, :avatar_url=>"https://avatars1.githubusercontent.com/u/25189440?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/noahskang", :html_url=>"https://github.com/noahskang", :followers_url=>"https://api.github.com/users/noahskang/followers", :following_url=>"https://api.github.com/users/noahskang/following{/other_user}", :gists_url=>"https://api.github.com/users/noahskang/gists{/gist_id}", :starred_url=>"https://api.github.com/users/noahskang/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/noahskang/subscriptions", :organizations_url=>"https://api.github.com/users/noahskang/orgs", :repos_url=>"https://api.github.com/users/noahskang/repos", :events_url=>"https://api.github.com/users/noahskang/events{/privacy}", :received_events_url=>"https://api.github.com/users/noahskang/received_events", :type=>"User", :site_admin=>false, :contributions=>83}, {:login=>"gevuong", :id=>27314227, :avatar_url=>"https://avatars0.githubusercontent.com/u/27314227?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/gevuong", :html_url=>"https://github.com/gevuong", :followers_url=>"https://api.github.com/users/gevuong/followers", :following_url=>"https://api.github.com/users/gevuong/following{/other_user}", :gists_url=>"https://api.github.com/users/gevuong/gists{/gist_id}", :starred_url=>"https://api.github.com/users/gevuong/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/gevuong/subscriptions", :organizations_url=>"https://api.github.com/users/gevuong/orgs", :repos_url=>"https://api.github.com/users/gevuong/repos", :events_url=>"https://api.github.com/users/gevuong/events{/privacy}", :received_events_url=>"https://api.github.com/users/gevuong/received_events", :type=>"User", :site_admin=>false, :contributions=>49}, {:login=>"JohnMatthews26", :id=>28267988, :avatar_url=>"https://avatars3.githubusercontent.com/u/28267988?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/JohnMatthews26", :html_url=>"https://github.com/JohnMatthews26", :followers_url=>"https://api.github.com/users/JohnMatthews26/followers", :following_url=>"https://api.github.com/users/JohnMatthews26/following{/other_user}", :gists_url=>"https://api.github.com/users/JohnMatthews26/gists{/gist_id}", :starred_url=>"https://api.github.com/users/JohnMatthews26/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/JohnMatthews26/subscriptions", :organizations_url=>"https://api.github.com/users/JohnMatthews26/orgs", :repos_url=>"https://api.github.com/users/JohnMatthews26/repos", :events_url=>"https://api.github.com/users/JohnMatthews26/events{/privacy}", :received_events_url=>"https://api.github.com/users/JohnMatthews26/received_events", :type=>"User", :site_admin=>false, :contributions=>45}, {:login=>"j0shuachen", :id=>28281411, :avatar_url=>"https://avatars3.githubusercontent.com/u/28281411?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/j0shuachen", :html_url=>"https://github.com/j0shuachen", :followers_url=>"https://api.github.com/users/j0shuachen/followers", :following_url=>"https://api.github.com/users/j0shuachen/following{/other_user}", :gists_url=>"https://api.github.com/users/j0shuachen/gists{/gist_id}", :starred_url=>"https://api.github.com/users/j0shuachen/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/j0shuachen/subscriptions", :organizations_url=>"https://api.github.com/users/j0shuachen/orgs", :repos_url=>"https://api.github.com/users/j0shuachen/repos", :events_url=>"https://api.github.com/users/j0shuachen/events{/privacy}", :received_events_url=>"https://api.github.com/users/j0shuachen/received_events", :type=>"User", :site_admin=>false, :contributions=>30}]
"c hash"
{0=>{:login=>"noahskang", :id=>25189440, :avatar_url=>"https://avatars1.githubusercontent.com/u/25189440?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/noahskang", :html_url=>"https://github.com/noahskang", :followers_url=>"https://api.github.com/users/noahskang/followers", :following_url=>"https://api.github.com/users/noahskang/following{/other_user}", :gists_url=>"https://api.github.com/users/noahskang/gists{/gist_id}", :starred_url=>"https://api.github.com/users/noahskang/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/noahskang/subscriptions", :organizations_url=>"https://api.github.com/users/noahskang/orgs", :repos_url=>"https://api.github.com/users/noahskang/repos", :events_url=>"https://api.github.com/users/noahskang/events{/privacy}", :received_events_url=>"https://api.github.com/users/noahskang/received_events", :type=>"User", :site_admin=>false, :contributions=>83}, 1=>{:login=>"gevuong", :id=>27314227, :avatar_url=>"https://avatars0.githubusercontent.com/u/27314227?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/gevuong", :html_url=>"https://github.com/gevuong", :followers_url=>"https://api.github.com/users/gevuong/followers", :following_url=>"https://api.github.com/users/gevuong/following{/other_user}", :gists_url=>"https://api.github.com/users/gevuong/gists{/gist_id}", :starred_url=>"https://api.github.com/users/gevuong/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/gevuong/subscriptions", :organizations_url=>"https://api.github.com/users/gevuong/orgs", :repos_url=>"https://api.github.com/users/gevuong/repos", :events_url=>"https://api.github.com/users/gevuong/events{/privacy}", :received_events_url=>"https://api.github.com/users/gevuong/received_events", :type=>"User", :site_admin=>false, :contributions=>49}, 2=>{:login=>"JohnMatthews26", :id=>28267988, :avatar_url=>"https://avatars3.githubusercontent.com/u/28267988?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/JohnMatthews26", :html_url=>"https://github.com/JohnMatthews26", :followers_url=>"https://api.github.com/users/JohnMatthews26/followers", :following_url=>"https://api.github.com/users/JohnMatthews26/following{/other_user}", :gists_url=>"https://api.github.com/users/JohnMatthews26/gists{/gist_id}", :starred_url=>"https://api.github.com/users/JohnMatthews26/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/JohnMatthews26/subscriptions", :organizations_url=>"https://api.github.com/users/JohnMatthews26/orgs", :repos_url=>"https://api.github.com/users/JohnMatthews26/repos", :events_url=>"https://api.github.com/users/JohnMatthews26/events{/privacy}", :received_events_url=>"https://api.github.com/users/JohnMatthews26/received_events", :type=>"User", :site_admin=>false, :contributions=>45}, 3=>{:login=>"j0shuachen", :id=>28281411, :avatar_url=>"https://avatars3.githubusercontent.com/u/28281411?v=4", :gravatar_id=>"", :url=>"https://api.github.com/users/j0shuachen", :html_url=>"https://github.com/j0shuachen", :followers_url=>"https://api.github.com/users/j0shuachen/followers", :following_url=>"https://api.github.com/users/j0shuachen/following{/other_user}", :gists_url=>"https://api.github.com/users/j0shuachen/gists{/gist_id}", :starred_url=>"https://api.github.com/users/j0shuachen/starred{/owner}{/repo}", :subscriptions_url=>"https://api.github.com/users/j0shuachen/subscriptions", :organizations_url=>"https://api.github.com/users/j0shuachen/orgs", :repos_url=>"https://api.github.com/users/j0shuachen/repos", :events_url=>"https://api.github.com/users/j0shuachen/events{/privacy}", :received_events_url=>"https://api.github.com/users/j0shuachen/received_events", :type=>"User", :site_admin=>false, :contributions=>30}}

=end
