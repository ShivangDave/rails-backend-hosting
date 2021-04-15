u1 = User.create(username: "abc")
u2 = User.create(username: "def")

p1 = Post.create(title: "First post", user_id: u1.id)
p2 = Post.create(title: "Second post", user_id: u2.id)
p3 = Post.create(title: "Third post", user_id: u2.id)
