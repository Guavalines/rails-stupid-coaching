class CommunicationsController < ApplicationController
  def ask; end

  def answer
    @talk = params[:talk]
    if @talk == "I'm going to work"
      @answer = 'Great!'
    elsif @talk.end_with?('?')
      @answer = 'SILLY QUESTION! GET DRESSED AND GO TO WORK!'
    else
      @answer = "I DON'T CARE, GET DRESSED AND GO TO WORK!"
    end
  end
end
