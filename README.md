
starband
========

bracelet that tells u when your favorite star's are overhead

Project for NASA SpaceApps challenge 2013

The goal of the program is to provide a number of open, free API's to allow any kind of website or app to very simply calculate the current location of any star in the sky, and a confidence value to it's current viability based on time, location, and weather data.

The project uses a few python scrips that run in the background to pull real-time data from NASA and other sources, as well as static databases that have star information in them.

The server-side software is PHP5 running on Apache2.  The database is MySQL.  The scrapers are Python 2.7.  The Web UI is hand-coded for speed, simplicity, and because I don't know how to UI good.


The end goal is to provide a small amount of hardware that one could buy or build that would vibrate or flash when a star or constellation is visible   A connection would be made to a smart phone via Bluetooth every so often to get a status via the free and open web API's.  The bracelet or other piece of jewelry could be gifted as a showing of excitement and passion about space, science, and NASA.