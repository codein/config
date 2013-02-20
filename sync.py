from settings import dotfiles
from settings import home_dir
import subprocess

for dotfile, dotfilename in dotfiles.iteritems():
  path = '%s%s' % (home_dir, dotfilename)
  print path
  subprocess.check_output(['cp', '%s' % path, 'dotfiles'])