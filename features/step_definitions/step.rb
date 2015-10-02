Dado(/^que eu acesso a pagina de scores$/) do
  visit("/")
end

Dado(/^clico no link adicionar novo score$/) do
    click_on("New High score")

end

Dado(/^que eu preencho o nome com "(.*?)"$/) do |arg1|
  fill_in('Game', :with => arg1)
end

Dado(/^que eu preencho o score com "(.*?)"$/) do |arg1|
  fill_in('Score', :with => arg1)
end

Então(/^o sistema apresenta a mensagem "(.*?)"$/) do |arg1|
  click_on("Create High score")
  page.has_content?(arg1)
end


Dado(/^adiciono os scores:$/) do |table|
  items = table.hashes
  visit("/")
  @names = []
  items.each do |item|
    @names << item["NAME"]
    click_on("New High score")
    fill_in('Game', :with => item["NAME"])
    fill_in('Score', :with => item["SCORE"])
    click_on("Create High score")
    click_on("Back")
  end

end

Entao(/^Todos os scores adicionados devem aparecer na tela inicial$/) do
  @names.each do |name|
    page.has_content?(name)
  end
end

Dado(/^adiciono os scores usando id:$/) do |table|

  items = table.hashes
  visit("/")
  @names = []
  items.each do |item|
    @names << item["NAME"]
    click_on("new_high_score")
    fill_in('high_score_game', :with => item["NAME"])
    fill_in('high_score_score', :with => item["SCORE"])
    click_on("create")
    click_on("Back")
  end

end
