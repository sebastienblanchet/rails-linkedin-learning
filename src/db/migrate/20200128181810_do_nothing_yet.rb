# rails generate migration DoNothingYet
class DoNothingYet < ActiveRecord::Migration[6.0]

  # also
  # CHANGE data
  # def change i.e DOES both
  def up
  end

  # how to reverse methods
  def down
  end

  # some other methods
  # def {create, drop, rename}_table
  # def {add, remove, rename}_column

end
