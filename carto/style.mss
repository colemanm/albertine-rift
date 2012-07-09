/**** Albertine Rift *****/

Map {
  background-color: @base;
}

/* Hillshading and relief */

#hillshade {
  raster-opacity:0.2;
  raster-scaling: bilinear;
}
#color-relief {
  raster-opacity:1.0;
  raster-scaling: bilinear;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #ddd;
}

#borders {
  ::outline {
    line-width: 8.0;
    line-color: #fff;
    line-opacity: 0.2;
  }
  line-width: 2.0;
  line-color: #eee;
  line-opacity: 0.8;
}

/* Lake fills */

#water[type='riverbank'], #river_patch {
  line-color: darken(@water, 20);
  line-width: 2.0;
  line-opacity: 0.5;
  polygon-pattern-file: url('images/blue-water.png');
}

#water[name!='Lac Albert'],
#water[name!='Lac Moeru'],
#lakes[Name='Lake Victoria'][zoom<8] {
  line-color: darken(@water, 20);
  line-width: 2.0;
  line-opacity: 0.5;
  polygon-pattern-file: url('images/blue-water.png');
}
#lake_overlay_fill[name='Lake Tanganyika - Lac Tanganyika'],
#lake_overlay_fill[name='Lac Édouard - Lake Edward'],
#lake_overlay_fill[name='Lac Albert'],
#lake_overlay_fill[name='Lac Moeru'],
#lake_malawi_fill {
  line-color: darken(@water, 20);
  line-width: 2.0;
  line-opacity: 0.5;
  polygon-pattern-file: url('images/blue-water.png');
}
#lake_fill[Name='Lake Victoria'][zoom<8], #lake_fill[Name='L. Albert'] {
  polygon-fill: @water;
  polygon-pattern-file: url('images/blue-water.png');
}
#lake_victoria_fill[zoom>=8][zoom<10],
#lake_malawi_fill[zoom>=8][zoom<10] {
  line-color: darken(@water, 20);
  line-width: 2.0;
  line-opacity: 0.5;
  polygon-fill: @water;
  polygon-pattern-file: url('images/blue-water.png');
}

/* Rivers and streams */

#streams[zoom=9] {
  ::outline {
    line-width:1.8;
    line-color: darken(@water, 20);
    line-opacity: 0.5;
  }
  line-width: 1.0;
  line-color: @water;
}

/* Volcanoes */

#volcanoes {
  point-file: url('images/mountain.png');
  point-opacity: 0.8;
}

/* Parks and preserves */

#nature[zoom=9] {
  line-color: #594;
  line-width: 0.5;
  line-opacity: 0.5;
  polygon-opacity: 0.2;
  polygon-fill: #ae8;
  text-face-name: @regular;
  text-name: '[name]';
  text-placement: interior;
  text-size: 14;
  text-fill: #594;
  text-halo-fill: #fff;
  text-halo-radius: 0.8;
  text-wrap-width: 50;
  text-line-spacing: 5;
}
