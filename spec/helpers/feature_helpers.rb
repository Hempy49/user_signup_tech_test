def sign_up(username: 'Tom', email: 'Tom@fakegmail.com',
  address: '40 The Street', tel_no: '123456789', password: "secret123", password_confirmation: "secret123" )
  visit('users/new')
  fill_in(:user_username, with: username)
  fill_in(:user_email, with: email)
  fill_in(:user_address, with: address)
  fill_in(:user_tel_no, with: tel_no)
  fill_in(:user_password, with: password)
  fill_in(:user_password_confirmation, with: password_confirmation)
  click_button('Submit')
end
