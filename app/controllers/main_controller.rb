class MainController < ApplicationController
  def index
    @people = Person.all.sort{|a, b| b.check_ins.count <=> a.check_ins.count}
    @locations = Location.all.sort{|a, b| b.check_ins.count <=> a.check_ins.count}    
    @locations_to_mark = @locations.map {|l| {:location => l, :visitors => l.current_visitors}}
  end
end
