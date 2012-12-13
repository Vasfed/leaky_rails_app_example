Example::Application.routes.draw do

  match '/count' => 'leak#count'
  match '/dump' => 'leak#dump'
  root :to => 'leak#leak'

end
