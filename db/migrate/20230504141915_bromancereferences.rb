class Bromancereferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :bromances, :potin, foreign_key: true
    add_reference :bromances, :tag, foreign_key: true
  end
end
