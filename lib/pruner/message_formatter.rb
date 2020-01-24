module Pruner
  module MessageFormatter
    #
    # Title message formatter
    #
    # @return [string] formatted title string
    #
    def title_message(message)
      puts "\n==== #{message} ====\n"
    end

    #
    # Abort message formatter
    #
    # @return [string] formatted abort string
    #
    def abort_message(message)
      abort "\n==== #{message} ====\n"
    end

    #
    # Body message formatter
    #
    # @return [string] formatted body string
    #
    def body_message(message)
      puts "\n#{message}\n"
    end
  end
end
