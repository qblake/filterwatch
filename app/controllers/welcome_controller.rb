class WelcomeController < ApplicationController
  def index
    @user_projects = Project.all
    @project = Project.new
  end
end
