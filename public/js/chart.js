google.load('visualization', '1', {packages: ['corechart', 'bar']});
google.setOnLoadCallback(drawAnnotations);

function drawAnnotations() {
      var data = google.visualization.arrayToDataTable([
         ['Element', 'Density', { role: 'style' }],
         ['Copper', 8.94, '#b87333'],            // RGB value
         ['Silver', 10.49, 'silver'],            // English color name
         ['Gold', 19.30, 'gold'],

       ['Platinum', 21.45, 'color: #e5e4e2' ], // CSS-style declaration
      ]);

     

      var options = {

        annotations: {
          alwaysOutside: true,
          textStyle: {
            fontSize: 14,
            color: '#000',
            auraColor: 'none'
          }
        },
        hAxis: {

          viewWindow: {
            min: [7, 30, 0],
            max: [17, 30, 0]
          }
        },
       
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }