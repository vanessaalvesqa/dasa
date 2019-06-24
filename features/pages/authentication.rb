class Authentication < SitePrism::Page

  element :email, '#email_create'
  element :create_an_acount, '#SubmitCreate'

  def formcreateaccount(valid_email)
    email.set(valid_email)
    create_an_acount.click
  end

end
