class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params[:id]
    z = Photo.find_by({:id => params[:id]})
    @source = z.source
    @caption = z.caption
  end

  def create_row
    @z = Photo.new
    @z.caption = params[:the_caption]
    @z.source = params[:the_source]
    @z.save
  end

  def destroy
    @z = Photo.find(params[:id])
    @z.destroy
  end

  def edit_form
    @id = params[:id]
    z = Photo.find_by({:id => params[:id]})
    @source = z.source
    @caption = z.caption
  end

  def update_row
    @z = Photo.find(params[:id])
    @z.caption = params[:the_caption]
    @z.source = params[:the_source]
    @z.save
  end

end
