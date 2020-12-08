class AddDoctorFirstNameToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :first_name, :string
  end
end
