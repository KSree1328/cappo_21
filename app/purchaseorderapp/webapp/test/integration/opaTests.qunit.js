sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/cappo/purchaseorderapp/test/integration/FirstJourney',
		'com/cappo/purchaseorderapp/test/integration/pages/POsList',
		'com/cappo/purchaseorderapp/test/integration/pages/POsObjectPage',
		'com/cappo/purchaseorderapp/test/integration/pages/purchaseOrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, purchaseOrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/cappo/purchaseorderapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThepurchaseOrderItemsObjectPage: purchaseOrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);