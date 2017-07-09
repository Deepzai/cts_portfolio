module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults 
    @page_title = "CTS Devcamp | My Portfolio"
    @seo_keywords = "Jason Liu Portfolio"
  end
end