ENV['GITHUB_KEY'] = 'a82171882b8339316d19'
ENV['GITHUB_SECRET'] = '278dbb3e86ed362c0a9e3f54a819f75586dbeca6'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user:email,user:follow"
end
