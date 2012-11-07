Faqu::Application.routes.draw do

  get "home/index"

    mount PlayAuth::Engine => '/'
	root :to => 'home#index'
	
	resources :categories
	resources :questions

	match 'set_admin/:value' => 'application#set_admin', :as => :set_admin
end
