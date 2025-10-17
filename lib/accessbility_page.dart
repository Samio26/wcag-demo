import 'package:flutter/material.dart';

class AccessibleHomePage extends StatelessWidget {
  const AccessibleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accessibility Demo')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Semantics(
                header: true,
                label: 'Welcome to the accessibility demo',
                child: Text(
                  'Welcome!',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 24),

              Semantics(
                label: 'Name input field',
                hint: 'Enter your full name',
                textField: true,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Semantics(
                button: true,
                label: 'Submit information button',
                hint: 'Double tap to submit your name',
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  label: const Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              Text(
                'Note: This demo supports text scaling and screen readers.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.indigo[700]),
              ),
              const SizedBox(height: 16),

              FocusTraversalGroup(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Semantics(
                      button: true,
                      label: 'Settings button',
                      hint: 'Opens settings page',
                      child: IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                      ),
                    ),
                    Semantics(
                      button: true,
                      label: 'Help button',
                      hint: 'Opens help section',
                      child: IconButton(
                        icon: const Icon(Icons.help_outline),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
