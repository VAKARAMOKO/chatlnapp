class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /courses
  # GET /courses.json
  def index
   
    @courses = Course.all.order("created_at Desc")
    @course = Course.new
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
     # Recuperer le niveau du cours et de l'elevepuis retour
     ## current.user.level == level_course
     ## Matiere_course == Matiere_selectionne

    def levels
    end
  end

  # GET /courses/new
  def new
    @course = current_user.course.build
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json

  def create
    @course = current_user.course.build(course_params)  
      if @course.save
        flash[:success] = "Le cours a été bien ajouter"
        redirect_to root_path
      else
        flash[:alert] = "Votre nouveau cours n'a pas pu être crée !  Veuillez vérifier le formulaire."
        render :new
  
        
      end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
      if @course.update(course_params)
        flash[:sucess] = "Cours mis à jour"
        redirect_to root_path
      else
        flash[:alert] = "Mise à jour échouée..."
        render :edit
      end   
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:titre, :corps, :Niveau_Cours, :Matiere_Course, :user_id)
    end
end
