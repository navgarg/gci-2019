<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>gtopo</Name>
    <UserStyle>
      <Name>dem</Name>
      <Title>Simple DEM style</Title>
      <Abstract>Classic elevation color progression</Abstract>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
            <Opacity>1.0</Opacity>
            <ColorMap>
              <ColorMapEntry color="#F7FcFD" quantity="0" label="values" />
              <ColorMapEntry color="#E5F5F9" quantity="1000" label="values" />
              <ColorMapEntry color="#CCECE6" quantity="1100" label="values" />
              <ColorMapEntry color="#99D8C9" quantity="1200" label="values" />
              <ColorMapEntry color="#66C2A4" quantity="1300" label="values" />
              <ColorMapEntry color="#41AE76" quantity="1400" label="values" />
              <ColorMapEntry color="#238B45" quantity="1500" label="values" />
              <ColorMapEntry color="#006D2C" quantity="1600" label="values" />
              <ColorMapEntry color="#00441B" quantity="1700" label="values" />
              <ColorMapEntry color="#000000" quantity="1800" label="values" />
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

