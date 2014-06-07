# Handles the basic CRUD actions for RESTful models
class ObjectController < ApplicationController
  def index
    objects = model_class.all
    set_models(objects)

    render json: objects
  end

  def create
    object = model_class.new(params[name_single])
    set_model(object)

    if object.save
      render json: [object] # Always serialize as an array, in accordance with JSON API
    else
      render json: object.errors
    end
  end

  def show
    object = model_class.find(params[:id])
    set_model(object)

    render json: [object] # Always serialize as an array, in accordance with JSON API
  end

  def update
    object = model_class.find(params[:id])
    set_model(object)

    if object.update!(params[name_single])
      render json: [object] # Always serialize as an array, in accordance with JSON API
    else
      render json: object.errors
    end
  end

  def destroy
    object = model_class.find(params[:id])
    set_model(object)

    if object.destroy
      render json: [object] # Always serialize as an array, in accordance with JSON API
    else
      render json: [object], status: :unprocessable_entity
    end
  end

private
  def model_class
    params[:controller].singularize.camelize.constantize
  end

  def name_plural
    params[:controller]
  end

  def name_single
    params[:controller].singularize
  end

  # Sets instance variable like @user so it can be accessed in views
  def set_model(object)
    instance_variable_set("@#{name_single}", object)
  end
  # Sets instance variable like @users so it can be accessed in views
  def set_models(objects)
    instance_variable_set("@#{name_plural}", objects)
  end
end