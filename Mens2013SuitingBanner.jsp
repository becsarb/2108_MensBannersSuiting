<!--TODO:  TO TURN THIS INTO JSP FILE GET RID OF DOCTYPE, AND TURN ALL PATHS INTO RELATIVES USING ${baseUrlAssets}/dyn_img/${dynImgFolder} -->
<style type="text/css">
    .Mens2013IntroRollovers {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_RolloversSprite.png') no-repeat;
    }

    .Mens2013IntroOverlays {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_OverlaysSprite.png') no-repeat;
    }
</style>

<script type="text/javascript">
	var mensCompleteUrl = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177'
	var facebookImage = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_Facebook.jpg';
	var pinterestImage1 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_PinterestSuits1.jpg';	
	var pinterestImage2 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_PinterestSuits2.jpg';
	var activeSlide;
	var mapDomCmArray = [];

	/**
	 * Coremetrics 
	 */
	
	function mapDomCmItem (domElementID, cmLabel){
		this.domElementID = domElementID;
		this.cmLabel = cmLabel;
	}

	function mapDomToCoremetricksLookup(elementID){
		var retValue;
		$.each(mapDomCmArray, function(key, value){
			if (value.domElementID == elementID || '#' + value.domElementID == elementID) {
				retValue = value.cmLabel;
			}
		});
		return retValue;
	}
</script>

<link rel="stylesheet" type="text/css" href="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_suitingbannerstyles.css">
<script type="text/javascript" src="${baseUrlAssets}/web20/assets/script/bloomies/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/jquery.crellookbooks.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_suitingbanner.js"></script>

<div id="Mens2013SuitingBanner">

    <div id="Mens2013SuitingTheFit">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_1.jpg" alt="Mens Suit Manual 2013 The Fit" usemap="#TheFitMap" />
        <map id="TheFitMap" name="TheFitMap">
        
            <!-- Non-hoverables, non-linkables -->
            
            <area id="STFNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,0,479,742,479,742,0,722,0,722,32,610,32,610,0,217,0,217,32,21,32,21,0" alt="Men's Suiting:  The Fit" />

            <!-- Linkables and/or hoverables -->

            <area id="STFToSuitManual" class="MensSuitIntroHoverable Mens2013Clickable CoremetricksElement" shape="rect" coords="22,0,158,29" alt="Men's Suit Manual Complete:  The Fit" href="/shop/mens/the-suit-shop?id=1000177"/>
            
            <area id="STFFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="161,0,176,23" alt="Men's Suiting Manual:  The Fit Facebook" href="javascript:void(0);"/>

            <area id="STFTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="181,0,199,23" alt="Men's Suiting:  The Fit Twitter" href="javascript:void(0);"/>

            <area id="STFPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="201,0,218,23" alt="Men's Suiting:  The Fit Pinterest" href="javascript:void(0);"/>

            <area id="STFTopFit" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="611,0,636,25" alt="Men's Suiting:  Fit" href="javascript:void(0);" link-to="Mens2013SuitingTheFit"/>

            <area id="STFTopStyle" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="651,0,683,25" alt="Men's Suiting:  Style" href="javascript:void(0);" link-to="Mens2013SuitingTheStyle"/>

            <area id="STFLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="685,0,701,22" alt="Men's Suiting:  The Fit" href="javascript:void(0);"/>

            <area id="STFRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="700,0,714,22" alt="Men's Suiting:  The Fit" href="javascript:void(0);"/>
        </map>
    </div>


    <div id="Mens2013SuitingTheStyle">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013Suiting_2.jpg" alt="Mens Suits 2013 The Style" usemap="#TheStyleMap" />
        <map id="TheStyleMap" name="TheStyleMap">
            <!-- Non-hoverables, non-linkables -->
            <area id="SuitStyleNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,0,479,137,479,137,242,742,242,742,0,713,0,713,26,609,26,609,0,219,0,219,26,22,26,22,0" alt="Men's Suiting:  The Style" />

            <area id="SuitStyleNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="138,479,138,269,158,269,158,246,279,246,279,269,308,269,308,246,427,246,427,269,459,269,459,246,565,246,565,269,596,269,596,246,694,246,694,269,720,269,720,246,742,246,742,479" alt="Men's Suiting:  The Style" />

            <!-- Linkables and/or hoverables -->


            <area id="SuitStyleToSuitManual" class="MensSuitIntroHoverable Mens2013Clickable CoremetricksElement" shape="rect" coords="22,0,158,29" alt="Men's Suit Manual Complete:  The Fit" href="/shop/mens/the-suit-shop?id=1000177"/>
            
            <area id="SuitStyleFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="161,0,176,23" alt="Men's Suiting:  The Fit Facebook" href="javascript:void(0);"/>

            <area id="SuitStyleTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="181,0,199,23" alt="Men's Suiting:  The Fit Twitter" href="javascript:void(0);"/>

            <area id="SuitStylePinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="201,0,218,23" alt="Men's Suiting:  The Fit Pinterest" href="javascript:void(0);"/>

            <area id="SuitStyleTopFit" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="611,0,636,25" alt="Men's Suiting:  Fit" href="javascript:void(0);" link-to="Mens2013SuitingTheFit"/>

            <area id="SuitStyleTopStyle" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="651,0,683,25" alt="Men's Suiting:  Style" href="javascript:void(0);" link-to="Mens2013SuitingTheStyle"/>

            <area id="SuitStyleLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="685,0,701,22" alt="Men's Suiting:  The Fit" href="javascript:void(0);"/>

            <area id="SuitStyleRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="700,0,714,22" alt="Men's Suiting:  The Fit" href="javascript:void(0);"/>

            <!-- Overlays -->

            <area id="SuitStyleC1" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="137,247,156,267" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC2" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="285,247,304,267" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC3" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="433,246,452,266" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC4" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="570,248,589,268" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>

            <area id="SuitStyleC5" class="Mens2013Clickable Mens2013Overlay CoremetricksElement" shape="rect" coords="699,246,718,266" alt="Men's Suit Manual:  The Style" href="javascript:void(0);"/>
        </map>
    </div>
</div>

