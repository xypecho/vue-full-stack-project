// This script file should place after the waterfall image

var WindowHeightB4Load;
var WaterfallItemCnt = parseInt($('#hfWaterfallItemCnt').val());
var preLoadCnt = parseInt($('#hfPreLoad').val());
var dataImg = { "data": $.parseJSON($('#hfDataImg').val()) };
var numPhotoPerLoad = 20;
var numPhotoLoadPerWaterfall = 30;

var offset = 1;
var ImgIndex = 0;
var PicIndex = 0;
var LoadedImgCnt = 0;
var ExcludeAdv = 0;

var loadTimer;

$('document').ready(function () {
});

$("#container").waterfall({
    itemClass: ".box",
    minColCount: 1,
    spacingHeight: 10,
    resizeable: true,
    ajaxCallback: function (success, end) {
        if (WaterfallItemCnt > 0 && ImgIndex < dataImg.data.length) {
            WindowHeightB4Load = getCurrentDocHeight();
            numPhotoPerLoad = numPhotoLoadPerWaterfall;
            loadData();
            success();
            end();
        }

        // Insert Flag if Last element loaded
        if (ImgIndex >= dataImg.data.length) {
            if ($('#footer_point').length == 0 && $('#footer_done').length == 0)
                $('<div id="footer_point"></div>').insertAfter($("#container"));
        }
    }
});

$(".WaterfallImage").load(CalLoad).each(function () { if (this.complete) $(this).load(); });

function getCurrentDocHeight() {
    var D = document;
    return Math.max(
        D.body.scrollHeight, D.documentElement.scrollHeight,
        D.body.offsetHeight, D.documentElement.offsetHeight,
        D.body.clientHeight, D.documentElement.clientHeight
    );
}
function CalLoad() {
    LoadedImgCnt++;
    if (LoadedImgCnt == ImgIndex + preLoadCnt - ExcludeAdv) {
        if (!IsScrollBarExist())
            loadData();
        else {
            if (typeof (clearOrder) !== 'undefined')
                clearOrder();
            if (typeof (setOrder) !== 'undefined')
                setOrder();
        }

        //if (loadTimer) {
        //    clearTimeout(loadTimer);
        //}
        //loadTimer = setTimeout(loadData(), 1000);
    }
}

function IsScrollBarExist() {
    if (getCurrentDocHeight() <= $(window).height() || WindowHeightB4Load >= getCurrentDocHeight())
        return false
    else
        return true;
}

function loadData() {
    //if (getCurrentDocHeight() <= $(window).height() || WindowHeightB4Load >= getCurrentDocHeight()) {
    if (WaterfallItemCnt > 0 && ImgIndex < dataImg.data.length) {
        for (var i = 0; i < numPhotoPerLoad; i++) {
            if (ImgIndex == dataImg.data.length)
                break;
            var json = dataImg.data[ImgIndex];
            var imgIdx = PicIndex + preLoadCnt + offset;

            if (typeof ($("#PageType")) !== 'undefined') {
                if ($("#PageType").val() === 'EventPhotographerAlbum') {
                    var $li = $('<li class=\"box\"></li>');
                    var $li2 = $('<li class=\"box\" style=\"min-height:200px;\"></li>');
                    var $div = $('<div class=\"img\"></div>');
                    var $a;

                    if (json.IsAdv == 0) {
                        $a = $('<a href=\"AlbumView.aspx?type=' + json._type + '&albumid=' + json.AlbumId + '&picid=' + imgIdx + '&eventId=' + json._eventId + '&runnerNo=' + json._runnerno + '\" ></a>');
                        PicIndex++;
                    }
                    else {
                        if (json.ContentType == 1)
                            $a = $('<a ' + json.AdvUrl + '\" ></a>');
                        else
                            $a = '';
                    }

                    ImgIndex++;

                    var $img;
                    if (json.IsAdv == 0)
                        $img = $('<img src=\"' + json.CropPhotoPath + '\" class=\"WaterfallImage\" alt=\"\" />').load(CalLoad).each(function () { });
                    else {
                        if (json.ContentType == 1)
                            $img = $('<img src=\"' + json.CoverPhotoPath + '\" class=\"WaterfallImage\" alt=\"\" />').load(CalLoad).each(function () { });
                        else {
                            ExcludeAdv++;
                            $img = $('' + json.Script + '');
                        }
                    }

                    if (json.IsAdv == 0 || json.ContentType == 1)
                        $li.append($div.append($a.append($img))).insertBefore($("#emptyItem"));
                    else
                        $li.append($div.append($img)).insertBefore($("#emptyItem"));
                }

                if ($("#PageType").val() === 'MsgLikeReceived') {
                    var $Desc = $("#hfText").val();
                    var $li = $('<li class=\"box\" style=\"height:auto !important;\" ></li>');
                    var $div = $('<div class=\"img\" style=\"height:auto !important;\"></div>');
                    var $a;
                    var $span = $('<span class=\"ReceivedSpan\">&nbsp;' + json.LikeID + ' ' + $Desc + '</span>');

                    $a = $('<a href=\"EventPhotographerAlbum.aspx?albumid=' + json.AlbumId + '\" ></a>');
                    PicIndex++;

                    ImgIndex++;

                    var $img;
                    $img = $('<img src=\"' + json.CropPhotoPath + '\" class=\"WaterfallImage\" alt=\"\" />').load(CalLoad).each(function () { });

                    $li.append($div.append($a.append($img))).append($span).insertBefore($("#emptyItem"));
                }

                if ($("#PageType").val() === 'MsgLikeSent') {
                    var $li = $('<li class=\"box\"></li>');
                    var $div = $('<div class=\"img\"></div>');
                    var $a;

                    $a = $('<a href=\"EventPhotographerAlbum.aspx?albumid=' + json.AlbumId + '\" ></a>');
                    PicIndex++;

                    ImgIndex++;

                    var $img;
                    if (json.IsAdv == 0)
                        $img = $('<img src=\"' + json.CropPhotoPath + '\" class=\"WaterfallImage\" alt=\"\" />').load(CalLoad).each(function () { });
                    else
                        $img = $('<img src=\"' + json.CoverPhotoPath + '\" class=\"WaterfallImage\" alt=\"\" />').load(CalLoad).each(function () { });

                    $li.append($div.append($a.append($img))).insertBefore($("#emptyItem"));
                }
            }
        }
    }
    //}    
}
