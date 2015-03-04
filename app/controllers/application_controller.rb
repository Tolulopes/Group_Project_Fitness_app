class ApplicationController < ActionController::Base

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_ransack_form_variables

def set_ransack_form_variables
  q = params[:q]
    @lessons = Lesson.search(title_cont: q).result
    @categories = Category.search(name_cont: q).result
    @users = User.search(name_cont: q).result
end



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :image, :role, :name, :biography) }
 end
end