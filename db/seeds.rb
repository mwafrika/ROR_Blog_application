# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
    {id:4, name: 'John', email:'john@gmail.com', password: '123456', password_confirmation: '123456'},
    {id:5, name: 'John2', email:'john2@gmail.com', password: '123456', password_confirmation: '123456'},
    {id:6, name: 'John3', email:'john3@gmail.com', password: '123456', password_confirmation: '123456'}])
Post.create(
    [{title: 'Hello', text: 'This is my first post',commentsCounter: 0, likesCounter: 0, user_id: 4},
    {title: 'Hello', text: 'This is my first post',commentsCounter: 0, likesCounter: 0, user_id: 5},
    {title: 'Hello', text: 'This is my first post',commentsCounter: 0, likesCounter: 0, user_id: 4},
    {title: 'Hello', text: 'This is my first post',commentsCounter: 0, likesCounter: 0, user_id: 6}])
