class AddDoctorLastNameToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :last_name, :string
  end
end
