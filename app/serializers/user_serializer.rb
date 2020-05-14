class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email_address, :role
end
