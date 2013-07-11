Then /^I follow "(.*?)" in first review$/ do |link|
  find(:link, link).click
end
