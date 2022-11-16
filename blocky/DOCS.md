# Blocky

## Installation

1. **Ensure your Home Assistant device has a
   [static IP and static external DNS servers!](https://github.com/home-assistant/hassos/blob/dev/Documentation/network.md#static-ip)**
   This is important! You **WILL** end up having issues if you skip this step.
   - Change this setting in Network:
     [![Open your Home Assistant instance and manage your systems network configuration.](https://my.home-assistant.io/badges/network.svg)](https://my.home-assistant.io/redirect/network/)
     (_Settings → System → Network
     → Configure network interfaces → Your Interface → IPv4 → Static_)
   - Please note, setting a fixed IP in your router is **NOT** static.
1. Click the Home Assistant My button below to open the add-on on your Home
   Assistant instance.

   [![Open your Home Assistant instance and show the dashboard of a Supervisor add-on.](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=505c60ae_blocky&repository_url=https%3A%2F%2Fgithub.com%2Frobinvalk%2Fhome-assistant-addons)

1. Click the "Install" button to install the add-on.
1. Start the add-on.
1. Check the logs to see if everything went well.
1. [Configure the DNS servers on your network](https://0xerr0r.github.io/blocky/network_configuration/) to start profiting of the "Blocky" add-on's features.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

...PLACEHOLDER...

## Filtering mobile DNS traffic

Wouldn't it be nice if you could also filter your phone's DNS traffic, block ads and tracking, even when you aren't home?! This is quite easy to setup! All you need is a VPN that tunnels your DNS traffic to your Home Assistant host.

To setup such VPN I recommend using the [WireGuard add-on](https://github.com/hassio-addons/addon-wireguard). WireGuard has apps accross the different platforms which makes it easy to setup on your phone. In the mobile app you can configure the VPN to only be active when you are connected to 4g or if you are not connected to a specific wifi network.

To install and configure the WireGuard add-on you can follow the [instructions of the add-on itself](https://github.com/hassio-addons/addon-wireguard/blob/main/wireguard/DOCS.md). The configuration that comes out of the box is a good starting point to build from. After setting up the peer configuration for your phone you should add the following DNS entry to the server's configuration: `172.30.32.1`. The end result will look something like this:

```yaml
server:
    host: myautomatedhome.duckdns.org
    addresses:
        - 172.27.66.1
    dns:
        - 172.30.32.1
```

Save the configuration, (re)start the add-on and let it generate the QR code for the app on your phone _(If you didn't install the app yet, now is a good time to [install](https://www.wireguard.com/install/) it)._ After you let the add-on run for a while you can find the QR code at the following path: `/ssl/wireguard/your-peer-name-here/qrcode.png`. Choose the QR option in the mobile app when you add a tunnel. Once done you're all set to start using the VPN to filter DNS traffic on your phone!


[addon-badge]: https://my.home-assistant.io/badges/supervisor_addon.svg
