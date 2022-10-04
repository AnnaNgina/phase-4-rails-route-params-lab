class StudentsController < ApplicationController

  def index
    q_first_name = params[:first_name] 
    q_last_name = params[:last_name] 

   students = if q_first_name
      Student.find_by(first_name: q_first_name)
    elsif q_last_name
      Student.find_by(last_name: q_last_name)
    else
      Student.all
    end

    render json: students
  end
  
  def show
    student = Student.find(params[:id]);
    render json: student
  end

end
