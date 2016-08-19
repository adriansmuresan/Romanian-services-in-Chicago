class Service < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :contact_info, :presence => true

  belongs_to :user
  belongs_to :category

  # Remember to create a migration!
end
