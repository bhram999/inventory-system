# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create({"id"=>2, "email"=>"bh.ram999@gmail.com", "encrypted_password"=>"$2a$12$w5sCICXGGkYp74cCDSowLesDPmFHdGeHsRIITQIexnPyC2HIKcW16", "reset_password_token"=>nil, "reset_password_sent_at"=>nil, "remember_created_at"=>nil, "created_at"=>Sun, 04 Sep 2022 14:59:03.688678000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 14:59:03.688678000 UTC +00:00, "name"=>"bhargav"})
User.create({"id"=>3, "email"=>"bh.ram997@gmail.com", "encrypted_password"=>"$2a$12$6C/t91t0zqGjvZkA8kYHgeBkrrSTXy6458e0kB0D.GCi/dNf/Rkru", "reset_password_token"=>nil, "reset_password_sent_at"=>nil, "remember_created_at"=>nil, "created_at"=>Mon, 05 Sep 2022 05:24:07.147192000 UTC +00:00, "updated_at"=>Mon, 05 Sep 2022 05:24:07.147192000 UTC +00:00, "name"=>"bhargav2"})
Store.create({"id"=>2, "name"=>"test store 1", "user_id"=>2, "created_at"=>Sun, 04 Sep 2022 17:21:15.009094000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 17:21:15.009094000 UTC +00:00})
Store.create({"id"=>3, "name"=>"test store 2", "user_id"=>2, "created_at"=>Sun, 04 Sep 2022 21:57:58.394414000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 21:57:58.394414000 UTC +00:00})
Store.create({"id"=>4, "name"=>"test store 3", "user_id"=>2, "created_at"=>Sun, 04 Sep 2022 22:01:50.748321000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 22:01:50.748321000 UTC +00:00})
Store.create({"id"=>10, "name"=>"test store 4", "user_id"=>2, "created_at"=>Mon, 05 Sep 2022 03:49:41.131550000 UTC +00:00, "updated_at"=>Mon, 05 Sep 2022 03:49:41.131550000 UTC +00:00})
Store.create({"id"=>11, "name"=>"test store 5", "user_id"=>2, "created_at"=>Mon, 05 Sep 2022 03:49:53.962277000 UTC +00:00, "updated_at"=>Mon, 05 Sep 2022 03:49:53.962277000 UTC +00:00})
Store.create({"id"=>12, "name"=>"test store 6", "user_id"=>2, "created_at"=>Mon, 05 Sep 2022 04:55:13.727887000 UTC +00:00, "updated_at"=>Mon, 05 Sep 2022 04:55:13.727887000 UTC +00:00})
Book.create({"id"=>1, "name"=>"rver", "author"=>"erbvev", "stock"=>2, "store_id"=>2, "created_at"=>Sun, 04 Sep 2022 21:15:01.842011000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 21:15:01.842011000 UTC +00:00})
Book.create({"id"=>3, "name"=>"cvew", "author"=>"ewvwe", "stock"=>3, "store_id"=>2, "created_at"=>Sun, 04 Sep 2022 21:53:48.042273000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 21:55:45.611345000 UTC +00:00})
Book.create({"id"=>4, "name"=>"3rd book", "author"=>"3rd book", "stock"=>3, "store_id"=>2, "created_at"=>Sun, 04 Sep 2022 21:56:13.739597000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 21:56:13.739597000 UTC +00:00})
Book.create({"id"=>6, "name"=>"vwvwrf ", "author"=>"ecsdvvew", "stock"=>2, "store_id"=>3, "created_at"=>Sun, 04 Sep 2022 21:58:27.406770000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 21:58:27.406770000 UTC +00:00})
Book.create({"id"=>7, "name"=>"fwvsf", "author"=>"v weserdf", "stock"=>2, "store_id"=>3, "created_at"=>Sun, 04 Sep 2022 22:00:36.574393000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 22:00:36.574393000 UTC +00:00})
Book.create({"id"=>8, "name"=>"wevwvw", "author"=>"wefvwred", "stock"=>4, "store_id"=>4, "created_at"=>Sun, 04 Sep 2022 22:02:29.949730000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 22:05:15.100517000 UTC +00:00})
Book.create({"id"=>9, "name"=>"4gevdf", "author"=>"wefvrw", "stock"=>3, "store_id"=>4, "created_at"=>Sun, 04 Sep 2022 22:06:18.552059000 UTC +00:00, "updated_at"=>Sun, 04 Sep 2022 22:15:56.712174000 UTC +00:00})
Book.create({"id"=>20, "name"=>"store 6 book 1", "author"=>"store 6 book 1", "stock"=>2, "store_id"=>12, "created_at"=>Mon, 05 Sep 2022 04:55:39.774285000 UTC +00:00, "updated_at"=>Mon, 05 Sep 2022 04:55:39.774285000 UTC +00:00})
Book.create({"id"=>5, "name"=>"wevew", "author"=>"wecvwa", "stock"=>0, "store_id"=>2, "created_at"=>Sun, 04 Sep 2022 21:57:07.802035000 UTC +00:00, "updated_at"=>Mon, 05 Sep 2022 05:05:00.052405000 UTC +00:00})
