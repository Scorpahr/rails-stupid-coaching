class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].match('choucroute')
      @answer_coach = 'Great!'
    elsif params[:question].match(/^.*\?$/)
      @answer_coach = "Silly question, get dressed and go to work!"
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
