// Album delete for specified id.
$(document).on('click', '.remove', function () {
    var itemId = $(this).data('id');
    if (confirm("Are you sure you want to remove this?")) {
        $.ajax({
            url: '/photo/remove/' + itemId,
            data: {},
            dataType: 'json',
            success: function (data) {
                $.each(data, function (index, element) {
                    if (element == 1)
                        $('.photo-' + itemId).remove();
                    else
                        alert('An error occurred while deleting.');
                });
            }
        });
    }
    return false;
});

// Photo delete for specified id.
$(document).on('click', '.removephoto', function () {
    var itemId = $(this).data('id');
    if (confirm("Are you sure you want to remove this?")) {
        $.ajax({
            url: '/photo/removephoto/' + itemId,
            data: {},
            dataType: 'json',
            success: function (data) {
                $.each(data, function (index, element) {
                    if (element == 1) {
                        $('.container-fluid.bg-3.text-center').remove();
                        $('.removephoto').remove();
                    }
                    else
                        alert('An error occurred while deleting.');
                });
            }
        });
    }
    return false;
});

// Add an album.
$(document).on('click', '#submit', function () {
    $("#name").val($($.parseHTML($("#name").val())).text());

    if ($("#name").val() == '')
        return alert("The field is empty.");

    var inputs = $('#photoForm :input');
    $.ajax({
        url: '/photo/add',
        type: "GET",
        dataType: 'json',
        data: inputs.serialize(),
        success: function (data) {
            $.each(data, function (index, element) {
                if (element == 1) {
                    alert('Data successfully signed up.');
                    location.reload();
                } else
                    alert('The data is not successfully signed up.');
            });
        },
        error: function (xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    });
    return false;
});

// Add an photo.
$(document).on('click', '#submiturl', function () {
    $("#id").val($($.parseHTML($("#id").val())).text());
    $("#name").val($($.parseHTML($("#name").val())).text());
    $("#url").val($($.parseHTML($("#url").val())).text());

    var string = '';
    if ($("#url").val() == '')
        string += "The url field is empty. ";

    if ($("#name").val() == '')
        string += "The name field is empty.";

    if (string != '')
        return alert(string);

    // Verify photo url.
    var url = $("#url").val();
    var RegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
    if (!RegExp.test(url))
        return alert('Not valid url address.');

    var inputs = $('#photoForm :input');
    $.ajax({
        url: '/photo/addurl',
        type: "GET",
        dataType: 'json',
        data: inputs.serialize(),
        success: function (data) {
            $.each(data, function (index, element) {
                if (element == 1) {
                    alert('Data successfully signed up.');
                    location.reload();
                } else
                    alert('The data is not successfully signed up.');
            });
        },
        error: function (xhr, resp, text) {
            console.log(xhr, resp, text);
        }
    });
    return false;
});
