class User < ApplicationRecord
  # attr_accessor :first_name, :last_name, :email_address, :password
  has_secure_password

  has_many :topic_requests, foreign_key: :student_id

  has_many :upvotes, foreign_key: :student_id
  # ! Do I add dependent: :destroy here?
  has_many :upvoted_requests, through: :upvotes, source: :request

  enum role: {student: 0, instructor: 1, super_admin: 2}
end
