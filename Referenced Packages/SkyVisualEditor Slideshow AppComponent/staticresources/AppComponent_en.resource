<?xml version="1.0" encoding="UTF-8"?>
<ComponentDefinition xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="AppComponent_Schema.xsd" version="1.0">
  <Title>Picture Slide Show</Title>
  <Description>AppComponent to add in Picture Slide Show functionality.</Description>
  <Publisher>TerraSky Inc.</Publisher>
  <PackageImage resourceName="icon_staic" />
  <WebSite>http://www.terrasky.com</WebSite>
  <AppComponents>
    <AppComponent name="SlideShowStatic">
      <Title>Fixed Image Slide Show</Title>
      <Description>Shows a Slide Show of images from static resources or an external source.</Description>
      <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide_en.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=7</HelpURL>
      <Layout>inline</Layout>
      <Height value="300" resizable="false" isVisible="false" />
      <Width value="400" resizable="true" isVisible="true" />
      <ComponentImage resourceName="icon_staic" />
      <CanvasImage resourceName="canvasimage" stretch="None" />
      <PutablePlaces freeLayout="true" salesforceLayout="true" dashboardLayout="true">
        <Place name="canvas" />
        <Place name="pageBlock" />
        <Place name="panelGrid" />
        <Place name="flexiblePanel" />
      </PutablePlaces>
      <ApexComponent componentName="SlideShowStatic">
        <ApexAttribute name="componentId" var="Component__id" />
        <ApexAttribute name="urlString" var="UrlStrings" />
        <ApexAttribute name="slideshow" var="IsAutoSlide" />
        <ApexAttribute name="ejectionSpeed" var="ejectionSpeed" />
        <ApexAttribute name="animation" var="animation" />
        <ApexAttribute name="direction" var="direction" />
        <ApexAttribute name="hasWidth" var="hasWidth" />
        <ApexAttribute name="itemWidth" var="Component__Width" />
        <ApexAttribute name="loop" var="loop" />
        <ApexAttribute name="viewDirectionNav" var="viewDirectionNav" />
        <ApexAttribute name="viewControlNav" var="viewControlNav" />
        <ApexAttribute name="smoothHeight" var="smoothHeight" />
      </ApexComponent>
      <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js" />
      <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
      <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
      <Properties>
        <Boolean name="hasWidth" label="Width Setting" defaultValue="false" tooltip="Width Setting"/>
        <MultiLineString name="UrlStrings" label="Image URLs" isRequired="true" tooltip="Image URLs"/>
        <Boolean name="IsAutoSlide" label="Auto-scroll through images" defaultValue="true" tooltip="Auto-scroll through images"/>
        <Int name="ejectionSpeed" label="Auto-scroll speed (seconds)" defaultValue="5" tooltip="Auto-scroll speed (second)"/>
        <ComboBox name="animation" label="Transition animation" params="fade|fade,slide|slide" defaultValue="fade" tooltip="Transition animation"/>
        <ComboBox name="direction" label="Transition direction" params="vertical|vertical,horizontal|horizontal" defaultValue="horizontal" isVisible="false" />
        <Boolean name="loop" label="Loop the Slide Show" defaultValue="true" tooltip="Loop the Slide Show"/>
        <Boolean name="viewControlNav" label="Display navigation Controls" defaultValue="true" tooltip="Display navigation Controls"/>
        <Boolean name="viewDirectionNav" label="Display next / back buttons" defaultValue="true" tooltip="Display next / back buttons"/>
        <Boolean name="smoothHeight" label="Automatically adjust height" defaultValue="false" tooltip="Automatically adjust height"/>
      </Properties>
    </AppComponent>
    <AppComponent name="SlideShowStaticWithCarousel">
      <Title>Fixed Image Slide Show (with Thumbnails)</Title>
      <Description>Shows a Slide Show of images from static resources or an external source.</Description>
      <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide_en.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=9</HelpURL>
      <Layout>inline</Layout>
      <Height value="300" resizable="false" isVisible="false" />
      <Width value="400" resizable="true" isVisible="true" />
      <ComponentImage resourceName="icon_static_thumbnail" />
      <CanvasImage resourceName="canvasimage_thumbnail" stretch="None" />
      <PutablePlaces freeLayout="true" salesforceLayout="true" dashboardLayout="true">
        <Place name="canvas" />
        <Place name="pageBlock" />
        <Place name="panelGrid" />
        <Place name="flexiblePanel" />
      </PutablePlaces>
      <ApexComponent componentName="SlideShowStaticWithCarousel">
        <ApexAttribute name="componentId" var="Component__id" />
        <ApexAttribute name="urlString" var="UrlStrings" />
        <ApexAttribute name="slideshow" var="IsAutoSlide" />
        <ApexAttribute name="ejectionSpeed" var="ejectionSpeed" />
        <ApexAttribute name="animation" var="animation" />
        <ApexAttribute name="direction" var="direction" />
        <ApexAttribute name="hasWidth" var="hasWidth" />
        <ApexAttribute name="itemWidth" var="Component__Width" />
        <ApexAttribute name="loop" var="loop" />
        <ApexAttribute name="viewDirectionNav" var="viewDirectionNav" />
        <ApexAttribute name="smoothHeight" var="smoothHeight" />
        <ApexAttribute name="carouselItemWidth" var="carouselItemWidth" />
      </ApexComponent>
      <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js" />
      <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
      <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
      <Properties>
        <Boolean name="hasWidth" label="Width Setting" defaultValue="false" tooltip="Width Setting"/>
        <MultiLineString name="UrlStrings" label="Image URLs" isRequired="true" tooltip="Image URLs"/>
        <Int name="carouselItemWidth" label="Thumbnail width" defaultValue="100" isRequired="true" tooltip="Thumbnail width"/>
        <Boolean name="IsAutoSlide" label="Auto-scroll through images" defaultValue="true" tooltip="Auto-scroll through images"/>
        <Int name="ejectionSpeed" label="Auto-scroll speed (seconds)" defaultValue="5" tooltip="Auto-scroll speed (seconds)"/>
        <ComboBox name="animation" label="Transition animation" params="fade|fade,slide|slide" defaultValue="fade" tooltip="Transition animation"/>
        <ComboBox name="direction" label="Transition direction" params="vertical|vertical,horizontal|horizontal" defaultValue="horizontal" isVisible="false" />
        <Boolean name="loop" label="Loop the Slide Show" defaultValue="true" tooltip="Loop the Slide Show"/>
        <Boolean name="viewDirectionNav" label="Display next / back buttons" defaultValue="true" tooltip="Display next / back buttons"/>
        <Boolean name="smoothHeight" label="Automatically adjust height" defaultValue="false" tooltip="Automatically adjust height"/>
      </Properties>
    </AppComponent>
    <AppComponent name="SlideShowChatter">
      <Title>Chatter image Slide Show</Title>
      <Description>Shows a Slide Show of images uploaded to Chatter files.</Description>
      <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide_en.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=11</HelpURL>
      <Layout>inline</Layout>
      <Height value="300" resizable="false" isVisible="false" />
      <Width value="400" resizable="true" isVisible="true" />
      <ComponentImage resourceName="icon_chatter" />
      <CanvasImage resourceName="canvasimage" stretch="None" />
      <PutablePlaces freeLayout="true" salesforceLayout="true" dashboardLayout="true">
        <Place name="canvas" />
        <Place name="pageBlock" />
        <Place name="panelGrid" />
        <Place name="flexiblePanel" />
      </PutablePlaces>
      <ApexComponent componentName="SlideShowChatter">
        <ApexAttribute name="componentId" var="Component__id" />
        <ApexAttribute name="itemPieces" var="itemPieces" />
        <ApexAttribute name="slideshow" var="IsAutoSlide" />
        <ApexAttribute name="ejectionSpeed" var="ejectionSpeed" />
        <ApexAttribute name="animation" var="animation" />
        <ApexAttribute name="direction" var="direction" />
        <ApexAttribute name="hasWidth" var="hasWidth" />
        <ApexAttribute name="itemWidth" var="Component__Width" />
        <ApexAttribute name="loop" var="loop" />
        <ApexAttribute name="viewDirectionNav" var="viewDirectionNav" />
        <ApexAttribute name="viewControlNav" var="viewControlNav" />
        <ApexAttribute name="smoothHeight" var="smoothHeight" />
      </ApexComponent>
      <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js" />
      <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
      <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
      <Properties>
        <Boolean name="hasWidth" label="Width Setting" defaultValue="false" tooltip="Width Setting"/>
        <Int name="itemPieces" label="Number of images to display" maxValue="30" isRequired="true" tooltip="Number of images to display" />
        <Boolean name="IsAutoSlide" label="Auto-scroll through images" defaultValue="true" tooltip="Auto-scroll through images" />
        <Int name="ejectionSpeed" label="Auto-scroll speed (seconds)" defaultValue="5" tooltip="Auto-scroll speed (seconds)"/>
        <ComboBox name="animation" label="Transition animation" params="fade|fade,slide|slide" defaultValue="fade" tooltip="Transition animation"/>
        <ComboBox name="direction" label="Transition direction" params="vertical|vertical,horizontal|horizontal" defaultValue="horizontal" isVisible="false" />
        <Boolean name="loop" label="Loop the Slide Show" defaultValue="true" tooltip="Loop the Slide Show"/>
        <Boolean name="viewControlNav" label="Display navigation Controls" defaultValue="true" tooltip="Display navigation Controls"/>
        <Boolean name="viewDirectionNav" label="Display next / back buttons" defaultValue="true" tooltip="Display next / back buttons" />
        <Boolean name="smoothHeight" label="Automatically adjust height" defaultValue="false" tooltip="Automatically adjust height"/>
      </Properties>
    </AppComponent>
    <AppComponent name="SlideShowChatterWithCarousel">
      <Title>Chatter image Slide Show (with Thumbnails)</Title>
      <Description>Shows a Slide Show of images uploaded to Chatter files.</Description>
      <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide_en.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=13</HelpURL>
      <Layout>inline</Layout>
      <Height value="300" resizable="false" isVisible="false" />
      <Width value="400" resizable="true" isVisible="true" />
      <ComponentImage resourceName="icon_chatter_thumbnail" />
      <CanvasImage resourceName="canvasimage_thumbnail" stretch="None" />
      <PutablePlaces freeLayout="true" salesforceLayout="true" dashboardLayout="true">
        <Place name="canvas" />
        <Place name="pageBlock" />
        <Place name="panelGrid" />
        <Place name="flexiblePanel" />
      </PutablePlaces>
      <ApexComponent componentName="SlideShowChatterWithCarousel">
        <ApexAttribute name="componentId" var="Component__id" />
        <ApexAttribute name="itemPieces" var="itemPieces" />
        <ApexAttribute name="slideshow" var="IsAutoSlide" />
        <ApexAttribute name="ejectionSpeed" var="ejectionSpeed" />
        <ApexAttribute name="animation" var="animation" />
        <ApexAttribute name="direction" var="direction" />
        <ApexAttribute name="hasWidth" var="hasWidth" />
        <ApexAttribute name="itemWidth" var="Component__Width" />
        <ApexAttribute name="loop" var="loop" />
        <ApexAttribute name="viewDirectionNav" var="viewDirectionNav" />
        <ApexAttribute name="smoothHeight" var="smoothHeight" />
        <ApexAttribute name="carouselItemWidth" var="carouselItemWidth" />
      </ApexComponent>
      <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js" />
      <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
      <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
      <Properties>
        <Boolean name="hasWidth" label="Width Setting" defaultValue="false" tooltip="Width Setting"/>
        <Int name="itemPieces" label="Number of images to display" maxValue="30" isRequired="true" tooltip="Number of images to display"/>
        <Int name="carouselItemWidth" label="Thumbnail width" defaultValue="100" isRequired="true" tooltip="Thumbnail width"/>
        <Boolean name="IsAutoSlide" label="Auto-scroll through images" defaultValue="true" tooltip="Auto-scroll through images"/>
        <Int name="ejectionSpeed" label="Auto-scroll speed (seconds)" defaultValue="5" tooltip="Auto-scroll speed (seconds)"/>
        <ComboBox name="animation" label="Transition animation" params="fade|fade,slide|slide" defaultValue="fade" tooltip="Transition animation"/>
        <ComboBox name="direction" label="Transition direction" params="vertical|vertical,horizontal|horizontal" defaultValue="horizontal" isVisible="false" />
        <Boolean name="loop" label="Loop the Slide Show" defaultValue="true" tooltip="Loop the Slide Show"/>
        <Boolean name="viewDirectionNav" label="Display next / back buttons" defaultValue="true" tooltip="Display next / back buttons"/>
        <Boolean name="smoothHeight" label="Automatically adjust height" defaultValue="false" tooltip="Automatically adjust height"/>
      </Properties>
    </AppComponent>
  </AppComponents>
</ComponentDefinition>
