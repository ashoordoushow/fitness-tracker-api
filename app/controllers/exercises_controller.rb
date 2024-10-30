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

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(
      workout_id: params[:workout_id] || @exercise.workout_id,
      name: params[:name] || @exercise.name,
      reps: params[:reps] || @exercise.reps,
      sets: params[:sets] || @exercise.sets,
      image_url: params[:image_url] || @exercise.image_url,
    )
    render :show
    @exercise.save
  end

end
