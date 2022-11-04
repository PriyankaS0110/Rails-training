class WelcomeController < ApplicationController

  def index
    @welcomes = Welcome.all
  end

  def new
    @welcome = Welcome.new
  end

  def create
    @welcome = Welcome.new(
      first_name: params[:welcome][:first_name],
      last_name: params[:welcome][:last_name],
      student_email: params[:welcome][:student_email]
    )
    @welcome.save
  end
end
