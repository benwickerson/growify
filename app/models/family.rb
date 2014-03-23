# == Schema Information
#
# Table name: families
#
#  id          :integer          not null, primary key
#  common_name :string(255)
#  family_name :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Family < ActiveRecord::Base
  has_many :vegetables

  validates :common_name, presence: true
  validates :family_name, presence: true


end
