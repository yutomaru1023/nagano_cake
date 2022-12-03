class ApplicationController < ActionController::Base

  def after_sign_out_path_for(resource)
    public_root_path # ログアウト後に遷移するpath
  end
end
