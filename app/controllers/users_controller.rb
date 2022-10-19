class UsersController < ApplicationController
  def tsukasa
    render 'ようこそ'
  end

  def new
    @user = User.new
  end
end