# 🧩 Accessible Flutter Demo

A small Flutter project created to demonstrate applied understanding of **digital accessibility** and **WCAG 2.1 compliance** principles.
---

## 🎯 Objectives

This demo intentionally includes features that make it accessible to users with different needs.

Specifically, the app demonstrates:

- ✅ **Screen reader support** using Flutter’s `Semantics` widget  
- ✅ **Accessible color contrast** (meets WCAG 2.1 AA standard)  
- ✅ **Dynamic text scaling** (supports large accessibility fonts)  
- ✅ **Keyboard and focus navigation** using `FocusTraversalGroup`  
- ✅ **Clear, descriptive labels and hints** for interactive elements  

---

## 🧩 Accessibility Features Breakdown

### 1. Screen Reader (VoiceOver / TalkBack)

All major UI elements are wrapped in `Semantics` widgets.  
Each element has **meaningful labels** and **hints** for assistive technologies.

```dart
Semantics(
  button: true,
  label: 'Submit information button',
  hint: 'Double tap to submit your name',
  child: ElevatedButton.icon(
    icon: const Icon(Icons.send),
    onPressed: () {},
    label: const Text('Submit'),
  ),
);
