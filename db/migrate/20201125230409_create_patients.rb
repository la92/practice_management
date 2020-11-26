class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :dob
      t.string :sex
      t.string :ssn
      t.string :email
      t.string :phone_number
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
