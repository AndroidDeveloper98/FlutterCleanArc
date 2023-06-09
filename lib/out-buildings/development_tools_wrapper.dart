import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:requests_inspector/requests_inspector.dart';

class DevToolsWrapper extends StatelessWidget {
  final Widget appEntryPoint;
  ///CONSTRUCTOR
  const DevToolsWrapper(this.appEntryPoint, {Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context,) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Phoenix(
        child: RequestsInspector(
          enabled: true,
          hideInspectorBanner: true,
          showInspectorOn: ShowInspectorOn.LongPress,
          child: DevicePreview(
            enabled: true,
            isToolbarVisible: true,
            builder: (BuildContext context,) => DevicePreview.appBuilder(context, appEntryPoint,),
          ),
        ),
      ),
    );
  }
}
