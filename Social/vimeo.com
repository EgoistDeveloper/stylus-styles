/* ==UserStyle==
@name           vimeo.com
@namespace      github.com/openstyles/stylus
@version        1.0.0
@description    A new userstyle
@author         EgoistDeveloper
==/UserStyle== */

@-moz-document url-prefix("https://vimeo.com/") {

    /* Scrollbar */
    ::-webkit-scrollbar {
        background: #575c64;
        height: 7px;
        width: 7px;
    }

    ::-webkit-scrollbar-track {
        border-radius: 3px;
    }

    ::-webkit-scrollbar-thumb {
        background: #b9b9b9;
        border-radius: 3px;
    }

    ::-webkit-scrollbar-thumb:hover {
        background: #d6d6d6;
    }

    /* General */
    *,
    [format="dark"] {
        color: #bdbdbd !important;
    }

    svg {
        fill: #bdbdbd;
    }

    a {
        color: #33b5e5;
    }

    a:hover,
    a:visited {
        color: #0099CC !important;
    }

    input[type="text"],
    textarea {
        color: #eeeeee;
        background-color: #575c64 !important;
    }

    html,
    body {
        background-color: #1E1E1E;
    }

    blockquote {
        margin-bottom: 10px;
        background-color: #373232 !important;
    }

    *:focus {
        outline: 0 !important;
    }

    /* General */
    .outer_wrap {
        background-color: #1E1E1E;
    }

    .topnav_desktop {
        background-color: #2b2c2d;
        border-bottom: none;
    }

    .topnav_desktop_logo svg {
        filter: invert(100%);
    }

    .video_manager__column--left {
        background-color: #2b2c2d;
    }

    .video_manager__toolbar-wrapper {
        background-color: #1E1E1E;
    }

    .m69VN,
    .vnV5p {
        background-color: #3d4146;
    }

    /* Header */

    .topnav_menu_search_input,
    .topnav_menu_search_submit {
        border: 1px solid #2b2c2d !important;
        background-color: #2b2c2d !important;
    }

    .topnav_desktop_menu_items_dropdown {
        background-color: #2b2c2d !important;
        border: 1px solid #2b2c2d !important;
    }

    /* Left Column */
    ._3v2Os,
    ._6DDK6,
    ._6DDK6:hover {
        background-color: #3d4146 !important;
    }

    ._3doQo,
    ._17Jpv._2YmkW a,
    ._17Jpv._2YmkW a:hover {
        background-color: #2b2c2d !important;
        border: none;
    }

    /* Home Cards */
    .kycYed,
    .kycYed:hover,
    .gZoLxG,
    .gZoLxG:hover,
    .beNSHc,
    .beNSHc:hover {
        background-color: #3d4146;
        border: none !important;
    }

    .gdDWtg {
        background: linear-gradient(to right, rgb(68, 68, 68) 0%, rgba(255, 255, 255, 0) 100%);
    }

    .eatQgy {
        background: linear-gradient(to left, rgb(68, 68, 68) 0%, rgba(255, 255, 255, 0) 100%);
    }

    /* Feed Cards */
    .boxed {
        background-color: #3d4146;
        border: none !important;
    }

    .browse .description {
        padding: 20px 0px;
        font-size: 16px;
    }

    .outro {
        background-color: #212222;
    }

    /* Rigth Column */
    .boxed_heading.magenta,
    .col_small .block h4.magenta {
        background-color: #2b2c2d;
    }

    /* Video Page */
    ._1jBcb,
    ._3ubve,
    .Q-Uem {
        border-top: 1px solid #3d4146;
    }

    .MBpXU {
        border-left: 1px solid #3d4146;
    }

    /* Profile Page */
    .iris_subnavbar {
        background-color: #2b2c2d;
        box-shadow: none;
    }

    /* Footer */
    .footer_v2__sitemap,
    .footer_v2__auxiliary,
    .footer_v2__tip {
        background-color: #2b2c2d;
        border-top: none;
        border-bottom: 1px solid #3d4146;
    }
}