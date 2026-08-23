# Calorify

Calorify is a friendly nutrition tracker for Android and Wear OS. Log a meal by typing or photographing it, get a helpful calorie and macro estimate, and keep your progress close at hand—even when you’re offline.

> Calorie estimates are for information only and aren’t medical advice.

## Highlights

- AI-assisted meal logging from text or photos
- Nutrition estimates grounded in USDA food data
- Clarifying questions when portions are uncertain
- Goals, history, favorites, and Health Connect support
- A Wear OS companion for quick voice logging

## Project layout

- `app/` — Flutter phone app
- `watch_app/` — Wear OS companion app
- `backend/` — API and nutrition services
- `shared_packages/` — shared app code and design resources

## Get started

You’ll need Flutter, Node.js, and Docker installed locally.

```bash
git clone <repository-url>
cd calorify

cd app && flutter pub get
cd ../watch_app && flutter pub get
cd ../backend && npm ci
cp env.example .env
```

Add your local backend settings to `backend/.env`, then follow the setup notes in [backend/README.md](backend/README.md). Run either app from its directory with `flutter run`.

## Learn more

- [Documentation index](docs/README.md)
- [Backend setup and development](backend/README.md)
- [Backend deployment and operations](backend/DEPLOYMENT.md)
- [Security guidance](SECURITY.md)

## Contributing

Bug fixes, thoughtful improvements, and feedback are welcome. Please keep credentials out of source control and add coverage for behavior changes.
