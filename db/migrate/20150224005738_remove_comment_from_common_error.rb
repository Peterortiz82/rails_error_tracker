class RemoveCommentFromCommonError < ActiveRecord::Migration
  def change
    remove_column :common_errors, :comment, :string
  end
end
