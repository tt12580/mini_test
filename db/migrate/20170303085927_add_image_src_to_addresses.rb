class AddImageSrcToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :image_src, :string
  end
end
