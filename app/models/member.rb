class Member < ActiveRecord::Base
  attr_accessible :name, :name_ko

  def selected_name
    I18n.locale == :ko ? name_ko : name
  end
end
