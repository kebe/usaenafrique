class AddContainerNumberToContainer < ActiveRecord::Migration[5.1]
  def change
  	add_column :containers, :container_number, :string
  end
end
