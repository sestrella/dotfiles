task :install do
  dotfiles_by_dir.each do |dn, fns|
    FileUtils.mkdir_p(File.expand_path("~/.#{dn}"), verbose: true)
    fns.each do |fn|
      FileUtils.ln_sf(
        File.expand_path(fn),
        File.expand_path("~/.#{fn}"),
        verbose: true
      )
    end
  end
end

EXCLUDES = ['Rakefile', 'README.md']

def dotfiles_by_dir
  dotfiles.group_by { |fn| File.dirname(fn) }
end

def dotfiles
  FileList['**/*'].select { |fn| File.file?(fn) }.exclude(*EXCLUDES)
end
