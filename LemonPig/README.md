# Lemon Pig

## AI Disclosure

Lemon Pig was built in close collaboration with Anthropic's Claude, and Claude also runs live in production as part of the app.

- **Design**: Visual/UI design was created with Claude Design, based on my creative direction. The mascot and home screen hero image were created with ChatGPT.
- **Code**: Most of the Swift/SwiftUI implementation was written by Claude via Claude Code, directed and reviewed by me (including debugging AI-introduced issues, e.g. the NavigationStack width bug in CameraView).
- **Static content**: The bulk of the app's pre-built content — recipes, flavor/fruit descriptions, copy — was written by Claude. This content has not been independently fact-checked; recipe details (ingredient amounts, substitutions, allergen info) should be verified before use.
- **Runtime feature**: The app calls Claude live via the Anthropic API to identify fruit from user-submitted photos and generate corresponding content in real time. This output is not reviewed before display and can be wrong. Don't rely on this alone to judge whether a fruit is safe to eat.
- **Accessibility**: Claude Code was used to audit and improve the app's accessibility, including VoiceOver support, text scaling (Dynamic Type), and tap target sizing.

I directed the project and reviewed the design and code, but have not verified all AI-generated/AI-produced content for factual accuracy. Use recipe and fruit-ID output at your own discretion.
