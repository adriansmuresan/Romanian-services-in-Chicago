class Category < ActiveRecord::Base
  has_many :services

  validates :title, :presence => true
  # Remember to create a migration!
end
