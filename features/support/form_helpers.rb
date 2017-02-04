module FormHelpers
  def submit_form(btnId)
    find('#'+btnId).click
  end
end
World(FormHelpers);
