# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricCaAT120 < Formula
  desc "Hyperledger Fabric CA native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric-ca/hyperledger-fabric-ca/darwin-amd64-1.2.0/hyperledger-fabric-ca-darwin-amd64-1.2.0.tar.gz"
  sha256 "83db27a4ef811ccc9f1e977f3a701b2f59024104f22527af3bc40c426a1ba8d7"

  def install
    bin.install "fabric-ca-client"
  end

  test do
    system "#{bin}/fabric-ca-client --help"
  end
end
