module FormHelpers
  def add_address(url)
    fill_in 'url', with: url
    click_button('Add')
    expect(page).to have_content(url)
  end
  
  def find_short_url(url)
    find('tr', text: url).all('td')[1]  
  end
  
end
World(FormHelpers);
