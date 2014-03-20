class Family < ActiveRecord::Base
  has_many :vegetables


  validates :common_name, presence: true
  validates :family_name, presence: true


end
