class DepartmentsController < ApplicationController

  before_action :set_department, only: [:show, :update, :edit, :destroy]

  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def edit
  end

  def show
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to department_path(@department)
    else
      render :new
    end
  end

  def update
    if @department.save
      redirect_to department_path(@department)
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private
    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params.require(:department).permit(:name)
    end
end
