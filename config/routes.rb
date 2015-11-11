Rails.application.routes.draw do
  post 'generate' => 'maze#generate', as: :maze_generation
  root :to => 'maze#index'
end
