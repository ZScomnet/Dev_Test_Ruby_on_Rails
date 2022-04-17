# Rails Test

### 1. Development Setting
- Ubuntu 20.04 LTS
- Rails 7.0.2.3
- Ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
- PostgreSQL 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

### 2. Add Gem
- gem 'bcrypt', 'rack-cors', 'jwt - Auth gem
- gem 'carrierwave' - thumbnail upload gem

### 3. Postman Test Routes

#### User

- SignUp : http://127.0.0.1:3000/api/v1/users/signup (POST)
- SignIn : http://127.0.0.1:3000/api/v1/auth/signin (POST)

#### Project

- Create-Project : http://127.0.0.1:3000/api/v1/projects (POST) 
- Get-Project : http://127.0.0.1:3000/api/v1/projects/:id (GET) 
- Get-all-Project : http://127.0.0.1:3000/api/v1/projects (GET) 
- Get-all-Owned-Project : http://127.0.0.1:3000/api/v1/projects/my_projects 
- Update-Project : http://127.0.0.1:3000/api/v1/:id (PUT) 
- Delete-Project : http://127.0.0.1:3000/api/v1/:id (DELETE)

#### Content

- Create-Content : http://127.0.0.1:3000/api/v1/projects/:project_id/contents (POST)
- Get-Contents : http://127.0.0.1:3000/api/v1/projects/:project_id/contents (GET) 
- Get-Specific-Content : http://127.0.0.1:3000/api/v1/projects/:project_id/contents/:id (GET)
- Update-Content : http://127.0.0.1:3000/api/v1/contents/:id (PUT)
- Delete-Content : http://127.0.0.1:3000/api/v1/contents/:id (DELETE)

### 4. References

- Jwt 
  - https://dev.to/alexmercedcoder/ruby-on-rails-api-with-jwt-auth-tutorial-go2

- password
  - http://blog.devjoshua.me/2017/02/19/rails-column-rename/
  - https://stackoverflow.com/questions/48138958/rails-nomethoderror-undefined-method-password-digest

- enum 사용법 (해당 프로젝트에서 누락 - 'type'이라는 이름으로 column을 생성시 오류가 심해서 누락)
  - https://velog.io/@boori/Ruby-on-Rails-%EA%B2%8C%EC%8B%9C%ED%8C%90-CRUD

- enum ArgumentError 해결 (해당 프로젝트에서 누락 - 'type'이라는 이름으로 column을 생성시 오류가 심해서 누락)
  - https://github.com/ctran/annotate_models/issues/170

- Model
  - https://velog.io/@sunaaank/Ruby-On-Rails-dependency
  - https://rubykr.github.io/rails_guides/association_basics.html

- Carrierwave
  - https://stackoverflow.com/questions/36599457/uninitialized-constant-userphotouploader

- model find_by VS find VS all ()
  - https://stackoverflow.com/questions/9650205/rails-find-all-with-conditions
  - https://stackoverflow.com/questions/53845593/actioncontrollerparametermissing-param-is-missing-or-the-value-is-empty-us

- scaffold
  - https://morningbird.tistory.com/36
