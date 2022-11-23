class RegisController < ApplicationController
  before_action :authenticate
  before_action :set_regi, except: [:new, :index, :create]

  # GET /regis or /regis.json
  def index
    @regis = Regi.page params[:page]
  end

  # GET /regis/new
  def new
    @regi = Regi.new
  end
  
  # POST /regis or /regis.json
  def create
    @regi = Regi.new regi_params
    if @regi.save
      redirect_to regis_path, notice: "Patient created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /regis/1 or /regis/1.json
  def show
  end

  # GET /regis/1/edit
  def edit
  end

  # PATCH/PUT /regis/1 or /regis/1.json
  def update
    if @regi.update regi_params
      redirect_to regis_path, notice: "Patient updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end


  # DELETE /regis/1 or /regis/1.json
  def destroy
    @regi.destroy
    redirect_to regis_path, alert: "Patient deleted."
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_regi
    @regi = Regi.find params[:id]
  end

  # Only allow a list of trusted parameters through.
  def regi_params
    params.require(:regi).permit(:lastNm, :firstNm, :init, :gender, :dob)
  end
end
