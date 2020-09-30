In this website, users are able to:

Note: home page = the page that shows all the products

C:
[] As a user, they can create an account.
    Validations:
    - Username cannot be blank and have to be unique.
    - Password 
    - Name cannot be blank
    - Bio optional

    redirect to: home page after creating the account

[x] As a user, they can create products. (Bonus: image-url)
    Validations:
    [] Product name cannot be blank.
    [] Description minimum length: 20
    [] Checkbox need to be checked 
    
    [] redirect to: that specific product page (product/:id)

[] As a user, they can create reviews, through their owned products.
    Validations:
    [] Review must select an item to review.
    [] Review must have ratings between 0.0 and 5.0 and cannot be blank.
    [] Content minimum length: 20 and cannot be blank

    [] redirect to: product page (product/:id)

R:
[x] As a user, they can read reviews (on the product page).
    [] link_to: user profile through the reviews
    [] link_to: product page
[x] As a user, they can browse the products.
[] As a user, they can look into profiles.
    [] link_to: that specific product they see on the review

U:
[x] As a user, they can update their profile.
    [] redirect_to user/:id page
[x] As a user, they can update their products.
    [] redirect to: product/:id page

D:
[x] As a user, they can delete their profile.
    [] redirect_to (1)custom route, or (2)home page
[x] As a user, they can delete their products.
    [] redirect_to home_page
