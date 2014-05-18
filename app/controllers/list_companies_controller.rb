require 'pg'
class ListCompaniesController < ApplicationController
  def viewCompanyList
    
   @company_table = Company.find(:all)

  end
end