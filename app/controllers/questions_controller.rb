class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
    5.times do 
      @question.alternatives.build
    end
  end

  # GET /questions/1/edit
  def edit
    (5 - @question.alternatives.count).times do 
      @question.alternatives.build
    end
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.user = current_user

    respond_to do |format|
      if @question.save
        # correta = params[:alternatives][:correta]
        # if !correta.nil? && !correta.blank?
          # @question.alternatives.update(correta:false)
          # @question.alternatives.find(correta).update(correta:true)
        # end

        format.html { redirect_to questions_path, notice: 'Questão salva com sucesso.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        
        # correta = params[:alternatives][:correta]
        # if !correta.nil? && !correta.blank?
        #   @question.alternatives.update(correta:false)
        #   @question.alternatives.find(correta).update(correta:true)
        # end

        format.html { redirect_to @question, notice: 'Questão atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Questão excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  def area_conhecimento
    @questions = Question.where(area_conhecimento: params[:area])
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:description, :user_id, :active, :area_conhecimento, :feedback, alternatives_attributes: [:id, :descricao, :correta, :_destroy])
    end
end
