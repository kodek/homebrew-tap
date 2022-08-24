# typed: false
# frozen_string_literal: true

# https://github.com/Homebrew/homebrew-cask/tree/master/doc/cask_language_reference

cask "theila" do
  version "0.2.1"

  if Hardware::CPU.intel?
    sha256 "1b050edd76e1bd7a39d3f8275603dc30aef1d790b9b91a0317609620c1f3c5d8"
    url "https://github.com/siderolabs/theila/releases/download/v#{version}/theila-darwin-amd64",
        verified: "github.com/siderolabs/theila/"

    binary "theila-darwin-amd64", target: "theila"
  else
    sha256 "8f5e794f96ec21c57a271322fdb92587033e294aeadcbbc38e5e739c134a70db"
    url "https://github.com/siderolabs/theila/releases/download/v#{version}/theila-darwin-arm64",
        verified: "github.com/siderolabs/theila/"

    binary "theila-darwin-arm64", target: "theila"
  end

  name "teila"
  desc "Cluster management UI which relies on local ~/.talos/config and provides OS level hooks by connecting to Talos gRPC API. Then Kubernetes credentials are requested from the Talos API"
  homepage "https://talos.dev/"
end
