Spree::Admin::ImagesHelper.class_eval do
  def options_text_for(image)
    if image.viewable.is_a?(Spree::Variant) && image.viewable.is_master?
        Spree.t(:all)
    elsif image.variants.any?
      image.variants.map { |variant| variant.sku_and_options_text }.join('; ')
    else
      Spree.t(:all)
    end
  end
end
