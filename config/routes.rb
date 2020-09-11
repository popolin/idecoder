Idecoder::Engine.routes.draw do

  root to: "runners#test"
  post 'run' => 'runners#run'

end