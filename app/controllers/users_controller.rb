class UsersController < ApplicationController
  def index
    @users = User.all.order(:user_name).limit(50)
      respond_to do |format|
        format.html
        format.csv { send_data @users.to_csv, filename: "users-#{Date.today}.csv" }
      end
  end
end
