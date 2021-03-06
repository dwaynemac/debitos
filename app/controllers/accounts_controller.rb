class AccountsController < ApplicationController
  before_filter :check_account, :except => [:create, :index]

  def index
    if signed_in?
      @accounts = current_user.accounts
      @accounts_count = @accounts.count
      @responsible = Responsible.new
    else
      render "static_pages#home"
    end
  end

  def create
    account = Account.new(name: params[:account_name])

    if account.save
      flash[:success] = "Account added"
      redirect_to account_path(account.id)
    else
      flash[:warning] = "Error adding account: #{account.errors}"
      render 'index'
    end
  end

  def show
    if @account
      @responsible = Responsible.new
    end
  end

  def edit
    if @account
      @responsible = Responsible.new
    end
  end

  def destroy
    
  end

  def check_account
    account = Account.find(params[:id])
    if current_user.accounts.map(&:name).include? account.name
      @account = account
    else
      @account = nil
    end
  end

end