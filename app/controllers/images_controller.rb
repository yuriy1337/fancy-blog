class ImagesController < ApplicationController
  
    before_filter :get_post

  def get_post
    @post = Post.find(params[:post_id])
  end
  
  
  # GET /images
  # GET /images.xml
  def index

    @images = @post.images.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @images = @post.images.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = @post.images.new

    respond_to do |format|
      format.html { render :layout => false } 
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = @post.images.find(params[:id])
  end

  # POST /images
  # POST /images.xml
  def create
    @image = @post.images.new(params[:image])

    respond_to do |format|
      if @image.save
        format.json { render :json => { :pic_path => @image.element.url.to_s , :name => @image.element.instance.attributes["element_file_name"] }, :content_type => 'text/html' }
      else
        format.json { render :json => { :result => 'error'}, :content_type => 'text/html' }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = @post.images.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to(@image, :notice => 'Image was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = @post.images.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end
end
