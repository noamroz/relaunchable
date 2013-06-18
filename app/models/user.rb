class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :picture

  has_many :visions
  has_many :comments
  has_many :attachments
  has_many :products_owned, :class_name => 'Product', :foreign_key => 'owner_id'
  has_and_belongs_to_many :products_member, :class_name => 'Product'


  def name
    "#{first_name} #{last_name}"
  end
end
