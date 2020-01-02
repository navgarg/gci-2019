Tutorial for the Process Followed:

GCI 2019 Task: OpenLayers and GeoServer: Common Query Language (CQL)

Disclaimer / Credit: This tutorial has been created using the steps suggested by Geoserver website at https://docs.geoserver.org/latest/en/user/gettingstarted/shapefile-quickstart/index.html. Accordingly, the steps given below are an adopted version of the steps available on that webpage.

**Data preparation**

I have taken the Columbia State Road data from the URL given below:
1. I went to the webpage https://download.geofabrik.de/north-america/us/district-of-columbia.html. This archive contains a shapefile of roads from Columbia State that will be used during in this tutorial.
2. I clicked on the last URL given in the screenshot.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/0000.png)

3. This will download the dataset, which contains several shapefiles, including the Columbia State Roads data.
4. Then, I unziped the archive into a new directory.
Creating a new workspace
The next step is to create a workspace for the shapefile. 
1. In a web browser, I navigated to http://localhost:8080/geoserver.
2. I logged into GeoServer as described in the Logging In section.
3. Then, I navigated to Data ‣ Workspaces.

4. I clicked on the Add new workspace button.
5. I was prompted to enter a workspace Name and Namespace URI.
![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver4.png)
 
6. I entered the Name as navyagarg and the Namespace URI as http://geoserver.org/navyagarg.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver5.png)

7. Then, I clicked on the Submit button. The navyagarg workspace was added to the Workspaces list.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver5.png)
 
7. Click the Submit button. The navyagarg workspace will be added to the Workspaces list.


Create a store
Once the workspace is created, we are ready to add a new store. The store tells GeoServer how to connect to the shapefile.
1. I navigated to Data‣Stores.
2. There, I could see a list of stores, including the type of store and the workspace that the store belongs to.
3. In order to add the shapefile, I created a new store. I clicked on the Add new Store button. I was redirected to a list of the data sources supported by GeoServer. 
Note that the data sources are extensible, so your list may look slightly different.
 
 ![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver6.png)
 
4. I then clicked on Shapefile. The New Vector Data Source page was displayed.
5. I began by configuring the Basic Store Info.
I selected the workspace navyagarg from the drop down menu. 
I entered the Data Source Name as Columbia Roads 
Then, I entered a brief Description (such as “Roads in Columbia”). 
6. Under Connection Parameters, I browsed to the location URL of the shapefile gis_osm_roads_free_1.shp.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver7.png)
 
Basic Store Info and Connection Parameters
7. And clicked on save. I was redirected to the New Layer page in order to configure the gis_osm_roads_free_1 layer.
Creating a layer
Now that the store is loaded, we can publish the layer.
1. On the New Layer page, I clicked Publish beside the gis_osm_roads_free_1 layer name.
 
![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver8.png)
 
2. The Edit Layer page defines the data and publishing parameters for a layer. Here, I entered a short Title and an Abstract for the gis_osm_roads_free_1 layer.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver9.png)

3. Then, I generated the layer’s bounding boxes by clicking the Compute from data and then Compute from native bounds links.
 
![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/geoserver10.png)
 
4. I then clicked on the Publishing tab at the top of the page.
5. We can set the layer’s style here. Under WMS Settings, ensure that the Default Style is set to line.
 
![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/15.png)
 

Previewing the layer
In order to verify that the gis_osm_roads_free_1 layer is published correctly, we can preview the layer.
1. I navigated to the Layer Preview screen and found the navyagarg:gis_osm_roads_free_1 layer.

2. Then, I clicked on the OpenLayers link in the Common Formats column.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/013.png)

3. An OpenLayers map was loaded in a new tab and it displayed the shapefile data with the default line style. 
You can use this preview map to zoom and pan around the dataset, as well as display the attributes of features.


**Running the CQL Queries**

Click on the three dots at the top left corner of the map preview to open the advanced options toolbar. The example filters can be entered in the Filter: CQL box.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-CQL/Images/007.png)

Now Click on any of the roads on the map. This will open the structure of the table of the dataset roads.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-CQL/Images/008.png)

Now we can run our CQL quries on this dataset.

For example, in case we are interested in displaying only those roads which are having code more than 5125. For this we enter the query as follows:

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-CQL/Images/009.png)

This query will filter out all the roads which are not satisfying the criterion code > 5125 and will display only those road satisfying the above criteria.
The output map would be as given below:

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-CQL/Images/010.png)

Now, if suppose somebody is interested in displaying only those roads which are having code equal to 5115. For this the entered query would be code=5115 and the output map would be as follows:

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-CQL/Images/011.png)

For displaying roads, which are residential, the submitted query would be fclass=’residential’ and the output would be as given below:

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-CQL/Images/012.png)


After this, I created an html document that used OpenLayers to display the added layer.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/Map.png)
