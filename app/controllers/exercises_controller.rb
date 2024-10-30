class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render :index
  end

  def create
    @exercise = Exercise.create(
      workout_id: params[:workout_id],
      name: params[:name],
      reps: params[:reps],
      sets: params[:sets],
      image_url: params[:image_url]
    )
    render :show
  end
end
