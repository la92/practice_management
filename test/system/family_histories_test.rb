require "application_system_test_case"

class FamilyHistoriesTest < ApplicationSystemTestCase
  setup do
    @family_history = family_histories(:one)
  end

  test "visiting the index" do
    visit family_histories_url
    assert_selector "h1", text: "Family Histories"
  end

  test "creating a Family history" do
    visit family_histories_url
    click_on "New Family History"

    check "Ans" if @family_history.ans
    check "Cardiac disorder" if @family_history.cardiac_disorder
    check "Family birth defect" if @family_history.family_birth_defect
    check "Family blood disorder" if @family_history.family_blood_disorder
    check "Family breast cancer" if @family_history.family_breast_cancer
    check "Family cancer" if @family_history.family_cancer
    check "Family endocrine" if @family_history.family_endocrine
    check "Family sickle cell" if @family_history.family_sickle_cell
    check "Family strok" if @family_history.family_strok
    check "Neurologic problem" if @family_history.neurologic_problem
    fill_in "Patient", with: @family_history.patient_id
    check "Respiratory disease" if @family_history.respiratory_disease
    click_on "Create Family history"

    assert_text "Family history was successfully created"
    click_on "Back"
  end

  test "updating a Family history" do
    visit family_histories_url
    click_on "Edit", match: :first

    check "Ans" if @family_history.ans
    check "Cardiac disorder" if @family_history.cardiac_disorder
    check "Family birth defect" if @family_history.family_birth_defect
    check "Family blood disorder" if @family_history.family_blood_disorder
    check "Family breast cancer" if @family_history.family_breast_cancer
    check "Family cancer" if @family_history.family_cancer
    check "Family endocrine" if @family_history.family_endocrine
    check "Family sickle cell" if @family_history.family_sickle_cell
    check "Family strok" if @family_history.family_strok
    check "Neurologic problem" if @family_history.neurologic_problem
    fill_in "Patient", with: @family_history.patient_id
    check "Respiratory disease" if @family_history.respiratory_disease
    click_on "Update Family history"

    assert_text "Family history was successfully updated"
    click_on "Back"
  end

  test "destroying a Family history" do
    visit family_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Family history was successfully destroyed"
  end
end
