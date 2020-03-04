module TvShowsHelper
  def fav_or_not(show)
    current_user.favorite_show_ids.include?(show.id) ? 'unlike' : 'like'
  end
end
