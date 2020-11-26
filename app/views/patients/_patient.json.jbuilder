json.extract! patient, :id, :first_name, :middle_name, :last_name, :dob, :sex, :ssn, :email, :phone_number, :address_line1, :address_line2, :city, :state, :zip_code, :created_at, :updated_at
json.url patient_url(patient, format: :json)
