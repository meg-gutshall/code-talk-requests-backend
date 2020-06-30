class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email_address, :role
  has_many :topic_requests, if: Proc.new { |record| record.student? == true }
end
