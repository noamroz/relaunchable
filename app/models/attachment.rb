class Attachment < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :to, :polymorphic => true
  belongs_to :user
end
