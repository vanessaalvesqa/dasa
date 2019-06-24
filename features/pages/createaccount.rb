class CreateAccount < SitePrism::Page

  element :title, 'label[for="id_gender1"]'
  element :first_name, '#customer_firstname'
  element :last_name, '#customer_lastname'
  element :password, '#passwd'
  element :day_of_birth, '#uniform-days'
  element :month_of_birth, '#uniform-months'
  element :year_of_birth, '#uniform-years'
  element :address_first_name, '#firstname'
  element :address_last_name, '#lastname'
  element :address, '#address1'
  element :city, '#city'
  element :state, '#uniform-id_state'
  element :zip_code, '#postcode'
  element :phone_mobile, '#phone_mobile'
  element :submit, '#submitAccount'

   
def create_account
    information
    addres
    submit.click
  end

  private

  def information
    wait_until_day_of_birth_visible
    wait_until_month_of_birth_visible
    wait_until_year_of_birth_visible
    title.click
     
    first_name.set(Faker::Name.first_name)
    last_name.set(Faker::Name.last_name)
    password.set('teste@123')
    day_of_birth.select(22)
    month_of_birth.select('October')
    year_of_birth.select(1989)
  end

  def addres
    address_first_name(@first_name)
    address_last_name(@last_name)
    address.set(Faker::Address.street_address)
    city.set(Faker::Address.city)
    state.select('Florida')
    zip_code.set(34741)
    phone_mobile.set(34908646)
end

end