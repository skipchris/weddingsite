module PagesHelper

  def inv_grid_cols(guests)
    return 12 if guests.count === 0
    (12 / guests.count).round
  end
end
