class Agency < ActiveRecord::Base
  class UnknownAgency < RuntimeError;end;

  has_many :contracts

  validates :name, presence: true
  validates :abbr, presence: true, uniqueness: true

  before_validation :extract_abbr, on: :create

  def has_scraper?
    File.exists?(File.join(Rails.root, "lib", "scrapers", self.abbr, "/"))
  end

  protected
  def extract_abbr
    return unless self.abbr.blank?
    return if self.name.blank?
    agency_key = self.name.downcase
    unless AGENCIES.keys.include? agency_key
      raise UnknownAgency, "Unknown agency #{agency_key}. Must be one of #{AGENCIES.keys.inspect}"
    end
    self.abbr = AGENCIES[agency_key]["alias"]
  end
   
end

