# Build Instructions

1. Unzip Trov.zip and open Trov.sln in Visual Studio (2015)
2. Build it by right clicking on the solution and press "Build Solution".

# Statement of deliverables

1. _Question_ A system that can process the two API requests via HTTP.

  _Answer_ implemented Trov.ItemsController.GetAllItems, and Trov.ItemsController.GetItem (respectively)

2.  _Question_ Appropriate tests (unit, integration, etc). 

  _Answer_ See TrovTest.ItemListingTest & TrovTest.ItemPurchaseTest. Also see the "index.html" (for adhoc testing).

3. A quick explanation of:

  3.a. _Question_ choice of data format. Include one example of a request and response.  
  _Answer_ I chose Json - it's pretty much the defacto standard these days, least verbose and well supported by javascript tooling and browsers. 
  
  __Request__: GET /api/items HTTP/1.1. 
  
  __Response__:  [{"Name":"Car","Description":"Fancy Car","Price":1000000},{"Name":"Ring","Description":"Fancy Ring","Price":30000}]

  3.b. _Question_ what authentication mechanism was chosen, and why
  
  _Answer_ I chose Windows authentication, mainly because it was easy to do. In my current developments, the MVC implementations were already done by another developer, and it was Windows (Active Directory server) only as what is currently built is intended to be an "on-prem" web application. There is intent to also make it a multi-tenant SAAS application thus individual accounts has been identified as a requirement but we haven't implemented that yet (and I didn't have the time to do it). 
