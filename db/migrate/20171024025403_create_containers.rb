class CreateContainers < ActiveRecord::Migration[5.1]
  def change
    create_table :containers do |t|
      t.date :departure_date
      t.date :arrival_date

      t.timestamps
    end
  end
end
