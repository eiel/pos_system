# -*- coding: utf-8 -*-
class CustomerController < ApplicationController
  def index
    @hoge = [{'menu'=>'和食','title'=>1},
    	     {'menu'=>'洋食','title'=>2},
    	     {'menu'=>'中華','title'=>3},
    	     {'menu'=>'飲み物','title'=>4},
    	     {'menu'=>'アルコール','title'=>4}]
    
    respond_to do |format|
      format.html
      format.json { render :json => @hoge }
    end
  end

  def hoge
    @hoge = Menu.where(:id => 1)

    respond_to do |format|
      format.html
      format.json { render :json => @hoge.map(&:to_json) }
    end
  end
end
