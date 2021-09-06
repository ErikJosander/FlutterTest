import 'package:flutter/material.dart';
import 'package:hello_world/constants.dart';

class ButtonSettingsSection extends StatelessWidget {
  const ButtonSettingsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.blueGrey.shade50,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Your Links',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Add Button'),
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.lightGreen.shade400,
                        primary: Colors.black),
                    onPressed: () => {},
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight * 0.5,
                    child: ReorderableListView(
                      buildDefaultDragHandles: false,
                      onReorder: (oldIndex, newIndex) {},
                      children: [
                        for (int index = 0; index < documents.length; index++)
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            key: Key('$index'),
                            title: Text(documents[index].title),
                            leading: ReorderableDragStartListener(
                                index: index,
                                child: Icon(Icons.drag_indicator)),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () => {},
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () => {},
                                    icon: Icon(Icons.delete))
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
