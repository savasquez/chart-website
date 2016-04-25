class PhotosController < ApplicationController
    #Create
    def new
        render "new"
    end
    def create
        @var=Photo.new
        @var.caption=params{"caption"}
        @var.photo=params{"photo"}
        @var.save
        redirect_to "/photos/#{@var.id}"
    end


    #Read
    def show
        @var=Photo.find(params[:id])
        render "show"
    end
    
    def index
        @var=Photo.all
        render "index"
    end

     #Update
     def edit
         @var=Photo.find(params[:id])
         render "edit"
     end
     
     def update
         @var=Photo.find(params[:id])
         @var.caption = params["caption"]
         @var.photo = params["photo"]
         @var.save
         redirect_to photo_url(params[:id])
     end
    
    #Destroy
    def destroy 
        @var=Photo.find(params[:id])
        @var.destroy
        render "destroy"
    end
    
    
    
    

end