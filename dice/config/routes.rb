Dice::Application.routes.draw do
  root :to =>"dice#rules"
  get '/dice' => "dice#roll"
end