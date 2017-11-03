class User
    def initialize(full_name, street, city, state, postal, country, email, user_name, password)
        @full_name = full_name
        @street = street
        @city = city
        @state = state
        @postal = postal
        @country = country
        @email = email
        @user_name = user_name
        @password = password
    end
    
    def full_name
        @full_name
    end

    def street
        @street
    end

    def city
        @city
    end

    def state
        @state
    end

    def postal
        @postal
    end

    def country
        @country
    end

    def email
        @email
    end

    def user_name
        @user_name
    end

    def password
        @password
    end
end
