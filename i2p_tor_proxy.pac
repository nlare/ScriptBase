function FindProxyForURL(url, host) {
 if ((host == "localhost") ||
    (shExpMatch(host, "localhost.*")) ||
    (host == "192.168.0.102")) {
       return "DIRECT";
 }
 if (dnsDomainIs(host, ".i2p")) {
       return "PROXY 192.168.0.102:4444";
 } else {
       return "PROXY 192.168.0.102:8118";
 }
}
