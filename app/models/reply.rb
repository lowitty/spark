class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :ama
  has_many :comments
end
