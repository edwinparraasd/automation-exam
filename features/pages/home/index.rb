# frozen_string_literal: true

module Pages
  module Home
    # In this class there are all the elements of Index page
    # and its main actions
    class Index < SitePrism::Page
      element :search_field, '#gh-ac'
      element :search_button, '#gh-btn'

      def go_home_page
        visit 'https://www.ebay.com/'
      end

      def search_keyword(keyword)
        search_keyword_input(keyword)
        search_click
      end

      private

      def search_keyword_input(keyword)
        wait_until_search_field_visible
        search_field.set keyword
      end

      def search_click
        wait_until_search_button_visible
        search_button.click
      end
    end
  end
end
