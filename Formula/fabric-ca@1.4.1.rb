# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricCaAT141 < Formula
  desc "Hyperledger Fabric CA native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric-ca/hyperledger-fabric-ca/darwin-amd64-1.4.1/hyperledger-fabric-ca-darwin-amd64-1.4.1.tar.gz"
  sha256 "95118e5bf7a492e3edef2a490d2d0970971bdd258aa92f717732ed667a33eade"

  def install
    bin.install "fabric-ca-client"
  end

  test do
    system "#{bin}/fabric-ca-client --help"
  end
end
