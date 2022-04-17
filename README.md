# Rails Test

### 1. Development Setting
- Ubuntu 20.04 LTS
- Rails 7.0.2.3
- Ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
- PostgreSQL 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
- Docker version 20.10.14, build a224086


### 2. Add Gem
- gem 'bcrypt', 'rack-cors', 'jwt - Auth gem
- gem 'carrierwave' - thumbnail upload gem

### 3. Postman Test Routes

#### User

- SignUp : http://127.0.0.1:3000/api/v1/users/signup (POST) - 회원가입
- SignIn : http://127.0.0.1:3000/api/v1/auth/signin (POST) - 로그인

#### Project

- Create-Project : http://127.0.0.1:3000/api/v1/projects (POST) - 프로젝트 생성
- Get-Project : http://127.0.0.1:3000/api/v1/projects/:id (GET) - 프로젝트 호출
- Get-all-Project : http://127.0.0.1:3000/api/v1/projects (GET) - 모든 프로젝트 호출
- Get-all-Owned-Project : http://127.0.0.1:3000/api/v1/projects/my_projects - 나의 모든 프로젝트 호출
- Update-Project : http://127.0.0.1:3000/api/v1/:id (PUT) - 프로젝트 수정
- Delete-Project : http://127.0.0.1:3000/api/v1/:id (DELETE) - 프로젝트 삭제

#### Content

- Create-Content : http://127.0.0.1:3000/api/v1/projects/:project_id/contents (POST) - 컨텐츠 생성
- Get-Contents : http://127.0.0.1:3000/api/v1/projects/:project_id/contents (GET) - 프로젝트 내 모든 컨텐츠 호출
- Get-Specific-Content : http://127.0.0.1:3000/api/v1/projects/:project_id/contents/:id (GET) - 프로젝트 내 특정 컨텐츠 호출
- Update-Content : http://127.0.0.1:3000/api/v1/contents/:id (PUT) - 컨텐츠 수정
- Delete-Content : http://127.0.0.1:3000/api/v1/contents/:id (DELETE) - 컨텐츠 삭제

### 4. References

- Jwt 사용법
  - https://dev.to/alexmercedcoder/ruby-on-rails-api-with-jwt-auth-tutorial-go2

- password 문제 해결
  - http://blog.devjoshua.me/2017/02/19/rails-column-rename/
  - https://stackoverflow.com/questions/48138958/rails-nomethoderror-undefined-method-password-digest

- enum 사용법 (해당 프로젝트에서 누락 - 'type'이라는 이름으로 column을 생성시 오류가 심해서 누락)
  - https://velog.io/@boori/Ruby-on-Rails-%EA%B2%8C%EC%8B%9C%ED%8C%90-CRUD

- enum ArgumentError 해결 (해당 프로젝트에서 누락 - 'type'이라는 이름으로 column을 생성시 오류가 심해서 누락)
  - https://github.com/ctran/annotate_models/issues/170

- Model 의존성 개념 (상위,하위 모델 사용법)
  - https://velog.io/@sunaaank/Ruby-On-Rails-dependency
  - https://rubykr.github.io/rails_guides/association_basics.html

- Carrierwave 오류 (Project model의 thumbnail 이용시 참조)
  - https://stackoverflow.com/questions/36599457/uninitialized-constant-userphotouploader

- model find_by VS find VS all ()
  - https://stackoverflow.com/questions/9650205/rails-find-all-with-conditions
  - https://stackoverflow.com/questions/53845593/actioncontrollerparametermissing-param-is-missing-or-the-value-is-empty-us

- scaffold 사용법 (Project 기능 구현시 사용)
  - https://morningbird.tistory.com/36
