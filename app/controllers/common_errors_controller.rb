class CommonErrorsController < ApplicationController
  before_action :all_common_errors, only: [:index, :preview]
  before_action :set_common_error, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :preview]
  impressionist actions: [:show]

  def index
    @common_errors = CommonError.paginate(page: params[:page], per_page: 12)
  end

  def show
    impressionist(@common_error)
  end

  def preview
  end

  def new
    @common_error = current_user.common_errors.build
  end

  def edit
  end

  def create
    @common_error = CommonError.new(common_error_params)
    @common_error.user_id = current_user.id
    respond_to do |format|
      if @common_error.save
        format.html { redirect_to @common_error, notice: 'Common error was successfully created.' }
        format.json { render :show, status: :created, location: @common_error }
      else
        format.html { render :new }
        format.json { render json: @common_error.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @common_error.update(common_error_params)
        format.html { redirect_to @common_error, notice: 'Common error was successfully updated.' }
        format.json { render :show, status: :ok, location: @common_error }
      else
        format.html { render :edit }
        format.json { render json: @common_error.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @common_error.destroy
    respond_to do |format|
      format.html { redirect_to common_errors_url, notice: 'Common error was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def correct_user
    @common_error = current_user.common_errors.find_by(params[:id])
    redirect_to common_errors_path, notice: "Not authorized to edit this post" if @common_error.nil?
  end

  def all_common_errors
    @common_errors = CommonError.all.order("created_at DESC")
  end

  def set_common_error
    @common_error = CommonError.find(params[:id])
  end

  def common_error_params
    params.require(:common_error).permit(:image, :error_msg, :description, :user_id)
  end
end
