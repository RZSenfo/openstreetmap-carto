@admin-boundaries: #ac46ac;

#admin-01234 {
  [admin_level = '2'],
  [admin_level = '3'] {
    [zoom >= 4] {
      background/line-color: white;
      background/line-width: 0.6;
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 7] {
      background/line-width: 2;
      line-width: 2;
    }
    [zoom >= 10] {
      [admin_level = '2'] {
        background/line-width: 6;
        line-width: 6;
      }
      [admin_level = '3'] {
        background/line-width: 5;
        line-width: 5;
        line-dasharray: 4,2;
        line-clip: false;
      }
    }
  }
  [admin_level = '4'] {
    [zoom >= 4] {
      background/line-color: white;
      background/line-width: 0.6;
      line-color: @admin-boundaries;
      line-width: 0.6;
      line-dasharray: 4,3;
      line-clip: false;
    }
    [zoom >= 7] {
      background/line-width: 1;
      line-width: 1;
    }
    [zoom >= 11] {
      background/line-width: 3;
      line-width: 3;
    }
  }
  opacity: 0.4;
  comp-op: darken;
}

#admin-5678 {
  [admin_level = '5'][zoom >= 11] {
    background/line-color: white;
    background/line-width: 2;
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3,2,3;
    line-clip: false;
  }
  [admin_level = '6'][zoom >= 11] {
    background/line-color: white;
    background/line-width: 2;
    line-color: @admin-boundaries;
    line-width: 2;
    line-dasharray: 6,3,2,3;
    line-clip: false;
  }
  [admin_level = '7'],
  [admin_level = '8'] {
    [zoom >= 12] {
      background/line-color: white;
      background/line-width: 1.5;
      line-color: @admin-boundaries;
      line-width: 1.5;
      line-dasharray: 5,2;
      line-clip: false;
    }
  }
  opacity: 0.5;
  comp-op: darken;
}

#admin-other {
  [admin_level = '9'],
  [admin_level = '10'] {
    [zoom >= 13] {
      background/line-color: white;
      background/line-width: 2;
      line-color: @admin-boundaries;
      line-width: 2;
      line-dasharray: 2,3;
      line-clip: false;
    }
  }
  opacity: 0.5;
  comp-op: darken;
}

#admin-text[zoom >= 16] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: @admin-boundaries;
  text-placement: line;
  text-halo-radius: 1.0;
  text-placement: line;
  text-dy: -10;
}

#nature-reserve-boundaries {
  [zoom >= 7] {
    ::fill [zoom < 13] {
      opacity: 0.05;
      polygon-fill: green;
    }
    ::line {
      opacity: 0.15;
      line-color: green;
      line-width: 1.5;
      line-dasharray: 4,2;
      [zoom >= 10] {
        line-width: 3;
        line-dasharray: 6,2;
        line-join: bevel;
      }
    }
  }
}
