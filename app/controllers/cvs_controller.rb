class CvsController < ApplicationController
  before_action :set_cv, only: [:show, :edit, :update, :destroy]

  # GET /cvs
  # GET /cvs.json
  def index
    @cvs = Cv.all
  end

  # GET /cvs/1
  # GET /cvs/1.json

    def show
       @cv = Cv.find(params[:id])
       respond_to do |format|
            format.html
            format.pdf do
                render pdf: "cv. #{@cv_params}",
                page_size: 'A4',
                template: "cvs/show.html.erb",
                layout: "pdf.html",
                lowquality: true,
                zoom: 1,
                dpi: 75
            end
        end
     end

     #respond_to do |format|
    #format.html
    #format.pdf do
     #render pdf: "cv", template: "cvs/show.html.erb",
      #:layout => 'pdf',
               #  page_size: 'A4',
                #template: "cvs/show.html.erb",
                #layout: "pdf.html",
                #lowquality: true,
                #zoom: 1,
                #dpi: 75

   #end
     # <---------- This will handle the pdf response

  # GET /cvs/new
  def new
    @cv = Cv.new
  end

  # GET /cvs/1/edit
  def edit
  end

  # POST /cvs
  # POST /cvs.json
  def create
    @cv = Cv.new(cv_params)

    respond_to do |format|
      if @cv.save
        format.html { redirect_to @cv, notice: 'Cv was successfully created.' }
        format.json { render :show, status: :created, location: @cv }

      else
        format.html { render :new }
        format.json { render json: @cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cvs/1
  # PATCH/PUT /cvs/1.json
  def update
    respond_to do |format|
      if @cv.update(cv_params)
        format.html { redirect_to @cv, notice: 'Cv was successfully updated.' }
        format.json { render :show, status: :ok, location: @cv }
      else
        format.html { render :edit }
        format.json { render json: @cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cvs/1
  # DELETE /cvs/1.json
  def destroy
    @cv.destroy
    respond_to do |format|
      format.html { redirect_to cvs_url, notice: 'Cv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cv
      @cv = Cv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cv_params
      params.require(:cv).permit(:name, :avatar, :address, :city, :postcode, :phone, :email, :birth, :nationality, :facebook, :linkedin, :degree, :uni, :grade, :year, :degree1, :uni1, :grade1, :year1, :degree2, :uni2, :grade2, :year2, :degree3, :uni3, :grade3, :year3, :degree4, :uni4, :grade4, :year4, :degree5, :uni5, :grade5, :year5, :company, :jobtitle, :start, :end, :detail, :company1, :jobtitle1, :start1, :end1, :detail1, :company2, :jobtitle2, :start2, :end2, :detail2, :company3, :jobtitle3, :start3, :end3, :detail3, :skill, :level, :skill1, :level1, :skill2, :level2, :skill3, :level3, :skill4, :level4, :skill5, :level5, :skill6, :level6, :skill7, :level7, :skill8, :level8, :skill9, :level9, :language, :levela, :language1, :levelb, :language2, :levelc, :language3, :leveld, :yea, :yea1, :yea2, :yea3, :yea4, :yea5, :yea6, :yea7, :yea8, :yea9, :yea10)
    end

end
