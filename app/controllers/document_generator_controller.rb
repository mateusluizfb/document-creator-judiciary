class DocumentGeneratorController < ApplicationController

  before_action :authenticate_user!

  def schedule_hearing
  end

  def term_hearing
    @process = JudiciaryProcess.find params[:id]
    respond_to do |f|
      f.docx do
        doc = DocxReplace::Doc.new("#{Rails.root}/lib/docx_templates/termo.docx", "#{Rails.root}/tmp")

        doc.replace("{numeroProcesso}", @process.nu_process)

        tmp_file = Tempfile.new('teste_temp', "#{Rails.root}/tmp")

        doc.commit(tmp_file.path)

        send_file tmp_file.path, filename: "teste.docx", disposition: 'attachment'
      end
    end
  end

end
