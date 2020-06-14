class Request < ApplicationRecord
  belongs_to :student, class_name: "User"
end
