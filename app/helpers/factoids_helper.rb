module FactoidsHelper
  include ActsAsTaggableOn::TagsHelper

  def format_datetime(date)
        date.localtime.strftime("%m/%d/%y %-l:%M%p")
  end

end
