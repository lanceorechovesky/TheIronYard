=begin
restart server when you change config
rails generate model = makes models
rake db:migrate = will run those migrations
routs control everything we put in our address bar
rake routs lets you check them
rails generate controler *name*
coltroler handels all your routs after 
use two ex for veiws .html.erb
everytime you change your routs file, term rake routes
controles are plural models are singler
command t= fuzzy sourch

anytime you set parma to a model you must make it private
private

def create
    tournament.create tournament_params
end

def tournament_params
  params.require(:tournament).permit(:name, :description)
end

you can use _form.html.erb and use <%=render form %> to not type out a form everytime

rails g model post title:string body:text_field
valadate in the model
=end










