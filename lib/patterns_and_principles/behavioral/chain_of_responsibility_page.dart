import '../../resources/behavioral/chain_of_responsibility/chain_of_responsibility_code.dart';
import '../../resources/behavioral/chain_of_responsibility/chain_of_responsibility_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class ChainOfResponsibilityPage extends StatelessWidget {
  const ChainOfResponsibilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chain Of Responsibility"),
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
                'Chain Of Responsibility Pattern',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'Chain Of Responsibility Code',
                code: chainOfResponsibilityCode,
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
