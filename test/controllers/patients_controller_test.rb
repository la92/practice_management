require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { address_line1: @patient.address_line1, address_line2: @patient.address_line2, city: @patient.city, dob: @patient.dob, email: @patient.email, first_name: @patient.first_name, last_name: @patient.last_name, middle_name: @patient.middle_name, phone_number: @patient.phone_number, sex: @patient.sex, ssn: @patient.ssn, state: @patient.state, zip_code: @patient.zip_code } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { address_line1: @patient.address_line1, address_line2: @patient.address_line2, city: @patient.city, dob: @patient.dob, email: @patient.email, first_name: @patient.first_name, last_name: @patient.last_name, middle_name: @patient.middle_name, phone_number: @patient.phone_number, sex: @patient.sex, ssn: @patient.ssn, state: @patient.state, zip_code: @patient.zip_code } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
