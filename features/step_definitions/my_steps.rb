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

#Then(/^debo ver una casilla disponible$/) do 
#	expect(page.should  have_selector("input[type=submit][value='_']")).to be(true)
#end



