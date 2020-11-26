class CreateFamilyHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :family_histories do |t|
      t.boolean :ans
      t.boolean :family_cancer
      t.boolean :family_breast_cancer
      t.boolean :family_blood_disorder
      t.boolean :family_sickle_cell
      t.boolean :neurologic_problem
      t.boolean :family_strok
      t.boolean :cardiac_disorder
      t.boolean :respiratory_disease
      t.boolean :family_birth_defect
      t.boolean :family_endocrine
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
