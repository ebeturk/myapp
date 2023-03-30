class CreateJoinTableUserListing < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :listings do |t|
      t.index [:user_id, :listing_id]
      t.index [:listing_id, :user_id]
    end
  end
end
