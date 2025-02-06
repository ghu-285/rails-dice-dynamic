class DiceController < ApplicationController
  
  def home
    render "dice_templates/home"
  end

  def roll_die
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render "dice_templates/roll_die"
  end

end
