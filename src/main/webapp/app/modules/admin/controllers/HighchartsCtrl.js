admin.controller('HighchartsCtrl', ['$scope', '$http', function ($scope, $http) {
    $http.get('/Practice/analytics/all').then(function (response) {
        $scope.data = response.data;
        $scope.date = [];
        $scope.cost = [];
        $scope.users = [];
        $scope.shops = [];
        for (var i = 0; i < $scope.data.length; i++) {
            var time = $scope.data[i].date;
            var date = new Date(time);
            var month = date.getMonth() + 1;
            $scope.date[i] = date.getDate() + "/" + month + "/" + date.getFullYear();
            $scope.cost[i] = $scope.data[i].cost;
            $scope.users[i] = $scope.data[i].usersAmount;
            $scope.shops[i] = $scope.data[i].shopsAmount;
        }
        $(function () {
            $('#container').highcharts({
                chart: {
                    type: 'areaspline'
                },
                title: {
                    text: 'Users statistics'
                },
                legend: {
                    layout: 'vertical',
                    align: 'left',
                    verticalAlign: 'top',
                    x: 150,
                    y: 100,
                    floating: true,
                    borderWidth: 1,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
                },
                xAxis: {
                    categories: $scope.date
                    ,
                },
                yAxis: {
                    title: {
                        text: 'new members'
                    }
                },
                tooltip: {
                    shared: true,
                    valueSuffix: ''
                },
                credits: {
                    enabled: false
                },
                plotOptions: {
                    areaspline: {
                        fillOpacity: 0.5
                    }
                },
                series: [{
                    name: 'New Users',
                    data: $scope.users
                }, {
                    name: 'New Shops',
                    data: $scope.shops
                }]
            });
        });
        //Second chart
        $(function () {
            $('#money-transactions').highcharts({
                chart: {
                    zoomType: 'x'
                },
                title: {
                    text: 'Money transactions rate over time'
                },
                subtitle: {
                    text: document.ontouchstart === undefined ?
                        'Click and drag in the plot area to zoom in' : 'Pinch the chart to zoom in'
                },
                xAxis: {
                    categories: $scope.date,
                },
                yAxis: {
                    title: {
                        text: 'Transactions rate'
                    }
                },
                legend: {
                    enabled: false
                },
                credits: {
                    enabled: false
                },
                plotOptions: {
                    area: {
                        fillColor: {
                            linearGradient: {
                                x1: 0,
                                y1: 0,
                                x2: 0,
                                y2: 1
                            },
                            stops: [
                                [0, Highcharts.getOptions().colors[0]],
                                [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                            ]
                        },
                        marker: {
                            radius: 2
                        },
                        lineWidth: 1,
                        states: {
                            hover: {
                                lineWidth: 1
                            }
                        },
                        threshold: null
                    }
                },

                series: [{
                    type: 'area',
                    name: 'Summary amount',
                    data: $scope.cost
                }]
            });
        });
    })
}])