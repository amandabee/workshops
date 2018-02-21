var dataset = [
  [{"x": 1, "y": 5 }, { "x": 2, "y": 4 }, { "x": 3, "y": 2 }, { "x": 4, "y": 7 }, { "x": 5, "y": 23 }],
  [{ "x": 1, "y": 10 }, { "x": 2, "y": 12 }, { "x": 3, "y": 19 }, { "x": 4, "y": 23 }, { "x": 5, "y": 17 }],
  [{ "x": 1, "y": 22 }, { "x": 2, "y": 28 }, { "x": 3, "y": 32 }, { "x": 4, "y": 35 }, { "x": 5, "y": 43 }]
];

var stack = d3.layout.stack();
stack(dataset);

// adding in a baseline, that we can offset the chart by.
var w = 400,
  h = 300,
  b = 0;

var xScale = d3.scale.ordinal()
  .domain(d3.range(dataset[0].length))
  .rangeRoundBands([0, w], 0.05);

var yScale = d3.scale.linear()
  .domain([0,
    d3.max(dataset, function(d) {
      return d3.max(d, function(d) {
        return d.y0 + d.y;
      });
    })
  ])
  .range([0, h - b]);

var colors = d3.scale.category10();

var svg = d3.select("#chart")
  .append("svg")
  .attr("width", w)
  .attr("height", h);

var lower_svg = d3.select("#chart")
  .append("svg")
  .attr("width", w)
  .attr("height", b);

var groups = svg.selectAll("g")
  .data(dataset)
  .enter()
  .append("g")
  .style("fill", function(d, i) {
    return colors(i);
  });

var rects = groups.selectAll("rect")
  .data(function(d) {
    return d;
  })
  .enter()
  .append("rect")
  .attr("x", function(d, i) {
    console.log(d);
    return xScale(i);
  })
  .attr("y", function(d, i) {
    return h - b - (yScale(d.y0 + d.y));
  })
  .attr("height", function(d) {
    return yScale(d.y);
  })
  .attr("width", xScale.rangeBand());

var lower_rects = lower_svg.selectAll("rect")
  .data(dataset[3])
  .enter()
  .append("rect")
  .attr("x", function(d, i) {
    return xScale(i);
  })
  .attr("y", h)
  .attr("height", function(d) {
    return yScale(d.y);
  })
  .attr("width", xScale.rangeBand());



var stations = ["A", "B", "C", "D", "E"]
var pad = 5

var text = svg.selectAll("text")
  .data(stations)
  .enter()
  .append('text')
  .text(function(d) {
    return d
  })
  .attr("x", function(d, i) {
    return xScale(i) + pad
  })
  .attr("y", h - b - pad)
  .attr("class", "text");
