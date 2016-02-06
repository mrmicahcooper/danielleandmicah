class Reservation < ActiveRecord::Base

  validates_presence_of :name

  def attending=(val)
    self[:attending] = val == "cant-wait" ? true : false
  end
end
