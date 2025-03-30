Rails.application.routes.draw do
  get "/", {controller: "calcultors", action: "square"}
  get "/square/new", { controller: "calcultors", action: "square" }

  
end
