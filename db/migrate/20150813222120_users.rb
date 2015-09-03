class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_name
      t.string :twitter_uid
      t.string :provider
      t.string :twitter_auth_token
      t.string :name
      t.string :url
      t.string :image_url
      t.string :location
    end
  end
end
