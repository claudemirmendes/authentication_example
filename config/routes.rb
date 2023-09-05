Rails.application.routes.draw do
  # Outras rotas da sua aplicação
  
  # Configura as rotas do Devise
  devise_for :users
  
  # Adicione a rota de logout
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # Defina sua rota root
  root 'welcome#index'
end
