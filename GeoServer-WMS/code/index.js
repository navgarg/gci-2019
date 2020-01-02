import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import {Image as ImageLayer, Tile as TileLayer} from 'ol/layer';
import ImageWMS from 'ol/source/ImageWMS';
import OSM from 'ol/source/OSM';


var layers = [
  new TileLayer({
    source: new OSM()
  }),
  new ImageLayer({
    extent: [-13884991, 2870341, -7455066, 6338219],
    source: new ImageWMS({
      url: 'http://localhost:8080/geoserver/wms',
      params: {'LAYERS': 'navyagarg:gis_osm_roads_free_1'},
      ratio: 1,
      serverType: 'geoserver'
    })
  })
];
var map = new Map({
  layers: layers,
  target: 'map',
  view: new View({
    center: [-10997148, 4569099],
    zoom: 4
  })
});
