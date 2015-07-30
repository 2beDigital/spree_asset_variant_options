Deface::Override.new(
    :virtual_path   => "spree/admin/images/index",
    :name           => "show_all_in_admin_image_index",
    :replace  => "erb[silent]:contains('(@product.variant_images')",
    :text           => "<% (@product.images + @product.variant_images).each do |image| %>"
)

Deface::Override.new(
    :virtual_path   => "spree/admin/images/index",
    :name           => "show_all_in_admin_image_index_1",
    :replace  => "erb[silent]:contains('unless @product.variant_images')",
    :text           => "<% unless (@product.images + @product.variant_images).any? %>"
)
