class StudentsController < ApplicationController

    def index

        students = Student.all
        render json: students

    end

    def grades
        
        grades = Student.order(grade: :desc)#.select(:grade)

        render json: grades


    end

    def highest_grade

        star = Student.order(grade: :desc)[0]

        render json: star

    end


end
