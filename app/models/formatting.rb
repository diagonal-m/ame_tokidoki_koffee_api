class Formatting < ApplicationRecord
  has_many :coffee_bean_detail_page_urls
  
  class << self
    def run
      waiting_format_statuses = FormatStatus.waiting
      return if waiting_format_statuses.blank?
      
      formatting = self.create!

      waiting_format_urls = waiting_format_statuses.map(&:coffee_bean_detail_page_url)
      formatting.update!(coffee_bean_detail_page_urls: waiting_format_urls)

      waiting_format_statuses.each {|waiting_forat_status| waiting_forat_status.update!(status: :manual_input) }
    end
  end
end
