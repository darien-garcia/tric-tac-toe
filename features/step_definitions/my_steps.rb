Given(/^que abri el juego$/) do
  visit '/'
end

When(/^inicie la partida$/) do
  click_button('jugar')
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^que comenzo el juego$/) do
  step "que abri el juego"
  step "inicie la partida"
end

Given(/^que hay una partida iniciada$/) do
  step 'que abri el juego'
  step 'inicie la partida'
end

Given(/^que es turno del jugador "([^"]*)"$/) do |jugador|
  expect(page.body).to match "siguiente jugador: #{jugador}"
end

Given(/^que el jugador en turno jugo$/) do
  click_button('play')
end



