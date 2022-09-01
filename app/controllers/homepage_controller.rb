class HomepageController < ApplicationController
  def index
    @huddles = Huddle.find(confirmed_time: Date.today.beginning_of_day..Date.today.end_of_day)
  end
end
