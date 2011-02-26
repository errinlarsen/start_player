get '/' do
  if session[:pickers].nil? || session[:pickers].empty?
    pickers =  Picker.all.shuffle
  else
    pickers = session[:pickers]
  end
  @picker = pickers.shift
  session[:pickers] = pickers
  haml :index
end
