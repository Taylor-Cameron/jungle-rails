module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def create_rating_stars(int)
        stars = ''
        for counter in 1..int.to_i
            stars += "☆"
        end
        stars
    end

  def product_ratings_path
        product_path @product
    end
end
