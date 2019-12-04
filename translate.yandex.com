/* ==UserStyle==
@name           translate.yandex.com
@namespace      github.com/openstyles/stylus
@version        1.0.0
@description    A new userstyle
@author         EgoistDeveloper
==/UserStyle== */

@-moz-document domain("ceviri.yandex.com.tr"),
domain("translate.yandex.ru"),
domain("translate.yandex.ua"),
domain("translate.yandex.by"),
domain("translate.yandex.kz"),
domain("translate.yandex.com") {

    /* Scrollbar */
    ::-webkit-scrollbar {
        background: #2d3033;
        height: 10px;
        width: 10px;
    }

    ::-webkit-scrollbar-track {
        border-radius: 0px;
        background: transparent;
    }

    ::-webkit-scrollbar-thumb {
        background: #444;
        border-radius: 0px;
    }

    ::-webkit-scrollbar-thumb:hover {
        background: #666;
    }

    ::selection {
        background: #5bbbe0;
    }

    /* General */
    * {
        color: #bdbdbd;
    }

    svg {
        fill: #bdbdbd;
    }

    a {
        color: #287693 !important;
    }

    a:hover {
        color: #2793bb !important;
    }

    input,
    textarea,
    .form-control {
        color: #eeeeee;
        background-color: #373232 !important;
        border: 1px dashed #939090;
        border-radius: 0px !important;
    }

    html,
    body,
    .main {
        background-color: #1E1E1E;
    }

    blockquote {
        margin-bottom: 10px;
        background-color: #373232 !important;
    }

    *:focus {
        outline: 0 !important;
    }

    .header,
    .footer {
        background-color: #373232 !important;
    }

    .application.state-new .container_main,
    .application.state-new .container_main[style] {
        border-bottom: 20px solid #1E1E1E;
    }

    .button,
    .listbox,
    .panel .button_select.state-expanded,
    .overlay.collections .overlay-content,
    .collections-content {
        background-color: #373232;
        border: none;
    }

    .panel .button_select:hover {
        background-color: #4f4545;
    }

    .application.state-new .textwrapper,
    .service-description {
        background-color: #373232;
        border: none;
    }

    .application.state-new .item {
        background-color: #2d2d2d;
    }

    .item_left .textwrapper.state-focused,
    .application.state-editing .item_right .textwrapper.state-focused,
    .application.state-listening .item_left .textwrapper {
        box-shadow: 0 0 0 1px #287693 inset;
        border-color: #287693;
    }

    .footer-line_promo,
    .application.state-new .footer {
        box-shadow: none;
    }

    /* Image Color Invert */
    .logo,
    .name,
    .sms-image {
        filter: invert(100%);
    }

    .listbox-column_extra:not(.state-empty)~.listbox-column {
        border: none;
    }

    .collections-content {
        box-shadow: 0 1px #6f6c6c inset, 0 -1px #6f6c6c inset;
    }

    .collection-name div,
    .button_yellow[data-action=addCollection],
    .info-records-count {
        color: #4f4545 !important;
    }
}