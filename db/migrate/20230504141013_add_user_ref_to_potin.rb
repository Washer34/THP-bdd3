class AddUserRefToPotin < ActiveRecord::Migration[7.0]
  def change
    add_reference :potins, :user, foreign_key: true
  end
end
