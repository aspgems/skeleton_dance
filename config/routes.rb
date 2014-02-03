SkeletonDance::Engine.routes.draw do
  if Rails.env.development?
    get '/html(/:layout(/*page))' => 'html#show'
  end
end
