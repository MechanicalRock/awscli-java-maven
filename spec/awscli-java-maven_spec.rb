require "serverspec"
require "docker"

describe "awscli-java-maven Container" do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
  end

  describe "installed Apps" do
    describe command("aws --version") do
      its(:stdout) { should match /0.27.[0-9]+/ }
    end

    describe command("python --version") do
      its(:stdout) { should match /2.1.[0-9]+/ }
    end

    describe command("java -version") do
          its(:stdout) { should match /2.1.[0-9]+/ }
    end

    describe command("mvn --version") do
          its(:stdout) { should match /2.1.[0-9]+/ }
    end
  end

end