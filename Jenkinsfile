stage 'docker image for linux'
node('linux') {
  def linux = docker.image('ubuntu:12.04')
  linux.pull() // make sure we have the latest available from Docker Hub
  linux.inside {
    sh 'apt-get update'
    sh 'apt-get install python-setuptools'
    sh 'easy_install pip'
    git 'git://github.com/MarceloCorpucci/effective-testing.git'
  }
}