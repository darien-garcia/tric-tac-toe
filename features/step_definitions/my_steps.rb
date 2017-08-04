Given(/^que abri el juego$/) do
  visit '/'
end

When(/^inicie la partida$/) do
  click_button('jugar')
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

