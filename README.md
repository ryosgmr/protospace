# Prototype
---
## association
belongs_to :user
has_many :comments :CapturedImages

## table
- string :title
- text :catch_copy
- text :concept
- integer :user_id
- datetime :created_at
- datetime :updated_at

# User
---
## association
has_many :prototypes :comments :likes

## table
- string :name
- string :email
- string :password
- string :member_of
- text :profile
- text :works
- text :image
- datetime :created_at
- datetime :updated_at

# CapturedImage
---
## association
belongs_to :prototype

## table
- text :image
- integer :prototype_id
- datetime :created_at
- datetime :updated_at

# Comment
---
## association
belongs_to :prototype :user

## table
- text :content
- integer :user_id
- integer :prototype_id
- datetime :created_at
- datetime :updated_at

# Like
---
## association
belongs_to :prototype :user

## table
- user_id
- prototype_id
- datetime :created_at
- datetime :updated_at
