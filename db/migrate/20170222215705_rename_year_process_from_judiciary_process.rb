class RenameYearProcessFromJudiciaryProcess < ActiveRecord::Migration[5.0]
  def change
    change_column :judiciary_processes, :year_process, :string
  end
end
