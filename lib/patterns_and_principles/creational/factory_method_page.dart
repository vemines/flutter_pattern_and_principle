import '../../resources/creational/factory_method/factory_method_code.dart';
import '../../resources/creational/factory_method/factory_method_text.dart';
import '../../shared/shared.dart';
import 'package:flutter/material.dart';

class FactoryMethodPage extends StatelessWidget {
  const FactoryMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Factory Method"),
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
                'Factory Method Pattern (2 method)',
                isTitle: true,
              ),
              CodeBlockWidget(
                title: 'Simple factory',
                code: factoryMethodCode1,
              ),
              CodeBlockWidget(
                title: 'Factory method',
                code: factoryMethodCode2,
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
