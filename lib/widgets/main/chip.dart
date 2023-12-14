import 'package:bank_view/widgets/model_data.dart';
import 'package:bank_view/design/colors.dart';
import 'package:bank_view/design/paddings.dart';
import 'package:flutter/material.dart';

class TagsBlock extends StatefulWidget {
  const TagsBlock({super.key});

  @override
  State<TagsBlock> createState() => _TagsBlockState();
}

class _TagsBlockState extends State<TagsBlock> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: PaddingAssets.smallPadding,
      children: List<Widget>.generate(
        MockData.interestItems.length,
            (int index) => Builder(
          builder: (BuildContext context) {
            return SelectableInterestChip(
              label: Text(MockData.interestItemMap.keys.elementAt(index)),
              selected: MockData.interestItemMap.values.elementAt(index),
              onSelected: (bool selected) {
                setState(() {
                  MockData.interestItemMap[MockData.interestItemMap.keys
                      .elementAt(index)] = selected;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class SelectableInterestChip extends StatefulWidget {
  final Widget label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const SelectableInterestChip({
    Key? key,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  _SelectableFilterChipState createState() => _SelectableFilterChipState();
}

class _SelectableFilterChipState extends State<SelectableInterestChip> {
  bool _selected = false;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: widget.label,
      selected: _selected,
      onSelected: (bool selected) {
        setState(() {
          _selected = selected;
          widget.onSelected(selected);
        });
      },
      showCheckmark: false,
      selectedColor:
      _selected ? ColorAssets.chipContainerSelected : ColorAssets.grayColor,
    );
  }
}
