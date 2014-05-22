require 'open-uri'
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

  def info

    uri_name = self.name.gsub(/\s/, "%20")

    base_url = "http://en.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&redirects=true&titles=" + uri_name
    
    request = open(base_url).read

    veg_json = JSON.parse(request)
    veg_id = veg_json["query"]["pages"].keys.first.to_s
    extract = veg_json["query"]["pages"][veg_id]["extract"]
    
    return extract.html_safe
  end

end
