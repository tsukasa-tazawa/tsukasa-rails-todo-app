class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def index
      render html: "TODOアプリにようこそ"
    end

    def autheniticate_user
      if current_user==nil
        flash[:notice]="ログインが必要です"
        redirect_to("/login")
      end
    end

    private
   # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        redirect_to login_url
      end
    end
end
