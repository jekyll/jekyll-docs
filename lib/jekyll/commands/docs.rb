module Jekyll
  module Commands
    class Docs < Command

      class << self

        def init_with_program(prog)
          prog.command(:docs) do |c|
            c.syntax 'docs'
            c.description "Launch local server with docs for Jekyll v#{Jekyll::VERSION}"

            c.option 'port', '-P', '--port [PORT]', 'Port to listen on. Defaults to 4000.'
            c.option 'host', '-H', '--host [HOST]', 'Host to bind to. Defaults to 127.0.0.1.'

            c.action do |args, options|
              options.merge!({
                'source'      => File.expand_path("../../../site", File.dirname(__FILE__)),
                'destination' => File.expand_path("../../../site/_site", File.dirname(__FILE__))
              })
              Jekyll::Commands::Build.process(options)
              Jekyll::Commands::Serve.process(options)
            end
          end
        end

      end

    end
  end
end
