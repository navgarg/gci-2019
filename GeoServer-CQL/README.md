Tutorial for the Process Followed
GCI 2019 Task Name: OpenLayers and GeoServer: Common Query Language (CQL)

Disclaimer / Credit: This tutorial has been created using the steps suggested by Geoserver website at https://docs.geoserver.org/latest/en/user/gettingstarted/shapefile-quickstart/index.html. Accordingly, the steps given below are an adopted version of the steps available on that webpage.

Data preparation
I have taken the Columbia State Road data from the URL given below:
1. Go to the webpage https://download.geofabrik.de/north-america/us/district-of-columbia.html. This archive contains a shapefile of roads from Columbia State that will be used during in this tutorial.
2. Click on the last URL given in the screenshot.

3. This will download the dataset, which contains several shapefiles, including the Columbia State Roads data.
4. Unzip the archive into a new directory.
Creating a new workspace
The next step is to create a workspace for the shapefile. 
1. In a web browser, navigate to http://localhost:8080/geoserver.
2. Log into GeoServer as described in the Logging In section.
3. Navigate to Data ‣ Workspaces.

4. Click the Add new workspace button.
5. You will be prompted to enter a workspace Name and Namespace URI.
 
6. Enter the Name as navyagarg and the Namespace URI as http://geoserver.org/navyagarg.

 
nyc workspace
7. Click the Submit button. The navyagarg workspace will be added to the Workspaces list.
Create a store
Once the workspace is created, we are ready to add a new store. The store tells GeoServer how to connect to the shapefile.
1. Navigate to Data‣Stores.
2. You should see a list of stores, including the type of store and the workspace that the store belongs to.
3. In order to add the shapefile, you need to create a new store. Click the Add new Store button. You will be redirected to a list of the data sources supported by GeoServer. Note that the data sources are extensible, so your list may look slightly different.
 
Stores
4. Click Shapefile. The New Vector Data Source page will display.
5. Begin by configuring the Basic Store Info.
Select the workspace navyagarg from the drop down menu. 
Enter the Data Source Name as Columbia Roads 
Enter a brief Description (such as “Roads in Columbia”). 
6. Under Connection Parameters, browse to the location URL of the shapefile gis_osm_roads_free_1.shp.
 
Basic Store Info and Connection Parameters
7. Click Save. You will be redirected to the New Layer page in order to configure the gis_osm_roads_free_1 layer.
Creating a layer
Now that the store is loaded, we can publish the layer.
1. On the New Layer page, click Publish beside the gis_osm_roads_free_1 layer name.
 
New layer
2. The Edit Layer page defines the data and publishing parameters for a layer. Enter a short Title and an Abstract for the gis_osm_roads_free_1 layer.
 
Basic Resource Information
3. Generate the layer’s bounding boxes by clicking the Compute from data and then Compute from native bounds links.
 
Generating bounding boxes
4. Click the Publishing tab at the top of the page.
5. We can set the layer’s style here. Under WMS Settings, ensure that the Default Style is set to line.
 
Select Default Style
6. Finalize the layer configuration by scrolling to the bottom of the page and clicking Save.
Previewing the layer
In order to verify that the gis_osm_roads_free_1 layer is published correctly, we can preview the layer.
1. Navigate to the Layer Preview screen and find the navyagarg:gis_osm_roads_free_1 layer.
 
Layer Preview
2. Click the OpenLayers link in the Common Formats column.
3. An OpenLayers map will load in a new tab and display the shapefile data with the default line style. You can use this preview map to zoom and pan around the dataset, as well as display the attributes of features.
 


Running the CQL Queries
Click on the three dots at the top left corner of the map preview to open the advanced options toolbar. The example filters can be entered in the Filter: CQL box.

Now Click on any of the roads on the map. This will open the structure of the table of the dataset roads.




Now we can run our CQL quries on this dataset.


For example, in case we are interested in displaying only those roads which are having code more than 5125. For this we enter the query as follows:



This query will filter out all the roads which are not satisfying the criterion code > 5125 and will display only those road satisfying the above criteria.
The output map would be as given below:





Now, if suppose somebody is interested in displaying only those roads which are having code equal to 5115. For this the entered query would be code=5115 and the output map would be as follows:








For displaying roads, which are residential, the submitted query would be fclass=’residential’ and the output would be as given below:
