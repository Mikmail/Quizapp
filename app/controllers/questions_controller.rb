class QuestionsController < ApplicationController
  def show
    @question = quiz.questions.find(params[:id])
  end

  private

  def quiz
    @quiz ||= Quiz.find(params[:quiz_id])
  end
end
