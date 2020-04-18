puts "Creating Test Accounts"
Account.create([
  { username: "teste", first_name: "Teste", last_name: "Tester", email: "teste@teste.com", password: "123456" },
  { username: "teste2", first_name: "Teste", last_name: "Tester 2", email: "teste2@teste.com", password: "123456" },
  { username: "teste3", first_name: "Teste", last_name: "Tester 3", email: "teste3@teste.com", password: "123456" },
])
puts "Done!"