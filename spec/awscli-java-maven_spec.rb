require "serverspec"
require "docker"

describe "awscli-java-maven Container" do
  before(:all) do
    Excon.defaults[:read_timeout] = 1800
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  describe "installed Apps" do
    describe command("aws --version") do
      its(:stdout) { should match /aws-cli*/ }
    end

    describe command("python --version") do
      its(:stdout) { should match /Python*/ }
    end

    describe command("python3 --version") do
      its(:stdout) { should match /Python*/ }
    end

    describe command("java -version") do
      its(:stdout) { should match /java*/ }
    end

    describe command("mvn --version") do
      its(:stdout) { should match /maven*/ }
    end
  end

end