# Rails Test

### 1. Development Setting
- Ubuntu 20.04 LTS
- Rails 7.0.2.3
- Ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
- PostgreSQL 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

### 2. Postman Test Routes

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

3. 참고자료

참고자료

- password seed 문제 해결
  - http://blog.devjoshua.me/2017/02/19/rails-column-rename/
  - https://stackoverflow.com/questions/48138958/rails-nomethoderror-undefined-method-password-digest

- enum 사용법
  - https://velog.io/@boori/Ruby-on-Rails-%EA%B2%8C%EC%8B%9C%ED%8C%90-CRUD

- enum ArgumentError 해결
  - https://github.com/ctran/annotate_models/issues/170

- Model 의존성 개념
  - https://velog.io/@sunaaank/Ruby-On-Rails-dependency
  - https://rubykr.github.io/rails_guides/association_basics.html

- Carrierwave 오류
  - https://stackoverflow.com/questions/36599457/uninitialized-constant-userphotouploader

- model find_by VS find VS all
  - https://stackoverflow.com/questions/9650205/rails-find-all-with-conditions
  - https://stackoverflow.com/questions/53845593/actioncontrollerparametermissing-param-is-missing-or-the-value-is-empty-us

- scaffold 사용법
  - https://morningbird.tistory.com/36
