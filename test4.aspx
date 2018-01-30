<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test4.aspx.cs" Inherits="test4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script
        type="text/javascript"
        src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0">
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div style="width: 800px; height: 50px;">
        <span id="lbl"></span>
    </div>
    <div id="map" style="width:800px; height:600px;">

    </div>
        var map = null;
        <script type="text/javascript">

            var lbl = document.getElementById("lbl");

            if (navigator.geolocation) {
                navigator.geolocation
                    .getCurrentPosition(showLocation,
                                        errorHandler,
                                        {
                                            maximumAge: 100,
                                            timeout: 6000,
                                            enableHighAccuracy: true
                                        });
            }
            else {
                alert("Geolocation not suported");
            }

            function showLocation(pos) {
                lbl.innerHTML =
                    "Your latitude: " + pos.coords.latitude +
                    " and longitude: " + pos.coords.longitude +
                    " (Accuracy of: " + pos.coords.accuracy + " meters)";
                // Save the current location
               // var lat = pos.coords.latitude;
                ////var long = pos.coords.longitude;

                var lat =47.445999 ;
                var long = -122.152725;
                // Create the map
                map = new Microsoft.Maps.Map(document.getElementById("map"),
                     {
                         credentials:
                           "ApaApqUpHu_ZbedEoxFKVw85zS9s6-qBju-oZNMXGiKXb4Jwjm9ZJkBSeqKgJPqc"
                     });

                // Center it on the current location
                map.setView({ zoom: 18, center: new Microsoft.Maps.Location(lat, long) });
                // Mark the current location
                var pushpin = new Microsoft.Maps.Pushpin
                    (new Microsoft.Maps.Location(lat, long), null);
                map.entities.push(pushpin);

            }

            function errorHandler(e) {
                if (e.code === 1) { // PERMISSION_DENIED
                    lbl.innerHTML = "Permission denied. - " + e.message;
                } else if (e.code === 2) { //POSITION_UNAVAILABLE
                    lbl.innerHTML = "Make sure your network connection is active and " +
                        "try this again. - " + e.message;
                } else if (e.code === 3) { //TIMEOUT
                    lbl.innerHTML = "A timeout ocurred; try again. - " + e.message;
                }
            }

        </script>
    </form>
</body>
</html>
