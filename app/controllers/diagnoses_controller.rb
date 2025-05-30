class DiagnosesController < ApplicationController
    def index

    end

    def new

    end

    def result 
        birthday = params[:birthday]
        sum = birthday.chars.map(&:to_i).sum
        type = sum % 12
    end
    
end
