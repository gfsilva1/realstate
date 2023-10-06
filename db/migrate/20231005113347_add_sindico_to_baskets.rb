class AddSindicoToBaskets < ActiveRecord::Migration[7.0]
  def change
    add_column :baskets, :sindico, :string
  end
end
