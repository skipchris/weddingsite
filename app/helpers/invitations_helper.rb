module InvitationsHelper

  def inv_grid_cols(guests)
    num = guests.count
    return 12 if num === 0
    return (num > 4) ? 4 : (12 / num).round # Just go to 3 per row if > 4 people
  end
end
