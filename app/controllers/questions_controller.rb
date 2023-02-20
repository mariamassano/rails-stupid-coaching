class QuestionsController < ApplicationController
  def ask
  end

  def answer
    right_question = 'I am going to work'
    if params[:question] == right_question
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
