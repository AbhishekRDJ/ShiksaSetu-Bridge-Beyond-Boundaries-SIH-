# LearnBridge - Screen Flow Documentation

## Application Navigation Flow

This document describes the complete navigation flow of the LearnBridge application.

## Flow Diagram

```
┌─────────────────┐
│  Welcome Screen │
│                 │
│  - App Logo     │
│  - Tagline      │
│  - Login Button │
│  - Sign Up Btn  │
│  - Guest Option │
└────────┬────────┘
         │
         ├──────────────────┬──────────────────┐
         │                  │                  │
         v                  v                  v
┌────────────────┐  ┌──────────────┐  ┌──────────────┐
│  Login Screen  │  │Role Selection│  │   Dashboard  │
│                │  │    Screen    │  │   (Guest)    │
│  - Email       │  │              │  │              │
│  - Password    │  │  - Student   │  └──────────────┘
│  - Login Btn   │  │  - Teacher   │
│  - Forgot Pass │  │  - Admin     │
│  - Guest Link  │  │              │
│  - Sign Up Link│  │  - Continue  │
└───────┬────────┘  └──────┬───────┘
        │                  │
        │                  v
        │          ┌──────────────┐
        │          │Signup Screen │
        │          │              │
        │          │ - Full Name  │
        │          │ - Email      │
        │          │ - Password   │
        │          │ - Confirm    │
        │          │ - Role Info  │
        │          │ - Create Btn │
        │          │ - Login Link │
        │          └──────┬───────┘
        │                 │
        └────────┬────────┘
                 │
                 v
        ┌──────────────┐
        │   Dashboard  │
        │              │
        │ - Welcome    │
        │ - Role Info  │
        │ - Logout     │
        └──────────────┘
```

## Screen Details

### 1. Welcome Screen (`/welcome`)
**Purpose**: Entry point of the application

**UI Elements**:
- App logo (120x120 container with icon)
- App name: "LearnBridge"
- Tagline: "Connecting Teachers and Rural Students"
- Primary button: "Login"
- Secondary button: "Sign Up"
- Text button: "Continue as Guest"

**Navigation**:
- "Login" → `/login`
- "Sign Up" → `/role-selection`
- "Continue as Guest" → `/dashboard` (with 'Guest' argument)

**Design**:
- Gradient background
- Centered content
- Material 3 design
- Poppins typography

---

### 2. Role Selection Screen (`/role-selection`)
**Purpose**: Let users choose their role before signing up

**UI Elements**:
- Header: "Who are you?"
- Subheader: "Choose your role to get started"
- Three role cards:
  - **Student**: School icon, blue color
  - **Teacher**: Person icon, purple color
  - **Admin**: Admin panel icon, pink color
- Radio button selection
- "Continue" button

**Navigation**:
- Back button → Returns to previous screen
- "Continue" → `/signup` (passes selected role as argument)

**Design**:
- Card-based layout
- Visual selection with borders and shadows
- Descriptive text for each role
- Interactive hover/tap states

---

### 3. Signup Screen (`/signup`)
**Purpose**: User registration form

**UI Elements**:
- Header: "Sign Up"
- Form fields:
  - Full Name (with person icon)
  - Email (with email icon, validated)
  - Password (with lock icon, toggleable visibility)
  - Confirm Password (with lock icon, toggleable visibility)
- Role info badge (shows pre-selected role)
- "Create Account" button
- "Already have an account? Login" link

**Validation**:
- Name: Minimum 3 characters
- Email: Valid email format (regex)
- Password: Minimum 6 characters
- Confirm Password: Must match password
- All fields required

**Navigation**:
- Back button → Returns to role selection
- "Login" link → `/login`
- "Create Account" → `/dashboard` (with role argument)

**Design**:
- Scrollable form
- Real-time validation
- Custom text fields with icons
- Error messages

---

### 4. Login Screen (`/login`)
**Purpose**: User authentication

**UI Elements**:
- Header: "Welcome Back"
- Subheader: "Login to continue your learning journey"
- Form fields:
  - Email (with email icon, validated)
  - Password (with lock icon, toggleable visibility)
- "Forgot Password?" link
- "Login" button
- Divider with "or"
- "Continue as Guest" button (outlined)
- "Don't have an account? Sign Up" link

**Validation**:
- Email: Valid format required
- Password: Minimum 6 characters
- All fields required

**Navigation**:
- Back button → Returns to welcome screen
- "Sign Up" link → `/role-selection`
- "Continue as Guest" → `/dashboard` (with 'Guest' argument)
- "Login" → `/dashboard` (with 'User' argument)

**Design**:
- Clean, spacious layout
- Primary and secondary CTAs
- Form validation
- Password visibility toggle

---

### 5. Dashboard Screen (`/dashboard`)
**Purpose**: Role-based landing page after authentication

**UI Elements**:
- App bar with "Dashboard" title
- Logout button (top-right)
- Centered content:
  - Role icon in colored circle
  - "Welcome, [Role]!" message
  - Descriptive text
  - "Under Construction" card

**Role Customization**:
- **Student**: School icon, blue color
- **Teacher**: Person icon, purple color
- **Admin**: Admin icon, pink color
- **Guest**: Person outline, gray color

**Navigation**:
- Logout button → Shows confirmation dialog
- Confirm logout → `/welcome` (clears stack)

**Design**:
- Role-specific gradient background
- Large icon display
- Info card with construction notice
- Confirmation dialog for logout

---

## Navigation Patterns

### Route Names
- `/welcome` - Welcome Screen
- `/role-selection` - Role Selection Screen
- `/signup` - Signup Screen
- `/login` - Login Screen
- `/dashboard` - Dashboard Screen

### Transition Animation
All screen transitions use **SharedAxisTransition** (horizontal):
- Duration: 400ms
- Type: Slide animation
- Direction: Left to right

### Back Navigation
- Login Screen: Can go back to Welcome
- Role Selection: Can go back to Welcome
- Signup Screen: Can go back to Role Selection
- Dashboard: No back button (use Logout)

### Route Arguments
- `/signup` receives: Selected role (String)
- `/dashboard` receives: User role (String)

---

## User Flows

### Flow 1: New User Registration
```
Welcome → Role Selection → Signup → Dashboard
```

### Flow 2: Existing User Login
```
Welcome → Login → Dashboard
```

### Flow 3: Guest Access
```
Welcome → Dashboard (as Guest)
or
Login → Dashboard (as Guest)
```

### Flow 4: Switch from Login to Signup
```
Welcome → Login → [Click Sign Up] → Role Selection → Signup
```

### Flow 5: Logout
```
Dashboard → [Click Logout] → Confirmation → Welcome
```

---

## State Management

### Current Implementation
- Simple state management using `setState()`
- Route arguments for passing data
- No persistent storage (demo only)

### Data Flow
- Role selection → Passed to Signup via route arguments
- User credentials → Validated locally, no API calls
- Dashboard role → Received from route arguments

---

## Form Validation

### Email Validation
```dart
RegExp: r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'
```

### Password Rules
- Minimum 6 characters
- No complexity requirements (can be enhanced)

### Name Rules
- Minimum 3 characters
- No special validation (can be enhanced)

---

## Error Handling

### Validation Errors
- Shown below input fields in red
- Real-time validation on text change
- Form submission blocked until valid

### User Feedback
- SnackBar messages for success/error
- Confirmation dialogs for critical actions
- Loading states (button disabled during processing)

---

## Future Enhancements

1. **Authentication**
   - Backend API integration
   - JWT token management
   - Session persistence

2. **Navigation**
   - Deep linking support
   - Tab-based navigation in Dashboard
   - Drawer menu

3. **Validation**
   - Phone number verification
   - Email verification flow
   - Password strength meter
   - Captcha integration

4. **State Management**
   - Provider implementation
   - User session management
   - Offline mode support

5. **Additional Screens**
   - Profile screen
   - Settings screen
   - Password reset flow
   - Onboarding tutorial

---

## Testing Checklist

- [ ] Navigate from Welcome to all screens
- [ ] Test back navigation
- [ ] Verify form validation (empty fields)
- [ ] Verify email format validation
- [ ] Verify password matching
- [ ] Test role selection and data passing
- [ ] Test logout confirmation
- [ ] Test guest mode access
- [ ] Verify animations work smoothly
- [ ] Test on different screen sizes
- [ ] Test keyboard handling
- [ ] Test error messages display

---

## Design Specifications

### Color Palette
- Primary: `#6366F1` (Indigo)
- Secondary: `#8B5CF6` (Purple)
- Background: `#F8FAFC` (Light Gray)
- Text Primary: `#1E293B` (Dark Slate)
- Text Secondary: `#64748B` (Slate)
- Error: `#EF4444` (Red)
- Success: `#10B981` (Green)

### Typography
- Font Family: Poppins (Google Fonts)
- Heading: 28-36px, Bold
- Body: 14-16px, Regular
- Caption: 13-14px, Medium

### Spacing
- Small: 8px
- Medium: 16px
- Large: 24px
- XLarge: 32px

### Border Radius
- Small: 8px
- Medium: 12px
- Large: 16px
- Circle: 30px for large icons

---

This documentation provides a complete overview of the LearnBridge application's navigation and screen flow.
