Tutorial for the Process Followed
GCI 2019 Task Name: OpenLayers and GeoServer: Web map that displays a WMS layer


Disclaimer / Credit: This tutorial has been created using the steps suggested by Geoserver website at https://docs.geoserver.org/latest/en/user/gettingstarted/shapefile-quickstart/index.html. Accordingly, the steps given below are an adopted version of the steps available on that webpage.


Installing Java 8 and GeoServer
1. To install and run GeoServer on your machine, it should have Java 8 installed. So, the first step I followed was to check it.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/1.png)

The above output shows that Java is not currently installed on my Ubuntu machine. So I need to install it.
2. Then I installed Java 8 and ran the command again.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/1_1.png)

The above output shows that Java 8 is currently installed.
3. Then, to start the installation of GeoServer, the first task was to download the desired version of GeoServer package. I opened the webpage http://geoserver.org/release/stable/ and chose Platform Independent Binaries.

![](https://github.com/navgarg/gci-2019/blob/master/GeoServer-WMS/Images/2_2.png)

4. As soon as I clicked on the hyperlink, the download of the GeoServer package from SourceForge website started. I saved the package and unpacked it in the directory  /usr/share/geoserver.
5. After this I added an environment variable to save the location of GeoServer by typing the following command:
echo "export GEOSERVER_HOME=/usr/share/geoserver" >> ~/.profile
. ~/.profile
6. Next step was to give myself the permission to access the folder by making myself the owner of the geoserver folder. I typed the following command in the terminal window, replacing USER_NAME with my own username :
sudo chown -R navya /usr/share/geoserver/

7. Then I entered into GeoServer directory geoserver/bin and started GeoServer by executing the startup.sh script:
cd g/usr/share/eoserver/bin
sh startup.sh


The above two window screeshots demonstrate that GeoServer was correctly started.
8. I opened the URL http://localhost:8080/geoserver. In the browser and logged in to the GeoServer as admin with the following credentials.
Username: admin
Password: geoserver
 


Data preparation
I have taken the Columbia State Road data from the URL given below:
1. I went to the webpage https://download.geofabrik.de/north-america/us/district-of-columbia.html. This archive contains a shapefile of roads from Columbia State that will be used during in this tutorial.
2. I clicked on the last URL given in the screenshot.

3. This will download the dataset, which contains several shapefiles, including the Columbia State Roads data.
4. Then, I unziped the archive into a new directory.
Creating a new workspace
The next step is to create a workspace for the shapefile. 
1. In a web browser, I navigated to http://localhost:8080/geoserver.
2. I logged into GeoServer as described in the Logging In section.
3. Then, I navigated to Data ‣ Workspaces.

4. I clicked on the Add new workspace button.
5. I was prompted to enter a workspace Name and Namespace URI.
 
6. I entered the Name as navyagarg and the Namespace URI as http://geoserver.org/navyagarg.

 
nyc workspace
7. Then, I clicked on the Submit button. The navyagarg workspace was added to the Workspaces list.
Create a store
Once the workspace is created, we are ready to add a new store. The store tells GeoServer how to connect to the shapefile.
1. I navigated to Data‣Stores.
2. There, I could see a list of stores, including the type of store and the workspace that the store belongs to.
3. In order to add the shapefile, I created a new store. I clicked on the Add new Store button. I was redirected to a list of the data sources supported by GeoServer. 
Note that the data sources are extensible, so your list may look slightly different.
 
Stores
4. I then clicked on Shapefile. The New Vector Data Source page was displayed.
5. I began by configuring the Basic Store Info.
I selected the workspace navyagarg from the drop down menu. 
I entered the Data Source Name as Columbia Roads 
Then, I entered a brief Description (such as “Roads in Columbia”). 
6. Under Connection Parameters, I browsed to the location URL of the shapefile gis_osm_roads_free_1.shp.
 
Basic Store Info and Connection Parameters
7. And clicked on save. I was redirected to the New Layer page in order to configure the gis_osm_roads_free_1 layer.
Creating a layer
Now that the store is loaded, we can publish the layer.
1. On the New Layer page, I clicked Publish beside the gis_osm_roads_free_1 layer name.
 
New layer
2. The Edit Layer page defines the data and publishing parameters for a layer. Here, I entered a short Title and an Abstract for the gis_osm_roads_free_1 layer.
 
Basic Resource Information
3. Then, I generated the layer’s bounding boxes by clicking the Compute from data and then Compute from native bounds links.
 
Generating bounding boxes
4. I then clicked on the Publishing tab at the top of the page.
5. We can set the layer’s style here. Under WMS Settings, ensure that the Default Style is set to line.
 
Select Default Style
6. Then I finalized the layer configuration by scrolling to the bottom of the page and clicking Save.
Previewing the layer
In order to verify that the gis_osm_roads_free_1 layer is published correctly, we can preview the layer.
1. I navigated to the Layer Preview screen and found the navyagarg:gis_osm_roads_free_1 layer.
 
Layer Preview

2. Then, I clicked on the OpenLayers link in the Common Formats column.

3. An OpenLayers map was loaded in a new tab and displayed the shapefile data with the default line style. 
You can use this preview map to zoom and pan around the dataset, as well as display the attributes of features.
 
