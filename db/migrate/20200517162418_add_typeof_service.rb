class AddTypeofService < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :service_type, :string
  end
end
