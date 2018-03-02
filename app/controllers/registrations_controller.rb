class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
  if resource.user_type == 'organisation'
      '/org_profiles/new'
    elsif resource.user_type == 'freelancer'
      '/freelancer_profiles/new'
    end

  end
end
