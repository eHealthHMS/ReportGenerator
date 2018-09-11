$(function(){
    var treeView = $("#treeview").dxTreeView({ 
        items: products,
        width: 500,
        searchEnabled: true,
        onItemClick: function(e) {
            var item = e.itemData;
            if(item.isreport==true){

            	var y = document.getElementsByClassName("headingClass");
            	for (var i = 0; i < y.length; i++) {
            	  y[i].innerHTML = item.text + ' Generator';
            	}
     
            	$(".headingClass").innerHTML = item.text + ' Generator';
            	    $(".stepsDiv").hide();
            	    if(item.reporttype=="daily"){
            	    	 $(".reportDiv").show();
            	    	 $(".weeklyReportDiv").hide();
            	    	 $(".monthlyReportDiv").hide();
            	    }else  if(item.reporttype=="monthly"){
            	    	 $(".reportDiv").hide();
            	    	 $(".weeklyReportDiv").hide();
            	    	 $(".monthlyReportDiv").show();
            	    	
            	    }else  if(item.reporttype=="weekly"){
            	    	 $(".reportDiv").hide();
            	    	 $(".weeklyReportDiv").show();
            	    	 $(".monthlyReportDiv").hide();
            	    }
            	    
            }else {
            	 $(".reportDiv").hide();
            	 $(".monthlyReportDiv").hide();
            	 $(".weeklyReportDiv").hide();
         	    $(".stepsDiv").show();
            }
            
        }
    }).dxTreeView("instance");

    $("#searchMode").dxSelectBox({
        dataSource: ["contains", "startswith"],
        value: "contains",
        onValueChanged: function(data) {
            treeView.option("searchMode", data.value);
        }
    });
});

var products = [{
    id: "1",
    text: "Reports",
    expanded: true,
    items: [{
        id: "1_1",
        text: "Daily reports",
        expanded: true,
        items: [{
            id: "1_1_1",
            text: "HMS Reports",
            expanded: true,
            items: [{
                id: "1_1_1_1",
                text: "Precheck Report",
              //  price: 220,
                isreport:true,
                reporttype:"daily"
            } 
//           , {
//                id: "1_1_1_2",
//                text: "SuperHD Video Player",
//                price: 270
//            }
            ]
        }, 
//        {
//            id: "1_1_2",
//            text: "Televisions",
//            items: [{
//                id: "1_1_2_1",
//                text: "SuperLCD 42",
//                price: 1200
//            }, {
//                id: "1_1_2_2",
//                text: "SuperLED 42",
//                price: 1450
//            }, {
//                id: "1_1_2_3",
//                text: "SuperLED 50",
//                price: 1600
//            }, {
//                id: "1_1_2_4",
//                text: "SuperLCD 55",
//                price: 1350
//            }, {
//                id: "1_1_2_5",
//                text: "SuperLCD 70",
//                price: 4000
//            }]
//        }, 
//        {
//            id: "1_1_3",
//            text: "Monitors",
//            items: [{
//                id: "1_1_3_1",
//                text: "19\"",
//                items: [{
//                    id: "1_1_3_1_1",
//                    text: "DesktopLCD 19",
//                    price: 160
//                }]
//            }, {
//                id: "1_1_3_2",
//                text: "21\"",
//                items: [{
//                    id: "1_1_3_2_1",
//                    text: "DesktopLCD 21",
//                    price: 170
//                }, {
//                    id: "1_1_3_2_2",
//                    text: "DesktopLED 21",
//                    price: 175
//                }]
//            }]
//        }, 
//        {
//            id: "1_1_4",
//            text: "Projectors",
//            items: [{
//                id: "1_1_4_1",
//                text: "Projector Plus",
//                price: 550
//            }, {
//                id: "1_1_4_2",
//                text: "Projector PlusHD",
//                price: 750
//            }]
//        }
        ]

    }, 
    {
        id: "1_2",
        text: "Weekly Reports"
        	,
//        items: [{
//            id: "1_2_1",
//            text: "Video Players",
//            items: [{
//                id: "1_2_1_1",
//                text: "HD Video Player",
//                price: 240
//            }, {
//                id: "1_2_1_2",
//                text: "SuperHD Video Player",
//                price: 300
//            }]
//        }, {
//            id: "1_2_2",
//            text: "Televisions",
//            items: [{
//                id: "1_2_2_1",
//                text: "SuperPlasma 50",
//                price: 1800
//            }, {
//                id: "1_2_2_2",
//                text: "SuperPlasma 65",
//                price: 3500
//            }]
//        }, {
//            id: "1_2_3",
//            text: "Monitors",
//            items: [{
//                id: "1_2_3_1",
//                text: "19\"",
//                items: [{
//                    id: "1_2_3_1_1",
//                    text: "DesktopLCD 19",
//                    price: 170
//                }]
//            }, {
//                id: "1_2_3_2",
//                text: "21\"",
//                items: [{
//                    id: "1_2_3_2_1",
//                    text: "DesktopLCD 21",
//                    price: 180
//                }, {
//                    id: "1_2_3_2_2",
//                    text: "DesktopLED 21",
//                    price: 190
//                }]
//            }]
//        }]

    }, {
        id: "1_3",
        text: "Monthly Reports",
        expanded: true,
        items: [{
            id: "1_3_1",
            text: "NCD Reports",
            items: [{
                id: "1_3_1_1",
                text: "Form 1 Report",
                reporttype:"monthly",
                isreport:true
            }
//            , {
//                id: "1_3_1_2",
//                text: "SuperHD Video Player",
//                price: 275
//            }
            ]
        }
//        , 
//        {
//            id: "1_3_3",
//            text: "Monitors",
//            items: [{
//                id: "1_3_3_1",
//                text: "19\"",
//                items: [{
//                    id: "1_3_3_1_1",
//                    text: "DesktopLCD 19",
//                    price: 165
//                }]
//            }, {
//                id: "1_3_3_2",
//                text: "21\"",
//                items: [{
//                    id: "1_3_3_2_1",
//                    text: "DesktopLCD 21",
//                    price: 175
//                }]
//            }]
//        }
        ]
    }]
}];