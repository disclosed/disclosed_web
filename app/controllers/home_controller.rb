class HomeController < ApplicationController

  def index
    @agencies = Agency.all
    @params = params
    search = ContractSearch.new(params)
    gon.chart_data = search.execute_chart_search
  end

  def download
    search = ContractSearch.new(params)
    contracts = search.execute_report_search
    respond_to do |format|
      format.csv { send_data(contracts.to_csv, disposition: "attachment; filename=federal_contracts.csv") }
    end
  end

end
