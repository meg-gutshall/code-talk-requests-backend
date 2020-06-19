class RequestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topic, :module, :description, :student_id, :student
end
