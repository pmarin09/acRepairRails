class CreateAppointmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.datetime :appointment_date
      t.datetime :appointment_time
      t.string :ac_brand
      t.integer :ac_qty



      t.timestamps
    end
  end
end
