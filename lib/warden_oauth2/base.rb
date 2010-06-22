module Warden
  module OAuth2

    def self.oauth_token_user_finder(key, &block)
      Strategy.user_finders[key] = block
    end

    def self.clear_oauth_token_user_finders
      Strategy.user_finders.clear
    end

  end
end
