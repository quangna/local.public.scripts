# cd /tmp
# wget https://github.com/mozilla/sops/releases/download/v3.6.1/sops-v3.6.1.darwin

APP_VERSION="v3.6.1"
APP_OS="darwin"

cd /tmp
wget https://github.com/mozilla/sops/releases/download/${APP_VERSION}/sops-${APP_VERSION}.${APP_OS}
chmod u+x /tmp/sops-${APP_VERSION}.${APP_OS}
mv /tmp/sops-${APP_VERSION}.${APP_OS} /Users/v.Quangna2/w0rkingsp4/go-libs/bin/sops

sops --version
