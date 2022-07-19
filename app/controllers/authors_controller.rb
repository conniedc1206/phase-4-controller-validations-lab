class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  # Change AuthorsController#create to send back the error messages if the new author is invalid
  def create
    author = Author.create!(author_params)
    render json: author, status: :created
  rescue ActiveRecord::RecordInvalid => error
    render json: { errors: error.record.errors }, status: :unprocessable_entity
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end
