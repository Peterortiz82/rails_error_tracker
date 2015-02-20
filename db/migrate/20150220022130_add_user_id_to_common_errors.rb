class AddUserIdToCommonErrors < ActiveRecord::Migration
  def change
    add_column :common_errors, :user_id, :integer
  end
end
