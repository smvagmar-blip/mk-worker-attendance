# MK Worker Attendance — Cloud APK Build Starter

Company: M K Construction
Site: Aaravi Arete
Target: Android
Languages: Gujarati (initial UI)

## What this package does
This is a small Flutter demo app with the planned Punch In, Punch Out, Lunch Token and Dinner Token screens/actions.
It includes a GitHub Actions workflow that generates Android platform files in the cloud and builds a release APK.

## Important limitations
This is NOT the finished attendance system. The buttons are demo placeholders.
Not yet implemented: worker OTP authentication, worker approval, GPS validation/storage, selfie capture/upload,
one Lunch + one Dinner token per worker per day in a trusted database, single-admin authentication,
admin daily token totals, and Firestore security rules.

Do not use this demo for real attendance or payroll.

## Build APK using only an Android phone
1. Create/sign in to a GitHub account in Chrome.
2. In GitHub, create a new repository named `mk-worker-attendance`.
3. Upload all files and folders from this ZIP into the repository root. Make sure `.github/workflows/build-apk.yml` is included.
4. Commit the uploaded files to the `main` branch.
5. Open the repository's **Actions** tab. Select **Build Android APK**, then tap **Run workflow** if it did not start automatically.
6. Wait for the workflow to finish successfully.
7. Open the completed workflow run, scroll to **Artifacts**, and download `mk-worker-attendance-apk`.
8. Extract the downloaded artifact ZIP. It contains `app-release.apk`. Tap it to install (allow install from this source if Android asks).

GitHub's mobile website layout can vary. This cloud build requires a GitHub account and internet access.
