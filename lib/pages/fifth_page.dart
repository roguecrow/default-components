import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  final allChecked = checkBoxModel(title: 'All checked');
  final checkBoxList = [
    checkBoxModel(title: 'check box 1'),
    checkBoxModel(title: 'check box 2'),
    checkBoxModel(title: 'check box 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox LIstTile'),
        backgroundColor: Colors.brown,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => onAllClicked(allChecked),
            leading: Checkbox(
              value: allChecked.value,
              onChanged: (value) => onAllClicked(allChecked),
            ),
            title: Text(
              allChecked.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          ...checkBoxList
              .map(
                (item) => ListTile(
              onTap: () => onItemChecked(item),
              leading: Checkbox(
                value: item.value,
                onChanged: (value) => onItemChecked(item),
              ),
              title: Text(
                item.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
              .toList()
        ],
      ),
    );
  }

  void onAllClicked(checkBoxModel ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      for (var element in checkBoxList) {
        element.value = newValue;
      }
    });
  }

  void onItemChecked(checkBoxModel item) {
    final newValue = !item.value;
    setState(() {
      item.value = newValue;

      if (!newValue) {
        allChecked.value = false;
      } else {
        final allListChecked =
        checkBoxList.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }
}

class checkBoxModel {
  String title;
  bool value;

  checkBoxModel({required this.title, this.value = false});
}
