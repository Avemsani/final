class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find_by(id: params[:id])
  end

  def new
  end

  def create
    @answer = Answer.new
    @answer.caption = params[:caption]
    @answer.question_id = params[:question_id]

    if @answer.save
      redirect_to "/questions/#{ @answer.question_id }"
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    @answer.caption = params[:caption]
    @answer.question_id = params[:question_id]

    if @answer.save
      redirect_to "/answers/#{ @answer.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find_by(id: params[:id])
    @answer.destroy


    redirect_to "/answers"
  end
end
