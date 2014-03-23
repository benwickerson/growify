# == Schema Information
#
# Table name: vegetables
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  family_id   :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Vegetable < ActiveRecord::Base
  belongs_to :family
  has_many   :varieties

  validates :name, presence: true
  validates :family_id, presence: true
  # validates :description, presence: true

end
