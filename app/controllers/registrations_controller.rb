class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :card_number, :password)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :card_number, :password, :password_confirmation, :current_password)
  end
end