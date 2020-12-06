class CommunalServiceRecordsController < ApplicationController
  before_action :set_communal_service_record, only: [:show, :edit, :update, :destroy]

  # GET /communal_service_records
  # GET /communal_service_records.json
  def index
    @communal_service_records = CommunalServiceRecord.all
  end

  # GET /communal_service_records/1
  # GET /communal_service_records/1.json
  def show
  end

  # GET /communal_service_records/new
  def new
    @communal_service_record = CommunalServiceRecord.new
  end

  # GET /communal_service_records/1/edit
  def edit
  end

  # POST /communal_service_records
  # POST /communal_service_records.json
  def create
    @communal_service_record = CommunalServiceRecord.new(communal_service_record_params)

    respond_to do |format|
      if @communal_service_record.save
        format.html { redirect_to @communal_service_record, notice: 'Communal service record was successfully created.' }
        format.json { render :show, status: :created, location: @communal_service_record }
      else
        format.html { render :new }
        format.json { render json: @communal_service_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communal_service_records/1
  # PATCH/PUT /communal_service_records/1.json
  def update
    respond_to do |format|
      if @communal_service_record.update(communal_service_record_params)
        format.html { redirect_to @communal_service_record, notice: 'Communal service record was successfully updated.' }
        format.json { render :show, status: :ok, location: @communal_service_record }
      else
        format.html { render :edit }
        format.json { render json: @communal_service_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communal_service_records/1
  # DELETE /communal_service_records/1.json
  def destroy
    @communal_service_record.destroy
    respond_to do |format|
      format.html { redirect_to communal_service_records_url, notice: 'Communal service record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communal_service_record
      @communal_service_record = CommunalServiceRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def communal_service_record_params
      params.require(:communal_service_record).permit(:owner_name, :owner_last_name, :service_type, :city, :street, :house, :apartment)
    end
end
