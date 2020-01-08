# frozen_string_literal: true

module Pages
  module Result
    # In this class there are all the elements of Index page
    # and its main actions
    class RiverResult < SitePrism::Page
      element :search_field, '#gh-ac'

      def go_home_page
        visit 'https://www.ebay.com/'
      end

      def search_keyword(keyword)
        search_keyword_input(keyword)
      end

      private

      def search_keyword_input(keyword)
        wait_until_search_field_visible
        search_field.set keyword
      end
    end
  end
end
