require 'headless'

RSpec.configure do |config|
  config.around(:headless => true) do |example|

    output_extension = ".mov"
    output_dir = "tmp"

    filename = example.metadata[:filename] || File.join(output_dir, example.id)
    dirname = File.dirname(filename)
    FileUtils.mkdir_p(dirname)

    headless = Headless.new#(:video => {:provider => :libav})
    headless.start
    headless.video.start_capture

    example.run

    if example.metadata[:only_failed] && !example.exception
      headless.video.stop_and_discard
    else
      headless.video.stop_and_save(File.join(dirname, [File.basename(filename), example.exception ? "_FAILED" : nil, output_extension].compact.join))
    end
  end
end
