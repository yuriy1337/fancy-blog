class ElementsController < ApplicationController
  
  before_filter :get_post

  def get_post
    @post = Post.find(params[:post_id])
  end
  
  # GET /elements
  # GET /elements.xml
  def index
    @elements = @post.elements.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @elements }
    end
  end

  # GET /elements/1
  # GET /elements/1.xml
  def show
    @element = @post.elements.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @element }
    end
  end

  # GET /elements/new
  # GET /elements/new.xml
  def new
    @element = @post.elements.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @element }
    end
  end

  # GET /elements/1/edit
  def edit
    @element = @post.element.find(params[:id])
  end

  # POST /elements
  # POST /elements.xml
  def create
    @element = @post.element.new(params[:element])

    respond_to do |format|
      if @element.save
        format.html { redirect_to([@post,@element], :notice => 'Element was successfully created.') }
        format.xml  { render :xml => @element, :status => :created, :location => @element }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @element.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /elements/1
  # PUT /elements/1.xml
  def update
    @element = @post.element.find(params[:id])

    respond_to do |format|
      if @element.update_attributes(params[:element])
        format.html { redirect_to(@element, :notice => 'Element was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @element.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /elements/1
  # DELETE /elements/1.xml
  def destroy
    @element = @post.element.find(params[:id])
    @element.destroy

    respond_to do |format|
      format.html { redirect_to(elements_url) }
      format.xml  { head :ok }
    end
  end
end
