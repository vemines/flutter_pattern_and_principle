import '../../resources/behavioral/iterator/iterator_code.dart';
import '../../resources/behavioral/iterator/iterator_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class IteratorPage extends StatelessWidget {
  const IteratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iterator"),
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
                'Iterator Pattern',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'Iterator Code',
                code: iteratorCode,
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
