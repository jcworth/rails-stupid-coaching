class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:ask]
      @ask = params[:ask]
    end
    if @ask == 'I am going to work'
      @answer = 'Great!'
    elsif @ask.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
