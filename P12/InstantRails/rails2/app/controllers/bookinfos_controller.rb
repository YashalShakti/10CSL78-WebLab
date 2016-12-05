class BookinfosController < ApplicationController
  # GET /bookinfos
  # GET /bookinfos.xml
  def index
    @bookinfos = Bookinfo.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bookinfos }
    end
  end

  # GET /bookinfos/1
  # GET /bookinfos/1.xml
  def show
    @bookinfo = Bookinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bookinfo }
    end
  end

  # GET /bookinfos/new
  # GET /bookinfos/new.xml
  def new
    @bookinfo = Bookinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bookinfo }
    end
  end

  # GET /bookinfos/1/edit
  def edit
    @bookinfo = Bookinfo.find(params[:id])
  end

  # POST /bookinfos
  # POST /bookinfos.xml
  def create
    @bookinfo = Bookinfo.new(params[:bookinfo])

    respond_to do |format|
      if @bookinfo.save
        flash[:notice] = 'Bookinfo was successfully created.'
        format.html { redirect_to(@bookinfo) }
        format.xml  { render :xml => @bookinfo, :status => :created, :location => @bookinfo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bookinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bookinfos/1
  # PUT /bookinfos/1.xml
  def update
    @bookinfo = Bookinfo.find(params[:id])

    respond_to do |format|
      if @bookinfo.update_attributes(params[:bookinfo])
        flash[:notice] = 'Bookinfo was successfully updated.'
        format.html { redirect_to(@bookinfo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bookinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bookinfos/1
  # DELETE /bookinfos/1.xml
  def destroy
    @bookinfo = Bookinfo.find(params[:id])
    @bookinfo.destroy

    respond_to do |format|
      format.html { redirect_to(bookinfos_url) }
      format.xml  { head :ok }
    end
  end
end
