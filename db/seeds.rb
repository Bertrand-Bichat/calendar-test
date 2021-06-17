Booking.destroy_all
Rental.destroy_all
Restaurant.destroy_all
User.destroy_all

user = User.create(email: 'test@gmail.com', password: 'password')
customer = User.create(email: 'customer@gmail.com', password: 'password')

restaurant = Restaurant.create(user: user, name: 'Chez Dédé', content: 'cuisine française')
rental = Rental.create(restaurant: restaurant, start_date: Date.today - 2.days, end_date: Date.today + 2.days, price_per_day: 100)
rental = Rental.create(restaurant: restaurant, start_date: Date.today + 5.days, end_date: Date.today + 10.days, price_per_day: 100)

booking = Booking.create(rental: rental, user: customer, start_date: Date.today, end_date: Date.today + 1.day)
