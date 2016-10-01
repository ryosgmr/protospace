# Prototype
---
## association
belongs_to :user  
has_many :comments :CapturedImages

## table
- string :title
- text :catch_copy
- text :concept
- references :user
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
- references :prototype
- datetime :created_at
- datetime :updated_at

# Comment
---
## association
belongs_to :prototype :user

## table
- text :content
- references :user
- references :prototype
- datetime :created_at
- datetime :updated_at

# Like
---
## association
belongs_to :prototype :user

## table
- references :user
- references :prototype
- datetime :created_at
- datetime :updated_at
