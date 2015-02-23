class AddImpressionsCountToCommonError < ActiveRecord::Migration
  def change
    add_column :common_errors, :impressions_count, :integer, default: 0
  end
end
