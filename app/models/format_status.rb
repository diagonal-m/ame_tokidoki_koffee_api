class FormatStatus < ApplicationRecord
  belongs_to :coffee_bean_detail_page_url

  enum status: { waiting: 0, manual_input: 10, done: 100 }
end
