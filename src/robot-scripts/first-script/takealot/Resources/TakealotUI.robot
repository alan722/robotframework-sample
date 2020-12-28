*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot

*** Keywords ***
user navigates to takealot
    LandingPage.Load
    LandingPage.Verify Page Loaded

user is not logged in
    LandingPage.Verify User not Logged In

user searches for Products
     TopNav.Search for Products

search results contains relevant Products
    SearchResults.Verify Search completed

user selects a product from search results
     SearchResults.Click Product Link

correct product page loads
    Product.Verify Page Loaded

user adds the product to their cart
    Product.Add to Cart

the product is present in cart
    Cart.Verify Product Added

user attempts to checkout
    Cart.Proceed to Checkout

the user is required to sign in 
     SignIn.Verify Page Loaded
    
    
   
    

