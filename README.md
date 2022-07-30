<h1 align="center">Cacti DNS 🌵</h1>
<h3 align="center">A self hostable DNS that blocks ads like spikes.</h3>

DNS (or Domain Name Server) allows you to map domains names to ip address, example `github.com` => `140.82.121.3`.

So if you take all the add urls and block them, then boom! Now many would say use the hosts file found on your device, but its to much hassle for each device on your network and mobile devices don't support it. You can use a pi hole, but this is a much smaller, lighter, quickly deployable solution.

All it is  Dockerfile and a Javascript setup script.

# Usage
There is a commmunity edition with add blocking, not 100% perfect. And you can deploy it your self so you can add custom hosts and add more ad blocking urls.

__⚠This has not been tested in real world and still dosn't work.⚠__
## Community
Not yet ready.

## Deploy yourself
3 very easy and replicable steps. Make sure you have docker installed on the machine.

1. Fork this repo or just get the source code somehow.
2. Run `docker build ./ -t dns`
3. Run `docker run -p 53:53 dns`

### More configuration

