class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def index
      redirect_to '/static_pages/home'
    end

    def autheniticate_user
      if current_user==nil
        flash[:notice]="ログインが必要です"
        redirect_to("/login")
      end
    end

    def forbid_login_user
      @user = User.find(params[:id])
        if not @user == current_user
          redirect_to current_user
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
