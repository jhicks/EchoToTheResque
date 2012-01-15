class Echo < ActiveRecord::Base
  validates_presence_of :name

  after_commit :initiate_echo, :on => :create

  def initiate_echo
    Resque.enqueue(EchoJob,id)
  end
end

