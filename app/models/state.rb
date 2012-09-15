class State < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :capital, :abbreviation, :year
end
