/**
 * User: u029337
 * Date: 5/14/13
 * Time: 4:18 PM
 * Description: Mens Suiting Banner
 *
 * For the Intro image, the image map areas that are assigned class MensSuitIntroHoverable, are also
 * MenSuitIntroLinkable
 **/

var facebookUrl = 'http://www.facebook.com/sharer/sharer.php?s=100';
var facebookTitle = 'Men\'s Suit Manual - Fashion Index | Bloomingdale\'s';
var facebookSummary = 'Head to the new Suit Manual—because you need to rock a suit, not just wear one.'
	
var socFacebookLink = facebookUrl;
socFacebookLink += '&p[title]=' + encodeURIComponent(facebookTitle).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[summary]=' + encodeURIComponent(facebookSummary).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[url]=' + encodeURIComponent(mensCompleteUrl).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[images][0]=' + facebookImage;

var twitterUrl = 'http://twitter.com/intent/tweet?source=webclient&text=';
var twitterTextParam = 'Head to the new Men\'s Suit Manual @Bloomingdales—where fit is king. http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177';
var socTwitterLink = twitterUrl;
socTwitterLink += encodeURIComponent(twitterTextParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");

var pinterestUrl = 'http://pinterest.com/pin/create/button/';
var pinterestUrlParam = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177';
var pinterestDescriptionParam = 'Men\'s Suit Manual - Fashion Index | Bloomingdale\'s';
var socPinterestLink = pinterestUrl;
socPinterestLink += '?url=' + encodeURIComponent(pinterestUrlParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socPinterestLink += '&description=' + encodeURIComponent(pinterestDescriptionParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");

/**
 *
 * Setup for lookbook plugin
 */

var crellookbooksopts = {
    'firstSlide': 'Mens2013SuitingTheFit',
    'lastSlide': 'Mens2013SuitingTheStyle',
    'topContainerDiv':  '#Mens2013SuitingBanner',
    'hoverableSelector': '#Mens2013SuitingBanner map .MensSuitIntroHoverable',
    'nonhoverableSelector': '#Mens2013SuitingBanner map .MensSuitIntroNonHoverable',
    'rolloverClassName': 'Mens2013IntroRollovers',
    'overlayClassname': 'Mens2013IntroOverlays',
    'origOverlayClassname': 'Mens2013Overlay',
    'clickableClassName': 'Mens2013Clickable',
    'linkingClassName': 'Mens2013Linking',
    'ArrowClassName': 'Mens2013Arrow',
    'CoremetricsClassName': 'CoremetricksElement',
    'CoremetricsCategory': 'spring13_mens_suit_cat',
    'nonHoverableClassName': 'ClickNonHoverable',
    'shopLinkClassName': 'Mens2013ShopLink',
    'specialClassName1': 'Mens2013SlotMachine',
    'appendToDiv': '#Mens2013SuitingBanner',
    'socFacebookLink': socFacebookLink,
    'socTwitterLink': socTwitterLink,
    'socPinterestLink': socPinterestLink,
    'socPinterestImages': [{'Mens2013SuitingTheFit':pinterestImage1},
                           {'Mens2013SuitingTheStyle':pinterestImage2}
                           ]
    }

/**
 * Coremetrics 
 */


function mapDomToCoremetricsTags(){
	mapDomCmArray.push(new mapDomCmItem('Mens2013SuitingTheFit', 'spring13_mens_suit_cat--hp'));
	mapDomCmArray.push(new mapDomCmItem('STFToSuitManual', 'top_nav--the_suit_manual'));	
	mapDomCmArray.push(new mapDomCmItem('STFFacebookHover', 'social-fb'));
	mapDomCmArray.push(new mapDomCmItem('STFTwitterHover', 'social-twitter'));
	mapDomCmArray.push(new mapDomCmItem('STFPinterestHover', 'social-pinterest'));
	mapDomCmArray.push(new mapDomCmItem('STFTopFit', 'top_nav--fit'));	
	mapDomCmArray.push(new mapDomCmItem('STFTopStyle', 'top_nav--style'));	
	mapDomCmArray.push(new mapDomCmItem('STFLeftArrowHover', 'left-arrow'));	
	mapDomCmArray.push(new mapDomCmItem('STFRightArrowHover', 'right-arrow'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013SuitingTheStyle', 'spring13_mens_suit_cat--suits_style'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleToSuitManual', 'top_nav--the_suit_manual'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleFacebookHover', 'social-fb'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTwitterHover', 'social-twitter'));
	mapDomCmArray.push(new mapDomCmItem('SuitStylePinterestHover', 'social-pinterest'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopFit', 'top_nav--fit'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleTopStyle', 'top_nav--style'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleLeftArrowHover', 'left-arrow'));	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleRightArrowHover', 'right-arrow'));
	
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC1', 'look-1'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC2', 'look-2'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC3', 'look-3'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC4', 'look-4'));
	mapDomCmArray.push(new mapDomCmItem('SuitStyleC5', 'look-5'));
}

function initCoremetrics (){
	mapDomToCoremetricsTags();
	
	BLOOMIES.coremetrics.cmCreatePageviewTag('spring13_mens_suit--hp', crellookbooksopts.CoremetricsCategory, '', '');
}



$(function(){
    initCoremetrics();
    
    $(crellookbooksopts.hoverableSelector).crelInitRollovers(crellookbooksopts);

    $('.' + crellookbooksopts.linkingClassName).click(function(event){
        event.stopPropagation();
        if ($('.' + crellookbooksopts.specialClassName1).length > 0)
     	   $('.' + crellookbooksopts.specialClassName1).hide();
        MACYS.Faceted.facetCtrl.clearAll();
        var thisSlide = $(this).parent().parent()[0].id;
        var nextSlide = $(this).attr('link-to');
        if ($(this).hasClass(crellookbooksopts.CoremetricsClassName)){
        	BLOOMIES.coremetrics.cmCreatePageElementTag(mapDomToCoremetricksLookup($(this)[0].id), crellookbooksopts.CoremetricsCategory);
        }
        activeSlide = nextSlide;
        $(this).crelSlideNext(thisSlide, nextSlide);
    });
    
    $('.' + crellookbooksopts.clickableClassName).click(function(event){
    	event.stopPropagation();
        if ($('.' + crellookbooksopts.specialClassName1).length > 0)
     	   $('.' + crellookbooksopts.specialClassName1).hide();
        if ($('.' + crellookbooksopts.overlayClassname).length > 0)
            $('.' + crellookbooksopts.overlayClassname).remove();
       
        if ($(this).hasClass(crellookbooksopts.CoremetricsClassName))
    	   BLOOMIES.coremetrics.cmCreatePageElementTag(mapDomToCoremetricksLookup($(this)[0].id), crellookbooks.CoremetricsCategory);
       
        if ($(this).hasClass(crellookbooksopts.origOverlayClassname))
            $(this).crelOverlay(crellookbooksopts);
    });
    
    $(crellookbooksopts.nonhoverableSelector).click(function(){
        if ($('.' + crellookbooksopts.overlayClassname).length > 0)
            $('.' + crellookbooksopts.overlayClassname).remove();

        if ($('.' + crellookbooksopts.rolloverClassName).length > 0)
            $('.' + crellookbooksopts.rolloverClassName).remove();
    });

    $('.ClickNonHoverable').mouseover(function(){

        if ($('.' + crellookbooksopts.rolloverClassName).length > 0)
            $('.' + crellookbooksopts.rolloverClassName).remove();
    });
});

