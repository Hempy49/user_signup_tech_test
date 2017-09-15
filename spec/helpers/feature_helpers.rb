def sign_up(username: 'Tom', email: 'Tom@fakegmail.com',
  address: '40 The Street', tel_no: '123456789')
  visit('users/new')
  fill_in(:user_username, with: username)
  fill_in(:user_email, with: email)
  fill_in(:user_address, with: address)
  fill_in(:user_tel_no, with: tel_no)
  click_button('Submit')
end
