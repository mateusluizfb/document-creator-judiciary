class DocumentGeneratorController < ApplicationController

  before_action :authenticate_user!

  def schedule_hearing
    @process = JudiciaryProcess.find params[:id]
    respond_to do |f|
      f.docx do
        doc = DocxReplace::Doc.new("#{Rails.root}/lib/docx_templates/pauta.docx", "#{Rails.root}/tmp")

        doc.replace("dataAudiencia", @process.court_hearing_date)
        doc.replace("$horaAudiencia$", @process.court_hearing_time)
        doc.replace("valorAnterior", "")
        doc.replace("anoProcesso", @process.year_process)
        doc.replace("numeroProcesso", @process.nu_process)
        doc.replace("acao", @process.action)
        doc.replace("nomeAutor", @process.prosecutor_name)
        doc.replace("advogadoAutor", @process.lawyer_author)
        doc.replace("nomeReu", @process.defendent_name)
        doc.replace("advogadoReu", @process.lawyer_defendent)

        tmp_file = Tempfile.new('temp', "#{Rails.root}/tmp")

        doc.commit(tmp_file.path)

        send_file tmp_file.path, filename: "PAUTA.docx", disposition: 'attachment'
      end
    end
  end

  def term_hearing
    @process = JudiciaryProcess.find params[:id]
    respond_to do |f|
      f.docx do
        doc = DocxReplace::Doc.new("#{Rails.root}/lib/docx_templates/termo.docx", "#{Rails.root}/tmp")

        doc.replace("numeroProcesso", @process.nu_process)
        doc.replace("anoProcesso", @process.year_process)
        doc.replace("acao", @process.action)
        doc.replace("nomeAutor", @process.prosecutor_name)
        doc.replace("nomeReu", @process.defendent_name)

        tmp_file = Tempfile.new('temp', "#{Rails.root}/tmp")

        doc.commit(tmp_file.path)

        send_file tmp_file.path, filename: "TERMO.docx", disposition: 'attachment'
      end
    end
  end

end
