class User < ApplicationRecord
  has_secure_password

  has_many :requests, foreign_key: :student_id

  enum role: {student: 0, instructor: 1, super_admin: 2}
end
