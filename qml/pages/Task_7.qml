import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
   SilicaWebView {
       id: webView
       anchors {
           top: parent.top; bottom: textfield.top
           left: parent.left; right: parent.right
       }
       url: "https://github.com/alexsoll"
   }
   TextField {
       id: textfield
       anchors {
           left: parent.left; right: parent.right;
           bottom:  parent.bottom
       }
       text: "https://github.com/alexsoll"
       label: webView.title
       EnterKey.onClicked: webView.url = text
   }
}
