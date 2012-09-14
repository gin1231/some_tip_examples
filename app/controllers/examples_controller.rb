class ExamplesController < ApplicationController

  def locale
    @instance = Member.first
    @new_instance = Member.new
  end

end
