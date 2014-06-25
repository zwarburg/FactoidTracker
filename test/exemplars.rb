class Exemplars
  extend ExemplarBuilder

  #Factoid.create_exemplar!
  exemplify Factoid do |obj, count, overrides|
    obj.title       = "My Factoid #{count}"
    obj.description = "Lorem Ipsum"
    obj.name        = ["Angela", "Geordie", "Jared", "Jennifer", "Kevin", "Matthew", "Oscar", "Owen", "Regina", "Todd", "Vaibhavi", "Zack"].sample
  end

  #User.create_exemplar!
  exemplify User do |obj, count, overrides|
    obj.first_name            = "John"
    obj.last_name             = "User#{count}"
    obj.email                 = "email_#{count}@test.com" unless overrides.key?(:email)
    obj.password              = overrides.delete(:password) || "somethingelse"
    obj.password_confirmation = obj.password
  end

end
