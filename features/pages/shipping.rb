class Shipping < SitePrism::Page
  element :agree_terms, '#uniform-cgv'
  element :proceed_to_checkout, 'button[name="processCarrier"]'
end
