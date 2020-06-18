class RequestSerializer
  include FastJsonapi::ObjectSerializer
  set_id :student_id
  attributes :topic, :module, :description, :student_id
  belongs_to :student, record_type: :user
end
