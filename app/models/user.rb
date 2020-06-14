class User < ApplicationRecord
  has_secure_password

  has_many :requests, foreign_key: :student_id

  enum role: [:student, :instructor, :super_admin]
end
