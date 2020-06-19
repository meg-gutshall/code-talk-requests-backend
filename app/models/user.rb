class User < ApplicationRecord
  # attr_accessor :first_name, :last_name, :email_address, :password
  has_secure_password

  has_many :requests, foreign_key: :student_id

  enum role: {student: 0, instructor: 1, super_admin: 2}
end
