class MedicalRecordsController < ApplicationController
  before_action :set_medical_record, only: [:show, :edit, :update, :destroy]
  before_action :set_patient
  # GET /medical_records
  # GET /medical_records.json
  def index
    #@medical_records = MedicalRecord.all
    @medical_records = @patient.medical_records.order("created_at")
  end

  # GET /medical_records/1
  # GET /medical_records/1.json
  def show
  end

  # GET /medical_records/new
  def new
    #@medical_record = MedicalRecord.new
    @medical_record = @patient.medical_records.new
  end

  # GET /medical_records/1/edit
  def edit
  end

  # POST /medical_records
  # POST /medical_records.json
  def create
    #@medical_record = MedicalRecord.new(medical_record_params)
    @medical_record = @patient.medical_records.new(medical_record_params)
    respond_to do |format|
      if @medical_record.save
        format.html { redirect_to @patient, notice: 'Medical record was successfully created.' }
        format.json { render :show, status: :created, location: @medical_record }
      else
        format.html { render :new }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_records/1
  # PATCH/PUT /medical_records/1.json
  def update
    respond_to do |format|
      @medical_record = MedicalRecord.find(params[:id])
      if @medical_record.update_attributes(medical_record_params)
        format.html { redirect_to @patient, notice: 'Medical record was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_record }
      else
        format.html { render :edit }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_records/1
  # DELETE /medical_records/1.json
  def destroy
    @medical_record.destroy
    respond_to do |format|
      format.html { redirect_to @patient , notice: 'Medical record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end
    def set_medical_record
      @medical_record = MedicalRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_record_params
      params.require(:medical_record).permit(:aspirin, :codine, :penicillin, :local_anesthesia, :acrylic, :latex, :aids, :alzhimers, :asthma, :blood_disease, :cancer, :chest_pains, :diabetes, :drug_addiction, :injuries, :comments, :patient_id)
    end
end
