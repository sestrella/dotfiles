#!/usr/bin/env ruby
require 'fileutils'

EXCLUDES = ['install.rb', 'README.md']

Dir.glob('**/*')
  .select { |f| File.file?(f) }
  .reject { |f| EXCLUDES.include?(f) }
  .group_by { |f| File.dirname(f) }
  .each do |d, fs|
  FileUtils.mkdir_p(File.expand_path("~/#{d}"))
  fs.each do |f|
    FileUtils.ln_sf(File.expand_path(f), File.expand_path("~/.#{f}"))
  end
end
