module AdminUsers
  class ProfileAdminUsersController < ApplicationController
    before_action :authenticate_admin_user!

    layout 'admin_dashboard'

    def index
      @user_count = User.count
      @post_articles_count = PostArticle.count
      @feedbacks_count = Feedback.count
    end
  end
end
