class AddImageToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :image, :string
  end
end
