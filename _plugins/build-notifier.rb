begin
  require 'terminal-notifier'
  module Jekyll
    class Site
      alias jekyll_process process
      def process
        jekyll_process
        TerminalNotifier.notify("🍻 Jekyll rebuild finished")
      rescue => e
        TerminalNotifier.notify("💥 Jekyll rebuild failed: #{e.message}")
        raise e
      end
    end
  end
rescue LoadError
  # nothing
end

# require 'jekyll-assets'

# # optional notification for jekyll build completion
# #
# # gem install terminal-notifier
# # rbenv rehash
# #

# module Jekyll
#   class Site
#     alias old_write write
#     def write
#       old_write
#       if `uname`.strip == "Darwin"
#         `terminal-notifier -title "#{config['title'] ? config['title'] : 'Jekyll Site'}" -message "Jekyll generate complete."`
#       end
#     end
#   end
# end