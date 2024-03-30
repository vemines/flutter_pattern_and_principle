import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

import 'patterns_and_principles/patterns_and_principles.dart';
import 'patterns_provider.dart';
import 'shared/shared.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the highlighter.
  await Highlighter.initialize(['dart']);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design Patern and Principal',
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.dark,
      routes: _routes,
      themeMode: ThemeMode.dark,
      home: ChangeNotifierProvider<RoutesProvider>(
        create: (_) => RoutesProvider(),
        child: const HomePage(),
      ),
    );
  }
}

List<String> _dropdown = ["Normal", "A-Z"];

class _DropDownProvider with ChangeNotifier {
  String value = "Normal";
  void setValue(String? newValue) {
    if (newValue != null) {
      value = newValue;
      notifyListeners();
    }
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final patternsProvider = Provider.of<RoutesProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.normal),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: TextField(
                      onChanged: patternsProvider.filter,
                      decoration: const InputDecoration(
                        hintText: "Find Pattern and Principle",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                gapN(),
                if (context.width > 1000) const Spacer(),
                _DropDownWidget(patternsProvider: patternsProvider),
              ],
            ),
            gapN(),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  mainAxisSpacing: Dimensions.small,
                  crossAxisSpacing: Dimensions.small,
                ),
                itemBuilder: (context, index) {
                  final route = patternsProvider.routes.entries.toList()[index];
                  return _PatternWidget(route: route);
                },
                itemCount: patternsProvider.routes.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DropDownWidget extends StatelessWidget {
  const _DropDownWidget({
    required this.patternsProvider,
  });

  final RoutesProvider patternsProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Sort: ",
          style: context.bodyStyle,
        ),
        gapS(),
        ChangeNotifierProvider<_DropDownProvider>(
          create: (_) => _DropDownProvider(),
          builder: (dropDownContext, child) {
            final dropdownProvider =
                Provider.of<_DropDownProvider>(dropDownContext);
            return DropdownButton<String>(
              value: dropdownProvider.value,
              items: _dropdown
                  .map((e) => DropdownMenuItem(
                        value: e,
                        onTap: () {
                          switch (e) {
                            case "A-Z":
                              patternsProvider.sortAToZ();
                              break;
                            case "Normal":
                              patternsProvider.reset();
                              break;
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(Dimensions.small),
                          child: Text(e),
                        ),
                      ))
                  .toList(),
              onChanged: dropdownProvider.setValue,
            );
          },
        ),
      ],
    );
  }
}

class _PatternWidget extends StatelessWidget {
  const _PatternWidget({
    required this.route,
  });

  final MapEntry<String, Map<String, String>> route;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: route.value["tooltip"],
      child: Container(
        padding: const EdgeInsets.all(Dimensions.normal),
        decoration: BoxDecoration(
          color: _colorByType(route.value["type"]),
          borderRadius: BorderRadius.circular(RadiusBorder.normal),
        ),
        child: InkWell(
          onTap: () => route.value["route"]!.isNotEmpty
              ? Navigator.pushNamed(context, route.value["route"]!)
              : {},
          child: Center(
            child: Text(
              route.key,
              style: context.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

Color? _colorByType(String? s) {
  switch (s) {
    case "Creational":
      return Colors.blue;
    case "Structural":
      return Colors.green;
    case "Behavioral":
      return Colors.purple;
    case "Principal":
      return Colors.teal;
  }
  return null;
}

final _routes = {
  // creational routes
  '/singleton': (context) => const SingletonPage(),
  '/builder': (context) => const BuilderPage(),
  '/factory-method': (context) => const FactoryMethodPage(),
  '/factory-abstract': (context) => const FactoryAbstractPage(),
  '/prototype': (context) => const PrototypePage(),
  // structural routes
  '/adapter': (context) => const AdapterPage(),
  '/bridge': (context) => const BridgePage(),
  '/composite': (context) => const CompositePage(),
  '/decorator': (context) => const DecoratorPage(),
  '/facade': (context) => const FacadePage(),
  '/flyweight': (context) => const FlyweightPage(),
  '/proxy': (context) => const ProxyPage(),
  // behavioral routes
  '/chain-of-responsibility': (context) => const ChainOfResponsibilityPage(),
  '/command': (context) => const CommandPage(),
  '/interpreter': (context) => const InterpreterPage(),
  '/iterator': (context) => const IteratorPage(),
  '/mediator': (context) => const MediatorPage(),
  '/memento': (context) => const MementoPage(),
  '/observer': (context) => const ObserverPage(),
  '/state': (context) => const StatePage(),
  '/strategy': (context) => const StrategyPage(),
  '/template-method': (context) => const TemplateMethodPage(),
  '/visitor': (context) => const VisitorPage(),
  // Principal routes
  '/s': (context) => const SPage(),
  '/o': (context) => const OPage(),
  '/l': (context) => const LPage(),
  '/i': (context) => const IPage(),
  '/d': (context) => const DPage(),
};
