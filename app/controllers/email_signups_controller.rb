class EmailSignupsController < PublicFacingController

  def params
    new_params = super
    policy_areas = new_params.delete("topics")
    new_params["policy_areas"] = policy_areas unless policy_areas.nil?
    new_params
  end

  def new
    @email_signup = EmailSignup.new(email_signup_params)
  end

  def create
    @email_signup = EmailSignup.new(email_signup_params)

    if @email_signup.save
      redirect_to @email_signup.govdelivery_url
    else
      render action: 'new'
    end
  end

private

  def email_signup_params
    params.require(:email_signup).permit(:feed)
  end
end
