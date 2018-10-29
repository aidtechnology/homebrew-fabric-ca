# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
class FabricCaAT120 < Formula
  desc "Hyperledger Fabric CA native binaries installer"
  homepage "https://hyperledger.org/projects/fabric"
  url "https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric-ca/hyperledger-fabric-ca/darwin-amd64-1.3.0/hyperledger-fabric-ca-darwin-amd64-1.3.0.tar.gz"
  sha256 "57a18780a822651949bd9bd9c22815202455255cf57858c059eadf0a55c5d504"

  def install
    bin.install "fabric-ca-client"
  end

  test do
    system "#{bin}/fabric-ca-client --help"
  end
end
