class LabReportsController < ApplicationController
  before_action :set_lab_report, only: %i[ show ]

  def index
    @lab_reports = LabReport.all
  end

  def show
  end

  def new
    @lab_report = current_user.lab_reports.build
  end

  def create
    @lab_report = current_user.lab_reports.build(lab_report_params)

      if @lab_report.save
        redirect_to root_path, notice: 'New report created!'
      else
        flash.now[:alert] = @lab_report.errors.full_message.join(', ')
        render :new, status: 422
    end
  end

  private
    def set_lab_report
      @lab_report = LabReport.find(params[:id])
    end

    def lab_report_params
      params.require(:lab_report).permit(:title, :description, :grade)
    end
end
