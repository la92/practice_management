class FamilyHistoriesController < ApplicationController
  before_action :set_family_history, only: [:show, :edit, :update, :destroy]
  before_action :set_patient
  # GET /family_histories
  # GET /family_histories.json
  def index
    #@family_histories = FamilyHistory.all
    @family_histories = @patient.family_histories.order("created_at")
  end

  # GET /family_histories/1
  # GET /family_histories/1.json
  def show
  end

  # GET /family_histories/new
  def new
    #@family_history = FamilyHistory.new
    @family_history = @patient.family_histories.new
  end

  # GET /family_histories/1/edit
  def edit
  end

  # POST /family_histories
  # POST /family_histories.json
  def create
    #@family_history = FamilyHistory.new(family_history_params)
    @family_history = @patient.family_histories.new(family_history_params)
    respond_to do |format|
      if @family_history.save
        format.html { redirect_to @patient, notice: 'Family history was successfully created.' }
        format.json { render :show, status: :created, location: @family_history }
      else
        format.html { render :new }
        format.json { render json: @family_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_histories/1
  # PATCH/PUT /family_histories/1.json
  def update
    respond_to do |format|
      @family_history = FamilyHistory.find(params[:id])
      if @family_history.update_attributes(family_history_params)
        format.html { redirect_to @patient, notice: 'Family history was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_history }
      else
        format.html { render :edit }
        format.json { render json: @family_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_histories/1
  # DELETE /family_histories/1.json
  def destroy
    @family_history.destroy
    respond_to do |format|
      format.html { redirect_to @patient, notice: 'Family history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end 
    def set_family_history
      @family_history = FamilyHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def family_history_params
      params.require(:family_history).permit(:ans, :family_cancer, :family_breast_cancer, :family_blood_disorder, :family_sickle_cell, :neurologic_problem, :family_strok, :cardiac_disorder, :respiratory_disease, :family_birth_defect, :family_endocrine, :patient_id)
    end
end
