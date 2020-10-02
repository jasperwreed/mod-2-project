# JRML

In this website, users are able to:

Note: home page = the page that shows all the products

C:
[x] As a user, they can create an account.
    Validations:
    - Username cannot be blank and have to be unique.
    - Password 
    - Name cannot be blank
    - Bio optional

    redirect to: home page after creating the account

[x] As a user, they can create products. (Bonus: image-url)
    Validations:
    [x] Product name cannot be blank.
    [x] Description minimum length: 20
    [x] Checkbox need to be checked 
    
    [x] redirect to: that specific product page (product/:id)

[x] As a user, they can create reviews, for products.
    Validations:
    [x] Review must select an item to review.
    [x] Review must have ratings between 0.0 and 5.0 and cannot be blank.
    [x] Content minimum length: 20 and cannot be blank

    [x] redirect to: product page (product/:id)

R:
[x] As a user, they can read reviews (on the product page).
    [] link_to: user profile through the reviews
    [x] link_to: product page
[x] As a user, they can browse the products.
[x] As a user, they can look into profiles.
    [x] link_to: that specific product they see on the review

U:
[x] As a user, they can update their profile.
    [x] redirect_to user/:id page
[x] As a user, they can update their products.
    [x] redirect to: product/:id page

D:
[x] As a user, they can delete their profile.
    [] redirect_to (1)custom route, or (2)home page
[x] As a user, they can delete their products.
    [] redirect_to home_page

Logout
    - functionality
    - routes

Cart 
    -  functionality
    - routes

Delete
    - functionality
    - routes

Helper Methods:
- product.rb
    - total_category
    - avg_rating
    - most reviewed item(s)
    - highest rating
    - lowest rating
  
- category.rb
    - total_category
    - total_items
    - most popular item
    - least popular item

- User.rb
    - full name
    - number of products
    - lowest cost item
    - highest cost item
