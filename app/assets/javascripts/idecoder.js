window.Idecoder = function(options) {
    var _this = this;
    this._url = "http://marxjs.com";
    return _this.initialize(options);
};

$.extend(Idecoder.prototype, {
    settings: {
        language: 'ruby',
        read_only: false,
    },
    initialize: function(options) {
        $.extend(this.settings);
        return this.create_canvas();
    },
    /*=========================
          BUILD CONTROLS
    =========================
    */

    create_canvas: function() {
        var _this = this;
        $('body').append("<div class=\"idecoder-js \">\n  <link rel=\"stylesheet\" href=\"/assets/stylesheets/idecoder.css\">\n</div>");
    },
    $: function(el) {
        return this.$el.find(el);
    },

});