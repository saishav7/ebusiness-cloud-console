require 'pg'
class ListCompaniesController < ApplicationController
  def viewCompanyList
  
   conn = PGconn.open(:dbname => 'd1vipi0k7m9cnu')
   res = conn.exec('SELECT * FROM Company')
   @id1 = res[0]["company_id"]
   @name1 = res[0]["company_name"]
   @status1 = res[0]["company_status_id"]

   @id2 = res[1]["company_id"]
   @name2 = res[1]["company_name"]
   @status2 = res[1]["company_status_id"]

   @id3 = res[2]["company_id"]
   @name3 = res[2]["company_name"]
   @status3 = res[2]["company_status_id"]
  end
end
