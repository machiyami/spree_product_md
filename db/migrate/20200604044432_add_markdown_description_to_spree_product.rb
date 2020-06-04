class AddMarkdownDescriptionToSpreeProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_products, :markdown_description, :text
  end
end
