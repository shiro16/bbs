Bbs::Application.routes.draw do
  root to: "bbs_threads#index"

  resources :bbs_comments, except: [:show]

  resources :bbs_threads, except: [:destroy, :update]
  scope "bbs_threads" do
    get "destroy" => "bbs_thread#destroy", as: :destroy_bbs_thread
    post "update" => "bbs_thread#update",  as: :update_bbs_thread
  end
end
