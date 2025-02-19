Prism.languages.wgsl = {
	'comment': {
		pattern: /\/\/.*|\/\*[\s\S]*?(?:\*\/|$)/,
		greedy: true,
	},
```wgsl
<?xml version="1.0" encoding="UTF-8"?>
<WGSLSchema xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.opengis.net/wgsl" version="1.0.0">
  <Title>Geological Map</Title>
  <Abstract>A geologic map of a specific area, showing different rock types and structures.</Abstract>
  <Keywords>geology, mapping, geosciences</Keywords>
  <Identifier>gsml:uuid</Identifier>
  <Includes>
    <SchemaLocation>http://www.opengis.net/gml</SchemaLocation>
    <Name>GML</Name>
  </Includes>
  <FeatureType>
