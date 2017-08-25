class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone
  has_one :user
end
