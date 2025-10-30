---
layout: page
title: Locations
permalink: /locations/
---

# Collection Locations

Find your nearest Re-USED smart battery collection point. Our network is growing across cities to make recycling easier for everyone.

## Interactive Map

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<div style="background: #e8f5e9; border: 2px solid #27ae60; border-radius: 12px; padding: 20px; margin: 30px 0;">
  <div id="map" style="height: 500px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);"></div>
  <p style="margin-top: 15px; font-size: 13px; color: #666; text-align: center;">
    <strong>Interactive Map</strong> - Click markers for location details • Zoom and pan to explore
  </p>
</div>

<script>
  // Initialize map centered on Amsterdam
  var map = L.map('map').setView([52.3676, 4.9041], 13);

  // Add OpenStreetMap tiles
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '© OpenStreetMap contributors',
    maxZoom: 19
  }).addTo(map);

  // Custom green marker icon
  var greenIcon = L.icon({
    iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-green.png',
    shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/images/marker-shadow.png',
    iconSize: [25, 41],
    iconAnchor: [12, 41],
    popupAnchor: [1, -34],
    shadowSize: [41, 41]
  });

  // Collection point locations (Amsterdam)
  var locations = [
    {name: "Dam Square", coords: [52.3730, 4.8930], area: "Central shopping district", hours: "24/7"},
    {name: "Nieuwmarkt", coords: [52.3720, 4.9010], area: "Near metro station", hours: "24/7"},
    {name: "Leidseplein", coords: [52.3640, 4.8830], area: "Entertainment district", hours: "24/7"},
    {name: "NDSM Wharf", coords: [52.4000, 4.8950], area: "Cultural area", hours: "24/7"},
    {name: "Buiksloterweg", coords: [52.3950, 4.9100], area: "Residential zone", hours: "24/7"},
    {name: "Eye Filmmuseum", coords: [52.3842, 4.9010], area: "Tourist area", hours: "24/7"},
    {name: "De Pijp Market", coords: [52.3550, 4.8940], area: "Shopping area", hours: "24/7"},
    {name: "Museumplein", coords: [52.3580, 4.8810], area: "Museum district", hours: "24/7"},
    {name: "Zuidas", coords: [52.3380, 4.8720], area: "Business district", hours: "24/7"},
    {name: "Central Station", coords: [52.3791, 4.9003], area: "Main transport hub", hours: "24/7"},
    {name: "Vondelpark", coords: [52.3579, 4.8686], area: "Park entrance", hours: "24/7"},
    {name: "Jordaan", coords: [52.3760, 4.8820], area: "Historic neighborhood", hours: "24/7"},
    {name: "Oost", coords: [52.3610, 4.9350], area: "Residential area", hours: "24/7"},
    {name: "Westerpark", coords: [52.3890, 4.8760], area: "Park area", hours: "24/7"},
    {name: "Olympic Stadium", coords: [52.3440, 4.8500], area: "Sports complex", hours: "24/7"}
  ];

  // Add markers to map
  locations.forEach(function(location) {
    var marker = L.marker(location.coords, {icon: greenIcon}).addTo(map);
    marker.bindPopup(
      "<strong>🗑️ " + location.name + "</strong><br>" +
      "📍 " + location.area + "<br>" +
      "⏰ Open " + location.hours + "<br>" +
      "<a href='#' style='color: #27ae60; font-weight: bold;'>Get Directions</a>"
    );
  });
</script>

## Current Pilot Locations

### Amsterdam, Netherlands
**Status:** Active Pilot Program
**Containers:** 15 locations across city center and residential areas

<div class="feature-box">
<h4>📍 Amsterdam Centrum</h4>
<ul>
  <li><strong>Dam Square</strong> - Central shopping district</li>
  <li><strong>Nieuwmarkt</strong> - Near metro station</li>
  <li><strong>Leidseplein</strong> - Entertainment district</li>
</ul>
</div>

<div class="feature-box">
<h4>📍 Amsterdam Noord</h4>
<ul>
  <li><strong>NDSM Wharf</strong> - Cultural area</li>
  <li><strong>Buiksloterweg</strong> - Residential zone</li>
  <li><strong>Eye Filmmuseum</strong> - Tourist area</li>
</ul>
</div>

<div class="feature-box">
<h4>📍 Amsterdam Zuid</h4>
<ul>
  <li><strong>De Pijp Market</strong> - Shopping area</li>
  <li><strong>Museumplein</strong> - Museum district</li>
  <li><strong>Zuidas Business District</strong> - Office area</li>
</ul>
</div>

### Rotterdam, Netherlands
**Status:** Launching Q2 2025
**Containers:** 20 planned locations

<div class="feature-box">
<h4>📍 Coming Soon</h4>
<ul>
  <li><strong>Rotterdam Central Station</strong> - Main transport hub</li>
  <li><strong>Markthal</strong> - Market and residential</li>
  <li><strong>Erasmus University</strong> - Campus area</li>
  <li><strong>Kralingen</strong> - Residential neighborhoods</li>
</ul>
</div>

## How to Use Collection Points

<div class="feature-box">
<h3>Step 1: Locate a Container</h3>
<p>Use our map or mobile app to find the nearest collection point. Containers are typically located near shopping areas, metro stations, and residential zones.</p>
</div>

<div class="feature-box">
<h3>Step 2: Tap Your Card or Phone</h3>
<p>Hold your NFC-enabled phone or municipal card near the reader. The container will unlock automatically.</p>
</div>

<div class="feature-box">
<h3>Step 3: Deposit Batteries</h3>
<p>Place your used batteries in the container. All types accepted: AA, AAA, lithium-ion, button cells, and rechargeable batteries.</p>
</div>

<div class="feature-box">
<h3>Step 4: Earn Rewards</h3>
<p>Your contribution is automatically recorded. Points are credited to your account and applied to your waste disposal fees.</p>
</div>

## Accepted Battery Types

- **Alkaline Batteries**: AA, AAA, C, D, 9V
- **Lithium-Ion**: Phone batteries, laptop batteries, power tool batteries
- **Button Cells**: Watch batteries, hearing aid batteries
- **Rechargeable**: NiMH, NiCd batteries
- **Car Batteries**: Accepted at designated locations only

## Container Specifications

<div class="feature-box">
<h3>🔐 Security Features</h3>
<ul>
  <li>NFC authentication system</li>
  <li>Tamper-proof design</li>
  <li>Fire-suppression system for lithium batteries</li>
  <li>24/7 monitoring</li>
</ul>
</div>

<div class="feature-box">
<h3>📏 Technical Details</h3>
<ul>
  <li><strong>Capacity:</strong> 200kg per container</li>
  <li><strong>Emptying frequency:</strong> Weekly or as needed</li>
  <li><strong>Underground installation:</strong> Minimal street footprint</li>
  <li><strong>IoT connectivity:</strong> Real-time fill-level monitoring</li>
</ul>
</div>

## Expansion Plans

We're actively working with municipalities across Europe to expand our network:

- **Utrecht** - Pilot starting Fall 2025
- **The Hague** - Planning phase
- **Brussels, Belgium** - In discussions
- **Copenhagen, Denmark** - In discussions

### Bring Re-USED to Your City

Interested in bringing smart battery collection to your municipality? [Contact us](/Re-USED/contact/) to discuss implementation.

## Collection Statistics

**Current Impact (Amsterdam Pilot):**
- **15 active containers** deployed
- **2,500+ registered users**
- **8.5 tons** of batteries collected since launch
- **92% user satisfaction** rating
- **45% increase** in battery recycling rates

---

## Need Help Finding a Location?

Can't find a collection point near you? Contact us and we'll help:
- **Email:** locations@re-used.com
- **Phone:** +31 20 123 4567
- **Live Chat:** Available on our app (coming soon)

[View All Locations](#){: .button} [Report an Issue](#){: .button}
