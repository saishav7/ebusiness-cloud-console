require 'pg'
class ListCompaniesController < ApplicationController
  def viewCompanyList
  
   conn = PGconn.open(:dbname => 'EBDX')
   res = conn.exec('SELECT * FROM Company')   
  end
end
