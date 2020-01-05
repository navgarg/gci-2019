<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Simple Roads</Name>
    <UserStyle>

      <Title>Default Styler for simple road segments</Title>
      <Abstract>Light red line, 2px wide</Abstract>
      <FeatureTypeStyle>
     <Rule>
       <LineSymbolizer>
         <Stroke>
           <CssParameter name="stroke">#FF0000</CssParameter>
           <CssParameter name="stroke-width">3</CssParameter>
         </Stroke>
       </LineSymbolizer>
       <TextSymbolizer>
         <Label>
           <ogc:PropertyName>NAME</ogc:PropertyName>
         </Label>
         <LabelPlacement>
           <LinePlacement />
         </LabelPlacement>
         <Fill>
           <CssParameter name="fill">#000000</CssParameter>
         </Fill>
         <Font>
           <CssParameter name="font-family">Arial</CssParameter>
           <CssParameter name="font-size">10</CssParameter>
           <CssParameter name="font-style">normal</CssParameter>
           <CssParameter name="font-weight">bold</CssParameter>
         </Font>
         <VendorOption name="followLine">true</VendorOption>
         <VendorOption name="maxAngleDelta">90</VendorOption>
         <VendorOption name="maxDisplacement">400</VendorOption>
         <VendorOption name="repeat">150</VendorOption>
       </TextSymbolizer>
     </Rule>
   </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

