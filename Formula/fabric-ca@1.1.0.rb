# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricCaAT110 < Formula
  desc "Hyperledger Fabric CA native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric-ca/hyperledger-fabric-ca/darwin-amd64-1.1.0/hyperledger-fabric-ca-darwin-amd64-1.1.0.tar.gz"
  sha256 "58f63fb4b48399dc146c50b55e322ea572930653866603f10a48f32eac481c4f"

  def install
    bin.install "fabric-ca-client"
  end

  test do
    system "#{bin}/fabric-ca-client --help"
  end
end
