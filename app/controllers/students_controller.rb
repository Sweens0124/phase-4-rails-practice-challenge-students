class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students 
    end
      
    def create
        puts params[:instructor_id] 
        student = Student.create(student_params)
        render json: student, status: :created 
    end
      
    def update
        student = Student.find_by(id: params[:id])
        if student
            student.update(student_params)
            render json: student
        else
            render json: {error: "Student is not found"}, status: :not_found
        end
    end
      
    def destroy
        student = Student.find_by(id: params[:id])
        if student
            Student.destroy 
            head :no_content
        else
            render json: {error: "Student is not found"}, status: :not_found
          
        end
    end
      
    private
      
    def student_params
        params.permit(:name , :major , :age)
    end
end
