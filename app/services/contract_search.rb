class ContractSearch
  
  def initialize(search_params)
    @search_params = search_params
    @search_type = determine_search_type 
  end

  def determine_search_type
    if @search_params[:vendor].length == 1 
      "VendorSearch"
    #elsif @search_params[:agency].length == 1
     # "AgencySearch"
    end
  end
  
  def perform
    search_object = @search_type.classify.new(@search_params)
    search_object.search
  end
end

