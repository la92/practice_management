require 'test_helper'

class FamilyHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_history = family_histories(:one)
  end

  test "should get index" do
    get family_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_family_history_url
    assert_response :success
  end

  test "should create family_history" do
    assert_difference('FamilyHistory.count') do
      post family_histories_url, params: { family_history: { ans: @family_history.ans, cardiac_disorder: @family_history.cardiac_disorder, family_birth_defect: @family_history.family_birth_defect, family_blood_disorder: @family_history.family_blood_disorder, family_breast_cancer: @family_history.family_breast_cancer, family_cancer: @family_history.family_cancer, family_endocrine: @family_history.family_endocrine, family_sickle_cell: @family_history.family_sickle_cell, family_strok: @family_history.family_strok, neurologic_problem: @family_history.neurologic_problem, patient_id: @family_history.patient_id, respiratory_disease: @family_history.respiratory_disease } }
    end

    assert_redirected_to family_history_url(FamilyHistory.last)
  end

  test "should show family_history" do
    get family_history_url(@family_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_history_url(@family_history)
    assert_response :success
  end

  test "should update family_history" do
    patch family_history_url(@family_history), params: { family_history: { ans: @family_history.ans, cardiac_disorder: @family_history.cardiac_disorder, family_birth_defect: @family_history.family_birth_defect, family_blood_disorder: @family_history.family_blood_disorder, family_breast_cancer: @family_history.family_breast_cancer, family_cancer: @family_history.family_cancer, family_endocrine: @family_history.family_endocrine, family_sickle_cell: @family_history.family_sickle_cell, family_strok: @family_history.family_strok, neurologic_problem: @family_history.neurologic_problem, patient_id: @family_history.patient_id, respiratory_disease: @family_history.respiratory_disease } }
    assert_redirected_to family_history_url(@family_history)
  end

  test "should destroy family_history" do
    assert_difference('FamilyHistory.count', -1) do
      delete family_history_url(@family_history)
    end

    assert_redirected_to family_histories_url
  end
end
