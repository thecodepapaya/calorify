# Screenshot Image Guidelines

## 📁 Where to Add Images

Place all screenshot images in the `web/assets/screenshots/` directory with the following filenames:

### Required Screenshots:

1. **Hero Section** (Home Screen)
   - **File**: `web/assets/screenshots/hero-home.webp` (or `.png`)
   - **Location**: Hero section device frame
   - **Shows**: Main home screen with daily summary, goals, and quick actions

2. **AI-Powered Analysis**
   - **File**: `web/assets/screenshots/ai-analysis.webp` (or `.png`)
   - **Location**: AI-Powered Analysis feature showcase
   - **Shows**: Camera/photo analysis screen or text input screen with AI results

3. **Smart Tracking**
   - **File**: `web/assets/screenshots/smart-tracking.webp` (or `.png`)
   - **Location**: Smart Tracking feature showcase
   - **Shows**: Analytics screen with charts, progress bars, and goal tracking

4. **Health Connect**
   - **File**: `web/assets/screenshots/health-connect.webp` (or `.png`)
   - **Location**: Health Connect feature showcase
   - **Shows**: Health Connect integration screen or settings

5. **Global Ready**
   - **File**: `web/assets/screenshots/global-ready.webp` (or `.png`)
   - **Location**: Global Ready feature showcase
   - **Shows**: Settings screen with language/unit options

**Note**: The website code supports both `.webp` and `.png` formats. Update the HTML file if you use `.webp` extensions, or keep `.png` if you prefer that format.

## 📐 Image Specifications

### Dimensions
- **Recommended**: 1080 x 2340 pixels (9:19.5 aspect ratio)
- **Minimum**: 720 x 1560 pixels
- **Maximum**: 1440 x 3120 pixels
- **Aspect Ratio**: ~9:19.5 (standard modern smartphone)

### Format
- **Format**: **WebP (strongly recommended)** or PNG as fallback
- **Why WebP?**: 
  - 25-35% smaller file sizes than PNG
  - Maintains high quality
  - Faster page loads
  - Supported by all modern browsers
  - Supports transparency like PNG
- **Color Space**: sRGB
- **Compression**: Optimize for web (use tools like Squoosh, TinyPNG, or ImageOptim)

### Content Guidelines

1. **Safe Area**: 
   - Keep important content within the center 90% of the image
   - Avoid placing critical UI elements near edges (they may be cropped by device frame)

2. **Status Bar**:
   - Include status bar in screenshots for authenticity
   - Use system default status bar (time, battery, signal icons)

3. **Content**:
   - Use real app screenshots, not mockups
   - Ensure screenshots show actual features being described
   - Use consistent theme (light or dark) across all screenshots
   - Remove or blur any sensitive/personal data

4. **Quality**:
   - High resolution, crisp text
   - No pixelation or blur
   - Proper contrast and brightness
   - Consistent color grading across all screenshots

## 🎨 Visual Style

### Theme Consistency
- All screenshots should use the same theme (light or dark)
- Match the app's actual theme
- Consistent color palette

### Device Frame
- Screenshots will be automatically framed by the device mockup
- No need to add device frames manually
- Screenshots should fill the entire screen area

### Best Practices
1. **Show Real Usage**: Use actual app screenshots, not design mockups
2. **Feature Highlight**: Each screenshot should clearly show the feature being described
3. **Clean State**: Use screenshots with clean, organized data (not cluttered)
4. **No Personal Data**: Remove or blur any personal information
5. **Consistent Devices**: All screenshots should appear to be from the same device model

## 🔄 How Images Are Loaded

The website uses a fallback system:
- If an image exists, it will be displayed
- If an image is missing or fails to load, a placeholder with an icon will appear
- No errors will be shown to users

## 📝 File Structure

```
web/
├── assets/
│   ├── screenshots/
│   │   ├── hero-home.png          (Hero section)
│   │   ├── ai-analysis.png        (AI Analysis feature)
│   │   ├── smart-tracking.png      (Smart Tracking feature)
│   │   ├── health-connect.png     (Health Connect feature)
│   │   └── global-ready.png       (Global Ready feature)
│   └── ...
└── index.html
```

## ✅ Checklist Before Adding Images

- [ ] Images are in WebP format (preferred) or PNG
- [ ] Images are optimized for web (< 300KB each for WebP, < 500KB for PNG)
- [ ] Aspect ratio is approximately 9:19.5
- [ ] Resolution is at least 720 x 1560 pixels
- [ ] All personal data is removed/blurred
- [ ] Screenshots match the described features
- [ ] Consistent theme across all screenshots
- [ ] Images are placed in `web/assets/screenshots/` directory
- [ ] Filenames match exactly (case-sensitive)
- [ ] If using WebP, HTML file references are updated (or keep .png if using PNG)

## 🛠️ Tools for Image Preparation

1. **Screenshot Tools**:
   - Android Studio Emulator
   - Physical device screenshots
   - ADB screenshot command

2. **Image Optimization**:
   - **Squoosh** (https://squoosh.app) - Best for WebP conversion and optimization
   - TinyPNG (https://tinypng.com) - Supports WebP and PNG
   - ImageOptim (Mac) - General image optimization
   - **cwebp** (command line) - Google's WebP encoder

3. **Editing**:
   - Remove personal data
   - Adjust brightness/contrast if needed
   - Ensure consistent sizing

## 📱 Taking Screenshots from Android

### Using ADB:
```bash
adb shell screencap -p /sdcard/screenshot.png
adb pull /sdcard/screenshot.png
```

### Using Android Studio:
1. Open Android Studio
2. Run app on emulator or connected device
3. Click camera icon in emulator toolbar
4. Save screenshot

### From Physical Device:
1. Navigate to the screen you want
2. Take screenshot (Power + Volume Down)
3. Transfer to computer
4. Optimize and rename according to guidelines

