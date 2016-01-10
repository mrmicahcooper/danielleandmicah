class Reservation < ActiveRecord::Base
  def attending=(val)
    self[:attending] = val == "cant-wait" ? true : false
  end
end
