import '../../resources/principle/o/o_code.dart';
import '../../resources/principle/o/o_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class OPage extends StatelessWidget {
  const OPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("O Principle"),
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
                'O Principle',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'OCP Violation',
                code: oCodeWrong,
              ),
              CodeBlockWidget(
                title: 'Correcting OCP Violation',
                code: oCodeRight,
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
