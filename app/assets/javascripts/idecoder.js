window.Idecoder = function(options) {
    var _this = this;
    return _this.initialize(options);
};

$.extend(Idecoder.prototype, {
    settings: {
        theme: 'monokai',
        language: 'ruby',
        read_only: false,
        height: "300px",
        width: "90%",
        border: "1px solid lightgray",
    },
    initialize: function(options) {
        let sett = this.settings
        $.extend(jQuery.extend(sett, options));
        return this.create_canvas();
    },
    /*=========================
          BUILD CONTROLS
    =========================
    */

    create_canvas: function() {
        var _this = this;
        $('body').append("<div class=\"idecoder-js \">\n  <link rel=\"stylesheet\" href=\"/assets/idecoder.css\">\n</div>");
    },
    $: function(el) {
        return this.$el.find(el);
    },

});