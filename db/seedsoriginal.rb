Comment.delete_all
User.delete_all
Music.delete_all

c1 = Comment.create!(:date => DateTime.now, :description => 'I love this song!')
c2 = Comment.create!(:date => DateTime.now, :description => 'Really bad song!')
c3 = Comment.create!(:date => DateTime.now, :description => 'Its ok but not as good as the remix!')

u1 = User.create!(:name => 'Shadow', :description => 'DJ Shadow like to scratch', :genre => "Hip-Hop", :location=> "NY", :rating => 7.8)
u2 = User.create!(:name => 'Yoda', :description => 'Yoda has the force', :genre => "Hip-Hop", :location=> "CA", :rating => 8.8)
u3 = User.create!(:name => 'Deadmau5', :description => 'Show me the mice', :genre => "Electronica", :location=> "Canada", :rating => 9.8)

m1 = Music.create!(:name => 'The Flash', :genre => 'Hip-Hop', :rating => 6.7)
m2 = Music.create!(:name => 'I Remember', :genre => 'House', :rating => 8.7)
m3 = Music.create!(:name => 'Starwars Remix', :genre => 'Hip-Hop', :rating => 5.7)

m1.comments << c1
m2.comments << c3
m3.comments << c2

m1.user = u1
m2.user = u3
m3.user = u2

[m1, m2, m3].each do |m|
	m.save!
end

c1.author_id = u1.id
c2.author_id = u3.id
c3.author_id = u2.id

[c1, c2 , c3].each do |m|
	m.save!
end