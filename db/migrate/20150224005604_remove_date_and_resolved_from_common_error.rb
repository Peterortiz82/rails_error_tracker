class RemoveDateAndResolvedFromCommonError < ActiveRecord::Migration
  def change
    remove_column :common_errors, :date, :integer
    remove_column :common_errors, :resolved, :boolean
  end
end
