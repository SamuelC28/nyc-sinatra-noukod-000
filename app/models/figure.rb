class Figure < ActiveRecord::Base
  belongs_to :landmark
  has_many :figure_titles
  has_many :titles, through: :figure_titles
end
