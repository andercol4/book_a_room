class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.integer :room_number
      t.integer :number_in_party
      t.string :email
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :email_conformation
      t.text :description

      t.timestamps null: false
    end
  end
end
