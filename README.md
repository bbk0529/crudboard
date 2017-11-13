간단한 게시판
User, Post

Post.all 이라고 하면
[post, post, post]와 같은 형태로 담겨 있다.

#Post모델
string, title
string, content

#User 모델
String email
String password

#post controller
  post#index -> 모든 게시물을 보여준다.  (root page)
  post#new -> 새로운 게시물을 만드는 form 을 보여준다.
  post#create -> new에서 작성한 글을 쓴다 == db에 저장한다.
  post#show  -> /user/show/:id 해당하는 글 1개만 보여준다.
  post#modify => 게시글을 수정할 수 있는 form 을 보여준다
  post#update => modify에서 수정된 글을 db에 새로 저장한다. (update)
  post#destory => show 에서 확인한 글을 지울 수 있게 한다.

#user controller
  user#index -> 모든 유저를 보여준다
  user#new -> 새로운 유저를 만드는 form 을 보여준다 (회원가입))
  user#create -> new에서 작성한 회원 정보를 db에 저장한다.
  user#show -> /user/show/:id 에 해당하는 유저 1명만 보여준다.
  user#login => form에 로그인이 가능한 페이지를 보여준다.
  user#login_process => 로그인 정보와 db유저 정보를 비교해 user를 로그인 시킨다. 
# crudboard
