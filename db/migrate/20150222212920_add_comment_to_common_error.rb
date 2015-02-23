class AddCommentToCommonError < ActiveRecord::Migration
  def change
    add_column :common_errors, :comment, :string
  end
end
