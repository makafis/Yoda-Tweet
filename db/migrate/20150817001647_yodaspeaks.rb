class Yodaspeaks < ActiveRecord::Migration
  def change
    create_table :yoda_speaks do |t|
      t.string :user_input
      t.string :response
      t.integer :user_id
    end
  end
end
