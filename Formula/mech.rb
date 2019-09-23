class Mech < Formula
  include Language::Python::Virtualenv

  desc "Easy command-line virtual machines for VMware"
  homepage "https://mechboxes.github.io/mech/"
  url "https://github.com/mechboxes/mech/archive/v0.7.6.tar.gz"
  sha256 "8c9175a5d5f5166af34c03b0529c513d3051917076f99d4246a6248e8d94f85c"
  head "https://github.com/mechboxes/mech"

  # TODO: If you're submitting an existing package, make sure you include your
  #       bottle block here.

  depends_on "python" if MacOS.version <= :snow_leopard

  resource "args" do
    url "https://files.pythonhosted.org/packages/e5/1c/b701b3f4bd8d3667df8342f311b3efaeab86078a840fb826bd204118cc6b/args-0.1.0.tar.gz#sha256=a785b8d837625e9b61c39108532d95b85274acd679693b71ebb5156848fcf814"
    sha256 "a785b8d837625e9b61c39108532d95b85274acd679693b71ebb5156848fcf814"
  end

  resource "clint" do
    url "https://files.pythonhosted.org/packages/3d/b4/41ecb1516f1ba728f39ee7062b9dac1352d39823f513bb6f9e8aeb86e26d/clint-0.5.1.tar.gz#sha256=05224c32b1075563d0b16d0015faaf9da43aa214e4a2140e51f08789e7a4c5aa"
    sha256 "05224c32b1075563d0b16d0015faaf9da43aa214e4a2140e51f08789e7a4c5aa"
  end

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz#sha256=49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/14/ec/6ee2168387ce0154632f856d5cc5592328e9cf93127c5c9aeca92c8c16cb/filelock-3.0.12.tar.gz#sha256=18d82244ee114f543149c66a6e0c14e9c4f8a1044b5cdaadd0f82159d6a6ff59"
    sha256 "18d82244ee114f543149c66a6e0c14e9c4f8a1044b5cdaadd0f82159d6a6ff59"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/18/b0/8146a4f8dd402f60744fa380bc73ca47303cccf8b9190fd16a827281eac2/certifi-2019.9.11-py2.py3-none-any.whl#sha256=fd7c7c74727ddcf00e9acd26bba8da604ffec95bf1c2144e67aff7a8b50e6cef"
    sha256 "fd7c7c74727ddcf00e9acd26bba8da604ffec95bf1c2144e67aff7a8b50e6cef"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl#sha256=fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691"
    sha256 "fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/14/2c/cd551d81dbe15200be1cf41cd03869a46fe7226e7450af7a6545bfc474c9/idna-2.8-py2.py3-none-any.whl#sha256=ea8b7f6188e6fa117537c3df7da9fc686d485087abf6ac197f9c46432f7e4a3c"
    sha256 "ea8b7f6188e6fa117537c3df7da9fc686d485087abf6ac197f9c46432f7e4a3c"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/81/b7/cef47224900ca67078ed6e2db51342796007433ad38329558f56a15255f5/urllib3-1.25.5-py2.py3-none-any.whl#sha256=9c6c593cb28f52075016307fc26b0a0f8e82bc7d1ff19aaaa959b91710a56c47"
    sha256 "9c6c593cb28f52075016307fc26b0a0f8e82bc7d1ff19aaaa959b91710a56c47"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    mech --help
  end
end
