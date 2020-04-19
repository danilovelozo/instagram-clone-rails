class Account < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]

  mount_uploader :image, ImageUploader
         
  has_many :posts
  has_many :likes

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |account|
      account.email = auth.info.email
      account.password = Devise.friendly_token[0, 20]
      account.first_name = auth.info.name  
      account.image = auth.info.image
      account.username = auth.info.name.gsub("", "")
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_followers
    Follower.where(follower_id: self.id).count
  end

  def total_following
    Follower.where(following_id: self.id).count
  end
end
