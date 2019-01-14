class CreateLandmarks < ActiveRecord::Migration
  # raise 'Write CreateLandmarks migration here'
   t.string :name
   t.belongs_to :figure
   t.integer :year_completed
end
