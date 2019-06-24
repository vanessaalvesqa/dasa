Dado('que eu realize uma compra criando um novo cadastro') do
  @home = Home.new
  @home.load
  
  @home.t_shirts.click

  tshirt = TShirt.new
  tshirt.item_hover.click

  if BROWSER.eql?('chrome') || BROWSER.eql?('chrome_remote')
    tshirt.wait_until_item_visible
    tshirt.item.click
end
  addcart = AddCart.new
  addcart.wait_until_add_to_cart_visible
  addcart.add_to_cart.click
  addcart.wait_until_proceed_to_checkout_visible
  addcart.proceed_to_checkout.click

  cart = CartPage.new
  cart.wait_until_proceed_to_checkout_visible
  cart.proceed_to_checkout.click
end

Quando('finalizar a criação do novo usuário e seguir o fluxo') do 
  authentication = Authentication.new
  authentication.formcreateaccount(Faker::Internet.email)

  createaccount = CreateAccount.new
  createaccount.create_account

  address = Address.new
  address.proceed_to_checkout.click

  shipping =  Shipping.new
  shipping.agree_terms.click
  shipping.proceed_to_checkout.click

  payment = Payment.new
  payment.pay_by_bank.click
  payment.confirm_order.click
end
  
Então('a compra é efetivada com sucesso e a seguinte mensagem será exibida {string}') do |text|
  assert_text(text)
end