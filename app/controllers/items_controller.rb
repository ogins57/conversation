class ItemsController < ApplicationController

    def index
        @items = Item.all(:order =>'created_at DESC')
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(params[:item])
        if @item.save
            redirect_to items_path
        else
            render action: 'new'
        end
    end

    def edit
        @item = Item.find(params[:id])
    end

end
