class EchoJob
  @queue = :echo_queue

  def self.perform(echo_id)
    echo = Echo.find_by_id(echo_id)
    echo.echo = "Echo '#{echo.name}'"
    echo.save
  end
end
