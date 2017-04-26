<?xml version="1.0" encoding="UTF-8" ?>
<ComponentDefinition xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="AppComponent_Schema.xsd" version="1.0">
    <Title>画像スライドショー表示</Title>
    <Description>画像をスライドショー表示します。</Description>
    <Publisher>TerraSky Co.,Ltd.</Publisher>
    <PackageImage resourceName="icon_staic" />
    <WebSite>http://www.terrasky.co.jp</WebSite>
    <AppComponents>
        <AppComponent name="SlideShowStatic">
            <Title>固定画像スライドショー</Title>
            <Description>静的リソースやSalesforce外部の画像ファイルをスライドショーとして表示します。</Description>
            <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=7</HelpURL>
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
            <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js"/>
            <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
            <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
            <Properties>
                <Boolean name="hasWidth" label="幅指定" defaultValue="false" tooltip="幅指定" />
                <MultiLineString name="UrlStrings" label="画像URL" isRequired="true" tooltip="画像URL" />
                <Boolean name="IsAutoSlide" label="自動ページ送り" defaultValue="true" tooltip="自動ページ送り"/>
                <Int name="ejectionSpeed" label="ページ送り速度(秒)" defaultValue="5" tooltip="ページ送り速度(秒)"/>
                <ComboBox name="animation" label="切り替えアニメーション" params="fade|フェード,slide|スライド" defaultValue="fade" tooltip="切り替えアニメーション" />
                <ComboBox name="direction" label="切り替え方向" params="vertical|縦,horizontal|横" defaultValue="horizontal" isVisible="false" />
                <Boolean name="loop" label="スライドショーをループする" defaultValue="true" tooltip="スライドショーをループする"/>
                <Boolean name="viewControlNav" label="ナビゲーションコントロールを表示する" defaultValue="true" tooltip="ナビゲーションコントロールを表示する"/>
                <Boolean name="viewDirectionNav" label="スライド送り・戻るボタンを表示する" defaultValue="true" tooltip="スライド送り・戻るボタンを表示する"/>
                <Boolean name="smoothHeight" label="高さ自動調節" defaultValue="false" tooltip="高さ自動調節" />
            </Properties>
        </AppComponent>
        <AppComponent name="SlideShowStaticWithCarousel">
            <Title>固定画像スライドショー(サムネイル表示)</Title>
            <Description>静的リソースやSalesforce外部の画像ファイルをスライドショーとして表示します。</Description>
            <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=9</HelpURL>
            <Layout>inline</Layout>
            <Height value="300" resizable="false" isVisible="false"/>
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
            <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js"/>
            <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
            <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
            <Properties>
                <Boolean name="hasWidth" label="幅指定" defaultValue="false" />
                <MultiLineString name="UrlStrings" label="画像URL" isRequired="true" tooltip="画像URL"/>
                <Int name="carouselItemWidth" label="サムネイル画像幅" defaultValue="100" isRequired="true" tooltip="サムネイル画像幅"/>
                <Boolean name="IsAutoSlide" label="自動ページ送り" defaultValue="true" tooltip="自動ページ送り"/>
                <Int name="ejectionSpeed" label="ページ送り速度(秒)" defaultValue="5" tooltip="ページ送り速度(秒)"/>
                <ComboBox name="animation" label="切り替えアニメーション" params="fade|フェード,slide|スライド" defaultValue="fade" tooltip="切り替えアニメーション" />
                <ComboBox name="direction" label="切り替え方向" params="vertical|縦,horizontal|横" defaultValue="horizontal" isVisible="false"/>
                <Boolean name="loop" label="スライドショーをループする" defaultValue="true" tooltip="スライドショーをループする"/>
                <Boolean name="viewDirectionNav" label="スライド送り・戻るボタンを表示する" defaultValue="true" tooltip="スライド送り・戻るボタンを表示する"/>
                <Boolean name="smoothHeight" label="高さ自動調節" defaultValue="false" tooltip="高さ自動調節"/>
            </Properties>
        </AppComponent>

        <AppComponent name="SlideShowChatter">
            <Title>Chatter画像スライドショー</Title>
            <Description>Chatterファイルにアップロードされた最新の画像ファイルをスライドショーとして表示します。</Description>
            <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=11</HelpURL>
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
            <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js"/>
            <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
            <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
            <Properties>
                <Boolean name="hasWidth" label="幅指定" defaultValue="false" tooltip="幅指定"/>
                <Int name="itemPieces" label="表示画像数" maxValue="30"  isRequired="true" tooltip="表示画像数"/>
                <Boolean name="IsAutoSlide" label="自動ページ送り" defaultValue="true" tooltip="自動ページ送り"/>
                <Int name="ejectionSpeed" label="ページ送り速度(秒)" defaultValue="5" tooltip="ページ送り速度(秒)"/>
                <ComboBox name="animation" label="切り替えアニメーション" params="fade|フェード,slide|スライド" defaultValue="fade" tooltip="切り替えアニメーション"/>
                <ComboBox name="direction" label="切り替え方向" params="vertical|縦,horizontal|横" defaultValue="horizontal" isVisible="false"/>
                <Boolean name="loop" label="スライドショーをループする" defaultValue="true" tooltip="スライドショーをループする"/>
                <Boolean name="viewControlNav" label="ナビゲーションコントロールを表示する" defaultValue="true" tooltip="ナビゲーションコントロールを表示する" />
                <Boolean name="viewDirectionNav" label="スライド送り・戻るボタンを表示する" defaultValue="true" tooltip="スライド送り・戻るボタンを表示する" />
                <Boolean name="smoothHeight" label="高さ自動調節" defaultValue="false" tooltip="高さ自動調節"/>
            </Properties>
        </AppComponent>
        <AppComponent name="SlideShowChatterWithCarousel">
            <Title>Chatter画像スライドショー(サムネイル表示)</Title>
            <Description>Chatterファイルにアップロードされた最新の画像ファイルをスライドショーとして表示します。</Description>
            <HelpURL>https://s3.amazonaws.com/www.skyvisualeditor.com/AppComponent/SkyVisualEditor/appcomponent_slideshow_guide.pdf#pagemode=bookmarks&amp;zoom=100&amp;page=13</HelpURL>
            <Layout>inline</Layout>
            <Height value="300" resizable="false" isVisible="false"/>
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
            <IncludeScript name="sve_slideshow__resources" path="jquery.flexslider-min.js"/>
            <IncludeStylesheet name="sve_slideshow__resources" path="flexslider.css" />
            <IncludeStylesheet name="sve_slideshow__resources" path="sveext.css" />
            <Properties>
                <Boolean name="hasWidth" label="幅指定" defaultValue="false" tooltip="幅指定"/>
                <Int name="itemPieces" label="表示画像数" maxValue="30" isRequired="true" tooltip="表示画像数"/>
                <Int name="carouselItemWidth" label="サムネイル画像幅" defaultValue="100" isRequired="true" tooltip="サムネイル画像幅"/>
                <Boolean name="IsAutoSlide" label="自動ページ送り" defaultValue="true" tooltip="自動ページ送り" />
                <Int name="ejectionSpeed" label="ページ送り速度(秒)" defaultValue="5" tooltip="ページ送り速度(秒)" />
                <ComboBox name="animation" label="切り替えアニメーション" params="fade|フェード,slide|スライド" defaultValue="fade" tooltip="切り替えアニメーション" />
                <ComboBox name="direction" label="切り替え方向" params="vertical|縦,horizontal|横" defaultValue="horizontal" isVisible="false"/>
                <Boolean name="loop" label="スライドショーをループする" defaultValue="true" tooltip="スライドショーをループする" />
                <Boolean name="viewDirectionNav" label="スライド送り・戻るボタンを表示する" defaultValue="true" tooltip="スライド送り・戻るボタンを表示する" />
                <Boolean name="smoothHeight" label="高さ自動調節" defaultValue="false" tooltip="高さ自動調節" />
            </Properties>
        </AppComponent>
    </AppComponents>
</ComponentDefinition>
