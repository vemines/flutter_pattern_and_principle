const String stateCode = """abstract class State {
  void handler(LightState context);
}

class StatusOn implements State {
  @override
  void handler(LightState context) {
    context.state = StatusOff();
  }

  @override
  String toString() => "on";
}

class StatusOff implements State {
  @override
  void handler(LightState context) {
    context.state = StatusOn();
  }

  @override
  String toString() => "off";
}

class LightState {
  State state;
  LightState(this.state);

  void setState(State newState) {
    state = newState;
  }

  void trigger() {
    state.handler(this);
  }
}

void main(List<String> args) {
  final LightState lightState = LightState(StatusOff()); // lightState.state = StatusOff
  lightState.trigger(); // lightState.state = StatusOn
}""";
