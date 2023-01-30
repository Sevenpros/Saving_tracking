# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

group = Group.create(name: "ICH BIN");
member = Member.create(first_name: "Seth", last_name: "Bizimana", email: "seth@email.com", password: "12345678")
member1 = Member.create(first_name: "David", last_name: "Niyonkuru", email: "david@email.com", password: "12345678")
member2 = Member.create(first_name: "Fabrice", last_name: "Niyibizi", email: "fabrice@email.com", password: "12345678")
group_member = GroupMember.create(group_id: group.id, member_id: member.id)
group_member = GroupMember.create(group_id: group.id, member_id: member1.id)
group_member = GroupMember.create(group_id: group.id, member_id: member2.id)
