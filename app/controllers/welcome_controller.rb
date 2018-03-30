class WelcomeController < ApplicationController
  def index
  end

  def downgrade
    current_user.wikis.each do |wiki|
      wiki.private = nil
    end
    current_user.standard!
    redirect_to root_path
  end
end
