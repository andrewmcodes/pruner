module Pruner
  module Branches
    class << self
      include MessageFormatter

      #
      # Initialize new TTY Prompt
      #
      # @return [object] TTY::Prompt
      #
      def prompt
        @prompt ||= TTY::Prompt.new
      end

      #
      # Initialize new Git object
      #
      # @return [object] Git
      #
      def git
        @git ||= Git.open(`pwd`.strip)
      end

      #
      # All branches
      #
      # @return [array] all branches
      #
      def branches
        git.branches.local.to_a
      end

      #
      # Loop to delete the selected branches
      #
      # @return [string] confirmation_message
      #
      def delete(selections)
        title_message("Deleting Branches")
        selections.each do |s|
          s.delete
          puts "- #{s}"
        end
        confirmation_message
      end

      #
      # Selected branches for deletion
      #
      # @return [array] array of branch names
      #
      def confirmed_selections
        selections = prompt.multi_select(title_message("Select branches to delete"), branches)
        no_selections if selections.empty?
        confirmation_prompt ? selections : canceled_message
      end

      #
      # Prompt to confirm deletion of branches
      #
      # @return [boolean] T:F depending on selection
      #
      def confirmation_prompt
        title_message("Are you sure you want to delete these branches?")
        prompt.yes?("→")
      end

      #
      # Confirmation message that the branches were removed
      #
      # @return [string] Branches deleted message
      #
      def confirmation_message
        title_message("Branches Deleted")
      end

      #
      # No selection message
      #
      # @return [string] message indicating no selections were made
      #
      def no_selections
        abort_message("No selections were made.")
      end

      #
      # Canceled message
      #
      # @return [string] message indicating the operation was canceled
      #
      def canceled_message
        abort_message("Operation canceled by user.")
      end
    end
  end
end
