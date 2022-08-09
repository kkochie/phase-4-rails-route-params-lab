class StudentsController < ApplicationController

  # Use query params in the index action to return a list of students whose first or last name matches the query parameter
  def index
    students =  if params[:name]
                  Student.by_name(params[:name])
                else
                  Student.all
                end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
