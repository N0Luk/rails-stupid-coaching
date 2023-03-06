class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.downcase == 'what time is it?'
      @answer = "It's #{Time.now.strftime('%I:%M %p')}"
    elsif @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
