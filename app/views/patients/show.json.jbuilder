json.partial! "patients/patient", patient: @patient
json.partial! "patients/patient/notes", note: @patient.notes
