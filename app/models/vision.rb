class Vision < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :attachments, :as => :to
  belongs_to :product
  belongs_to :relauncher, :class_name => 'User'

end
