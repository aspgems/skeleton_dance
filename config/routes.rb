SkeletonDance::Engine.routes.draw do
  get '/html(/:layout(/*page))' => 'html#show'
end
