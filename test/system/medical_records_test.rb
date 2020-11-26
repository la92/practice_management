require "application_system_test_case"

class MedicalRecordsTest < ApplicationSystemTestCase
  setup do
    @medical_record = medical_records(:one)
  end

  test "visiting the index" do
    visit medical_records_url
    assert_selector "h1", text: "Medical Records"
  end

  test "creating a Medical record" do
    visit medical_records_url
    click_on "New Medical Record"

    check "Acrylic" if @medical_record.acrylic
    check "Aids" if @medical_record.aids
    check "Alzhimers" if @medical_record.alzhimers
    check "Aspirin" if @medical_record.aspirin
    check "Asthma" if @medical_record.asthma
    check "Blood disease" if @medical_record.blood_disease
    check "Cancer" if @medical_record.cancer
    check "Chest pains" if @medical_record.chest_pains
    check "Codine" if @medical_record.codine
    fill_in "Comments", with: @medical_record.comments
    check "Diabetes" if @medical_record.diabetes
    check "Drug addiction" if @medical_record.drug_addiction
    check "Injuries" if @medical_record.injuries
    check "Latex" if @medical_record.latex
    check "Local anesthesia" if @medical_record.local_anesthesia
    fill_in "Patient", with: @medical_record.patient_id
    check "Penicillin" if @medical_record.penicillin
    click_on "Create Medical record"

    assert_text "Medical record was successfully created"
    click_on "Back"
  end

  test "updating a Medical record" do
    visit medical_records_url
    click_on "Edit", match: :first

    check "Acrylic" if @medical_record.acrylic
    check "Aids" if @medical_record.aids
    check "Alzhimers" if @medical_record.alzhimers
    check "Aspirin" if @medical_record.aspirin
    check "Asthma" if @medical_record.asthma
    check "Blood disease" if @medical_record.blood_disease
    check "Cancer" if @medical_record.cancer
    check "Chest pains" if @medical_record.chest_pains
    check "Codine" if @medical_record.codine
    fill_in "Comments", with: @medical_record.comments
    check "Diabetes" if @medical_record.diabetes
    check "Drug addiction" if @medical_record.drug_addiction
    check "Injuries" if @medical_record.injuries
    check "Latex" if @medical_record.latex
    check "Local anesthesia" if @medical_record.local_anesthesia
    fill_in "Patient", with: @medical_record.patient_id
    check "Penicillin" if @medical_record.penicillin
    click_on "Update Medical record"

    assert_text "Medical record was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical record" do
    visit medical_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical record was successfully destroyed"
  end
end
