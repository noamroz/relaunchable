class Comment < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :attachments, :as => :to
  belongs_to :user
  belongs_to :on, :polymorphic => true
end
