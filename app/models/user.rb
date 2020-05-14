class User < ApplicationRecord
  enum role: [:student, :instructor, :super_admin]
end
