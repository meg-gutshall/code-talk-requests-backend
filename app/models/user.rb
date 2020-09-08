class User < ApplicationRecord
  # attr_accessor :first_name, :last_name, :email_address, :password
  has_secure_password

  has_many :topic_requests, foreign_key: :codepanion_id

  enum role: {codepanion: 0, super_admin: 1}
end
