require 'redcarpet'

module SpreeProductMd
  module Spree
    module ProductDecorator
      def self.prepended(base)
        base.attribute :markdown_description
        base.before_save :assign_description, if: -> { markdown_description_changed? }
      end

      def markdown
        ::Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
      end

      private

      def assign_description
        assign_attributes({ description: self.markdown.render(markdown_description) })
      end
    end
  end
end
Spree::Product.prepend(SpreeProductMd::Spree::ProductDecorator)