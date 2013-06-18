ReLaunchable = {};
ReLaunchable.Product = {
    setEditOnClick: function () {
        var editForm = $('#edit_div form');

        $('#edit_div').modal('show');

        $(editForm).children('span').html($(this).attr('data-name'));
        $(editForm).children('textarea').val($(this).attr('data-content'));
        $(editForm).children('.attr_name').val($(this).attr('data-attr'));
    },

    updateAttrRequest: function () {
        $.post('/products/update.json', $('#edit_div form').serialize(), function (data) {
            var div = $("div[data-attr='" + data.attr + "']");
            $(div).attr('data-content', data.val);
            $(div).children("span:last").html(data.val);
        });
    }
};