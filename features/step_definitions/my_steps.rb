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

When(/^jugador en turno selecciono casilla "([^"]*)"$/) do |casilla|
  click_button("celda#{casilla}")
end

Then(/^debo ver simbolo "([^"]*)" en casilla "([^"]*)"$/) do |simbolo, casilla|
	expect(page.should  have_selector("input[id=celda#{casilla}][value='#{simbolo}']")).to be(true)
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



