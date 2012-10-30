Faqu::Application.routes.draw do
  root :to => "faq#index"
  resources :faqs
  resources :tags
end
