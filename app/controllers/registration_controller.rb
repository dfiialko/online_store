class RegistrationController < Devise ::RegistrationController
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :city, :unit,
                                 :address, :email, :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :city, :unit,
                                 :address, :email, :password,
                                 :password_confirmation, :current_password)
  end
end
