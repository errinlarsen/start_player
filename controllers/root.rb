get '/' do
  if session[:pickers].empty? || session[:pickers].nil?
    pickers =  Picker.all.shuffle
  else
    pickers = session[:pickers]
  end
  @picker = pickers.shift
  session[:pickers] = pickers
  haml :index
end
