# frozen_string_literal: true

module Pages
  module Result
    # In this class there are all the elements of River Results page
    # and its main actions
    class RiverResult < SitePrism::Page
      element :search_brand_field, '.x-searchable-list__textbox__aspect-Brand'
      element :brand_container, '#x-refine__group_1__1'
      element :size_container, '#x-refine__group_1__0'
      element :results_label, :xpath, '//*[@id="mainContent"]/div[1]/div/div[2]/div/div[1]'
      element :sort_button, '#w9'

      def refining_search_by(searchable, keyword)
        case searchable
        when 'Brand'
          refining_search_by_brand(keyword)
        when 'US Shoe Size'
          refining_search_by_size(keyword)
        end
      end

      def sort_elements(type)
        wait_until_sort_button_visible
        sort_button.hover
        if type.eql? ('price ascendant')
          find(:xpath, "//*[@id='w9']/div/div/ul/li[4]/a").click
        else
          find(:xpath, "//*[@id='w9']/div/div/ul/li[5]/a").click
        end
      end

      private

      def refining_search_by_brand(keyword)
        wait_until_search_brand_field_visible
        search_brand_field.set keyword
        select_brand(keyword)
      end

      def select_brand(keyword)
        wait_until_brand_container_visible
        items = brand_container.all('span', exact_text: keyword)
        items.first.click
      end

      def refining_search_by_size(keyword)
        wait_until_size_container_visible
        items = size_container.all('span', exact_text: keyword)
        items.first.click
      end
    end
  end
end
