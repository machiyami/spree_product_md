Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "admin_product_form_markdown_description",
                     :insert_before => '[data-hook="admin_product_form_description"]',
                     :partial => "spree/admin/products/product_markdown_description")