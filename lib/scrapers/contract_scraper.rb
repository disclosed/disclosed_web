# ContractScrapers are responsible for extracting contract information
# for a given quarter.
# The scraper might have to visit more than one page to get the data for
# a single contract.
require_relative 'scraper_helpers'
class Scrapers::ContractScraper
  include ScraperHelpers
  attr_reader :quarter, :notifier

  def initialize(quarter, notifier)
    @quarter = quarter
    @notifier = notifier
  end

  # Scrape contracts for the given #quarter
  #
  # While scraping, use the notifier to let the scraper runner know when
  # you are scraping a new contract page.
  #    notifier.send(:scraping_contract, "http://www.pc.gc.ca/apps/pdc/index_E.asp?oqYEAR=2013-2014&oqQUARTER=4&oqCONTRACT_ID=43649")
  #
  # range::
  #   A Range indicating which contracts to scrape from the #quarter.
  #
  # Returns an Array of Hashes containing the contract data.
  #
  #   q4 = Quarter.new(2013, 4)
  #   Scrapers::Xyz::Scraper.new(q4, ScraperNotifier.new).contracts(0..1)
  #   #=> [
  #     { vendor_name: "KONE INC.",
  #       reference_number: "45340584",
  #       effective_date: <#Date>,
  #       contract_period: "2014/03/31 to 2015/03/31",
  #       url: "http://www.pc.gc.ca/apps/pdc/index_E.asp?oqYEAR=2013-2014&oqQUARTER=4&oqCONTRACT_ID=43649"
  #       value: 17687,
  #       description: "665 Other equipment (specify)",
  #       comments: "Elevator Maintenance"
  #     },
  #     {...}
  #   ]
  #
  def scrape_contracts(range = 0..-1)
    raise "Please implement me!"
  end

  # Returns the number of contracts available in the #quarter.
  #
  #   Scrapers::Xyz::Scraper.new(q4).count_contracts
  #   #=> 128
  def count_contracts
    raise "Please implement me!"
  end

  # Scrape the main Reports page for the agency and returns all the quarters
  # that the agency has contract data for.
  #
  # Returns an array of Quarter objects.
  def self.available_quarters
    raise "Please implement me!"
  end
end

