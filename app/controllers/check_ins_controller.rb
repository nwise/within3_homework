class CheckInsController < ApplicationController

  # GET /check_ins/new
  # GET /check_ins/new.xml
  def new
    @check_in = CheckIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @check_in }
    end
  end

  # POST /check_ins
  # POST /check_ins.xml
  def create
    @check_in = CheckIn.new(params[:check_in])

    respond_to do |format|
      if @check_in.save
        flash[:notice] = 'CheckIn was successfully created.'
        format.html { redirect_to(@check_in) }
        format.xml  { render :xml => @check_in, :status => :created, :location => @check_in }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @check_in.errors, :status => :unprocessable_entity }
      end
    end
  end

end
