/* Large labels */

#country_labels {
  text-face-name: @bold;
  text-name: '[name]';
  text-size: 22;
  text-transform: uppercase;
  text-fill: #474747;
  text-halo-fill: #fff;
  text-halo-radius: 0.8;
  text-allow-overlap: true;
  text-wrap-width: 100;
  text-line-spacing: 5;
  text-character-spacing: 3.0;
  [zoom=8] { text-size: 25; text-character-spacing: 3.0; }
  [zoom=9] { text-size: 36; text-character-spacing: 5.0; }
}

#regions {
  text-name: '[name]';
  text-face-name: @bold_italic;
  text-size: 34;
  text-opacity: 0.3;
  text-fill: #2c5d00;
  text-wrap-width: 60;
  text-line-spacing: 7;
  text-transform: uppercase;
  text-character-spacing: 10;
  text-allow-overlap: true;
  [zoom=9] { text-size: 65; }
}

#rift[name='Albertine Rift'] {
  [zoom=7]['zoomscale'=9] {
  text-name:"[name].replace('([\w\ ])','$1  ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: #777;
  text-opacity: 0.4;
  text-transform: uppercase;
  text-size: 14;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  }
  [zoom=8]['zoomscale'=9] {
  text-name:"[name].replace('([\w\ ])','$1   ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: #777;
  text-opacity: 0.4;
  text-transform: uppercase;
  text-size: 22;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  }
  [zoom=9]['zoomscale'=9] {
  text-name:"[name].replace('([\w\ ])','$1     ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: #777;
  text-opacity: 0.4;
  text-transform: uppercase;
  text-size: 24;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  }
}

#volcano_label[TYPE='Complex volcano'],
#volcano_label[TYPE='Cinder cones'] {
  text-name: '[NAME]';
  text-face-name: 'Chaparral Pro Italic';
  text-placement: point;
  text-size: 13;
  text-character-spacing: 1;
  text-wrap-width: 35;
  text-line-spacing: 5;
  text-fill: #4f4f4f;
  text-halo-fill: lighten(#4f4f4f, 50);
  text-halo-radius: 0.5;
  text-dy: -5;
  text-allow-overlap: true;
}

/** Water features ******/

/* Exclude customized labels */
#lake_label[Name!='Lake Victoria'][Name!='Lake Tanganyika'][Name!='L. Albert'][Name!='Lake Malawi,  (Lake Nyasa)'][zoom>6] {
  text-face-name: @italic;
  text-name: '[Name]';
  text-placement: interior;
  text-size: 15;
  text-fill: #486f71;
  text-halo-fill: #fff;
  text-halo-radius: 0.8;
  text-allow-overlap: true;
}

#river_label[zoom=9] {
  text-name:"[name].replace('([\w\ ])','$1 ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: darken(@water, 40);
  text-opacity: 1.0;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  text-halo-radius: 1.0;
  text-character-spacing: 0.5;
}
/** Custom Labels *****/

/* Lake Victoria */
#large_lakes[name='Lake Victoria'] {
  text-name:"[name].replace('([\w\ ])','$1 ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: spin(darken(@water, 15), 5);
  text-opacity: 1.0;
  text-size: 20;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  text-halo-radius: 1.0;
  [zoom=6] { text-size: 10; text-character-spacing: 0.5; }
  [zoom=7] { text-size: 16; text-character-spacing: 2; }
  [zoom=8] { text-size: 29; text-character-spacing: 4; }
  [zoom=9] { text-size: 45; text-character-spacing: 6; }
}

/* Lake Albert */
#large_lakes[name='Lake Albert'][zoom<8] {
  text-name:'[name]';
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: spin(darken(@water, 15), 5);
  text-opacity: 1.0;
  text-size: 20;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  text-halo-radius: 1.0;
  text-allow-overlap: true;
  [zoom=6] { text-size: 8; text-character-spacing: 1; }
  [zoom=7] { text-size: 12; text-character-spacing: 2; }
}
#albert_large {
  text-name:"[name].replace('([\w\ ])','$1 ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: spin(darken(@water, 15), 5);
  text-opacity: 1.0;
  text-size: 20;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  text-halo-radius: 1.0;
  text-allow-overlap: true;
  [zoom=8] { text-size: 17; text-character-spacing: 0; }
  [zoom=9] { text-size: 23; text-character-spacing: 0.5; }
}

/* Lake Tanganyika */
#large_lakes[name='Lake Tanganyika'] {
  text-name:"[name].replace('([\w\ ])','$1 ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: spin(darken(@water, 15), 5);
  text-opacity: 1.0;
  text-size: 20;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  text-halo-radius: 1.0;
  [zoom=6] { text-size: 9; text-character-spacing: 0; }
  [zoom=7] { text-size: 15; text-character-spacing: 2; }
  [zoom=8] { text-size: 24; text-character-spacing: 3; }
  [zoom=9] { text-size: 32; text-character-spacing: 4; }
}

/* Lake Malawi */
#large_lakes[name='Lake Malawi'] {
  text-name:"[name].replace('([\w\ ])','$1 ')";
  text-face-name: @bold_italic;
  text-placement: line;
  text-fill: spin(darken(@water, 15), 5);
  text-opacity: 1.0;
  text-size: 20;
  text-halo-fill: fadeout(lighten(@water, 10), 20);
  text-halo-radius: 1.0;
  text-allow-overlap: true;
  [zoom=6] { text-size: 8.5; text-character-spacing: 0; }
  [zoom=7] { text-size: 12; text-character-spacing: 1.7; }
  [zoom=8] { text-size: 23; text-character-spacing: 2.9; }
  [zoom=9] { text-size: 46; text-character-spacing: 5; }
}

/************************/
/** Places **************/
/************************/

#places::city[type='city'][zoom>5][zoom<10] {
  [zoom>7] { shield-file: url(images/dot-white.png); }
  shield-file: url(images/dot-gray.png);
  shield-name: '[name]';
  shield-text-dy: -10;
  shield-face-name: @regular;
  shield-placement: point;
  shield-fill: rgb(68,68,68);
  shield-size: 13;
  shield-halo-fill: #fff;
  shield-halo-radius: 1;
  [zoom=8] {
    shield-halo-radius: 2;
    shield-size: 12;
    shield-text-dy: -12;
  }
  [zoom=9] {
    shield-halo-radius: 2;
    shield-size: 14;
    shield-text-dy: -13;
  }
}
#places[type='town'][zoom>7][zoom<12] {
  shield-name:'[name]';
  shield-file:url(images/dot-gray.png);
  shield-text-dy:-10;
  shield-face-name:@regular;
  shield-placement:point;
  shield-fill:#666;
  shield-size:10;
  shield-halo-fill:#fff;
  shield-halo-radius:1;
  [zoom>8] { shield-halo-radius:1.5; }
  [zoom>10]{ shield-size:11; shield-fill:#000; }
}