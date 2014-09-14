module GuestsHelper

  # Lists of dishes for each course
  def starters
    RubyWedding::Dish.where(course_id: 4)
  end

  def mains
    RubyWedding::Dish.where(course_id: 5)
  end

  def puds
    RubyWedding::Dish.where(course_id: 6)
  end

  # Starter/Main/Pud for each guest
  def starter_for(guest)
    guest.menu_choices.where(dish_id: starters).first.dish
  end

  def main_for(guest)
    guest.menu_choices.where(dish_id: mains).first.dish
  end

  def pud_for(guest)
    return Struct.new(:id) { def shortname; "Panna Cotta"; end }.new if guest.fullname == "Ian Kerr"
    guest.menu_choices.where(dish_id: puds).first.dish
  end
end
