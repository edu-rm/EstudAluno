class ChangeColumnNameTypeOfQuestion < ActiveRecord::Migration[5.1]
  def change
    rename_column :questions, :type, :area_conhecimento
  end
end
