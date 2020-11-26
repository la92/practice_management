class CreateMedicalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_records do |t|
      t.boolean :aspirin
      t.boolean :codine
      t.boolean :penicillin
      t.boolean :local_anesthesia
      t.boolean :acrylic
      t.boolean :latex
      t.boolean :aids
      t.boolean :alzhimers
      t.boolean :asthma
      t.boolean :blood_disease
      t.boolean :cancer
      t.boolean :chest_pains
      t.boolean :diabetes
      t.boolean :drug_addiction
      t.boolean :injuries
      t.text :comments
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
