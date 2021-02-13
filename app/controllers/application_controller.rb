class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
     flash[:alert] = "You are not authorized to perform this action."
     redirect_to(root_path)
  end

  #def skip_pundit?
  #  devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  #end
end
