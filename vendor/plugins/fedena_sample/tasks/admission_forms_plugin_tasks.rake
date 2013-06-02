namespace :admission_forms_plugin do
  desc "Install Admission forms Plugin Module"
  task :install do
    system "rsync --exclude=.svn -ruv vendor/plugins/foradian_sample/public ."
  end
end