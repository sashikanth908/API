Rails.application.routes.draw do


      resources :authors

      namespace "api" do

        namespace "v1" do
      resources :books

        end


  end

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
