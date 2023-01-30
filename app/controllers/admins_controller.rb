class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
    # For display all admins information.
  def index
    @admin = Admin.all
  end

    # For only one admin by his id
  def show
    @admin = Admin.find(params[:id])
    # try to get this with before action
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    @admin.update(admin_params)
    redirect_to admin_path(@admin)
  end

  def destroy
    @admin.destroy
    redirect_to admin_path
  end


    # POST /admins or /admins.json
  def create
    @admin = Admin.new(admin_params)
    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: "Admin was successfully created." }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_params
      params.require(:admin).permit(:Fname, :Lname, :age, :salary, :position)
    end
end
