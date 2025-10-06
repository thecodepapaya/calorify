# Calorify 🍎

A Flutter-based calorie tracking app that uses AI to analyze food images and descriptions for accurate nutritional logging. Because let's face it, manually counting calories is about as fun as watching paint dry! 🎨

## 🎯 Project Goal

This project serves as a case study to gauge the progress and capabilities of different AI platforms and tools in creating a full-fledged application - from initial design and ideation to final deployment. Think of it as a "Battle of the AIs" but instead of robots fighting, we have AI tools helping us build an app! 🤖⚔️

The development process leverages multiple AI platforms to demonstrate their effectiveness across different stages of software development. Spoiler alert: they're all pretty amazing! 🚀

## 🤖 AI Development Stack

### 1. Firebase Studio for Design and Ideation Validation 🎨
- **Purpose**: Initial design ideation and user experience validation
- **Usage**: Creating wireframes, user flows, and validating app concepts
- **Benefits**: Rapid prototyping and design iteration before development begins
- **Fun Fact**: It's like having a design consultant who never asks for coffee breaks! ☕

### 2. Google Jules for Long-Context Feature Development 🧠
- **Purpose**: Writing broader, complex features that require extensive context understanding
- **Usage**: Developing comprehensive features that span multiple files and components
- **Benefits**: Maintains context across large codebases and complex feature implementations
- **Fun Fact**: It's the AI equivalent of having a photographic memory for your entire codebase! 📸

### 3. Cursor & GitHub Copilot for Code Development and Bug Fixing 💻
- **Purpose**: Real-time code assistance, manual tweaking, and bug fixing
- **Usage**: 
  - Cursor: Advanced code completion and context-aware suggestions
  - GitHub Copilot: Inline code generation and refactoring assistance
- **Benefits**: Seamless development experience with intelligent code suggestions
- **Fun Fact**: It's like having a pair programming buddy who never gets tired and always knows the right answer! 🤝

### 4. ChatGPT and Gemini for General Development Support 🎓
- **Purpose**: General question answering, debugging, and development guidance
- **Usage**: 
  - Architecture decisions and best practices
  - Debugging complex issues
  - Code review and optimization suggestions
- **Benefits**: Access to diverse problem-solving approaches and expert knowledge
- **Fun Fact**: They're like having a senior developer, a debugger, and a code reviewer all rolled into one - and they're available 24/7! 🕐

### 5. Vertex AI for In-App AI Features 🤖
- **Purpose**: Powering the core AI functionality within the application
- **Usage**: 
  - Food image analysis and nutritional breakdown
  - Natural language processing for meal descriptions
  - Intelligent meal recommendations and insights
- **Benefits**: Production-ready AI capabilities integrated directly into the user experience
- **Fun Fact**: It's like having a nutritionist who can look at your food and instantly know everything about it - no PhD required! 🥗

## 🌟 Features

### Core Functionality
- **AI-Powered Food Analysis**: Take photos of your meals or describe them in text for automatic nutritional analysis (No more guessing if that's 200 or 500 calories! 🎯)
- **Smart Meal Detection**: Uses Firebase Vertex AI to identify food items and calculate calories, protein, carbs, fat, and fiber (It's like having a nutritionist in your pocket! 👩‍⚕️)
- **Daily Goal Tracking**: Set and monitor your daily calorie goals with visual progress indicators (Because seeing progress is more motivating than a stern talking-to from your fitness tracker! 📊)
- **Meal History**: Comprehensive history view with pagination showing all logged meals organized by date (Perfect for those "Wait, what did I eat yesterday?" moments! 🤔)
- **Favorites System**: Save frequently eaten meals for quick logging (Because we all have that one meal we eat way too often! 🍕)
- **Health Connect Integration**: Optional integration with Android Health Connect for comprehensive health tracking (Your phone already knows you're not sleeping enough, might as well let it help with nutrition too! 😴)

### Key Components

#### 📸 Photo Analysis
- Camera integration for instant food photography (Point, shoot, and let AI do the math! 📱)
- Gallery selection for existing food images (Because sometimes you remember to take a photo after you've already eaten! 🤦‍♀️)
- Image compression for optimal processing (We make your photos smaller so your app runs faster - it's like a digital diet for your images! 🏃‍♂️)
- AI-powered meal identification and nutritional breakdown (It can tell the difference between a salad and a burger - impressive, right? 🥗🍔)

#### ✍️ Text Description
- Natural language meal descriptions (Just type "I had a big bowl of pasta" and watch the magic happen! ✨)
- AI analysis of text-based food descriptions (It understands "a lot of cheese" means "probably too much cheese" 😅)
- Support for complex meal combinations (Yes, it can handle your 3-course dinner with dessert! 🍽️)

#### 📊 Nutrition Tracking
- Real-time daily nutrition summaries (See your progress in real-time - no waiting for tomorrow's weigh-in! ⚡)
- Detailed macronutrient breakdown (calories, protein, carbs, fat, fiber) (All the numbers you need to impress your fitness-obsessed friends! 💪)
- Visual progress tracking with charts (Pretty graphs that make you feel accomplished! 📈)
- Daily goal setting and monitoring (Set realistic goals, not "I'll only eat lettuce" goals! 🥬)

#### 📱 User Experience
- Clean, modern Material Design 3 interface (So pretty, you'll want to use it even when you're not hungry! 🎨)
- Dark and light theme support (Because your eyes deserve options! 👀)
- Responsive design for various screen sizes (Works on your phone, tablet, and probably your smart fridge! 📱💻)
- Intuitive navigation with auto-route (No getting lost in menus - we promise! 🗺️)

## 🛠️ Technical Stack

### Core Technologies
- **Flutter**: Cross-platform mobile development
- **Dart**: Programming language
- **Material Design 3**: Modern UI components

### Backend & AI
- **Firebase Core**: Backend infrastructure
- **Firebase Auth**: User authentication
- **Firebase Vertex AI**: AI-powered food analysis
- **Cloud Firestore**: Cloud database
- **Firebase Analytics**: Usage analytics
- **Firebase Crashlytics**: Crash reporting
- **Firebase Performance**: Performance monitoring

### Data Management
- **Drift**: Local SQLite database with reactive streams
- **SQLite3**: Local data persistence
- **Path Provider**: File system access

### Authentication
- **Google Sign-In**: OAuth authentication
- **Firebase Auth**: User management

### Health Integration
- **Health Connect**: Android health data integration
- **Permission Handler**: Health data permissions

### Image Processing
- **Image Picker**: Camera and gallery access
- **Flutter Image Compress**: Image optimization
- **Image Compression**: Efficient image processing

### UI/UX
- **Lucide Icons**: Modern icon set
- **Google Fonts**: Typography
- **FL Chart**: Data visualization
- **Auto Route**: Declarative routing

## 📱 App Architecture

### Key Features Implementation

#### 🏠 Home Screen
- Daily goal setting and tracking
- Quick meal description input
- Favorite meals quick access
- Camera integration for meal photos
- Daily nutrition summary
- Intake progress visualization
- Recent meal logging

#### 📸 Meal Analysis
- **Image Processing**: Compress and optimize images for AI analysis
- **AI Integration**: Firebase Vertex AI for food identification
- **Nutritional Analysis**: Automatic calculation of calories and macronutrients
- **Confidence Scoring**: AI confidence levels for nutritional estimates
- **Smart Tips**: Contextual advice for better food logging

#### 📊 Data Management
- **Local Database**: SQLite with Drift for offline-first experience
- **Cloud Sync**: Firebase Firestore for cross-device synchronization
- **Reactive Streams**: Real-time UI updates with database changes
- **Data Models**: Comprehensive meal and nutrition tracking

#### 🔐 Authentication
- **Google Sign-In**: Seamless OAuth integration
- **Firebase Auth**: Secure user management
- **Session Management**: Persistent login state

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.7.2 or higher) - The magic wand that makes everything work! ✨
- Dart SDK - The language that makes Flutter go brrr! 🚀
- Android Studio / VS Code - Your coding sanctuary (choose your weapon! ⚔️)
- Firebase project setup - The backend that powers our AI magic! 🔥
- Google Cloud Console configuration - Where the real AI magic happens! 🧙‍♂️

### Installation

1. **Clone the repository** (Get your hands on the code!)
   ```bash
   git clone <repository-url>
   cd calorify
   ```

2. **Install dependencies** (Get all the cool packages!)
   ```bash
   flutter pub get
   ```

3. **Firebase Setup** (This is where it gets interesting! 🔥)
   - Create a Firebase project (Your very own AI playground!)
   - Enable Authentication, Firestore, and Vertex AI (Turn on all the cool features!)
   - Download `google-services.json` for Android (The secret sauce for Android!)
   - Configure Firebase options (Make sure everything talks to each other!)

4. **Run the app** (The moment of truth! 🎉)
   ```bash
   flutter run
   ```

### Build Configuration

The app supports multiple build flavors:
- **Staging**: Development and testing environment
- **Production**: Release environment

Configure build flavors in `android/app/build.gradle.kts` and update `AppConfig` accordingly.

## 🔧 Configuration

### Environment Variables
- Firebase configuration files
- Google Cloud API keys
- Build flavor settings

### Permissions
- Camera access for food photography
- Health data access (Android)
- Storage access for image processing

## 📱 Supported Platforms

- **Android**: Full feature support including Health Connect
- **iOS**: Core functionality (Health Connect not available)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 🔮 Future Enhancements

- Barcode scanning for packaged foods (Because sometimes you just want to scan and go! 📱)
- Recipe integration and meal planning (Turn your favorite recipes into calorie-tracked meals! 📝)
- Social features and sharing (Show off your healthy meals to make your friends jealous! 😏)
- Advanced analytics and insights (Get insights so good, you'll feel like a nutrition expert! 📊)
- Wearable device integration (Your smartwatch will finally be useful for something other than telling time! ⌚)
- Multi-language support (Because healthy eating is universal! 🌍)

---

**Calorify** - Making nutrition tracking simple and intelligent with the power of AI. Because counting calories shouldn't be harder than actually eating the food! 🍎✨