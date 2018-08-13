## Homebrew installer for Mac OS X

### Updating the URL and checksum

Whenever a new release is published, this formula will need to be updated with the latest URL and checksum of the download tar file. To calculate the checsum to be used in the formula, the simplest approach is to curl the resource URL and pipe it to `shasum`. e.g.:

```bash
curl -L -s https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric-ca/hyperledger-fabric-ca/darwin-amd64-1.2.0/hyperledger-fabric-ca-darwin-amd64-1.2.0.tar.gz | shasum -a 256
83db27a4ef811ccc9f1e977f3a701b2f59024104f22527af3bc40c426a1ba8d7
```

### Testing

To test locally, first fork the github.com/aidtechnology/homebrew-fabric-ca
repository to your personal GitHub account. Then, clone your fork to your
laptop/workstation. Then push the changes to your personal fork.

e.g. following the fork step:

```bash
git clone git@github.com:<your-github-id>/homebrew-fabric-ca.git
cd homebrew-fabric-ca
git push origin HEAD:master
```

**Note:** you may also use the GitHub desktop client to clone and push.

If you have previously installed the Fabric CA tap,
you should first uninstall it to test an update.

```bash
brew untap aidtechnology/fabric-ca
```

The next step, you can install **your** tap with the following:

```bash
brew tap <your-github-id>/homebrew-fabric-ca
```

Now that you have the tap based on your personal fork installed, you can
test the command.

```bash
brew install fabric-ca
```

Then, check to see whether the binaries have been properly installed:

```bash
which fabric-ca-client
```
