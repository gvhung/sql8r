<?xml version="1.0" encoding="utf-8"?>
<styleLibrary office2007CustomBlendColor="Red">
  <annotation>
    <lastModified>2008-10-19T19:01:16</lastModified>
  </annotation>
  <colorCategories>
    <colorCategory name="Primary Color" />
    <colorCategory name="Secondary Color" />
  </colorCategories>
  <styleSets defaultStyleSet="Default">
    <styleSet name="Default" viewStyle="OfficeXp" useOsThemes="False" useFlatMode="True">
      <componentStyles>
        <componentStyle name="Inbox Form">
          <properties>
            <property name="BackColor" colorCategory="{Default}">White</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox ListBox">
          <properties>
            <property name="Font" colorCategory="{Default}">Segoe UI, 8.25pt</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox MonthCalendar">
          <properties>
            <property name="TitleBackColor" colorCategory="{Default}">Red</property>
          </properties>
        </componentStyle>
        <componentStyle name="Inbox Panel">
          <properties>
            <property name="BackColor" colorCategory="{Default}">White</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraCalculator" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="ImageTransparentColor">Transparent</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraDockManager" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="CaptionGrabHandleStyle" colorCategory="{Default}">None</property>
            <property name="GroupPaneTabStyle" colorCategory="{Default}">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraExplorerBar" viewStyle="Standard" useOsThemes="False" />
        <componentStyle name="UltraListView" headerStyle="Standard" />
        <componentStyle name="UltraPictureBox" resolutionOrder="None" />
        <componentStyle name="UltraTabbedMdiManager">
          <properties>
            <property name="TabStyle" colorCategory="{Default}">Flat</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabControl" buttonStyle="FlatBorderless" useOsThemes="False" useFlatMode="True">
          <properties>
            <property name="ImageTransparentColor" colorCategory="{Default}">Transparent</property>
            <property name="Style" colorCategory="{Default}">Flat</property>
            <property name="UseHotTracking" colorCategory="{Default}">True</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraTabStripControl">
          <properties>
            <property name="Style" colorCategory="{Default}">Flat</property>
            <property name="UseHotTracking" colorCategory="{Default}">True</property>
          </properties>
        </componentStyle>
        <componentStyle name="UltraToolbarsManager" useOsThemes="False" useFlatMode="True" />
      </componentStyles>
      <styles>
        <style role="Base">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="DimGray" fontName="Segoe UI" textVAlign="Middle" fontSize="8" themedElementAlpha="Transparent" />
          </states>
        </style>
        <style role="Button" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal">
              <resources>
                <name>Blank</name>
              </resources>
            </state>
            <state name="HotTracked" colorCategory="Primary Color" foreColor="Red" />
            <state name="Pressed">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="CalendarComboControlArea">
          <states>
            <state name="Normal" borderColor="255, 167, 167" />
          </states>
        </style>
        <style role="ComboDropDownButton">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="HotTracked" colorCategory="Primary Color" backColor="Transparent" foreColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFAEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAkklEQVQ4T6WTgQ2AIAwEuwFuAhvhBo6mmzCCI7iB+o/FCAmBCEkDpX+1QBUpxiUynyIb7MD64kyf+6X29RF0EO0EaqZxlyVRMH6pZVrRkwDiKZXYAlNc9ZNgsfRCXx05wuEnHFh285w1zRg8VPbQheE85udTmfjWgG1vAm1Xm3WZJmi2J3XVHkfQw9bix6DvS+gGgKhYTI6Wn0YAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="DayViewAllDayEventArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewControlArea">
          <states>
            <state name="Normal" backColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewTimeSlotNonWorkingHour">
          <states>
            <state name="Normal" backColor="255, 235, 235" borderColor="255, 185, 185" backGradientStyle="None" />
            <state name="Selected" backColor="255, 221, 221" foreColor="White" borderColor="White" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DayViewTimeSlotWorkingHour">
          <states>
            <state name="Normal" backColor="255, 235, 235" borderColor="255, 185, 185" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="White" foreColor="White" borderColor="255, 185, 185" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DesktopAlertButton">
          <states>
            <state name="Normal" colorCategory="{None}" borderColor="Transparent" />
            <state name="HotTracked" colorCategory="{None}" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" borderColor3DBase="Transparent" backHatchStyle="None" borderColor2="Transparent" />
          </states>
        </style>
        <style role="DesktopAlertCloseButton">
          <states>
            <state name="Normal" foreColor="255, 1, 1" />
            <state name="HotTracked" colorCategory="{None}" foreColor="White" borderColor="Transparent">
              <resources>
                <name>Circle2</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DesktopAlertControlArea">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DesktopAlertDropDownButton">
          <states>
            <state name="Normal" foreColor="255, 1, 1" />
            <state name="HotTracked">
              <resources>
                <name>Circle2</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DesktopAlertGripArea">
          <states>
            <state name="Normal">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DesktopAlertPinButton">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtQAAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAAA4IBgAAACYvnIoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAM0lEQVQ4T2NgGL7gDAPDf3RMkm9BmpE1oPMJGjbEDcAWgDAxgn5HV0By4A0+A0j2M6kaAAZ2KT7LdE7VAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="HotTracked" colorCategory="Primary Color" backColor="Transparent" foreColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAOAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAAA4IBgAAACYvnIoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAtklEQVQ4T61TiQ2DMAz0BmET2IhuwGhlE0boCN2AcA52FJKjINRIFtjcnR8cEXKiyGsVmWFfvEd9qq9xhs8xAAYAP0o6M/s+NEJGThl/WgipIsWXmTsvN5MjOYW44bskAmdqsiq/rKb299lMLrA8FFiSAO35RgXK+48Aejm2wAboseMg9xboEB1Ihuct5yEiEJrfeCFg+JB3AYGeitQV2CIpvtlGE7lcZUou1QAYYe/qMqk/1lk3QQaGWtlHohkAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="DockAreaSplitterBarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>SplitterBarVertical</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockAreaSplitterBarVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>SplitterBarHorizontal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockControlPane">
          <states>
            <state name="Normal" foreColor="210, 0, 0" />
          </states>
        </style>
        <style role="DockControlPaneContentArea">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockFloatingWindowCaptionHorizontal">
          <states>
            <state name="Normal" backColor="255, 89, 89" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DockPaneCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="DockPaneCaptionHorizontal">
          <states>
            <state name="Normal" foreColor="White" />
            <state name="Active" foreColor="White" />
          </states>
        </style>
        <style role="DockPaneCloseButton">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="White" />
            <state name="HotTracked" colorCategory="Primary Color" foreColor="241, 0, 0" imageBackgroundStyle="Centered">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAAA4IBgAAACYvnIoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAlElEQVQ4T62TgRHAEAxFuwGbsFG7QUdrNzFCR+gELv2ktFSPq+bOEfKfIIYhMyKayNoVbceYfO98zOexiY8AjcDNi96M1/UDdIp5x5pxZhcEjozp1sRhnSHSZwLx3KpL4qALAPMRYBjQYT8BrO08QvclEomPzyhiQQGgmiFc2upZjQypl3JJfKcBMqIt2Wdy/lj6TAem9cKJGR9jywAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="DockPanePinButton">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="White" />
            <state name="HotTracked" colorCategory="Primary Color" foreColor="241, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFAEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAkklEQVQ4T6WTgQ2AIAwE2QA3wY10A0fTTRjBEZyA1C+vRJoYDTQhUr/3NlKcMyEis6S0YR3YS35qjve2tuQQRxTtGXgL6mNlcoH80lewIxpgM5QWv8Bbp8HgAC5/maoOnMKxEY7adnN0wl1td/0wEd94VJ5nnVL4bcBxDfWU0UDH7z1Ut+DTBeKEtZqLoflkL8YJ1pDCiaNZjOkAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="DockSlidingGroupHeaderHorizontal">
          <states>
            <state name="Normal" foreColor="White" fontBold="True">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
            <state name="HotTracked" borderColor="Transparent" />
          </states>
        </style>
        <style role="DockSlidingGroupHeaderVertical">
          <states>
            <state name="HotTracked" backColor="255, 165, 165" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="DropDownButton">
          <states>
            <state name="Normal" colorCategory="Primary Color">
              <resources>
                <name>RedForeground</name>
              </resources>
            </state>
            <state name="HotTracked" colorCategory="Primary Color" foreColor="White" borderColor="Transparent" borderColor3DBase="Transparent" borderColor2="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFAEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAkklEQVQ4T6WTgQ2AIAwEuwFuAhvhBo6mmzCCI7iB+o/FCAmBCEkDpX+1QBUpxiUynyIb7MD64kyf+6X29RF0EO0EaqZxlyVRMH6pZVrRkwDiKZXYAlNc9ZNgsfRCXx05wuEnHFh285w1zRg8VPbQheE85udTmfjWgG1vAm1Xm3WZJmi2J3XVHkfQw9bix6DvS+gGgKhYTI6Wn0YAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="EditorButton">
          <states>
            <state name="Normal" colorCategory="Primary Color">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFAEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAkklEQVQ4T6WTgQ2AIAwEuwFuAhvhBo6mmzCCI7iB+o/FCAmBCEkDpX+1QBUpxiUynyIb7MD64kyf+6X29RF0EO0EaqZxlyVRMH6pZVrRkwDiKZXYAlNc9ZNgsfRCXx05wuEnHFh285w1zRg8VPbQheE85udTmfjWgG1vAm1Xm3WZJmi2J3XVHkfQw9bix6DvS+gGgKhYTI6Wn0YAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="HotTracked" foreColor="White" />
          </states>
        </style>
        <style role="EditorControl">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarControlArea">
          <states>
            <state name="Normal" backColor="255, 225, 225" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarGroupHeader">
          <states>
            <state name="Normal" borderColor="Transparent" borderAlpha="Transparent" fontBold="True">
              <resources>
                <name>RedForeground</name>
                <name>buttonBorder</name>
              </resources>
            </state>
            <state name="HotTracked" borderAlpha="Transparent">
              <resources>
                <name>BottonBorderRed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaInner">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="2, 1, 2, 2" />
          </states>
        </style>
        <style role="ExplorerBarGroupItemAreaOuter">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ExplorerBarItem">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="210, 0, 0" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>blueWhite</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="Red" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 2, 7, 4" />
            <state name="Active" foreColor="241, 0, 0" fontBold="True" />
          </states>
        </style>
        <style role="ExplorerBarNavigationOverflowButtonArea">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridAddNewBoxButton">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridCaption">
          <states>
            <state name="Normal" backColor="255, 235, 235" borderColor="Transparent" imageBackgroundStyle="Stretched" fontBold="True" fontSize="11" backGradientStyle="None" imageBackgroundStretchMargins="0, 0, 0, 2">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAuAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAIAAAABMIBgAAAPGUD/cAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAANklEQVRIS2P8f/fuf4aBBCAHDCRmGEjLwaE/6oDREBgNgdEQGA2B0RAYDYGBD4H+/v//BxADAEPfTrJFlzTwAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <resources>
                <name>RedForeground</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridCell">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" borderColor="Transparent" />
            <state name="Active" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="EditMode" backColor="255, 105, 105" foreColor="White" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="3, 2, 2, 2" />
          </states>
        </style>
        <style role="GridColumnHeader">
          <states>
            <state name="Normal" textHAlign="Center" imageBackgroundStyle="Stretched" fontBold="True" fontSize="8" imageBackgroundStretchMargins="6, 3, 7, 7">
              <resources>
                <name>GridHeader</name>
                <name>BlackForeground</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>BottonBorderRed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GridControlAreaBase">
          <states>
            <state name="Normal" backColor="White" borderColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBox">
          <states>
            <state name="Normal" backColor="255, 185, 185" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridGroupByBoxPrompt">
          <states>
            <state name="Normal" backColor="255, 185, 185" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GridHeader" borderStyle="None" />
        <style role="GridRow">
          <states>
            <state name="Normal" backColor="White" borderColor="255, 185, 185" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="255, 235, 235" foreColor="30, 0, 0" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked">
              <resources>
                <name>blueWhite</name>
              </resources>
            </state>
            <state name="Active" colorCategory="Primary Color" backColor="Transparent" foreColor="Red" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 2, 0, 2">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA9QAAAAKJUE5HDQoaCgAAAA1JSERSAAAAMwAAAB4IBgAAAIGTJsIAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAc0lEQVRYR+3Y0QkAIRAD0Vz/1YqIiEjOdCHDilPAI3/7Wbof8oKhJLdmSoV5dUm5d1MqzKtLwpYZw4YkCiQOGGZOG5IokDhgmLVsSKJA4oBh9rYhiQKJA4Y5x4YkCiSOwry65j2acV5hXt0yh2bQeRaE+QGy347NumnGcwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="GridRowSelector">
          <states>
            <state name="Normal" backColor="255, 235, 235" borderColor="255, 235, 235" imageHAlign="Right" imageVAlign="Middle" backGradientStyle="None">
              <resources>
                <name>RedForeground</name>
              </resources>
            </state>
            <state name="FilterRow" backColor="255, 41, 41" backGradientStyle="None" />
          </states>
        </style>
        <style role="GridRowSelectorHeader">
          <states>
            <state name="Normal" backColor="255, 235, 235" backGradientStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemAreaHorizontalBottom">
          <states>
            <state name="Normal" colorCategory="Primary Color" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 4, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAAB0IBgAAAEyvh4EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAMklEQVRIS2P8z8AARBSC/1QADFQw4/+oIZihOBomo2FCTN4aTSej6WQ0nRATAoM5nQAA0LBq+clyOq4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="GroupPaneTabItemAreaVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="GroupPaneTabItemAreaVerticalRight">
          <states>
            <state name="Normal" colorCategory="Primary Color" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="3, 0, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAugAAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAABEIBgAAACFRp3QAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAOElEQVRIS2P8z8Dwn+E/kKQnAFlKbwD05qiltAv00eClXdgCTR4N3tHgpUoIjCYkqgQjLkMGJHgBczwdR6KD3KQAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="6, 4, 6, 5" />
          </states>
        </style>
        <style role="GroupPaneTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="GroupPaneTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="Link">
          <states>
            <state name="Normal" textVAlign="Top" />
            <state name="HotTracked">
              <resources>
                <name>RedForeground</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ListViewColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ListViewControlArea">
          <states>
            <state name="Normal" borderColor="255, 185, 185" />
          </states>
        </style>
        <style role="ListViewGroupHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ListViewItem">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="Selected">
              <resources>
                <name>BackgroundRed</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="228, 0, 0" />
          </states>
        </style>
        <style role="MainMenubarHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MaskPromptChar">
          <states>
            <state name="Normal" borderColor="255, 129, 129" />
          </states>
        </style>
        <style role="MenuCheckMark">
          <states>
            <state name="Normal">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemAddRemoveTool">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="MenuItemButton">
          <states>
            <state name="HotTracked" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>RedForeground</name>
                <name>buttonBorder</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemComboBox">
          <states>
            <state name="HotTracked">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemMaskedEdit">
          <states>
            <state name="HotTracked">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemMdiWindowListItem">
          <states>
            <state name="HotTracked">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemPopupColorPicker">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="HotTracked" borderColor="255, 83, 83">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemPopupControlContainer">
          <states>
            <state name="HotTracked">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuItemPopupMenu">
          <states>
            <state name="HotTracked">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MenuSideStrip">
          <states>
            <state name="Normal">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="MonthViewMultiMonthScrollButton">
          <states>
            <state name="Normal">
              <resources>
                <name>RedForeground</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="NavigationToolbarBackButton">
          <states>
            <state name="Normal" colorCategory="Primary Color" imageBackgroundStyle="Centered">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAugEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABOElEQVQ4T5WTu2oCQRiFjxAfQSyTYJGnsM+b2OYlrNfGwkqsfYFYWIi1jSDsFpsbuUHIxRBzJyfnXzXMTnZAf/iYy/nPWWaZKcGrU2DvGzjS9mEJODCZQKLheAdo7QNnvudvnarhRP0aC1lprcIAfXkquCHTXMgFEJ3LvA3myUJudOYrmS8DsN0u1MxjXlwDXUGfd+1xMKBVkb7a6+IWiAVdWKmQk0lmtvJ1Zx3jTmYX1mpkv0/OZuR8ngX4Pe4a9wpwYb1O9nrkcEgmCblY5HS/Hw86wqNCXFitkp0OORqRaZrT3D7z4kk/8VkBPiyXyWaTHI//aete8+IV2H1RQAg2GkHNvNld0CQS3JLlRVrXm67yh0I2wXoL34PM0adCvgKYZj3B12jCj86lgEjEetY0bG57pvnmX2WWq+qv5qbjAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
              <imageBackgroundDisabled>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA8AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABbklEQVQ4T42Tv2vCUBDHTwoFacCCgyBIQAQnCZncurnUf6C73RxEQRycHII4uhWcRBwcnZwcxLGzUAft1ElsidWlUL69ezTSJC/FBwfJu+/38+7ejxgFBoiutkRGNpm8IcO4Vunj8Wu735+y/BUj+g56zv8bogSKxRyqVQutlu0LmeOcaLSAT6IUKpVCyBgEsUa0Poha+RKzB2PtuRLpWZXdbtvacN2pdl487KVXolvU61ZINBjc4XR6hgwdnD3iJWQy6ZBgMnnAbvemzFEAgbKXYJqmD9DvNzCbHbBaAa77P4C9YUCv94ThEJjPgfUa3Ia+BalAAfL5cAvd7iNGowMWC2CziQawlz5kE5tNC52O7QvHuWfIC5ZLhHKiZY94SR1jqZTTikQ4Hk+1OfHIMcp4l4tUqxUiIcHqWCse321EPJ66CCILsVb7HrikBMrlnNoTx7F9IXOSi3pMHlHtiYAsK81h/kZazXk9/1n+B9cMwGLBtuyLAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackgroundDisabled>
            </state>
            <state name="HotTracked" colorCategory="Primary Color">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA2gEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABWElEQVQ4T42Tv0oDQRjER/QpbKKVr+Ir5BWshNhYxFqrKAjplJAiiKWNTYQQAjY2kUAOiYqCCjYGjSL+GWcOlL31QnIwsPvN/Jb99nZnEH1XwMInsHoHLH8BS7ZngWQeOJ4DtheB65j5mw8UOAS4Lq1Ecs2eM7kL9IHupgJrE+SMs5lFboDKjoyNKeWsmXSRe/XcVGFrjFgq5XpmzEKHtb+nyW4k98t6nf5iz3MzZpEAfU9CqUey00lhf7H/OzeLC4UPAr0abjTIXo8cDtMFQj8cm4X+O48CsVAgazWy2SSThByNMn6YNYtbbeNEg1BD76JaJVstcjDIeGHOLJ50EGcCTiPpupHlMtlu//OcNWMW6rmg0+T5GLFYzPXMmE3vggYVbYeXU8pZM5nbqEL3UcbDBDnjbO57eNeqbwq8SM+RXLPnzNjXaONbfX0oJPX1rGl57Jq9GP4B6meImJtWPKgAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="Pressed" colorCategory="Primary Color">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA5QEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABY0lEQVQ4T42Tv0oDQRjER86nsFErHyIv4JsEQYwiiCCiKIKIECEgyIGSIo2dhWATjpjGSiRykiuCYqGtKSKIfz5nDiN7mwvJwhz77czvY2/ZnYA3HoGZL2D5BZj/BuZkB0AyBVxNAkezwJPP/NcdBs4BW6OKnrQmT5ncBg9Aa4uBhRFSRtlMk2egvENjcUwpKyZt8sp/vuDC0hBZsZjriRELHtbZNosVTwesLQxNw/dUixGLW6C9ysLVpeAoSmEN3+/XYtUgPfW+7gXXamZxbNbtpg1c352LxR0/644sCMyqVbN63SxJzHq9jO9mxSLmNjY4cRVpF5WKWaNh1ulkPDcnFm88iEMCm55O1aRUMms2BzxlxYjFOzB9/XeqOllfVigMrCkjRmx6Fzgpn3Bhd0wpKyZzG7mdVkhjb4SUUTb3PXyw6w0Dx9S+J63JU2boa5Txw//6ZIh3vc13a5LmWpPnw7+5PWg5C2NhnQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="NavigationToolbarButtonArea">
          <states>
            <state name="Normal" colorCategory="{None}" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAyAIAAAKJUE5HDQoaCgAAAA1JSERSAAAAMwAAABUIBgAAAOtU1gEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA6/AAAOvwE4BVMkAAACMUlEQVRYR9WXaWpiQRSFTX6Iu2oa3IKdXTS9n2QnziMOPHFWnHBGBSMqxgm8XV81ZRLpn0/0CYcqVKrOqTs/iYjLfAKBwGXv8XjCx+Pxx/l8frp8eefN8/OzuN3u6H6//2moeL3eT1aIAX6/XyOVSv0JhUKnSCQi+XxeyuWyVCqVuwMelmVJOBwW+MHTcDYavglJJpNvyjqSy+WkVqs9LLLZrMATvl8FXcQopW9YgxdoNBoPj1KphIVE8X5FkA4XNplM5kWtWkiz2XQMisWitpDi/wsdWkwsFlviWu1223FIp9MCfy1GiXgJBoPS6XSk2+06Dq1WS1sHHWQvS5lJer2eY6E0EDsWLvZRr9dlMBjYDuJwtVqJWW9xB2cS6+ggZrSI0WhkOzD/er3WbsB6izs4k/BAhxYzHo9lMpnYDmJxs9mIWW9xB2cOh8NPMaibzWa2g2q93W511Wa9xR2c2e/3/4mJx+MfpOT5fG47rsXc4g7OJObR4VKtgWp5LFksFrYjGo3KbrcTs97iDs6kvUGHS7UFPtoYzLVcLh2H6XSq2xqV0XymU36nMyaNOg2FQoEa835pZ6rVqg//JhGQfZwCAh+rwP8iho1yt1fqAWYj8zw6eHj4wtuMAd/mGX4gfuicKXIE76MBXowoeNJXIXoEuJ401VD2W6W5kxp8dBFVI6ocDoe7g0elOCYSCdLwCZ7/nTSvBfEnNSso8eEzprw3KIhAec1Z8QoZEWYoM/z/AtkvRgpbQxw6AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
            </state>
          </states>
        </style>
        <style role="NavigationToolbarForwardButton">
          <states>
            <state name="Normal" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAArAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABKklEQVQ4T5WTPW7CUBCEBykNR6BASaoUHIQcJx3HMA0VBYegCQUlF6CyhRxDlD8J5YcoxPlTJrNOQIq9T4KVPvl5d2asZ71XQ6ky4OgLOFP7tAac2JhAosf5AdA9BuZlz/Y9leBCej1d/mZdN0BfngruyPRfyCUQLWTeB/MUIbfa87XMVw7s9dy+ac1jXtwAA0EPWo1GfAvMzYs7IBb0KAKsZjOy0fA0MZYyh9gGrFbkZEK2WhUt7hUQoghYr8kkIcdjst2uaPGgLTwqxIN5TqYpORySzWZFY1486Uc8K8CDWUb2+2S97s7Ni1fg8EUBHux03P5Ga97iLGgRCe7J70HaVK6j/K6QXTCtex9kjj4U8hnAZqYJ3kYbfGtfCohErGtNw9bWs1nZ/APESK6uxUNrGQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <imageBackgroundDisabled>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA5AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABYklEQVQ4T41TPWsCQRAdCQQkggELQZADObCS4yq7dDbxD6Q3nYUYEAsrC2srIeAPsLYWuR+Qyi4WapXShDMeohBeZpac5G730IGBu5n33nzsbopiBqKbNVGmlMvdUSZzq9L7/Wm93QYl/koR/cQ55/8VURbVqo1m00G360ZcYpwTjFHgmyiPRqOiEeNCjBFsRERVvoYcijH23InMrNru9VzNfX9qjAtWOMylDdE92m3HCARbELxhPH7Q8swRLqFYLCRWEQGx4/EDs9mThmMuwbKsiwK+DywWO0wmLxEscy8LBAGwXALzOXiUV12gXE4e4XAAVivA83YYjZ61TplLX7LETsdBv+9qvtlI5XcMh49ajjnCJXWMtZptFPC8qTEuxYQjxyj2KRep1aokguPdMVY4kduIdDp/lYgUYqzxPXBLWdTrttrJYOBGXGKSS3pMoaLaiQg5ToHd+vOCioUz/yv/Cymuw6r3uuWGAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackgroundDisabled>
            </state>
            <state name="HotTracked" colorCategory="Primary Color">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAyQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABR0lEQVQ4T42TP0sDQRTER/RT2EQryTfxs5hGiI2NtVZRYq1FKrEKNjYR0tnY5Jo7JJ4oqGBj0BjEP+PMFYHb7JEs/GD3zcxL7t3tEoKVA2s/wPYTsPkLbFheBrJV4HIFOFwH7sPM9DyU4RzgrtgKcM2aPdEGKTDYl2FnDvbYW2ryALSOJOwtiL3OFE2e9cw9FQ4isNmM1u11xlloWKcnOhxHoFenUzx7qDvjLDIg9SFG0cArSTy8GY+zuJVwVsG0wWhE9vv8C3zOQu+dFxUUDcZjMsvIXo+s10teZ/Gov3GlTQxOJuRwSHa7nEQ8zuJNg7iReB2BeU6225RxRnfGWXwCNU2TSQQ2GtG6vc44W3wL2rT8K3cLYq8zpa9RhcGrhJc52GNv9D58qauH9SHeA1yzZk/lbbSgd137lkmkutY03rtmLQz/AxXYi0qRhJc2AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
            </state>
            <state name="Pressed" colorCategory="Primary Color">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA0QEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAABAIBgAAAB/z/2EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABT0lEQVQ4T42TvUpDQRSER7TNC9iola9ik+cIgogiiCCiKAERIVaCpBBbIYWdCCEgFjYRCSgJEiIW2poiBvFnnLlFIMsJcWEuu2e+OexddieQjA4w+w2svAILP8C87UmgNQ1cTgFHc8Bzmhms2wLOAa5LhUSu2TMTNngEGtsCFsfIjNmhJi9AaVfG0j9l1pmsyZv++UKF5UAsFMK6WWechQ7rdEeL1UD0KJd5EHjOOIs7oLmmRaSsgUe9zquAcdYNslOPNGjQ7ZK1Gp8Szlnc67MxQlmDXo9stchqlczlhlhn8aBtbGoSif0+2W6TlQpvAsZZvOsgDmVuBWKnQxaLPAs8Z5zFBzBzrYVPNRXz+bBuzhlns7ugSelEhb1/yqwzQ7dR22mUZRTHyIzZ8D18quutgGNpP5Fr9syMfI02fvVfX4J015t6t7Q8d81eGv4DzeVq6lCr97kAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
          </states>
        </style>
        <style role="NavigationToolbarRecentHistoryButton">
          <states>
            <state name="Normal" imageHAlign="Right" imageVAlign="Middle">
              <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA1QAAAAKJUE5HDQoaCgAAAA1JSERSAAAADQAAAA4IBgAAAPR/ltIAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA6/AAAOvwE4BVMkAAAAPklEQVQoU2P8//8/A8kApIlUTLIGsMtItWUANX1kYAgG4ntouAvdCxh+QtOIoQGnn6AasWoYwIAgNs7oF7kAqo3rTg6sdi8AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
            </state>
            <state name="HotTracked">
              <resources>
                <name>HistoryButtn</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>HistoryButtn</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="PopupMenu">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ProgressBarFill">
          <states>
            <state name="Normal" foreColor="White" fontBold="True">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAMwAAAB4IBgAAAIGTJsIAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAiklEQVRYR93YawqBARQG4bH/FSIiRESEiFzm28acehYwnX/vaAI/Kjc1poKZMRXMjalgYUwFS2MqWBlTwdqYCjbGVLA1poKdMRXsjangYEwFR2MqOBlTwdmYCi7GVHA1poKbMRXcjangYUwFT2MqeBlTwduYCj7GVPA1pmKYM38Vrc8MW3MFY2Mq/lAwGsPmcvqAAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScheduleAppointment">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" fontBold="True" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleCurrentDayHeader">
          <states>
            <state name="Normal">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleDay">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="DimGray" borderColor="Gainsboro">
              <resources>
                <name>blueWhite</name>
              </resources>
            </state>
            <state name="Selected" backColor="253, 0, 0" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleDayHeader">
          <states>
            <state name="Normal" fontBold="True">
              <resources>
                <name>RedForeground</name>
                <name>background</name>
              </resources>
            </state>
            <state name="Selected" foreColor="White" imageBackgroundStyle="Stretched" fontBold="True">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
            <state name="Active" imageBackgroundStyle="Stretched" />
          </states>
        </style>
        <style role="ScheduleDayOfWeekHeader">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="120, 0, 0" borderColor="Transparent" fontBold="True" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleMonthHeader">
          <states>
            <state name="Normal" foreColor="120, 0, 0">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleOwner">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" />
          </states>
        </style>
        <style role="ScheduleOwnerHeader">
          <states>
            <state name="Normal" borderColor="Transparent" imageBackgroundStretchMargins="3, 3, 5, 3">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScheduleTrailingDay">
          <states>
            <state name="Selected" backColor="255, 165, 165" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScheduleWeekHeader">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="Black" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarArrowDown">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAwAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABKUlEQVQ4T82TDWqEMBSE07N4Nw+hR1AQPZAiuqIolUZcFH/QexhnX+IuKIVaCy0NhDyMfHnJzLyBRhAETNM0RiVbhWBiXdlKUyxUi4Ut9G2hVdC6LrQH2pM1/aOGhPi+j3meMU0TxmFE13do2xb3+x28qlCWJfKiQJpmSJIEURwjDEN5uJq/BBmHrZOmRU2dVLtOsizD7TudDBLSSUiDut5DcrwgcRx9fZ1/BCF1PM+DruufpmVZSp04OruOlLjr4bruAWLbNkmcXoNw/gHTNBXIMAxS5XYd0pDZyvIdjuMoVTazbZ1E0YnZhmGTuFE+qY+OffnkjyDyYWV2yGyH7JDZntk5N9vuOjKAFd8CWOT5hQCS7XuSWGWHbM8rvkEKgmTPhz1N8Q8gD9AQxSdjXf7OAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
            </state>
            <state name="HotTracked" colorCategory="{None}" foreColor="White">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABKElEQVQ4T82T0WqEMBRE7bf4/7+giFYUZYWINjYq+uou0u2DvhinN9EFpVBroaWBkIuRk5vMzBNo2LZtmKZpUGnMUhpyno2ZppyolpMx0beJVknrPNEeaE/V9I8eCmJZFtq2RdM0qKsaohQoigJ5noOlKZIkQRTHCIIQvu/D9Tw4jqMO1/OXIHW1dMILZNRJuukkDEM8f6eTSkGEgnBk2RYS4QHxPPfr6/wjCKlzv78r0T6Nruu0Op57dB0lsSgJ9LaDXG9Xkjg4BxHiFeM4atAwDLgkl/MQTmbj/AV934Mxtppt6cR1D8xWVYvEXPsk2zv24ZM/gqiHVdkhs+2yQ2Zbs3Nsts11VABTtgQwjqITASTblySxzg7ZnqVsgcQECdeHPUzxDyAfPQzeM9eyNysAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="Pressed" colorCategory="Primary Color" foreColor="White">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAUAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAzklEQVQ4T92TsQqCUBiF/x5Eeopwcgp6q3JwcBAHi2iUhnQIB3VwcBJfKkL8ujeRxO0aLf1w4F64HM5/zzkr1MjhILLbifS9yPMp0nUDHo/hrjE9T9+JGk3Cfg9tC00DdQ1VBWUJWQZJAnEMlwtEEYQh+D54HrjuGz8mKQq43yFNP0pOJwgCAyV5/jck263yXf35HJuNoTtzItteYLF2Zb0e1FjWoMA4J9ri6xUcB87nhWEbLZ4m9nhcmJOfkBh1R6/zdQHH7txuX7TYgOQFSD+FE1QeODIAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowHorizontal">
          <states>
            <state name="Normal" backColor="White" foreColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="HotTracked" colorCategory="Primary Color" foreColor="White" />
            <state name="Pressed" backColor="White" foreColor="141, 0, 0" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarArrowLeft">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAsAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABGUlEQVQ4T63ObYqDMBAG4NmT9hL2DC0t7ZEsxSgRpbIRRfEDPcm7M4m1KvSXG3gwmXln8OfxeID2HlmyFz2fT+xFSikEC0oFmAV8nwQB5ybSX85QFEaIIifceNe3/W2ddKyhdWzF8ZrW0nNOpxM090U85e0soyRNkKTpgrw/VKhwPp9xOBxWmTRJkHJOUJZl+Eb+wPM8u0B8y1FuDEyeW/nG5XqdF8iSd85mjczIrAGVRYmydArB77fs9cLxeJwXFWXBGTHlpyzVdY1Zxfeq+qgrGPOL2+1mF1XcFzXX7XdCTdOgaRfkPWv57tzv90XdZVquC+q7Dn3XO32Hbolr3Qr3Oe9qPMdZQcMwYC8axxF7ke/72IvwD+cP6bydnLBLk0gAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="HotTracked" colorCategory="{None}" foreColor="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAsAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABGUlEQVQ4T6XSy4qDQBAF0Jr//ydFNNKiRFA0Oj7QbRLCOIu4vFPV7RuyGRsOdlfdqpVftm2Dzh5ZchY5joOzyPM8uBue52Lh8n3iupybSH87Q/7Fh+8bl4O5fuwf66QCBaUCLQj2lJKecb/fobgvgimvZxmFUYgwijbkvbrGVzyeD8hZcyGikHFOUBzH+CRJErzfb71AzqccpRxM0lRLD16v17JALnNOZxOZkdkElGc58tzIBL9nxe2GcRyXRVmecUZM+SlLZVliUfC9KFZlgar6xjD86EUF90XJdf2dUFVVqOoNeS9qvhvD8Lupm0zNdUFt06BtWqNt0GxxrdnhPudNjec4K6jrOpxFfd/jLLIsC2fR7kf45+MPgoW3zHrzYHcAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="Pressed" colorCategory="{None}" foreColor="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAsAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABGUlEQVQ4T6XSy4qDQBAF0Jr//ydFNNKiRFA0Oj7QbRLCOIu4vFPV7RuyGRsOdlfdqpVftm2Dzh5ZchY5joOzyPM8uBue52Lh8n3iupybSH87Q/7Fh+8bl4O5fuwf66QCBaUCLQj2lJKecb/fobgvgimvZxmFUYgwijbkvbrGVzyeD8hZcyGikHFOUBzH+CRJErzfb71AzqccpRxM0lRLD16v17JALnNOZxOZkdkElGc58tzIBL9nxe2GcRyXRVmecUZM+SlLZVliUfC9KFZlgar6xjD86EUF90XJdf2dUFVVqOoNeS9qvhvD8Lupm0zNdUFt06BtWqNt0GxxrdnhPudNjec4K6jrOpxFfd/jLLIsC2fR7kf45+MPgoW3zHrzYHcAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowRight">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="DimGray">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAsAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABGUlEQVQ4T63PbWqEMBAG4OmZvIjba7hF3N5PsX6gKBUUJaIRPcl0xkSbteyvVHgwmXln0LcoihBsH15iC+I4RluQpikmhjRN8JTQWUsSymncN2cgz3LMcyW7OOrX/rUORVlgUZS7snzmeR7Vua9Rv+CMzu+zBKq6wqquDXxXHMfB+8cd46/4T6auKqwpw6BpGnyFlzDXdTHLspc56NoW267bdRfHEn77vn/m9mzLMzzbIgz9gMOg9Izuh2PJ++22f3Y/9JrO6yyM44gnQWchTrwkCAL6jW8UlBPUZ+Mo1FuDaZpwmg181x6PTzrPht8eZ2bqMVikxEUuyiJRmqgmn1Cf8qpGc5RlsK4r2oJt29AWhGGItgD/4fkB6DCWXgodfqUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="HotTracked" foreColor="White" />
            <state name="Pressed" colorCategory="{None}" foreColor="White">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAsAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABGUlEQVQ4T63PbWqEMBAG4OmZvIjba7hF3N5PsX6gKBUUJaIRPcl0xkSbteyvVHgwmXln0LcoihBsH15iC+I4RluQpikmhjRN8JTQWUsSymncN2cgz3LMcyW7OOrX/rUORVlgUZS7snzmeR7Vua9Rv+CMzu+zBKq6wqquDXxXHMfB+8cd46/4T6auKqwpw6BpGnyFlzDXdTHLspc56NoW267bdRfHEn77vn/m9mzLMzzbIgz9gMOg9Izuh2PJ++22f3Y/9JrO6yyM44gnQWchTrwkCAL6jW8UlBPUZ+Mo1FuDaZpwmg181x6PTzrPht8eZ2bqMVikxEUuyiJRmqgmn1Cf8qpGc5RlsK4r2oJt29AWhGGItgD/4fkB6DCWXgodfqUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowUp">
          <states>
            <state name="Normal" colorCategory="{None}" backColor="Transparent" foreColor="Transparent" backGradientStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAwgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABK0lEQVQ4T82TfY5EQBDF7VkczCU4A5kJRyKiRwgZO4QQH+EeeFvFSPhnzWyym+2kUh0tP9Xeex+g5TiOJMuyRFtpniZpmmdppppG2k+jNNKzkfpEfR7pDHTGe3pnWQyxbRvDMKDve3Rth7qpUVUViqJAmmVIkgRRHCMIQvi+D08IuK7LH1/qlyBdu05SVshpkmw3SRiGuL0yScuQmiEl8nwPibBBhPC+v84/grA6dUPqlEjud1yuV1IlIHWipbM6wju7zhPyeHxC0zQoigJVVSFu4n2IaZoLYCvDMN6DWJZ1AGwgXddXs3knZmvbVeJy8Ul+dOzmkz+CsDqcHTLbITtktmd2zs22uw4HMEvXAMYRS/xqAMn2DfuE/wnZPs3SFcI+CVefnKf4B5Avp3HD/uERnk4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
            </state>
            <state name="HotTracked" colorCategory="{None}" foreColor="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAwQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABKklEQVQ4T82T3WqEMBCF02fx/V9BEa0oygoRResPeusWqb3QG/V0Jllhvam7hZYGQqIJnzOec15Aw7IsYRiGoK3Y1lWs2yY2mutC+3URC71baF1p3RY6A53xnu6owRDTNNF1Hdq2RVM3KKsSRVEgyzLIJEEcxwijCL4fwPM8OK4L27b542r+EqSpdSV5gZQqSe4qCYIAr49UUjOkZEiONL2HhNghrut8384/grA6ZUXq5KqlYRggpSR1QlLHV+q4zlk7N0hZvmGeZ3YApmnCJb48DxnHDwXYx/X9+hxkHD8PgP2h73ttNufEbHWtJc6VT9KjY3ef/BGE1eHskNkO2SGz3bJzbra7djiAidQBjEKW+NEAku0r9gn/E7K9TKSGsE8C7ZPzFP8A8gWxW940GCdxGwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Pressed" colorCategory="Primary Color" backColor="Transparent" foreColor="Transparent" backGradientStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAATgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAABEIBgAAADttR/oAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAzElEQVQ4T92TMQqDQBREfw4iOUVIlUrIrdTCwiJYqEhKsUgsxMKksLASLyUivmhEIunWYJMPA7uwPP4yMzuGEdMUOZ9F+l6kbUW6blLTTPdRy/PynQwzQjAMqGuoKihLKAp4PiHL4H6HKILrFTwPXBccB2wbLOutjSGPB6QpJMlnkyCAy0Vhkzz/O0gcw+kEYbjSndsN9vshRIOBmjZZq2yxrk+AWcejIuQbMIMOB8WwzRYvE+v7K3OyCUSpO+N3fi7g3J3R6tUtVoC8AHskhQ27CUfrAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScrollBarArrowVertical">
          <states>
            <state name="Normal" colorCategory="{None}" foreColor="180, 180, 180">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtQEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABHklEQVQ4T6WTO26DQBCGoXNnN5wjuUEOQJOCPrlB7mIukBskBXQ0aWmQQRgbiYd4SxROSTfxt1KsGKeIY6TVaP75/mF3GXRt9riu+2wYxuNisXjQdX0lIp/TNH2M4/humubrnFe5bdv3QRAUURRJHMeSJInsdjsVydGpw501QNhsNgcgDGmaSp7nUhSFiuTo1OFODSzLWiFst1vZ7/cKrqpK6rqWpmlUJEenDgePT/M874WOFHgTcNu20vf9aZGjU4eDx6cdzxFwrizLFNB1nQzDcLHQqcPB49O4CLqVZam2+ZvxW6MOB4/vNvNN277pwo5Xvvznp1qqYVmv13fXDAn82ZQh/GU8L4w/uziO8+T7/lsYhgc+B5Ecff5TfAFQkGLM1JwxagAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="HotTracked" foreColor="White">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarHorizontal">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="11, 0, 12, 0" />
          </states>
        </style>
        <style role="ScrollBarIntersection">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ScrollBarThumbHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarThumbHorizontal_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbHorizontal_HotTracked</name>
                <name>RedGripHor</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbHorizontal_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarThumbVertical">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 15, 0, 15">
              <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAswAAAAKJUE5HDQoaCgAAAA1JSERSAAAABgAAAAUIBgAAAGZYneYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAHElEQVQYV2MwNjb+D8JAwIDMZgAJYMMoqijTAQC5skjr9sKxAgAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
              <resources>
                <name>scrollBarThumbVertical_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>scrollBarThumbVertical_HotTracked</name>
                <name>RedGripVertial</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>scrollBarThumbVertical_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>scrollBarTrackHorizontal_Normal</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ScrollBarTrackSectionBottom">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 0, 0, 8" />
          </states>
        </style>
        <style role="ScrollBarTrackSectionTop">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 7, 0, 0" />
          </states>
        </style>
        <style role="ScrollBarTrackVertical">
          <states>
            <state name="Normal" colorCategory="{None}">
              <imageBackground>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</imageBackground>
            </state>
          </states>
        </style>
        <style role="ScrollBarVertical">
          <states>
            <state name="Normal" backColor="White" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 12, 0, 12" />
          </states>
        </style>
        <style role="SpinButtonDownNextItem">
          <states>
            <state name="Normal" foreColor="Red" />
          </states>
        </style>
        <style role="SpinButtonUp">
          <states>
            <state name="Normal" foreColor="White" />
          </states>
        </style>
        <style role="SpinButtonUpMinValue">
          <states>
            <state name="Normal" foreColor="White" />
          </states>
        </style>
        <style role="SpinButtonUpPrevItem">
          <states>
            <state name="Normal" foreColor="Red" />
          </states>
        </style>
        <style role="StateEditorButton">
          <states>
            <state name="HotTracked" backColor="255, 245, 245" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwAAAAKJUE5HDQoaCgAAAA1JSERSAAAAEwAAACkIBgAAANexEgcAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAARUlEQVRIS2P8DwQM1AIgw6gFGKhlENiHo4aRHAKjYUZykI2mM9KDbDTMRsMMVwiMFkGkp43RMBsNMxwhMJo0RpMGPZIGAHBT2MO7PkuIAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Pressed">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAMgAAADIIBgAAAB4/iLEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAQklEQVRoQ+3QgQAAAADDoPlTH+SFUGHAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBh4HBidCAAEtqHSSAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="StatusBarPanel">
          <states>
            <state name="Normal">
              <resources>
                <name>BlackForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarPanelStateButton">
          <states>
            <state name="Normal" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAABQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHwAAABQIBgAAAHVp5voAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAg0lEQVRIS8XWIQqEYBRF4ZmluzaDGMQgBoMYxCAGMRhMZ/gn3CUcH3z5cNv7UlV83roS53l8ZfQ/ft++xK8LbImfJ9gSPw6wJb7vYEt828CW+LqCLfFlAVvi8wy2xKcJbImPI9gSHwawJd73YEu868CWeNuCLfGmAVvidQ22xMtD8YIfgwRkYssNKWwAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <resources>
                <name>BlackForeground</name>
                <name>background</name>
              </resources>
            </state>
            <state name="Pressed">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAjQAAAAKJUE5HDQoaCgAAAA1JSERSAAAAAQAAAAEIBgAAAB8VxIkAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAC0lEQVQYV2NgAAIAAAUAAarVyFEAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
              <resources>
                <name>background</name>
                <name>Blank</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="StatusBarProgressBar">
          <states>
            <state name="Normal">
              <resources>
                <name>BlackForeground</name>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlClientArea">
          <states>
            <state name="Normal" borderColor="107, 168, 18" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 16, 0, 0" />
          </states>
        </style>
        <style role="TabControlClientAreaHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>BorderHighlight</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlClientAreaVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>BorderHighlight</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabItemAreaHorizontalBottom">
          <states>
            <state name="Normal">
              <resources>
                <name>TabBottomBG</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabItemAreaHorizontalTop">
          <states>
            <state name="Normal">
              <resources>
                <name>TabTopBG</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabItemAreaVerticalLeft">
          <states>
            <state name="Normal">
              <resources>
                <name>TabLeftBG</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabItemAreaVerticalRight">
          <states>
            <state name="Normal">
              <resources>
                <name>TabRightBG</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabItemHorizontalTop" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabControlTabsAreaHorizontalTop">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabControlTabsAreaVerticalRight">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabItemAreaHorizontalBottom">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TabItemHorizontalBottom" buttonStyle="FlatBorderless">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="9, 0, 12, 11">
              <cursor>Hand</cursor>
            </state>
            <state name="Selected">
              <resources>
                <name>TabItemHorizontalBottom_HotTracked</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>tabItemHorizontalBottomAppletini_Selected</name>
              </resources>
            </state>
            <state name="HotTrackSelected" foreColor="Black">
              <resources>
                <name>TabItemHorizontalBottom_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <cursor>Hand</cursor>
            </state>
            <state name="Selected">
              <resources>
                <name>TabItemHorizontalTop_HotTracked</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>TabItemHorizontalTop_Selected</name>
              </resources>
            </state>
            <state name="HotTrackSelected">
              <resources>
                <name>TabItemHorizontalTop_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalLeft">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <cursor>Hand</cursor>
            </state>
            <state name="Selected" foreColor="Black">
              <resources>
                <name>TabItemVerticalLeft_HotTracked</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>tabItemVerticalLeft_Selected</name>
              </resources>
            </state>
            <state name="HotTrackSelected" foreColor="Black">
              <resources>
                <name>TabItemVerticalLeft_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TabItemVerticalRight">
          <states>
            <state name="Normal" imageBackgroundStretchMargins="0, 9, 16, 9">
              <cursor>Hand</cursor>
            </state>
            <state name="Selected" imageBackgroundStretchMargins="0, 8, 10, 12">
              <resources>
                <name>TabItemVerticalRight_HotTracked</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>tabtemVerticalRight_Selected</name>
              </resources>
            </state>
            <state name="HotTrackSelected">
              <resources>
                <name>TabItemVerticalRight_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TaskPaneToolbarMenu">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarBase">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarCloseButton">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="White" fontBold="True" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="Black" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarDockAreaFloating">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" />
          </states>
        </style>
        <style role="ToolbarDockAreaTop">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarEditAreaComboBox">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarEditAreaFontList">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarEditAreaMaskedEdit">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarEditAreaProgressBar">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarEditAreaTextBox">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarFloatingCaption">
          <states>
            <state name="Normal">
              <resources>
                <name>TopRed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarGrabHandle">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemButton">
          <states>
            <state name="HotTracked" foreColor="White" borderColor="Transparent">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemComboBox">
          <states>
            <state name="HotTracked">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemFontList">
          <states>
            <state name="Normal" borderColor="Transparent" />
            <state name="HotTracked">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemMaskedEdit">
          <states>
            <state name="HotTracked" foreColor="White">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupColorPicker">
          <states>
            <state name="HotTracked">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupControlContainer">
          <states>
            <state name="HotTracked" borderColor="Transparent">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemPopupMenu">
          <states>
            <state name="HotTracked">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemQuickCustomize">
          <states>
            <state name="Normal" colorCategory="Primary Color" foreColor="232, 0, 0">
              <resources>
                <name>Blank</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="Black" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Pressed" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="4, 4, 4, 4">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAaAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAFgAAABQIBgAAAIl8zTAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAA5klEQVQ4T7WVLQ7CQBBGe0J+DkGaTU/QVKFRCFKBqkJUVVVVoFBgKyoIByANBgPkMbuFJcFRppu8rJqXyWbm2yAY8jCbTQjDA8Y85L7Jfe/JXurGrlcnNeZKUUDTwOnUj7qGPEdcrZOTJLBew3arw2oFcUwgdsgy2Gx0sC5xduI01cWLl0vQxIsXC9Bk+I6nU9DEdxyGyGLo4cV2ljUZ/o21luPt8R2XJWjixFHUZcRup0NVvVZ6Pu9SqW+qfdfZrBBnIGM2Es5OfjxC28Ll8ju21r5xl+WvTLZyY2xIP/7kE/RD/UxPLkTVHLW2f/UAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
            <state name="Active" borderColor="Transparent" />
          </states>
        </style>
        <style role="ToolbarItemStateButton">
          <states>
            <state name="HotTracked">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneLabel">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="Black" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneMenu">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneMenuDropDownOnly">
          <states>
            <state name="Normal" colorCategory="Primary Color" foreColor="Transparent" imageBackgroundStyle="Centered">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAJQEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAo0lEQVQ4T6WTgRFAMAxFs0FtohuxgdHYxAhGsIH6v8K11aojdzmN/BdpGyKJOZF+E5ngK9aOT8Z8n2qvGEkL0UKg5Jq3UREF/Zdqrh0dBSBuzhZr4JlXfSNYDG+hUEeO8BzB7sGCbZFj2/d95viMLg9TGFrhIO9th0IWKIC+7V8Hhsrm41UZf9eA27cFdFzbaMq0QHU8qSvOOJIdfEx+DMZdCu1t6ngs7vcZ1gAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="HotTracked" colorCategory="Primary Color" backColor="Transparent" foreColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAIQEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAn0lEQVQ4T6VTgRFAMAzMBrUJG7GB0dikIxjBBvjXcBWtOtzlNM3/+0oqYp5VpFtERsSM9co3c+5b7Jmj2AA0kZALrTcXESXuXyqFOgoCAFeHxRLxqCu+Eiz6t6QYRx7JPt4MZtJhyJ6o2zlT5CQuZzkWyGKsbXuEh7b5fz8Myu5jq9zea5DrtwI6rvVlylSgOJ7EZWccxRYxmIvBvLWkDXIfSFyfDaXiAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Pressed">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigation">
          <states>
            <state name="Normal" foreColor="White" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationBack">
          <states>
            <state name="Normal" backColor="Transparent" foreColor="White" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="90, 0, 0" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTaskPaneNavigationForward">
          <states>
            <state name="Normal" foreColor="White">
              <resources>
                <name>button_Pressed</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="90, 0, 0" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="ToolbarItemTextBox">
          <states>
            <state name="HotTracked" borderColor="Red">
              <resources>
                <name>ExplorerBarGroupHeader_HotTracked</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="ToolTipBalloon">
          <states>
            <state name="Normal">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TrackBarButton">
          <states>
            <state name="Normal" foreColor="210, 0, 0" />
          </states>
        </style>
        <style role="TrackBarMidpointTickmarks">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TrackBarThumbHorizontal">
          <states>
            <state name="Normal">
              <resources>
                <name>Default_TrackBarThumbHorizontal_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>Default_TrackBarThumbHorizontal_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>Default_TrackBarThumbHorizontal_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TrackBarThumbVertical">
          <states>
            <state name="Normal">
              <resources>
                <name>Default_TrackBarThumbVertical_Normal</name>
              </resources>
            </state>
            <state name="HotTracked">
              <resources>
                <name>Default_TrackBarThumbVertical_HotTracked</name>
              </resources>
            </state>
            <state name="Pressed">
              <resources>
                <name>Default_TrackBarThumbVertical_Pressed</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TrackBarTickmarks">
          <states>
            <state name="Normal" colorCategory="{None}" backColor="Gray" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TrackBarTrack">
          <states>
            <state name="Normal" colorCategory="{None}" backColor="LightGray" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="TreeCell">
          <states>
            <state name="Normal" borderColor="255, 165, 165" />
          </states>
        </style>
        <style role="TreeColumnHeader">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="TreeControlArea">
          <states>
            <state name="Normal" borderColor="255, 185, 185" />
          </states>
        </style>
        <style role="TreeNode">
          <states>
            <state name="Selected" backColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>RedForeground</name>
              </resources>
            </state>
            <state name="HotTracked" foreColor="241, 0, 0" />
          </states>
        </style>
        <style role="UltraButton">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor3DBase="Transparent" borderColor2="Transparent">
              <resources>
                <name>BlackForeground</name>
                <name>buttonBorder</name>
              </resources>
            </state>
            <state name="HotTracked" backColor="Transparent" foreColor="Red" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraButtonBase">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor2="Transparent" />
          </states>
        </style>
        <style role="UltraButtonDefault">
          <states>
            <state name="Normal" borderColor="Transparent" borderColor3DBase="Transparent" borderColor2="Transparent" />
            <state name="Pressed" backColor="Transparent" foreColor="254, 0, 0" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" borderColor2="Transparent">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAMgAAADIIBgAAAB4/iLEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAQklEQVRoQ+3QgQAAAADDoPlTH+SFUGHAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBh4HBidCAAEtqHSSAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="UltraCalculator">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>background</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraCalculatorButton">
          <states>
            <state name="Normal" colorCategory="{None}" backColor="Transparent" foreColor="DimGray" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAALwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIQAAABYIBgAAAE6b9XoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAmElEQVRIS8XWQQoDIRBE0eT+l5qriMOIIg4OiiJCBQNZhNqXDX//ulf9BvDaPgtxHAd29T3CDzHnhLq1+B9ijAF1hOi9Qx0hWmtQR4haK9QRopQCdYR4ngfqCJFzhjpC3PcNdYRIKUEdIWKMUEeIEALUEcJ7D3WEcM5BHSGu64I6QpznCXWEsNZCHSGMMVBHiO3v3XqxdvYB26vVra2JQLkAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="HotTracked" colorCategory="Primary Color" foreColor="White" imageBackgroundStyle="Stretched">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIQAAABYIBgAAAE6b9XoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAjUlEQVRIS83WwQbDQBhF4Xn1vGaFiooIUSqqVGRysint3Z/pcNbz+Ve3lH95tetqqz43OAGXUvTOf78QPQi7QFxB2AViAGEXiBsIu0CMIOwCMYGwC8QMwi4QCwi7QNxB2AXiAcIuECsIu0A8QdgF4gXCLhBvEHaB2EDYBWIHYRcI1kXV+x01zedd6617ALyDEaGoZpWMAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
            <state name="Pressed" colorCategory="Primary Color" foreColor="210, 0, 0" imageBackgroundStyle="Stretched">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIQAAABYIBgAAAE6b9XoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAjUlEQVRIS83WwQbDQBhF4Xn1vGaFiooIUSqqVGRysint3Z/pcNbz+Ve3lH95tetqqz43OAGXUvTOf78QPQi7QFxB2AViAGEXiBsIu0CMIOwCMYGwC8QMwi4QCwi7QNxB2AXiAcIuECsIu0A8QdgF4gXCLhBvEHaB2EDYBWIHYRcI1kXV+x01zedd6617ALyDEaGoZpWMAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="UltraCalculatorButtonAction">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButtonImmediateAction">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButtonOperator">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraCalculatorButtonPendingCalculations">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraDropDownButtonMainButton">
          <states>
            <state name="Normal" foreColor="120, 0, 0" borderColor="Transparent" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="12, 8, 11, 8">
              <resources>
                <name>buttonBorder</name>
              </resources>
            </state>
            <state name="Pressed" backColor="Transparent" foreColor="Black" backGradientStyle="None" backHatchStyle="None">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAMgAAADIIBgAAAB4/iLEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAQklEQVRoQ+3QgQAAAADDoPlTH+SFUGHAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBgwYMGDAgAEDBh4HBidCAAEtqHSSAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="UltraDropDownButtonSplitButton">
          <states>
            <state name="Normal" foreColor="232, 0, 0">
              <resources>
                <name>buttonBorder</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraGroupBox">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraGroupBoxContentArea">
          <states>
            <state name="Normal">
              <resources>
                <name>blueWhite</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraPictureBox" borderStyle="None">
          <states>
            <state name="Normal">
              <resources>
                <name>blueWhite</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UltraStatusBar">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraTabControl">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraTabStripControl">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UltraTextEditor">
          <states>
            <state name="Normal" borderColor="Transparent">
              <resources>
                <name>BlackForeground</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabAreaBottom">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaLeft">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaRight">
          <states>
            <state name="Normal" backColor="White" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabAreaTop">
          <states>
            <state name="Normal" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 4, 0, 0">
              <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtAAAAAKJUE5HDQoaCgAAAA1JSERSAAAAEQAAAB0IBgAAAEyvh4EAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAMklEQVRIS2P8z8AARBSC/1QADFQw4/+oIZihOBomo2FCTN4aTSej6WQ0nRATAoM5nQAA0LBq+clyOq4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
            </state>
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalBottom">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemHorizontalTop">
          <states>
            <state name="Normal" backColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
          </states>
        </style>
        <style role="UnpinnedTabItemVerticalRight">
          <states>
            <state name="Normal" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None" />
            <state name="Selected" backColor="Transparent" borderColor="Transparent" backGradientStyle="None" backHatchStyle="None">
              <resources>
                <name>tabtemVerticalRight_Selected</name>
              </resources>
            </state>
          </states>
        </style>
        <style role="WeekViewControlArea">
          <states>
            <state name="Normal" borderColor="Transparent" />
          </states>
        </style>
      </styles>
      <sharedObjects>
        <sharedObject name="ScrollBar">
          <properties>
            <property name="MinimumThumbExtent">20</property>
            <property name="MinimumThumbHeight" colorCategory="{Default}">25</property>
            <property name="MinimumThumbWidth" colorCategory="{Default}">25</property>
          </properties>
        </sharedObject>
        <sharedObject name="TrackBarEditor">
          <properties>
            <property name="TrackThickness" colorCategory="{Default}">2</property>
          </properties>
        </sharedObject>
      </sharedObjects>
    </styleSet>
    <styleSet name="Ribbon">
      <styles>
        <style role="Base">
          <states>
            <state name="Normal" themedElementAlpha="Transparent" />
          </states>
        </style>
      </styles>
    </styleSet>
  </styleSets>
  <resources>
    <resource name="background" colorCategory="{None}" backColor="White" foreColor="15, 15, 15" borderColor="Silver" backColor2="Gainsboro" backGradientStyle="Vertical" />
    <resource name="BackgroundRed" colorCategory="Primary Color" backColor="232, 0, 0" foreColor="White" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
    <resource name="BlackForeground" colorCategory="{None}" foreColor="DimGray" />
    <resource name="Blank" colorCategory="{None}" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" imageBackgroundStretchMargins="4, 4, 5, 4" />
    <resource name="blueWhite" colorCategory="Secondary Color" backColor="White" foreColor="White" backColor2="255, 219, 219" backGradientStyle="Vertical" />
    <resource name="BorderHighlight" colorCategory="Primary Color" backColor="White" borderColor="241, 0, 0" backGradientStyle="None" backHatchStyle="None" />
    <resource name="BottonBorderRed" colorCategory="Primary Color" foreColor="White" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 3, 3, 3">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIQAAABYIBgAAAE6b9XoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAjUlEQVRIS83WwQbDQBhF4Xn1vGaFiooIUSqqVGRysint3Z/pcNbz+Ve3lH95tetqqz43OAGXUvTOf78QPQi7QFxB2AViAGEXiBsIu0CMIOwCMYGwC8QMwi4QCwi7QNxB2AXiAcIuECsIu0A8QdgF4gXCLhBvEHaB2EDYBWIHYRcI1kXV+x01zedd6617ALyDEaGoZpWMAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="button_Pressed" colorCategory="Primary Color" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="6, 5, 6, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFAEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAAA4IBgAAAPCKRu8AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAkklEQVQ4T6WTgQ2AIAwEuwFuAhvhBo6mmzCCI7iB+o/FCAmBCEkDpX+1QBUpxiUynyIb7MD64kyf+6X29RF0EO0EaqZxlyVRMH6pZVrRkwDiKZXYAlNc9ZNgsfRCXx05wuEnHFh285w1zRg8VPbQheE85udTmfjWgG1vAm1Xm3WZJmi2J3XVHkfQw9bix6DvS+gGgKhYTI6Wn0YAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="buttonBorder" colorCategory="{None}" foreColor="Black" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="3, 3, 3, 3">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAALwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIQAAABYIBgAAAE6b9XoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAmElEQVRIS8XWQQoDIRBE0eT+l5qriMOIIg4OiiJCBQNZhNqXDX//ulf9BvDaPgtxHAd29T3CDzHnhLq1+B9ijAF1hOi9Qx0hWmtQR4haK9QRopQCdYR4ngfqCJFzhjpC3PcNdYRIKUEdIWKMUEeIEALUEcJ7D3WEcM5BHSGu64I6QpznCXWEsNZCHSGMMVBHiO3v3XqxdvYB26vVra2JQLkAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Circle2" colorCategory="Primary Color" backColor="Transparent" borderColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAGQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAEAAAAA4IBgAAACYvnIoAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAl0lEQVQ4T2NgwAL+MzAk/GNg2ADE74Hs/yAaxAeJY1MPFwMqMAAqvA/ShAtD5Q0wDIJqBttICENdhjAEqEEA5lxCmmHyUPUCYJcAOfnEakRWB9IHM+A8mQacBxtAjmaYHuoYAPQLZV6gOBCB/uEnMxr54QkKaIA+sYZAk7Y+RmqEGkIwKYPU4c0TQAXxQLweLTOB+PHoGgF6XVhMeKIbhAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Default_TrackBarThumbHorizontal_HotTracked" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvgAAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABQIBgAAAFssx2gAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAJ0lEQVQ4T2P8//8/A9EApJhYTLRCsAuINXVUMXpIjQYdcogMxdAAAOwAc6qOhTssAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwAAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABQIBgAAAFssx2gAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAARUlEQVQ4T2O8xMDwn4FYAFJMDAAbOqoYGlSjoYGcZhChMXMm/rQElIenTnBiwqUBWSEsKWPVgE0hVg34FKJrIDoH4VIIAKPxc8KPI6OGAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Default_TrackBarThumbHorizontal_Normal" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvgAAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABQIBgAAAFssx2gAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAJ0lEQVQ4T2P8//8/A9EApJhYTLRCsAuINXVUMXpIjQYdcogMxdAAAOwAc6qOhTssAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAFwEAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABQIBgAAAFssx2gAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAlUlEQVQ4T43TMQqDQBRF0cn+V+CCxMJCDFiIhVhYiIWFWFjdxIHxCRpehFt5/kzz5/UOgfDvd2D23RYPjXjbbMLrCibhZQGT8DyDSXiawCQ8jmASHgYwCfc9mIS7DkzCbQsm4aYBk3Bdg0k4y6Cqfvf9f25nXKZjoCzvXWFa5XOgKCD1BG8DeR5vsg8j3WDh9Yanl/YB7wVVth7h49oAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Default_TrackBarThumbHorizontal_Pressed" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAvgAAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABQIBgAAAFssx2gAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAJ0lEQVQ4T2P8//8/A9EApJhYTLRCsAuINXVUMXpIjQYdcogMxdAAAOwAc6qOhTssAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxwAAAAKJUE5HDQoaCgAAAA1JSERSAAAACwAAABQIBgAAAFssx2gAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAARUlEQVQ4T2P8z8AAREQCkGKiAMjQUcWwoBoNDeREAw+NmTPxpyWQPCx1ghMTLg3ICmEpGasGbAqxasCnEEMDsTkIV1YDAHAKenBuAUIlAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Default_TrackBarThumbVertical_HotTracked" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAugAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAAAsIBgAAAH8JrUMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAI0lEQVQ4T2P8//8/A1UByEBqYqoaBvYtNV03aiB1YnsERgoATTpYxWXhDm4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA2QAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAAAsIBgAAAH8JrUMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAV0lEQVQ4T2O8xMDwn4FMoMfAwIihFWQguQCrYygxEOQQDEMpNRDDUGoYiGIotQz8P3MmxPtUMRBmGCjKKTYQ2TCKDUQ3DG4gUAIUBqRinOkQJEEOxpbBAJLxZYE8Bj5ZAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Default_TrackBarThumbVertical_Normal" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAugAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAAAsIBgAAAH8JrUMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAI0lEQVQ4T2P8//8/A1UByEBqYqoaBvYtNV03aiB1YnsERgoATTpYxWXhDm4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA8AAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAAAsIBgAAAH8JrUMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAbklEQVQ4T6XTKw7AIBBF0WFD3S+LwhSJQqFQKNS0vKSkH2rekFw14YQEcLuICrk2EffZOkDtnWp5GICt0X1QgLWaeqAASzE3UYA52/NegQJMydaFjSsHGCPfHZtgCKpMb2yC50CJft/hGDCtPtgBCAhK5fkWtlYAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="Default_TrackBarThumbVertical_Pressed" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Centered" backGradientStyle="None" backHatchStyle="None">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAugAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAAAsIBgAAAH8JrUMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAI0lEQVQ4T2P8//8/A1UByEBqYqoaBvYtNV03aiB1YnsERgoATTpYxWXhDm4AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA1AAAAAKJUE5HDQoaCgAAAA1JSERSAAAAFAAAAAsIBgAAAH8JrUMAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAUklEQVQ4T63TQQoAIAgEQP3/C3xtuUQhYhfXRU/BYGS6RLx6URGvFIDtVMNQICbJKA1mdASM6Bhodq4/Al4MD06DEaPBjD0QB53+7iGWu9HV/9q7WWtOZ4xz5gAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="ExplorerBarGroupHeader_HotTracked" colorCategory="Primary Color" backColor="Transparent" foreColor="White" imageBackgroundStyle="Stretched" borderAlpha="Transparent" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="4, 0, 4, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAMwAAAB4IBgAAAIGTJsIAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAiklEQVRYR93YawqBARQG4bH/FSIiRESEiFzm28acehYwnX/vaAI/Kjc1poKZMRXMjalgYUwFS2MqWBlTwdqYCjbGVLA1poKdMRXsjangYEwFR2MqOBlTwdmYCi7GVHA1poKbMRXcjangYUwFT2MqeBlTwduYCj7GVPA1pmKYM38Vrc8MW3MFY2Mq/lAwGsPmcvqAAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="GridHeader" colorCategory="{None}" backColor="180, 180, 180" imageBackgroundStyle="Stretched" fontBold="True" backGradientStyle="None" backHatchStyle="None">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAAgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGQAAABQIBgAAAHh3lr0AAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAa0lEQVRIS7XVAQpFEQBE0fn735StiIhERCQ1r7+IuXXWcH/GGELde49quPdSDeccqmHvTTWstaiGOSfVMMagGnrvVENrjWqotVINpRSqIedMNaSUqIYYI9UQQqAavPdUg3OOarDWUg3//ap9WHH91gTC1b8AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="HistoryButtn" imageHAlign="Right" imageVAlign="Middle" imageBackgroundStyle="Centered">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA1QAAAAKJUE5HDQoaCgAAAA1JSERSAAAADQAAAA4IBgAAAPR/ltIAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA6/AAAOvwE4BVMkAAAAPklEQVQoU2P8//8/A8kApIlUTLIGsMtItWUANRkbGwcD8T003IXuBQw/oWnE0IDTT1CNWDUMYEAQG2f0i1wAvqfnLqPzgpEAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA6AEAAAKJUE5HDQoaCgAAAA1JSERSAAAAGAAAABUIBgAAAFzpLiYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABZklEQVRIS52VsYrCQBCG1QfwDQ6f4d7gnshWgqQQCRYiViF4W0gQERELCxELL3ggYpFrxCYiFiIWFoKWgfud2Tu7YGYNfITAZr/Z2Z3ZbOb/geP8ZK7X98e30TuXQyaf/85a1sfT/0gSoVwGul2g35fR6wFKAbYN+v8rNTDUahEBDAbAcCiHJZb1my5w3TeKJkarBYxGcjiYUgmpAh6ARuMTlcrf5OOxHKlAS3gVnQ4wncoxEtTrIZpNYDaTYyTwvCKqVWA+l2Mk4M3mI7tYyDER6H2wLGC1kvOSIAwBKRSQ6Jjq6JUq6Opcr+UYCXy/SKUPbDZyjASuG+pq3m7lGAkcJ0YQAPu9HKkA7bbSDW+3Aw4HORIBddEC5T7GZAKcTmaIBJ4X6f7Ok5/Pco5HbtfPjyl4cu4/PPhyMYMr3raT7wOdlsfknPfbTQ6vcrmEbu++n3yj0fWodN6p1F+CIqfWHiRV8R09pBZxkzCEVwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="RedForeground" colorCategory="Primary Color" foreColor="248, 0, 0" />
    <resource name="RedGripHor" colorCategory="Primary Color" imageBackgroundStretchMargins="10, 5, 10, 6">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtgAAAAKJUE5HDQoaCgAAAA1JSERSAAAABQAAAAYIBgAAAAv7VEsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAH0lEQVQYV2P4z8DwHwgYkGkUDkwSpAwD41CJ1Uws2gG9vU2z/WcBEQAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
    </resource>
    <resource name="RedGripVertial" colorCategory="Primary Color" imageBackgroundStretchMargins="7, 7, 7, 7">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAxQAAAAKJUE5HDQoaCgAAAA1JSERSAAAABgAAAAUIBgAAAGZYneYAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAALklEQVQYV2P8z8AAREDw/z8jAyMjgv3//3+gGCYGKQcKg+SAkkhsrKpBinDqAADzjka/sGUuYAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
    </resource>
    <resource name="scrollBarThumbHorizontal_HotTracked" colorCategory="{None}" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="10, 5, 10, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA/gEAAAKJUE5HDQoaCgAAAA1JSERSAAAAIAAAAA8IBgAAAIWAzRcAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABZ0lEQVRIS7VV22qDQBBN/6OlX+QPxn5FTIKSaASJhCBRBA0i8UEQX3wLWcSA0z3SLabRPFhdOLi3OXNmnZ19I6JZuymK8jAeeyBJ0iMlBLSxWCxmgOd5X7vdjnFBtFwuBwP24OF8suDGV/j87YjF8/n8CYPNZkNpmlJZlnzvsFbXNTHG6HK5QEQjBPwvBWCT4zh0v9+Hee2xQiDH47ERIYJtfr84CkyeTicZkUN1VVWj43a70Xa7Je5nLk7hQYCu6yyOY7per5PB932Cn04BSJg8z6koismAvIKfXgFZltGUeCmAq6IoiihJkskQBEH/CaiqymzbpjAMJ4NlWQQ/fUk4X6/XyFJyXXd0gBdFjSdhU5SeriEmuQCmaRrt93s6HA6jAXw8cgJ/bx3AAnf+wVU2JRhCDMMg0zQHA/bg+SnpCO69sxK2CxI2rFYrmRtBLa7MvwAe8LUjf3oLuh6k9uMxVv/v4/cNK9S3/q5qtqoAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarThumbHorizontal_Normal" colorCategory="{None}" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="10, 5, 10, 5">
      <image>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAtwAAAAKJUE5HDQoaCgAAAA1JSERSAAAABQAAAAYIBgAAAAv7VEsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAIElEQVQYV2MwNjb+DwQMyDQKBybJAGKgY+wqsZqJTTsAT+pI6xrX34gAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</image>
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAABwIAAAKJUE5HDQoaCgAAAA1JSERSAAAAIAAAAA8IBgAAAIWAzRcAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABcElEQVRIS7WV3YqCUBSFm/eYYZ7IF6x5CssSf4i6iug/ISiF8iIDvenmFAStOeswDlY6F44KC//OWfvbW88+bwAa2aPdbj/cV32jadqjJQGy0nW9QS0Wi69+vy8kEDqdTmlxPn2kXyv15jmN+XuRvtxsNp+cYNs2wjDE9XqVY8sd9/sdQggEQUAIBUL/PwE4aDKZ4Ha7lYtaMIuJjMdjBZEmqz5/Wgo+nM1mLWZ+uVwUQNViNRzHwXw+b6ZVeABwXVewXBxYlzzPA+PkAvCHieMY5/O5NkVRBMYpBEiSBHXqdDoVA0gq7Pd7HI/H2uT7fjGAZVlqBRwOh9o0Go3AOLmfYDgcNnu9Hna7HUhatbbbLQzDgIyjmtLLMuRD0zSF/EuxXq8hm0ZlWq1WagnSv7AP8MVgMPiQVRA/pJhOp1gul6XF+dJTZU5fmf17bifMNiQOkLStbrdLWi6Zf4k+9Mtm/rIX5G1I2c2jquvnze8b2KTNmngauJAAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="scrollBarThumbVertical_HotTracked" colorCategory="{None}" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 10, 0, 10">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA/AEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAACAIBgAAAM0sIqkAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABZUlEQVRIS+2VQauCQBCAez+k9/53vVNBmFGWByHFPIikGYgXCeriIQv0osJe5+0MrChRyd4eJIwH129mXNZvvgBgIH0hLBsNOJlMBn2iXegB1nV9rKoq44lgOp1SLJdLttvtfkVykYBgfGgYxs98Pmc8wLZtiOMYLpcLnM9nCMMQFEUBTdPY8Xj8FkmaVhFcr9fAFwlMkoTgNE0hyzK4Xq9gmibwd7Ar4uiGrWJm3/efwnmeQ1EUgJ15njduYKxqWRaBzyojXJYlRFEEm82Gqou24XA49IJvtxttYgcWVd9VrqpKHmaMfWA8x313+7Nh/IDjWZXesP8B13X9+GMEQSD3P6NJ0E99TIIy7JhEOGy/37/U0P1+h9VqhQ4btU0ywOq48MqeXM9de7a8PcQEs9kMttstJTmdTqRg13VhsViQt3nbQ6xKM07YX7iYf8IIJ4aYFmJiOI5DrbanRmfISc8qmUn5B3gXoMxmcrCjAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scrollBarThumbVertical_Normal" colorCategory="{None}" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="7, 7, 7, 7">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAA+QEAAAKJUE5HDQoaCgAAAA1JSERSAAAADwAAACAIBgAAAM0sIqkAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAABYklEQVRIS+2VQYuCUBCA3R/S7v+u/RWGpZWmEhhaYSeVvKjgqUN6eB5UZt/M8sSIwvW2kDAeHnxv5o2+bz4AQBr9IDw2OlCWZWlI9BM9wKZpzjRNY3wjmM/nFLqus8Ph8C02FxsQjIvb7fZruVwyVVXBdV2I4xjyPKcIwxBw3TAMFkXRp9ikK3WxWLDNZgNBEBCYJAmB1+sViqKg2O/3wJNgVcTRi0MzDsPpdHoKM8agqiqqwPf9WQdjVtu24Xw+v4TruobL5dJlF2WD53mDYCwfm9hlxs7ybg6Cm6YZD/Ov84b/0u13w36v1+Df8582rG3bx4uB3hoig4f7jCaxLGsQjI4THuscpigKHI/HlxoqyxI1jA6b9k0iYfb1ev0Uvt1usNvt7u3Z8/YEvY0VOI5Drs6yDNI0xUywWq3I27zsCWalGSfsL1zMzz7FiSGmhZgY/EhUan9q3A250bNqzKT8AaM42h0Cj7ODAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="scrollBarTrackHorizontal_Normal" colorCategory="{None}" backColor="White" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="7, 0, 8, 0">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="scrollBarTrackVertical_Normal" colorCategory="{None}" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 13, 0, 13">
      <imageBackground>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</imageBackground>
    </resource>
    <resource name="SplitterBarHorizontal" colorCategory="{None}" backColor="240, 240, 240" backColor2="209, 209, 0" backGradientStyle="Horizontal">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAzAAAAAKJUE5HDQoaCgAAAA1JSERSAAAABQAAAAoIBgAAAHw5lDAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAANUlEQVQYV9XIMREAMAgDwFQJ/icsoICVMYcK2NKrjP74JyJkZthdzAy6G3hJUlWlzJS765e8V3+jgjZEg30AAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="SplitterBarVertical" colorCategory="{None}" backColor="240, 240, 240" imageBackgroundStyle="Stretched" backColor2="180, 180, 180" backGradientStyle="Vertical" imageBackgroundStretchMargins="0, 1, 0, 1">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAwgAAAAKJUE5HDQoaCgAAAA1JSERSAAAACgAAAAUIBgAAAHxkfWgAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAAsOAAALDgFAvuFBAAAAK0lEQVQYV43DMREAMBACMOpf069IYWFAArVA7vJIFoskXcJ2l5DUJe6uyw9ZDZPRoNn6cAAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="TabBottomBG" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 1, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAkgAAAAKJUE5HDQoaCgAAAA1JSERSAAAABAAAAAUIBgAAAGKtTdsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAEElEQVQYV2P8yMDwn4HKAACgbQHyuFQPbwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="TabItemHorizontalBottom_HotTracked" colorCategory="Primary Color" backColor="Transparent" foreColor="Black" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 0, 5, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAlgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAB4IBgAAANAHFaEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABFElEQVRIS8XXMYrCQBiG4ckB9ga7WFl4GAvPYyVWnkbEUixExELEQkRYEbEQsRBx1yAW5t1MduG7gPk28EKYIg//JEUm+QqBNwiu65YkIUTUed1y7x/R5xNMadLHA0wJvd/BlNA0BVNCr1cwJfRyAVNCz2cwJfR0AlNCj0cwJfRwAFNC93swJXS3A1NCt1swJXSzAVNC12swJXS1AlNCl0swJXSxAFNC53MwJXQ2A1NCp1MwJXQyAVMF+h3/e4dDGI/LbzAgjWgWQkanA6NR+bVakCRZoFb7pFqFfv934jKrVIheoNF4z08yGXGh3YZeD/JteFndLjSbxMGKXa3XP4pzU7wpJs4X44t+ZfGbKbD4/D/wB3fYnpm168guAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="TabItemHorizontalBottom_Selected" colorCategory="{None}" backColor="Transparent" borderColor="Transparent" fontBold="True" backGradientStyle="None" backHatchStyle="None" />
    <resource name="tabItemHorizontalBottomAppletini_Selected" colorCategory="Primary Color" backColor="Transparent" foreColor="White" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="7, 3, 7, 5">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAfQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAB4IBgAAANAHFaEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAA+0lEQVRIS73X0aYCURjF8T0XXXTZVTLG6F3OW58iEYlE4ihHRCKRSCRqtb5d1hPUGv6GffH97L0vxhSoa/Q2m+R6fuo6pUB/+XIVXkb7RF0JHRB1JXRI1JXQEVFXQsdEXQmdEHUldErUldAZUVdC50RdCV0QdSX0j6groUuiroT+E3UldE3UlVB+TeFK6JaoK6E7oq6E7om6Enog6krokagroSeiroSeiboSeiHq6oV2u7gSdXSjE15CWT5QFIiFb4dGA+EltNsrhjvRb4dOB+EltFoVquqRF5pNxK4Rx/CpYl7MjflxqvTyf1OGY8exyIv+aLzDPDfmv8EnswA5ujqOtBUAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="TabItemHorizontalTop_HotTracked" colorCategory="Primary Color" foreColor="Black" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="6, 6, 6, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAhgEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAB4IBgAAANAHFaEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABBElEQVRIS8XXPaoCMQBF4XElr7KY0tJluC4rKxdiYSUiImIhIhaig4WIiIWIzgMRcc5LxuJuwLkvcIo0+fJTJUnCoNX6IU2zIkmKPEy/HWHduH50ovcBa7WCZhM6Hej3YTD4Xr0etNtQr1PiEQ472NJowHBYbfEwaRrbJuUpu10Yj6sv3GR8wuQ33DCjEUwm1Rece/A+6HRqS+hsBqaEzudgSuhiAaaELpdgSuhqBaaErtdgSuhmA6aEZhmYErrbgSmh+z2YEno4gCmhxyOYEno6gSmh5zOYEnq5gCmh1yuYEnq7gSmheQ6mhD4eYEro8wmmhL5eYKpE4xeC99uWUHzj39A/CNsOPgmYP4YAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="TabItemHorizontalTop_Selected" colorCategory="Primary Color" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="6, 6, 6, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAgwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHQAAAB4IBgAAANAHFaEAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABAUlEQVRIS73PQUsCQRjG8ZmDevQki4jswa/Sty4hhCCCCEKQpIIFESQQRYJlM5+edw/PyeP2DPwPMwzvbyYnLgyHZer379iM5TjrdJ3PSHX9kZrmJh+PVQtiOr1gNAIGAyBngO/orJgXc8djtE58EEWxbsEuoWuzAi+KaJ0wmVzQ6+GXF/+7cMJLKEv8EGwMhRNei9bcuBL6TdSV0BNRV0IPRF0J3RN1JfSLqCuhO6KuhG6JuhK6IepKaEXUldBPoq6EvhN1JfSNqCuhK6KuhC6JuhL6StSV0BeiroQ+E3Ul9ImoK6GPRF0JfSDqSuiCqCuh90RdCZ0TdSX0lqirQP8AOaZBwACTmYsAAAAASUVORK5CYIILAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==</imageBackground>
    </resource>
    <resource name="TabItemVerticalLeft_HotTracked" colorCategory="Primary Color" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="5, 5, 0, 5">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAgQEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHgAAAB0IBgAAAL2k3AwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAA/0lEQVRIS+2XMQrCQBBF14NoimCRw1iIx7EUzyNiYSEpRCzEQoJgUItgIWIhIhosxDwzK0HszdjswDRpXv7fz+anYvKh1aqZ1SrM4thPjanIs9KHZtPDmAzfh24XhkMIQxiPYTKB6RRmM5jPYbGAKILlEuIY1mvYbiFJYLeD/R4OBzge4XSC8xkuF0hTuN/h8YDnExlDEGzwPOj3YTR6rwpY1HY6H6gW+JYf8ZdaVXBhsabVVrEDa6TaWa12gTirndWlfRZduFy4XLh+1jKv0kB6Pf2yl0nLbLf1wbZX1+t/ADcaVataSr3068FAp9Dbf6ccbpXnLyBXaFkreSr2Bfrrt33WTeO+AAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="tabItemVerticalLeft_Selected" colorCategory="Primary Color" foreColor="White" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="8, 5, 3, 6">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAVwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHgAAAB0IBgAAAL2k3AwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAA1UlEQVRIS+3X0QfCUBTH8c1me5w9zMzMTP//X1CRiEQikZKIRCKRSGqn77n/w+5e7uXzcl9+u2fHda7vsSRJai+KRhh4YejrXudLQ6WqWslzkSCQD9/xxgtPPHDHDVdccMYJRxywwxYbrLHCEgvMMcMUE4wxhEfg3oT6vvzYsBdclq3EsQihdoPr2py2n2BO64K772r9x67UVi4QV2prd7UrtSt1Z4OAay7XXJ01V9P0NHP1NmXqXJ1lPQx7aVqZl0RRiM7XX1tdbd5OGq4n17LrhWLBH3OYMVLXVEiPAAAAAElFTkSuQmCCCwAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="TabItemVerticalLeft_Selected" colorCategory="{None}" backColor="Transparent" foreColor="White" backGradientStyle="None" backHatchStyle="None" />
    <resource name="TabItemVerticalRight_HotTracked" colorCategory="Primary Color" foreColor="Black" imageBackgroundStyle="Stretched" imageBackgroundStretchMargins="0, 5, 5, 5">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAggEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHgAAAB0IBgAAAL2k3AwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABAElEQVRIS+2XsQrCMBRFk9U/EBSnguJvuHbwi6Sjo18i4igiRaSDiDiUolCkOIiIgxYHEXtsLIIfYKJDAm/NJY/7Xs6VqRBIofeo+0tSIur1OK+W7PcTwfs8HnC/w+0G1yukKZzPcDrB8QiHA+z3sNtBksB2C3EM6zVEEYQhrFawXMJiAfM5BAHMZjCZQK8HzSYIkdFu18wIT6fg+zAeF+KNxsa8cKdDlr/avPBggPKVeeHRyAprHKdPV9tWo3Nz2VbbBaLtW7Tmsuay5voaZf7FOP2MuTzvxdZmYW84hHLZIFcrkO92wXGKJOG6VXHJt4juUhytIF4liDy+VFRSewLV29QD6q+ewwAAAABJRU5ErkJgggsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="TabItemVerticalRight_HotTrackSelected" colorCategory="Primary Color" foreColor="241, 0, 0" />
    <resource name="TabLeftBG" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 0, 1, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAlwAAAAKJUE5HDQoaCgAAAA1JSERSAAAABQAAAAQIBgAAAEYz9UAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAFUlEQVQYV2NgQAMfGRj+o4sxkCYIAAePB8FbTl8MAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="TabRightBG" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="1, 0, 0, 0">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAlAAAAAKJUE5HDQoaCgAAAA1JSERSAAAABQAAAAQIBgAAAEYz9UAAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAEklEQVQYV2P4yMDwnwEdUCYIAIOPB8H64b6NAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="tabtemVerticalRight_Selected" colorCategory="Primary Color" backColor="Transparent" foreColor="White" borderColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="5, 5, 5, 5">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAYwEAAAKJUE5HDQoaCgAAAA1JSERSAAAAHgAAAB0IBgAAAL2k3AwAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAA4UlEQVRIS+3X4QfCQBzG8dtmL3qVXs2smf0v/deJRCQSiZSKSCTSJGq0X99br3rfXb248Xn97M7d9vw8yTJRph/fV6osBRt0vKLYqa5SovXQxwBDjDDGBFPMMMcCS6yxxQ57HHDECWdccMUND0gQiESRSJJU0mxmVoLvBJd46hfQ4VG0sh/caNSrth/seSJ5LvaD9Xa7YFPX6eNUu602+eVyW+3usbHfojtc7nC5w/W1lvkf1+lnnUu3zDS12zIr3T7i2F6vrieJMHyXeVYrrVaq9OxkHHW2Hl2YIAht61HtBTCBNU4KzUtXAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</imageBackground>
    </resource>
    <resource name="TabTopBG" colorCategory="Primary Color" backColor="Transparent" imageBackgroundStyle="Stretched" backGradientStyle="None" backHatchStyle="None" imageBackgroundStretchMargins="0, 0, 0, 4">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAAlAAAAAKJUE5HDQoaCgAAAA1JSERSAAAABAAAAAUIBgAAAGKtTdsAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAEklEQVQYV2NgoAL4yMDwHxkDAEHhB8GsYwXyAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
    <resource name="TopRed" colorCategory="Primary Color" backColor="Red" foreColor="White" backGradientStyle="None" backHatchStyle="None">
      <imageBackground>AAEAAAD/////AQAAAAAAAAAMAgAAAFFTeXN0ZW0uRHJhd2luZywgVmVyc2lvbj0yLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWIwM2Y1ZjdmMTFkNTBhM2EFAQAAABVTeXN0ZW0uRHJhd2luZy5CaXRtYXABAAAABERhdGEHAgIAAAAJAwAAAA8DAAAADAEAAAKJUE5HDQoaCgAAAA1JSERSAAAAMwAAAB4IBgAAAIGTJsIAAAABc1JHQgCuzhzpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAiklEQVRYR93YawqBARQG4bH/FSIiRESEiFzm28acehYwnX/vaAI/Kjc1poKZMRXMjalgYUwFS2MqWBlTwdqYCjbGVLA1poKdMRXsjangYEwFR2MqOBlTwdmYCi7GVHA1poKbMRXcjangYUwFT2MqeBlTwduYCj7GVPA1pmKYM38Vrc8MW3MFY2Mq/lAwGsPmcvqAAAAAAElFTkSuQmCCCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</imageBackground>
    </resource>
  </resources>
</styleLibrary>