users = FactoryBot.create_list(:user, 15)

FactoryBot.create_list(:transaction, 5, :monthly, user: users.sample)
FactoryBot.create_list(:transaction, 2, :yearly, user: users.sample)
FactoryBot.create_list(:transaction, 2, :gift, user: users.sample)
FactoryBot.create_list(:transaction, 13, :monthly, :charge, user: users.sample)
FactoryBot.create_list(:transaction, 6, :yearly, :charge, user: users.sample)
FactoryBot.create_list(:monthly_refund, 4, user: users.sample)
