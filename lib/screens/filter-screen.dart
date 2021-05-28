import 'package:flutter/material.dart';

import '../widgets/side-menu.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters-screen';

  final Function filerFunction;
  final Map<String, bool> currentFilters;

  FilterScreen(this.currentFilters, this.filerFunction);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _vegetarian = false;
  var _glutenFree = false;

  @override
  void initState() {
    _vegetarian = widget.currentFilters['vegetarian'];
    _glutenFree = widget.currentFilters['gluten'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'vegetarian': _vegetarian,
              };
              widget.filerFunction(selectedFilters);
            },
          )
        ],
      ),
      drawer: SideMenu(),
      body: Column(
        children: [
          Container(
            child: Text("Adjust your meal options",
                style: Theme.of(context).textTheme.headline4),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                    "Gluten Free", "Shows only gluten free meals", _glutenFree,
                    (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                buildSwitchListTile("Vegetarian only",
                    "Shows only vegetarian meals", _vegetarian, (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }

  SwitchListTile buildSwitchListTile(String titleText, String subTitleText,
      bool currentValue, Function updatedValue) {
    return SwitchListTile(
      title: Text(titleText),
      subtitle: Text(subTitleText),
      value: currentValue,
      onChanged: updatedValue,
    );
  }
}
