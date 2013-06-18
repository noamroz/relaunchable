class Product < ActiveRecord::Base
  attr_accessible :name, :site_url, :description

  has_many :visions
  has_many :attachments, :as => :to
  has_many :comments, :as => :on
  has_and_belongs_to_many :users
  belongs_to :owner, :class_name => 'User'
  belongs_to :category, :class_name => 'List'
  belongs_to :kind, :class_name => 'List'

  delegate :name, :to => :owner, :prefix => true

  def additional_users_names
    users.map(&:name).join(', ')
  end

  def thumbnail

  end

  def attachments

  end
end
