Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :reviews
    resources :projects
    root 'pages#home'
    resources :admins
    resources :reviews
    resources :admin_sessions, only:[:new, :create, :destroy]
    resources :contacts, only: [:new, :create]
    get "login" => "admin_sessions#new"
    get "logout" => "admin_sessions#destroy"
    # Single Pages
    get "legal" => "pages#legal"
    get "about" => "pages#about"
    get "website" => "pages#website"
    get "landing-page" => "pages#landing_page"
    get "conversion" => "pages#conversion"
    # get "seo" => "pages#seo"

    resources :projects, :path => "", as: 'direct', only: [:show]
  end
    match '*path',  :via => [:get], to: redirect("/#{I18n.default_locale}/%{path}")
    match '', :via => [:get], to: redirect("/#{I18n.default_locale}")
end

