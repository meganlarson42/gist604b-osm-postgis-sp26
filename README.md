# OSM & PostGIS Spatial Analysis

**Student:** Megan Larson

**Course:** GIST 604B – Open Source GIS

**Module:** Module 5 - OSM & PostGIS Spatial Analysis 

**University of Arizona**

## Project Description
This project focused on building an automated workflow to download, store, and analyze OpenStreetMap (OSM) data. After learning the process using Arizona data, I created a custom "DIY" analysis for the state of Idaho, using SQL and Python to answer specific questions about the state's geography and infrastructure.

## Tools and Technologies
- PostGIS & PostgreSQL (Spatial Database)
- Python (Jupyter Notebooks)
- Docker (Database Hosting)
- SQL (Spatial Queries & CTEs)
- Geofabrik (OSM Data Source)
  
## What I Did
- **Built an Automated Setup:** Developed a Python script to automatically download Idaho’s map data from the internet and load it directly into a PostGIS database.
- **Identified Geographic Trends:** Created a custom SQL query to filter Idaho's map features, focusing on specific categories like fast food locations, canal density, and forest area.
- **Summarized Regional Data:** Wrote aggregation queries to count and group features by their administrative boundaries or categories to see how they are distributed across the state.
- **Calculated Spatial Metrics:** Used advanced SQL to measure distances and areas accurately using the "geography" type, and performed spatial joins to see how different layers (like parks and roads) overlap.
- **Visualized Insights:** Integrated my SQL results into a Jupyter Notebook to create maps and charts that interpret the findings for the Idaho study area.

## How to View / Run
- **Launch Database:** Use docker compose up -d to start the spatial database container in Codespaces.
- **Run Setup:** Execute the setup_osm_postgis.py script or the setup notebook to download and load the Idaho dataset.
- **View Analysis:** Open notebooks/osm_postgis_idaho.ipynb to see the custom SQL queries, visualizations, and data interpretations.
- **Direct SQL:** Connect to the idaho database in the PostgreSQL Explorer to test individual queries found in the sql/idaho/ folder.
  
## Repository Structure
    .
    ├── .devcontainer/
    │   ├── Dockerfile
    │   └── devcontainer.json
    ├── notebooks/
    │   ├── setup_osm_postgis.ipynb
    │   └── osm_postgis_queries.ipynb
    ├── sql/
    │   └── arizona/
    │       ├── 01_osm_restaurant_distribution.sql
    │       ├── 02_osm_park_area_by_county.sql
    │       ├── 03_osm_restaurants_near_streets.sql
    │       ├── 04_osm_railway_density_by_county.sql
    │       └── 05_osm_county_amenity_synthesis.sql
    ├── src/
    │   └── setup_osm_postgis.py
    ├── docker-compose.yml
    ├── pyproject.toml
    ├── uv.lock
    └── README.md

## Notes

- Notebooks are for exploration and learning.
- sql/arizona folder contains sql scripts discussed in the lectures.
- Data is downloaded and prepared inside the Codespace environment and is not stored in this repository.
- The database runs in a separate PostGIS container using Docker.
