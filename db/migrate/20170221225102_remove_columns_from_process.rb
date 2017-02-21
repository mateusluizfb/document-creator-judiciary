class RemoveColumnsFromProcess < ActiveRecord::Migration[5.0]
  def change
    remove_column :judiciary_processes, :free_justice
    remove_column :judiciary_processes, :author_gender
    remove_column :judiciary_processes, :author_address
    remove_column :judiciary_processes, :cep_author_city
    remove_column :judiciary_processes, :assintant_pa
    remove_column :judiciary_processes, :defendent_address
    remove_column :judiciary_processes, :cep_defendent_city
    remove_column :judiciary_processes, :pr_representant
    remove_column :judiciary_processes, :pr_assitant
    remove_column :judiciary_processes, :func_public
    remove_column :judiciary_processes, :bank_agency
    remove_column :judiciary_processes, :bank_account
    remove_column :judiciary_processes, :initial_order
    remove_column :judiciary_processes, :occupation
    remove_column :judiciary_processes, :defendant_employer
    remove_column :judiciary_processes, :employer_address
    remove_column :judiciary_processes, :cep_employer_city
    remove_column :judiciary_processes, :occupational_treatment
    remove_column :judiciary_processes, :paying_sector_type
    remove_column :judiciary_processes, :employer_2
    remove_column :judiciary_processes, :cep_employer_city_2
    remove_column :judiciary_processes, :occupational_treatment_2
    remove_column :judiciary_processes, :func_public_employer
    remove_column :judiciary_processes, :cpf_rg_rep_pa
    remove_column :judiciary_processes, :cpf_rg_part_defendent
    remove_column :judiciary_processes, :number_benef_inss_of1
    remove_column :judiciary_processes, :number_benef_inss_of2
    remove_column :judiciary_processes, :opnion
  end
end
