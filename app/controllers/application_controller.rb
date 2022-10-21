class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def index
      render html: "TODOアプリにようこそ"
    end


    private
   # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end
end
