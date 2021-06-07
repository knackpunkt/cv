class LebenslaufsController < ApplicationController
  before_action :set_lebenslauf, only: [:show, :edit, :update, :destroy]

  # GET /lebenslaufs
  # GET /lebenslaufs.json
  def index
    @lebenslaufs = Lebenslauf.all
  end

  # GET /lebenslaufs/1
  # GET /lebenslaufs/1.json
  def show
      @lebenslauf = Lebenslauf.find(params[:id])
       respond_to do |format|
            format.html
            format.pdf do
                render pdf: "lebenslauf. #{@lebenslauf_params}",
                page_size: 'A4',
                template: "lebenslaufs/show.html.erb",
                layout: "pdf.html",
                lowquality: true,
                zoom: 1,
                dpi: 75
            end
        end
     end


  # GET /lebenslaufs/new
  def new
    @lebenslauf = Lebenslauf.new
  end

  # GET /lebenslaufs/1/edit
  def edit
  end

  # POST /lebenslaufs
  # POST /lebenslaufs.json
  def create
    @lebenslauf = Lebenslauf.new(lebenslauf_params)

    respond_to do |format|
      if @lebenslauf.save
        format.html { redirect_to @lebenslauf, notice: 'Lebenslauf was successfully created.' }
        format.json { render :show, status: :created, location: @lebenslauf }
      else
        format.html { render :new }
        format.json { render json: @lebenslauf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lebenslaufs/1
  # PATCH/PUT /lebenslaufs/1.json
  def update
    respond_to do |format|
      if @lebenslauf.update(lebenslauf_params)
        format.html { redirect_to @lebenslauf, notice: 'Lebenslauf was successfully updated.' }
        format.json { render :show, status: :ok, location: @lebenslauf }
      else
        format.html { render :edit }
        format.json { render json: @lebenslauf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lebenslaufs/1
  # DELETE /lebenslaufs/1.json
  def destroy
    @lebenslauf.destroy
    respond_to do |format|
      format.html { redirect_to lebenslaufs_url, notice: 'Lebenslauf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lebenslauf
      @lebenslauf = Lebenslauf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lebenslauf_params
      params.require(:lebenslauf).permit(:name, :avatar, :address, :city, :postcode, :phone, :email, :birth, :nationality, :facebook, :linkedin, :degree, :uni, :grade, :year, :degree1, :uni1, :grade1, :year1, :degree2, :uni2, :grade2, :year2, :degree3, :uni3, :grade3, :year3, :degree4, :uni4, :grade4, :year4, :degree5, :uni5, :grade5, :year5, :company, :jobtitle, :start, :end, :detail, :company1, :jobtitle1, :start1, :end1, :detail1, :company2, :jobtitle2, :start2, :end2, :detail2, :company3, :jobtitle3, :start3, :end3, :detail3, :skill, :skill1, :skill2, :skill3, :skill4, :skill5, :skill6, :skill7, :language, :niveau, :language1, :niveau1, :language2, :niveau2, :language3, :niveau3)
    end
end
