class AddCorretaToAlternative < ActiveRecord::Migration[5.1]
  def change
    add_column :alternatives, :correta, :boolean, default:false
  end
end
