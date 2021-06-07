class AnschreibensController < ApplicationController
  before_action :set_anschreiben, only: %i[ show edit update destroy ]

  # GET /anschreibens or /anschreibens.json
  def index
    @anschreibens = Anschreiben.all
  end

  # GET /anschreibens/1 or /anschreibens/1.json
  def show
  end

  # GET /anschreibens/new
  def new
    @anschreiben = Anschreiben.new
  end

  # GET /anschreibens/1/edit
  def edit
  end

  # POST /anschreibens or /anschreibens.json
  def create
    @anschreiben = Anschreiben.new(anschreiben_params)

    respond_to do |format|
      if @anschreiben.save
        format.html { redirect_to @anschreiben, notice: "Anschreiben was successfully created." }
        format.json { render :show, status: :created, location: @anschreiben }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anschreiben.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anschreibens/1 or /anschreibens/1.json
  def update
    respond_to do |format|
      if @anschreiben.update(anschreiben_params)
        format.html { redirect_to @anschreiben, notice: "Anschreiben was successfully updated." }
        format.json { render :show, status: :ok, location: @anschreiben }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anschreiben.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anschreibens/1 or /anschreibens/1.json
  def destroy
    @anschreiben.destroy
    respond_to do |format|
      format.html { redirect_to anschreibens_url, notice: "Anschreiben was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anschreiben
      @anschreiben = Anschreiben.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anschreiben_params
      params.require(:anschreiben).permit(:name, :adess, :plz, :plzz, :city, :company_name, :comapay_adress, :company_city, :bewerbung, :stelle, :datum)
    end
end
