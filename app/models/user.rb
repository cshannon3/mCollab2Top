class User
  include Mongoid::Document
  field :username, type: String
  field :avatar_url, type: String
  field :email, type: String
  field :uid, type: String
  field :provider, type: String
  field :oauth_token, type: String

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
        user.email = auth.info.email
        user.uid = auth.uid
        user.provider = auth.provider
        user.avatar_url = auth.info.image
        user.username = auth.info.name
        user.oauth_token = auth.credentials.token
        user.save!
    end
  end
end
