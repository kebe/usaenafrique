class AddContactNumToShipment < ActiveRecord::Migration[5.1]
  def change
  	add_column :shipments, :pickup_contact_number, :string
  end
end
