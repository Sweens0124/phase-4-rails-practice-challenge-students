class InstructorsController < ApplicationController
  def index
  instructors = Instructor.all
  render json: instructors 
  end

  def create

  end

  def update

  end

  def destroy

  end

end
