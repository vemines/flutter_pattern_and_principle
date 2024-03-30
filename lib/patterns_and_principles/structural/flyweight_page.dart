import '../../resources/structural/flyweight/flyweight_code.dart';
import '../../resources/structural/flyweight/flyweight_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class FlyweightPage extends StatelessWidget {
  const FlyweightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flyweight"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.normal),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextWidget(
                'Flyweight Pattern',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'Flyweight Code',
                code: flyweightCode,
              ),
              MyExpansionTile(
                title: 'When To Use',
                children: [
                  ListItemBoldWidget(useCases),
                ],
              ),
              MyExpansionTile(
                title: 'Definition',
                children: [
                  ListItemWidget(definition),
                ],
              ),
              MyExpansionTile(
                title: 'Characteristics',
                children: [
                  ListItemBoldWidget(characteristics),
                ],
              ),
              MyExpansionTile(
                title: 'Benefits',
                children: [
                  ListItemBoldWidget(benefits),
                ],
              ),
              MyExpansionTile(
                title: 'Drawbacks',
                children: [
                  ListItemBoldWidget(drawbacks),
                ],
              ),
            ].separateCenter(),
          ),
        ),
      ),
    );
  }
}
