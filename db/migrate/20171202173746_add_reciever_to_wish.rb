class AddRecieverToWish < ActiveRecord::Migration[5.0]
  def change
    add_column :wishes, :reciever, :string
  end
end
