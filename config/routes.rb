Myapp::Application.routes.draw do
  get "messages/message"
  get "messages/viewMessages"
  get "messages/messagesByDate"
  get "tables/createNewEdifactCode"
  get "tables/viewEdifactCodeTable"
  get "tables/createNewSenderReceiverContact"
  get "tables/viewSenderReceiverContactTable"
  get "tables/createNewSchemaMigration"
  get "tables/viewSchemaMigrationTable"
  get "tables/createNewRecordStatus"
  get "tables/viewRecordStatusTable"
  get "tables/createNewProcessMessageRelationship"
  get "tables/viewProcessMessageRelationshipTable"
  get "tables/createNewMessageType"
  get "tables/viewMessageTypeTable"
  get "tables/createNewEntityRelationship"
  get "tables/viewEntityRelationshipTable"
  get "tables/createNewEntity"
  get "tables/viewEntityTable"
  get "tables/createNewBusinessProcess"
  get "tables/viewBusinessProcessTable"
  get "tables/createNewInternalCode"
  get "tables/viewInternalCodeTable"
  get "tables/createNewMessage"
  get "tables/viewMessageTable"
  get "tables/createNewCompanyStatus"
  get "tables/viewCompanyStatusTable"
  get "tables/createNewCompany"
  get "tables/viewCompanyTable"
  get "tables/viewTables"
  get "list_companies/viewCompanyList"
  get "company_details/viewCompanyDetails"
  get "dashboard/viewDashboard"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'dashboard#viewDashboard'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
