Before('@omniauth_valid_user') do
  OmniAuth.config.test_mode = true

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:twitter] = {
      "provider"=>"twitter",
      "uid"=>"http://xxxx.com/openid?id=118181138998978630963",
      "info"=>{"email"=>"test@gmail.com", "first_name"=>"Gregg", "last_name"=>"Fields", "name"=>"Gregg Fields"}
  }
end

After('@omniauth_valid_user') do
  OmniAuth.config.test_mode = false
end

Before('@omniauth_invalid_user') do
  OmniAuth.config.test_mode = true

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:twitter] = {
      "provider"=>"twitter",
      "uid"=>"http://xxxx.com/openid?id=118181138998978630963",
      "info"=>{"email"=>"test@xxxx.com", "first_name"=>"Mr. Wrong", "last_name"=>"User", "name"=>"Test User"}
  }
end

After('@omniauth_invalid_user') do
  OmniAuth.config.test_mode = false
end
