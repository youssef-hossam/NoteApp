<h1 align="center">📝 Notes</h1>

<p align="center">
  A lightweight, <b>offline-first</b> notes app — create, edit, colour and delete notes, all stored locally with <b>Hive</b>.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter"/>
  <img src="https://img.shields.io/badge/Hive-local%20DB-FF6B2C?style=flat-square" alt="Hive"/>
  <img src="https://img.shields.io/badge/State-Cubit-21B18F?style=flat-square" alt="Cubit"/>
</p>

<p align="center">
  <img src="screenshots/hero.webp" alt="Notes app" width="100%"/>
</p>

## 📱 Screens

| Notes | Add note | Notes list |
|:-:|:-:|:-:|
| <img src="screenshots/2.webp" width="200"/> | <img src="screenshots/1.webp" width="200"/> | <img src="screenshots/3.webp" width="200"/> |

## ✨ Features

- ➕ Add a note from a bottom sheet with title, content and a **colour picker**.
- ✏️ Edit any note, 🗑️ delete it with one tap.
- 📅 Each note keeps its creation date (formatted with `intl`).
- 💾 Works **fully offline** — data persists in a Hive box, no internet needed.

## 🏗️ How it's built

```
lib/
├── cubits/
│   ├── add_note_cubit/   # validates & saves a new note
│   └── notes_cubit/      # loads / refreshes the notes list
├── models/               # NoteModel + generated Hive TypeAdapter
├── views/                # notes list & edit screens
└── widgets/              # app bar, note item, colour list, forms…
```

- **State management:** Cubit (`flutter_bloc`) with a `BlocObserver` for logging.
- **Local storage:** `hive` + `hive_flutter` with a generated `TypeAdapter`.

## 🚀 Run it

```bash
flutter pub get
flutter run
```

---

<p align="center">Made with ❤️ by <a href="https://github.com/youssef-hossam">Youssef Hadwa</a></p>
