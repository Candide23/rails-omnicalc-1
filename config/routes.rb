Rails.application.routes.draw do
  get "/", {controller: "calcultors", action: "square"}
  
end
