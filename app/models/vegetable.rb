class Vegetable < ActiveRecord::Base
  belongs_to :family
  has_many   :varieties

  validates :name, presence: true
  validates :family_id, presence: true
  validates :description, presence: true

end
