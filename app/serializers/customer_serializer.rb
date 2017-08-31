class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :meetings
  has_one :user

  def meetings
    object.meetings.pluck(:id)
  end
end
