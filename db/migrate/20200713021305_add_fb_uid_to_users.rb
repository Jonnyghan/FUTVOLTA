class AddFbUidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fb_uid, :integer
  end
end
