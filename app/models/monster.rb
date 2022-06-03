class Monster < ApplicationRecord
  def bmi
    height / weight.to_f * 100
  end
end
