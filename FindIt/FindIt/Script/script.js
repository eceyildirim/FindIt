function AddShelf(id) {
    var shelf = $("#raf" + id + "");
    $('#shelfsArea').append(shelf);
    $("#raf" + id + "").css("cursor", "move");
    $("#raf" + id + "").addClass("text-center text-muted");
    $("#raf" + id + "").draggable({
        containment: 'parent'
    });
    $("#raf" + id + "").ondblclick = function () { goBack() };
}
