class AddBrandIdToVariety < ActiveRecord::Migration
  def change
    add_column :varieties, :brand_id, :integer
  end
end
