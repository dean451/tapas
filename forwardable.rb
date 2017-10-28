require 'forwardable'


class User

  attr_reader :account

  extend Forwardable

  def_delegators :@account, :first_name, :last_name, :email_address

  def initialize(account)
    @account = account
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # def delegators removes need for these

  # def first_name
  #   account.first_name
  # end
  #
  # def last_name
  #   account.last_name
  # end
  #
  # def email_address
  #   account.email_address
  # end

end

GithubAccount = Struct.new(:login, :email_address, :first_name, :last_name)
FacebookAccount = Struct.new(:uid, :email_address, :first_name, :last_name)

class Store
  extend Forwardable

  def_delegator '@owner', :email_address, :owner_email

  def initialize(owner)
    @owner = owner
  end

end

avdi = User.new(GithubAccount.new("avdi", "avdi@avdi.org", "Avdi", "Grimm"))
p avdi.full_name
store = Store.new(avdi)
p store.owner_email
