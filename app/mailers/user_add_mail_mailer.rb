class UserAddMailMailer < ApplicationMailer

    def new_user(user)
        @name = user.first_name
        @age = user.age
        mail(to: "maheshpandey204@gmail.com",:subject=>"New user added!")
        #attachment[]
      end
end
