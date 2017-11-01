class CreateShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :shipments do |t|
      t.references :client, foreign_key: true
      t.references :container, foreign_key: true
      t.string :pickup_contact_person
      t.text :content_description

      t.timestamps
    end
  end
end
