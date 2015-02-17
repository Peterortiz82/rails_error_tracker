class CreateCommonErrors < ActiveRecord::Migration
  def change
    create_table :common_errors do |t|
      t.string :error_msg
      t.string :description
      t.date :date
      t.boolean :resolvedd

      t.timestamps null: false
    end
  end
end
