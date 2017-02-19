class CreateJudiciaryProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :judiciary_processes do |t|
      t.string :nu_process
      t.date :year_process
      t.string :action
      t.date :court_hearing_date
      t.time :court_hearing_time
      t.string :court_heearing_type
      t.string :free_justice
      t.string :author_gender
      t.string :cpf_represetant
      t.string :author_address
      t.string :cep_author_city
      t.string :assintant_pa
      t.string :gender_part_defendant
      t.string :defendent_gender
      t.string :defendent_name
      t.string :defendent_address
      t.string :cep_defendent_city
      t.string :pr_representant
      t.string :pr_assitant
      t.string :func_public
      t.string :bank_agency
      t.string :bank_account
      t.string :initial_order
      t.string :occupation
      t.string :defendant_employer
      t.string :employer_address
      t.string :cep_employer_city
      t.string :occupational_treatment
      t.string :paying_sector_type
      t.string :employer_2
      t.string :cep_employer_city_2
      t.string :occupational_treatment_2
      t.string :paying_sector_type
      t.string :func_public_employer
      t.string :cpf_rg_rep_pa
      t.string :cpf_rg_part_defendent
      t.string :number_benef_inss_of1
      t.string :number_benef_inss_of2
      t.string :judge_gender
      t.string :judge_name
      t.string :prosecutor_gender
      t.string :prosecutor_name
      t.string :lawyer_gender_author
      t.string :lawyer_author
      t.string :lawyer_gender_pr
      t.string :lawyer_defendent
      t.text :opnion

      t.timestamps
    end
  end
end
