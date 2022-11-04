# create_table "welcomes", force: :cascade do |t|
#   t.string "first_name"
#   t.string "last_name"
#   t.string "student_email"

teacher = Teacher.new(
  first_name: 'Priyanka',
  last_name: 'shahasane',
  student_email: 'pshahasane@deqode.com'
)

teacher.save

20.times do |i|
  puts "creating student #{i+1}"
  teacher = Teacher.create(
    first_name: "priyanka #{i+1}",
    last_name: "shahasane #{i+1}",
    student_email: "pshahasane@deqode.com #{i+1}"
  )
end
# t.string "name"
# t.string "title"
# t.text "content"

Teacher.all.each do |teacher|
  teacher.blogs.create(name: "AI part - #{student.id}",title: "AI", content: "AI is Life " )
  teacher.blogs.create(name: "AI part - #{student.id}",title: "AI", content: "AI is Life " )
end
