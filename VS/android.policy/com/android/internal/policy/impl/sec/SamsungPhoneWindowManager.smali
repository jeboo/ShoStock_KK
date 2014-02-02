.class public Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field private static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field static final localLOGV:Z

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field static mFocusedWindowPkgName:Ljava/lang/String;


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableVoiceCommand:Z

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCameraRecordKeyConsumedByAccessControlChord:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mDoubleTapOnHomeBehavior:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasySetupKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field private mFlashKeyConsumedByScreenshotChord:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field mGloveModeIntent:Landroid/content/Intent;

.field mGloveState:I

.field mGripRotationLocked:Z

.field mHMTPressed:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field mHasFlashAnnotateComponent:Z

.field mHasMultiWindowFeature:Z

.field private mHasSPenUspFeature:Z

.field mHasUltraSonicPackage:Z

.field mHasVoiceMemoComponent:Z

.field mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

.field private mHomeKeyConsumedByAccessControlChord:Z

.field private mHomeKeyConsumedByScreenRecordChord:Z

.field private mHomeKeyConsumedByScreenshotChord:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsUseAccessControl:Z

.field private mIsVisibleSPenGestureView:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

.field mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field mOpenByNotification:Z

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field mPowerDoubleBehavior:Z

.field private mPowerKeyConsumedByAccessControlChord:Z

.field private mPowerKeyConsumedByFactoryTestChord:Z

.field private mPowerKeyConsumedByQuickShotChord:Z

.field private mPowerKeyConsumedByScreenRecordChord:Z

.field private mPowerKeyConsumedByScreenshotChord:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

.field mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field mSPenGestureInputChannel:Landroid/view/InputChannel;

.field mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

.field mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

.field mSVoiceComponent:Landroid/content/ComponentName;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

.field private final mScreenrecordChordLongPress:Ljava/lang/Runnable;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field private mSpenUspFeatureLevel:I

.field mStateGlance:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTripleTapOnHomeBehavior:I

.field mUserSetupComplete:Z

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceTalkComponent:Landroid/content/ComponentName;

.field private mVolumeDownKeyConsumedByAccessControlChord:Z

.field private mVolumeDownKeyConsumedByQuickShotChord:Z

.field private mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeUpKeyConsumedByScreenRecordChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 131
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    .line 363
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 3638
    sput-object v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 3639
    sput-object v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3640
    const/16 v0, 0x3e8

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 153
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    .line 165
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .line 169
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 181
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 182
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 241
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 242
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 246
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 250
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 260
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 261
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 265
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 273
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasVoiceMemoComponent:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasUltraSonicPackage:Z

    .line 286
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 302
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 306
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 314
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 318
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 331
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    .line 335
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    .line 336
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStateGlance:Z

    .line 341
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 345
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    .line 348
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 349
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 350
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 351
    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 367
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    .line 369
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 453
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 1230
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 1737
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 1772
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 1824
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 1863
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 2004
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    .line 2038
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 2050
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 2051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 2052
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 3230
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 3304
    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateAvailableVoiceCommand()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method private addPowerKeyClickAction(I)V
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    if-eqz v0, :cond_9

    .line 2766
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTripleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->addAction(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;I)V

    .line 2768
    :cond_9
    return-void
.end method

.method private cancelPendingAccessControlChordAction()V
    .registers 3

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1822
    return-void
.end method

.method private cancelPendingFactoryTestChordAction()V
    .registers 3

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1770
    return-void
.end method

.method private cancelPendingQuickShotChordAction()V
    .registers 3

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2036
    return-void
.end method

.method private cancelPendingSafetyAssuranceChordAction()V
    .registers 3

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1860
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1861
    :cond_14
    return-void
.end method

.method private cancelPendingScreenrecordChordAction()V
    .registers 3

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2002
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1735
    return-void
.end method

.method public static getFocusedWindowPkgName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3563
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "UNKNOWN"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    goto :goto_6
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 3

    .prologue
    .line 1688
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3

    .prologue
    .line 3269
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 3271
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_13

    .line 3272
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :cond_13
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 820
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 825
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 827
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 828
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_13
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 3278
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3280
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 3281
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :cond_13
    return-object v0
.end method

.method private interceptAccessControlChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1788
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-nez v2, :cond_8

    .line 1818
    :cond_7
    :goto_7
    return-void

    .line 1789
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_48

    .line 1791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1792
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 1795
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 1796
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 1797
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1798
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1799
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1800
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1801
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1804
    .end local v0    # "now":J
    :cond_48
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_7

    .line 1805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1806
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 1809
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 1810
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 1811
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1812
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1813
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1814
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1815
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method

.method private interceptFactoryTestChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1752
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1766
    :cond_9
    :goto_9
    return-void

    .line 1753
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_9

    .line 1754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1755
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 1757
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1758
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1759
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1760
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1761
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1762
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1763
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method private interceptSafetyAssuranceChord()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1841
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1856
    :cond_d
    :goto_d
    return-void

    .line 1843
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_d

    .line 1845
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 1846
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 1848
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 1849
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1850
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1851
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1852
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d
.end method

.method private interceptScreenRecordChord()V
    .registers 8

    .prologue
    const-wide/16 v4, 0x96

    const/4 v6, 0x1

    .line 1965
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1998
    :cond_9
    :goto_9
    return-void

    .line 1966
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_bc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_bc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_bc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_bc

    .line 1967
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1968
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_80

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_80

    .line 1970
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_6a

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_6a
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1972
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1973
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1974
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1975
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 1978
    :cond_80
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1981
    .end local v0    # "now":J
    :cond_bc
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_9

    .line 1983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1984
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_138

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_138

    .line 1986
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_11c

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPowerKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_11c
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1988
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1989
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1990
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1991
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1992
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 1995
    :cond_138
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPowerKeyTime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 877
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 879
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 881
    const/4 v2, 0x1

    .line 886
    :cond_12
    :goto_12
    return v2

    .line 885
    :catch_13
    move-exception v0

    .line 886
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method private isHMTLongClick()V
    .registers 6

    .prologue
    .line 3614
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3615
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1a

    .line 3617
    :try_start_6
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3618
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_17

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: CALL key - short press down while ringing: Reject the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    :cond_17
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 3635
    :cond_1a
    :goto_1a
    return-void

    .line 3621
    :cond_1b
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_26

    const-string v3, "SamsungWindowManager"

    const-string v4, "seethrough Camara"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3623
    .local v1, "seethroughintent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.gvr.seethrough"

    const-string v4, "com.samsung.android.gvr.seethrough.CameraActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3624
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_4a

    .line 3626
    :try_start_37
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_4a

    goto :goto_1a

    .line 3627
    :catch_3d
    move-exception v0

    .line 3628
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_3e
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "SamsungWindowManager"

    const-string v4, "Fail to launch seethrough Camera"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_1a

    .line 3631
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v1    # "seethroughintent":Landroid/content/Intent;
    :catch_4a
    move-exception v0

    .line 3632
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "SamsungWindowManager"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private isHMTSingleClick()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 3594
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3595
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3d

    .line 3597
    :try_start_7
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3598
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_18

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: CALL key - short press down while ringing: Answer the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    :cond_18
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 3610
    :goto_1b
    return v2

    .line 3601
    :cond_1c
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3602
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2d

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: ENDCALL key - short press down while offhook: End the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_2d
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_30} :catch_31

    goto :goto_1b

    .line 3606
    :catch_31
    move-exception v0

    .line 3607
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3d

    const-string v2, "SamsungWindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3610
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3d
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private isOneTouchReportEnabled()Z
    .registers 18

    .prologue
    .line 1907
    const-string v15, "go.police.report"

    .line 1908
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 1910
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1911
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1913
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1914
    const/4 v2, 0x0

    .line 1959
    :goto_11
    return v2

    .line 1918
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1920
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1a
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1922
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_2c

    move-result v2

    if-nez v2, :cond_2f

    .line 1924
    const/4 v2, 0x0

    goto :goto_11

    .line 1926
    :catch_2c
    move-exception v11

    .line 1928
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_11

    .line 1932
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2f
    const-string v9, "content://go.police.provider.report"

    .line 1933
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1935
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_67

    .line 1936
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1938
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_62

    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1939
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1941
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_62

    .line 1942
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_6b
    .catchall {:try_start_4b .. :try_end_5d} :catchall_75

    move-result v10

    .line 1943
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_69

    const/4 v12, 0x1

    .line 1953
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_62
    :goto_62
    if-eqz v7, :cond_67

    .line 1954
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_67
    :goto_67
    move v2, v12

    .line 1959
    goto :goto_11

    .line 1943
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_69
    const/4 v12, 0x0

    goto :goto_62

    .line 1950
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_6b
    move-exception v11

    .line 1951
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    .line 1953
    if-eqz v7, :cond_67

    .line 1954
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 1953
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v2

    if-eqz v7, :cond_7b

    .line 1954
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v2
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 893
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 894
    const/4 v2, 0x1

    .line 899
    :cond_12
    :goto_12
    return v2

    .line 898
    :catch_13
    move-exception v0

    .line 899
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method private isScreenCaptureEnabled()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 854
    const/4 v0, 0x1

    .line 856
    .local v0, "isScreenCaptureEnabled":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_12

    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 861
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_47

    .line 862
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEDM.getRestrictionPolicy().isScreenCaptureEnabledEx(true) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledEx(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v0, 0x0

    .line 865
    const/4 v1, 0x0

    .line 868
    :goto_46
    return v1

    :cond_47
    move v1, v0

    goto :goto_46
.end method

.method private playSound(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2280
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2281
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2283
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2285
    :try_start_15
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2286
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_3a

    .line 2292
    :cond_1d
    :goto_1d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 2293
    if-eqz v0, :cond_5c

    .line 2294
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2296
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_54

    .line 2297
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2298
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2307
    .end local v2    # "masterStreamVolume":I
    :goto_39
    return-void

    .line 2287
    :catch_3a
    move-exception v1

    .line 2288
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2301
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_54
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2305
    .end local v2    # "masterStreamVolume":I
    :cond_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private playSoundEffect()V
    .registers 4

    .prologue
    .line 2410
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2411
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1c

    .line 2412
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2413
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2421
    :goto_13
    return-void

    .line 2416
    :cond_14
    const-string v1, "SamsungWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2419
    :cond_1c
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private setUvsOrieatation(I)V
    .registers 3
    .param p1, "request"    # I

    .prologue
    .line 3218
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_13

    .line 3219
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    const/16 v0, 0x9

    if-ne p1, v0, :cond_14

    .line 3223
    :cond_11
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 3228
    :cond_13
    :goto_13
    return-void

    .line 3225
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_13
.end method

.method private startSGA(Ljava/lang/String;)V
    .registers 7
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 3514
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3515
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3516
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3518
    if-eqz v1, :cond_22

    .line 3520
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_14} :catch_15

    .line 3527
    :cond_14
    :goto_14
    return-void

    .line 3521
    :catch_15
    move-exception v0

    .line 3522
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3525
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_22
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private takeScreenshot(I)V
    .registers 10
    .param p1, "event"    # I

    .prologue
    .line 2080
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2081
    :try_start_3
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2b

    .line 2082
    const-string v4, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeScreenshot : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPerformEditAfterScreenCapture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_2b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v4, :cond_4b

    .line 2087
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2088
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2089
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2090
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2108
    :cond_49
    :goto_49
    monitor-exit v5

    .line 2109
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4a
    return-void

    .line 2092
    :cond_4b
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_59

    .line 2093
    monitor-exit v5

    goto :goto_4a

    .line 2108
    :catchall_56
    move-exception v4

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v4

    .line 2095
    :cond_59
    :try_start_59
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2098
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2099
    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .line 2101
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2103
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2104
    .local v3, "runnable":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8b
    .catchall {:try_start_59 .. :try_end_8b} :catchall_56

    goto :goto_49
.end method

.method private updateAvailableVoiceCommand()V
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1167
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 1171
    :goto_13
    return-void

    .line 1169
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    goto :goto_13
.end method

.method private updateWacomOffset(I)V
    .registers 7
    .param p1, "rotation"    # I

    .prologue
    .line 2359
    const/4 v1, 0x0

    .line 2361
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2b
    .catchall {:try_start_1 .. :try_end_d} :catchall_3a

    .line 2362
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_49
    .catchall {:try_start_f .. :try_end_12} :catchall_46

    .line 2369
    if-eqz v2, :cond_17

    .line 2370
    :try_start_14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v1, v2

    .line 2376
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_18
    :goto_18
    return-void

    .line 2372
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_19
    move-exception v0

    .line 2373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 2375
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_18

    .line 2363
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v3

    .line 2369
    :goto_20
    if-eqz v1, :cond_18

    .line 2370
    :try_start_22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 2372
    :catch_26
    move-exception v0

    .line 2373
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2365
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 2366
    .local v0, "e":Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 2369
    if-eqz v1, :cond_18

    .line 2370
    :try_start_31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_18

    .line 2372
    :catch_35
    move-exception v0

    .line 2373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2368
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v3

    .line 2369
    :goto_3b
    if-eqz v1, :cond_40

    .line 2370
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 2374
    :cond_40
    :goto_40
    throw v3

    .line 2372
    :catch_41
    move-exception v0

    .line 2373
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 2368
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3b

    .line 2365
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2c

    .line 2363
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_20
.end method


# virtual methods
.method public callAccessibilityScreenCurtain()V
    .registers 5

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1199
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1202
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_17
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1209
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_1a
    return-void

    .line 1203
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_1b
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 1207
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_20
    const-string v2, "SamsungWindowManager"

    const-string v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public checkMenuLongPressIgnore()Z
    .registers 2

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->checkMenuLongPressIgnore()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$1700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 3546
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "SamsungWindowManager"

    const-string v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    :cond_b
    :try_start_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3549
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3550
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3552
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_24} :catch_25

    .line 3558
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_24
    return-void

    .line 3553
    :catch_25
    move-exception v0

    .line 3555
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_24
.end method

.method public downloadForSamsungApps()V
    .registers 6

    .prologue
    .line 3530
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "SamsungWindowManager"

    const-string v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    :cond_b
    const-string v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 3533
    .local v2, "url":Ljava/lang/String;
    :try_start_d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3535
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3536
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3538
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 3543
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2a
    return-void

    .line 3539
    :catch_2b
    move-exception v0

    .line 3541
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3682
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3683
    const-string v0, " mGloveState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3684
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3685
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3686
    const-string v0, " mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3687
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3688
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3689
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3690
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3691
    const-string v0, " mEasySetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3692
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3693
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3694
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3695
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3696
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3697
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3699
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3700
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3701
    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3702
    const-string v0, " mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3703
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOpenByNotification="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3707
    return-void
.end method

.method public enableSPenGesture()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 3160
    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5c

    .line 3161
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-nez v2, :cond_5c

    .line 3162
    new-instance v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .line 3163
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setVisibility(I)V

    .line 3166
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 3168
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x831

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3169
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3172
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3173
    const-string v2, "SPenGesture"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3174
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3175
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3176
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3178
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "SPenGestureView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 3179
    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    .line 3183
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_5c
    return-void
.end method

.method public endCallByGamekey()Z
    .registers 8

    .prologue
    .line 3434
    const/4 v1, 0x0

    .line 3436
    .local v1, "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3437
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_11

    .line 3439
    :try_start_7
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3440
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_36

    move-result v1

    .line 3448
    :cond_11
    :goto_11
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3449
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3450
    .local v3, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_27

    .line 3452
    :try_start_1d
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3453
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_43

    move-result v1

    .line 3462
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_27
    :goto_27
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v4

    .line 3464
    .local v4, "voipInterfaceService":Landroid/os/IVoIPInterface;
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 3465
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_50

    move-result v1

    .line 3470
    :cond_35
    :goto_35
    return v1

    .line 3442
    .end local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_36
    move-exception v0

    .line 3443
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 3455
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_43
    move-exception v0

    .line 3456
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 3467
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    .restart local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_50
    move-exception v0

    .line 3468
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_35

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 4

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 849
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 850
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 836
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 839
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 840
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "now"    # J

    .prologue
    const-wide/16 v5, 0x96

    .line 1432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 1433
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4c

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_4c

    .line 1435
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v3, :cond_27

    .line 1437
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1502
    :goto_26
    return-wide v1

    .line 1441
    :cond_27
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_3f

    .line 1442
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1443
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1445
    .local v1, "timeoutTime":J
    goto :goto_26

    .line 1448
    .end local v1    # "timeoutTime":J
    :cond_3f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_4c

    .line 1449
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long v1, v3, v5

    .line 1451
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1455
    .end local v1    # "timeoutTime":J
    :cond_4c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v3

    if-eqz v3, :cond_70

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_70

    .line 1457
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_63

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_63

    .line 1458
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1460
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1462
    .end local v1    # "timeoutTime":J
    :cond_63
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_70

    .line 1463
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1465
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1469
    .end local v1    # "timeoutTime":J
    :cond_70
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v3, :cond_7c

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1471
    :cond_7c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_89

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_89

    .line 1472
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long v1, v3, v5

    .line 1474
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1478
    .end local v1    # "timeoutTime":J
    :cond_89
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v3, :cond_ac

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_ac

    .line 1479
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_9e

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_9e

    .line 1480
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1482
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1484
    .end local v1    # "timeoutTime":J
    :cond_9e
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_ac

    .line 1485
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long v1, v3, v5

    .line 1487
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .line 1491
    .end local v1    # "timeoutTime":J
    :cond_ac
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_d2

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_d2

    .line 1492
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v3, :cond_c4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_c4

    .line 1493
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long v1, v3, v5

    .line 1495
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .line 1496
    .end local v1    # "timeoutTime":J
    :cond_c4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_d2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v3, :cond_d2

    .line 1497
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1499
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .end local v1    # "timeoutTime":J
    :cond_d2
    move-wide v1, p2

    .line 1502
    goto/16 :goto_26
.end method

.method public getUvsOrientation()I
    .registers 2

    .prologue
    .line 3214
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public handleMenuLongPress()Z
    .registers 2

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public handleSamsungVolumeControl(IZZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "canceled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3017
    if-eqz p2, :cond_19

    .line 3018
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-nez v0, :cond_18

    .line 3019
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    .line 3020
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->start()V

    .line 3029
    :cond_18
    :goto_18
    return-void

    .line 3024
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-eqz v0, :cond_18

    .line 3025
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 3026
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    goto :goto_18
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 470
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 471
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 472
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 473
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 474
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 475
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    .line 478
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_5b

    .line 491
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 496
    :cond_5b
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 497
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v0, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v0, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 503
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 509
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.system.action.NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.glove.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v5, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 528
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vlingo.client.samsung"

    const-string v2, "com.vlingo.client.car.CarActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    .line 530
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vlingo.midas"

    const-string v2, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    .line 532
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    .line 534
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 536
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 540
    const-string v0, "com.sec.android.daynote"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 548
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateAvailableVoiceCommand()V

    .line 551
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 555
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 556
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_17d

    .line 557
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 558
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpenUspFeatureLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_17d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 561
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v0, :cond_198

    .line 562
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_198

    .line 563
    new-instance v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    .line 564
    .local v8, "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->observe()V

    .line 570
    .end local v8    # "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    :cond_198
    if-eqz v7, :cond_1bc

    .line 571
    const-string v0, "com.sec.feature.multiwindow"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    .line 572
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasMultiWindowFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1bc
    const-string v0, "LGT"

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 577
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 578
    .local v6, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 582
    .end local v6    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1d9
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .registers 29
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v19

    .line 916
    .local v19, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 917
    .local v17, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 918
    .local v20, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    .line 919
    .local v12, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_52

    const/4 v9, 0x1

    .line 921
    .local v9, "down":Z
    :goto_1d
    const/16 v23, 0x10c

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_54

    .line 922
    if-eqz v9, :cond_4f

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 924
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x3e8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 927
    :cond_4f
    const/16 v18, 0x1

    .line 1137
    :cond_51
    :goto_51
    return v18

    .line 919
    .end local v9    # "down":Z
    :cond_52
    const/4 v9, 0x0

    goto :goto_1d

    .line 928
    .restart local v9    # "down":Z
    :cond_54
    const/16 v23, 0x10d

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_83

    .line 929
    if-nez v9, :cond_80

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v23, v0

    if-eqz v23, :cond_80

    .line 930
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    .line 934
    :cond_80
    const/16 v18, 0x1

    goto :goto_51

    .line 937
    :cond_83
    const/16 v23, 0x11d

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_10e

    .line 938
    if-nez v9, :cond_f1

    .line 939
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v23

    if-nez v23, :cond_9f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_c1

    .line 940
    :cond_9f
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 941
    .local v14, "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v25, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 944
    const/16 v18, 0x0

    goto :goto_51

    .line 946
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_c1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10a

    .line 948
    const-string v23, "SamsungWindowManager"

    const-string v24, "launch drivelink"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.sec.android.automotive.drivelink"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 950
    .restart local v14    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_102

    .line 952
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e2 .. :try_end_f1} :catch_f5

    .line 965
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_f1
    :goto_f1
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 953
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_f5
    move-exception v10

    .line 954
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    const-string v23, "SamsungWindowManager"

    const-string v24, "No activity to launch drivelink."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f1

    .line 957
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :cond_102
    const-string v23, "SamsungWindowManager"

    const-string v24, "drivelink package is not found."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 961
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto :goto_f1

    .line 966
    :cond_10e
    const/16 v23, 0x11e

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_139

    .line 967
    if-nez v9, :cond_135

    .line 968
    const-string v23, "SamsungWindowManager"

    const-string v24, "launch voice LPSD"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v3, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .line 970
    .local v3, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 973
    .end local v3    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_135
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 977
    :cond_139
    const/16 v23, 0x111

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_15f

    .line 978
    const/16 v18, 0x1

    .line 979
    .local v18, "keyIntercept":Z
    if-nez v9, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_51

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchingGamekey(Z)Z

    move-result v18

    goto/16 :goto_51

    .line 987
    .end local v18    # "keyIntercept":Z
    :cond_15f
    const/16 v23, 0xf0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_366

    .line 988
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v23

    if-eqz v23, :cond_30f

    .line 989
    const-string v23, "service.media.dmb"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 990
    .local v8, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "dmb_antenna_auto_start"

    const/16 v25, 0x0

    const/16 v26, -0x2

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2bc

    const/4 v15, 0x1

    .line 992
    .local v15, "isDmbAutoStarton":Z
    :goto_190
    const/4 v5, 0x0

    .line 993
    .local v5, "b_dmb_running":Z
    const/16 v16, 0x0

    .line 994
    .local v16, "isSecureKeyguard":Z
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1a8

    .line 995
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2bf

    .line 996
    const/4 v5, 0x1

    .line 1002
    :cond_1a8
    :goto_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v16

    .line 1004
    :cond_1c4
    const-string v23, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isSecureKeyguard="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isDmbAutoStarton="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    if-nez v9, :cond_251

    if-nez v20, :cond_251

    .line 1010
    :try_start_1fc
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .line 1011
    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1012
    .local v22, "strDMBCount":Ljava/lang/String;
    const-string v23, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "TDMB_DET_COUNT : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-eqz v22, :cond_2cc

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2cc

    .line 1015
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    const-wide/16 v25, 0x1

    add-long v6, v23, v25

    .line 1016
    .local v6, "dmb_det_count":J
    const-wide/32 v23, 0xf423f

    cmp-long v23, v6, v23

    if-lez v23, :cond_248

    .line 1017
    const-wide/16 v6, 0x1

    .line 1019
    :cond_248
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_251
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_251} :catch_2d5
    .catch Ljava/lang/NumberFormatException; {:try_start_1fc .. :try_end_251} :catch_2f2

    .line 1030
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v6    # "dmb_det_count":J
    .end local v22    # "strDMBCount":Ljava/lang/String;
    :cond_251
    :goto_251
    if-nez v9, :cond_480

    if-nez v20, :cond_480

    if-nez v5, :cond_480

    if-nez v16, :cond_480

    if-eqz v15, :cond_480

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v23

    if-nez v23, :cond_480

    .line 1033
    const-string v23, "SamsungWindowManager"

    const-string v24, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v23, Landroid/content/ComponentName;

    const-string v24, "com.sec.android.app.dmb"

    const-string v25, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1037
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v23

    if-eqz v23, :cond_2b8

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1048
    :cond_2b8
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 990
    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "isDmbAutoStarton":Z
    .end local v16    # "isSecureKeyguard":Z
    :cond_2bc
    const/4 v15, 0x0

    goto/16 :goto_190

    .line 997
    .restart local v5    # "b_dmb_running":Z
    .restart local v15    # "isDmbAutoStarton":Z
    .restart local v16    # "isSecureKeyguard":Z
    :cond_2bf
    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a8

    .line 998
    const/4 v5, 0x0

    goto/16 :goto_1a8

    .line 1021
    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v22    # "strDMBCount":Ljava/lang/String;
    :cond_2cc
    :try_start_2cc
    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d3
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2d3} :catch_2d5
    .catch Ljava/lang/NumberFormatException; {:try_start_2cc .. :try_end_2d3} :catch_2f2

    goto/16 :goto_251

    .line 1023
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v22    # "strDMBCount":Ljava/lang/String;
    :catch_2d5
    move-exception v10

    .line 1024
    .local v10, "e":Ljava/io/IOException;
    const-string v23, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IOException : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_251

    .line 1025
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2f2
    move-exception v10

    .line 1026
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string v23, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NumberFormatException : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_251

    .line 1052
    .end local v5    # "b_dmb_running":Z
    .end local v8    # "dmb_running":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "isDmbAutoStarton":Z
    .end local v16    # "isSecureKeyguard":Z
    :cond_30f
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v23

    if-eqz v23, :cond_480

    .line 1054
    const/16 v16, 0x0

    .line 1055
    .restart local v16    # "isSecureKeyguard":Z
    const-string v23, "SamsungWindowManager"

    const-string v24, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_33a

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v16

    .line 1059
    :cond_33a
    if-nez v9, :cond_480

    if-nez v20, :cond_480

    if-nez v16, :cond_480

    .line 1060
    const-string v23, "SamsungWindowManager"

    const-string v24, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1062
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v23, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1064
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1067
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isSecureKeyguard":Z
    :cond_366
    const/16 v23, 0xf1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_3dc

    .line 1068
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v23

    if-eqz v23, :cond_3ae

    .line 1069
    if-nez v9, :cond_480

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v23

    if-nez v23, :cond_480

    .line 1070
    const-string v23, "SamsungWindowManager"

    const-string v24, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1072
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v23, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1075
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1079
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_3ae
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v23

    if-eqz v23, :cond_480

    .line 1080
    if-nez v9, :cond_480

    .line 1081
    const-string v23, "SamsungWindowManager"

    const-string v24, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1083
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v23, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1085
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1093
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_3dc
    const/16 v23, 0xe2

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_401

    .line 1094
    if-eqz v9, :cond_480

    if-nez v19, :cond_480

    if-nez v20, :cond_480

    .line 1096
    :try_start_3ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v21

    .line 1097
    .local v21, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v21, :cond_3f3

    .line 1098
    invoke-interface/range {v21 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_3f3
    .catch Landroid/os/RemoteException; {:try_start_3ea .. :try_end_3f3} :catch_3f7

    .line 1104
    .end local v21    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_3f3
    :goto_3f3
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1100
    :catch_3f7
    move-exception v11

    .line 1102
    .local v11, "ex":Landroid/os/RemoteException;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3f3

    .line 1109
    .end local v11    # "ex":Landroid/os/RemoteException;
    :cond_401
    const/16 v23, 0xdd

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_411

    const/16 v23, 0xdc

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_434

    .line 1111
    :cond_411
    if-eqz v9, :cond_480

    if-nez v19, :cond_480

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v23

    if-nez v23, :cond_480

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "input_method"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    .line 1114
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_430

    .line 1115
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->setBrightnessWithKeyboard(I)V

    .line 1117
    :cond_430
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1121
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_434
    const/16 v23, 0x11c

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_461

    .line 1122
    if-nez v9, :cond_45d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v23

    if-eqz v23, :cond_45d

    if-nez v19, :cond_45d

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v23

    if-nez v23, :cond_45d

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    .line 1127
    :cond_45d
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1129
    :cond_461
    const/16 v23, 0x11f

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_480

    .line 1130
    if-nez v9, :cond_47c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v23

    if-eqz v23, :cond_47c

    if-nez v19, :cond_47c

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    move-object/from16 v23, v0

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static/range {v23 .. v23}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    .line 1133
    :cond_47c
    const/16 v18, 0x1

    goto/16 :goto_51

    .line 1137
    :cond_480
    const/16 v18, 0x0

    goto/16 :goto_51
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1243
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_15

    move v1, v3

    .line 1244
    .local v1, "down":Z
    :goto_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 1245
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1247
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_1e8

    .line 1429
    :cond_14
    :goto_14
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "keyCode":I
    :cond_15
    move v1, v4

    .line 1243
    goto :goto_9

    .line 1252
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_17
    const/16 v5, 0x19

    if-eq v2, v5, :cond_1f

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_67

    .line 1254
    :cond_1f
    if-eqz v1, :cond_55

    .line 1255
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1256
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 1258
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1259
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1260
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 1261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1262
    if-eqz p3, :cond_4f

    .line 1263
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1264
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 1265
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1266
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto :goto_14

    .line 1268
    :cond_4f
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto :goto_14

    .line 1273
    :cond_55
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1274
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1275
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1276
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1278
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto :goto_14

    .line 1280
    :cond_67
    const/16 v5, 0x18

    if-eq v2, v5, :cond_6f

    const/16 v5, 0xa8

    if-ne v2, v5, :cond_14

    .line 1282
    :cond_6f
    if-eqz v1, :cond_9e

    .line 1283
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1284
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 1286
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1287
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1288
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1289
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 1290
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1291
    if-eqz p3, :cond_14

    .line 1292
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    goto/16 :goto_14

    .line 1297
    :cond_9e
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1298
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1299
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1312
    :sswitch_ae
    if-eqz v1, :cond_e3

    .line 1313
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1314
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1315
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    .line 1316
    if-eqz p3, :cond_dc

    .line 1317
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1318
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1319
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 1320
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1322
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    .line 1324
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_14

    .line 1326
    :cond_dc
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    .line 1327
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto/16 :goto_14

    .line 1331
    :cond_e3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1332
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1333
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1334
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1335
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    .line 1336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto/16 :goto_14

    .line 1341
    :sswitch_f6
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1342
    if-eqz v1, :cond_12c

    .line 1343
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1345
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1346
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    .line 1347
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1348
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1349
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 1350
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1352
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1353
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_14

    .line 1356
    :cond_12c
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1357
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1359
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1365
    :sswitch_139
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1366
    if-eqz v1, :cond_16c

    .line 1367
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1369
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1370
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    .line 1371
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1372
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1373
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1374
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1375
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    goto/16 :goto_14

    .line 1379
    :cond_16c
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1380
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1381
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1382
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1388
    :sswitch_179
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1389
    if-eqz v1, :cond_1ac

    .line 1390
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1392
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1393
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    .line 1394
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1395
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1396
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1397
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1398
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 1399
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_14

    .line 1402
    :cond_1ac
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1403
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1404
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1405
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1411
    :sswitch_1b9
    if-eqz v1, :cond_1d8

    .line 1412
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1414
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1415
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    .line 1416
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_14

    .line 1420
    :cond_1d8
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1421
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1422
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1423
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1424
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    goto/16 :goto_14

    .line 1247
    :sswitch_data_1e8
    .sparse-switch
        0x3 -> :sswitch_f6
        0x18 -> :sswitch_17
        0x19 -> :sswitch_17
        0x1a -> :sswitch_ae
        0xa8 -> :sswitch_17
        0xa9 -> :sswitch_17
        0xf5 -> :sswitch_179
        0xfb -> :sswitch_139
        0x109 -> :sswitch_1b9
    .end sparse-switch
.end method

.method public interceptQuickShotChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 2019
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2032
    :cond_9
    :goto_9
    return-void

    .line 2021
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_9

    .line 2022
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2023
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 2025
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    .line 2026
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    .line 2027
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2028
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2029
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public interceptScreenshotChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1692
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1731
    :cond_b
    :goto_b
    return-void

    .line 1694
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1695
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_51

    .line 1696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1697
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 1699
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1700
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1701
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1702
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1703
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1704
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1707
    .end local v0    # "now":J
    :cond_51
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    .line 1708
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1709
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 1711
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1712
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1713
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1714
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1715
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1719
    .end local v0    # "now":J
    :cond_83
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_b

    .line 1720
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1721
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 1723
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1724
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1725
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1726
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1727
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1507
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1508
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1509
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    move v0, v3

    .line 1511
    .local v0, "down":Z
    :goto_11
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    if-eq v2, v5, :cond_25

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_25

    .line 1519
    :goto_22
    return v3

    .end local v0    # "down":Z
    :cond_23
    move v0, v4

    .line 1509
    goto :goto_11

    .restart local v0    # "down":Z
    :cond_25
    move v3, v4

    .line 1519
    goto :goto_22
.end method

.method public isBlockedPowerKeyByKeyTest()Z
    .registers 4

    .prologue
    .line 2664
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2665
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2666
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2673
    :cond_4e
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_59

    const-string v1, "SamsungWindowManager"

    const-string v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_59
    const/4 v1, 0x1

    .line 2677
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_5a
    return v1

    :cond_5b
    const/4 v1, 0x0

    goto :goto_5a
.end method

.method public isCameraOnTop()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3411
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3420
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_20

    .line 3421
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3424
    :cond_1f
    const/4 v1, 0x1

    .line 3429
    :cond_20
    return v1
.end method

.method public isCombinationKeyTriggered()Z
    .registers 2

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_20

    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_22

    .line 1679
    :cond_20
    const/4 v0, 0x1

    .line 1681
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x19

    const/16 v6, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1524
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1525
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1526
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_31

    move v0, v3

    .line 1531
    .local v0, "down":Z
    :goto_16
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_56

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_56

    .line 1533
    if-eq v2, v7, :cond_28

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_33

    :cond_28
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_33

    .line 1536
    if-nez v0, :cond_30

    .line 1537
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1672
    :cond_30
    :goto_30
    return v3

    .end local v0    # "down":Z
    :cond_31
    move v0, v4

    .line 1526
    goto :goto_16

    .line 1541
    .restart local v0    # "down":Z
    :cond_33
    if-ne v2, v8, :cond_3e

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_3e

    .line 1543
    if-nez v0, :cond_30

    .line 1544
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1548
    :cond_3e
    if-ne v2, v6, :cond_49

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_49

    .line 1550
    if-nez v0, :cond_30

    .line 1551
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1555
    :cond_49
    const/16 v5, 0xfb

    if-ne v2, v5, :cond_56

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_56

    .line 1557
    if-nez v0, :cond_30

    .line 1558
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1564
    :cond_56
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v5

    if-eqz v5, :cond_83

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_83

    .line 1566
    const/16 v5, 0x18

    if-ne v2, v5, :cond_6d

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_6d

    .line 1568
    if-nez v0, :cond_30

    .line 1569
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1573
    :cond_6d
    if-ne v2, v8, :cond_78

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_78

    .line 1575
    if-nez v0, :cond_30

    .line 1576
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1580
    :cond_78
    if-ne v2, v6, :cond_83

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_83

    .line 1582
    if-nez v0, :cond_30

    .line 1583
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1589
    :cond_83
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v5, :cond_8f

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1591
    :cond_8f
    if-ne v2, v7, :cond_9a

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_9a

    .line 1593
    if-nez v0, :cond_30

    .line 1594
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_30

    .line 1598
    :cond_9a
    const/16 v5, 0x18

    if-ne v2, v5, :cond_a7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_a7

    .line 1600
    if-nez v0, :cond_30

    .line 1601
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_30

    .line 1607
    :cond_a7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v5, :cond_e1

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_e1

    .line 1608
    if-ne v2, v8, :cond_bb

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_bb

    .line 1610
    if-nez v0, :cond_30

    .line 1611
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1615
    :cond_bb
    if-ne v2, v7, :cond_c7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_c7

    .line 1617
    if-nez v0, :cond_30

    .line 1618
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1622
    :cond_c7
    if-ne v2, v6, :cond_d3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_d3

    .line 1624
    if-nez v0, :cond_30

    .line 1625
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1629
    :cond_d3
    const/16 v5, 0xf5

    if-ne v2, v5, :cond_e1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_e1

    .line 1631
    if-nez v0, :cond_30

    .line 1632
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1638
    :cond_e1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_105

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_105

    .line 1639
    if-ne v2, v6, :cond_f7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_f7

    .line 1641
    if-nez v0, :cond_30

    .line 1642
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_30

    .line 1646
    :cond_f7
    const/16 v5, 0x109

    if-ne v2, v5, :cond_105

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_105

    .line 1648
    if-nez v0, :cond_30

    .line 1649
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_30

    .line 1655
    :cond_105
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 1656
    if-ne v2, v7, :cond_117

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_117

    .line 1658
    if-nez v0, :cond_30

    .line 1659
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    goto/16 :goto_30

    .line 1663
    :cond_117
    if-ne v2, v6, :cond_123

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_123

    .line 1665
    if-nez v0, :cond_30

    .line 1666
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    goto/16 :goto_30

    :cond_123
    move v3, v4

    .line 1672
    goto/16 :goto_30
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 872
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isDockHomeEnabled()Z
    .registers 2

    .prologue
    .line 2195
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .registers 2

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .registers 2

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .registers 2

    .prologue
    .line 2189
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl()Z
    .registers 2

    .prologue
    .line 1835
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v0
.end method

.method public isGloveModeEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2338
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isGripRotationLocked()Z
    .registers 2

    .prologue
    .line 2201
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    return v0
.end method

.method public isHMTButtonClick(ZIZ)Z
    .registers 8
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3569
    if-eqz p1, :cond_29

    .line 3570
    if-nez p2, :cond_13

    .line 3571
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "SamsungWindowManager"

    const-string v3, "HMT button down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    :cond_11
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 3574
    :cond_13
    const/4 v2, 0x7

    if-ne p2, v2, :cond_42

    if-nez p3, :cond_42

    .line 3575
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 3576
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_25

    const-string v1, "SamsungWindowManager"

    const-string v2, "HMT button long click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTLongClick()V

    .line 3590
    :cond_28
    :goto_28
    return v0

    .line 3581
    :cond_29
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    if-eqz v2, :cond_42

    .line 3582
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 3583
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3a

    const-string v2, "SamsungWindowManager"

    const-string v3, "HMT button single click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :cond_3a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSingleClick()Z

    move-result v2

    if-nez v2, :cond_28

    move v0, v1

    .line 3587
    goto :goto_28

    :cond_42
    move v0, v1

    .line 3590
    goto :goto_28
.end method

.method public isKidsModeEnabled()Z
    .registers 2

    .prologue
    .line 2183
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isKnoxActivated()Z
    .registers 3

    .prologue
    .line 2207
    const-string v0, "true"

    const-string v1, "dev.knoxapp.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2208
    const/4 v0, 0x1

    .line 2210
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isSideSyncPresentationRunning()Z
    .registers 2

    .prologue
    .line 3050
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .registers 2

    .prologue
    .line 1176
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUserSetupComplete()Z
    .registers 3

    .prologue
    .line 2546
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isUvsOrientationRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3207
    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3210
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 3287
    const/4 v1, 0x0

    .line 3289
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3290
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 3291
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3298
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 3293
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 3295
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 3296
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public launchFingerPrint()V
    .registers 5

    .prologue
    .line 1214
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1215
    const-string v1, "SamsungWindowManager"

    const-string v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    .line 1224
    :goto_16
    return-void

    .line 1218
    :catch_17
    move-exception v0

    .line 1219
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1222
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_20
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public launchVoiceCommand()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_54

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_54

    .line 1148
    const-string v3, "SamsungWindowManager"

    const-string v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 1150
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 1151
    .local v1, "isSecureLock":Z
    :goto_27
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_35

    const/4 v2, 0x1

    :cond_35
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1153
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1155
    :try_start_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_48} :catch_4b

    .line 1162
    .end local v1    # "isSecureLock":Z
    :goto_48
    return-void

    :cond_49
    move v1, v2

    .line 1150
    goto :goto_27

    .line 1156
    .restart local v1    # "isSecureLock":Z
    :catch_4b
    move-exception v0

    .line 1157
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1160
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_54
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned, not launch voicecommand."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public launchingGamekey(Z)Z
    .registers 11
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3474
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3475
    const/4 v5, 0x1

    .line 3510
    :cond_8
    :goto_8
    return v5

    .line 3476
    :cond_9
    if-nez p1, :cond_8

    .line 3481
    const-string v1, "com.sec.game.sga"

    .line 3482
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 3483
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3485
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3488
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_23
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2d} :catch_34

    move-result-object v2

    .line 3493
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_52

    .line 3494
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3489
    :catch_34
    move-exception v0

    .line 3490
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2e

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 3497
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_52
    :try_start_52
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_5c} :catch_6e

    move-result-object v2

    .line 3502
    :cond_5d
    :goto_5d
    if-eqz v2, :cond_8c

    .line 3503
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_6a

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_6a
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3498
    :catch_6e
    move-exception v0

    .line 3499
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5d

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 3506
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8c
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_97

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :cond_97
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_8
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 2313
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_7

    .line 2319
    :cond_6
    :goto_6
    return-void

    .line 2313
    :cond_7
    if-nez p3, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2315
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.daynote"

    const-string v2, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2316
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2317
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 2325
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    .line 2326
    .local v0, "newGloveState":I
    :goto_3
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v0, v1, :cond_a

    .line 2335
    :goto_7
    return-void

    .line 2325
    .end local v0    # "newGloveState":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2330
    .restart local v0    # "newGloveState":I
    :cond_a
    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 2332
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    const-string v2, "gloveEnable"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2333
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_35

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Glove mode enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_7
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 16
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2216
    if-eqz p3, :cond_33

    move v2, v6

    .line 2217
    .local v2, "newPenState":I
    :goto_5
    const/4 v3, 0x1

    .line 2218
    .local v3, "playSound":Z
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_2e

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_2e
    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v2, v8, :cond_35

    .line 2277
    :goto_32
    return-void

    .end local v2    # "newPenState":I
    .end local v3    # "playSound":Z
    :cond_33
    move v2, v7

    .line 2216
    goto :goto_5

    .line 2221
    .restart local v2    # "newPenState":I
    .restart local v3    # "playSound":Z
    :cond_35
    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3b

    .line 2222
    const/4 v3, 0x0

    .line 2224
    :cond_3b
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_57

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playSound : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_57
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 2228
    const/16 v8, 0x2c

    new-array v0, v8, [B

    fill-array-data v0, :array_130

    .line 2238
    .local v0, "attach_noti_ivt":[B
    const/16 v8, 0x12

    new-array v1, v8, [B

    fill-array-data v1, :array_14a

    .line 2245
    .local v1, "detach_noti_ivt":[B
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detachment_notification"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2248
    .local v4, "sound":Ljava/lang/String;
    if-eqz v4, :cond_f1

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2250
    .local v5, "soundPath":[Ljava/lang/String;
    :goto_7c
    if-eqz p3, :cond_f3

    .line 2252
    if-eqz v3, :cond_8b

    if-eqz v4, :cond_8b

    :try_start_82
    array-length v8, v5

    if-le v8, v6, :cond_8b

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_12c

    .line 2255
    :cond_8b
    :goto_8b
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 2270
    :goto_96
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "penInsert"

    invoke-virtual {v8, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2271
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isScreenOn"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2272
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isKeyguardLocked"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2274
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isBoot"

    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-nez v10, :cond_128

    :goto_c1
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2275
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_e6

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , broadcasted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_e6
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_32

    .line 2248
    .end local v5    # "soundPath":[Ljava/lang/String;
    :cond_f1
    const/4 v5, 0x0

    goto :goto_7c

    .line 2257
    .restart local v5    # "soundPath":[Ljava/lang/String;
    :cond_f3
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v8

    if-eqz v8, :cond_11e

    .line 2258
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2264
    :goto_104
    if-eqz v3, :cond_111

    if-eqz v4, :cond_111

    :try_start_108
    array-length v8, v5

    if-le v8, v6, :cond_111

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_111} :catch_12a

    .line 2267
    :cond_111
    :goto_111
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_96

    .line 2260
    :cond_11e
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_104

    :cond_128
    move v6, v7

    .line 2274
    goto :goto_c1

    .line 2265
    :catch_12a
    move-exception v8

    goto :goto_111

    .line 2253
    :catch_12c
    move-exception v8

    goto/16 :goto_8b

    .line 2228
    nop

    :array_130
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        -0x38t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x5ft
        0x0t
        0x0t
        0x42t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 2238
    :array_14a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x71t
    .end array-data
.end method

.method public onScreenTurnedOff(I)V
    .registers 3
    .param p1, "why"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_11

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 595
    :cond_11
    return-void
.end method

.method public onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_11

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 604
    :cond_11
    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 586
    return-void
.end method

.method public performCPUBoost()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 3643
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2a

    .line 3644
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 3645
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2a

    .line 3646
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 3647
    .local v8, "supportedCPUFreqTable":[I
    if-eqz v8, :cond_2a

    .line 3648
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3651
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_2a
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_35

    .line 3653
    :try_start_2e
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_76

    .line 3660
    :cond_35
    :goto_35
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_63

    .line 3661
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3662
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_63

    .line 3663
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3664
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_63

    array-length v0, v6

    if-lez v0, :cond_63

    .line 3665
    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_63

    .line 3666
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3670
    .end local v6    # "coreNumTable":[I
    :cond_63
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_75

    .line 3672
    :try_start_67
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_75} :catch_82

    .line 3679
    :cond_75
    :goto_75
    return-void

    .line 3654
    :catch_76
    move-exception v7

    .line 3655
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 3674
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_82
    move-exception v7

    .line 3675
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 2426
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2427
    const/4 v7, 0x0

    .line 2540
    :goto_9
    return v7

    .line 2430
    :cond_a
    const/4 v1, 0x0

    .line 2432
    .local v1, "hapticsDisabledByPowerSavingMode":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_d6

    const/4 v0, 0x1

    .line 2435
    .local v0, "hapticsDisabled":Z
    :goto_1c
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_switch"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d9

    const/4 v5, 0x1

    .line 2439
    .local v5, "powerSavingModeEnabled":Z
    :goto_2e
    if-eqz v5, :cond_93

    .line 2440
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_haptic_feedback"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_dc

    const/4 v6, 0x1

    .line 2443
    .local v6, "turnOffHapticFeedbackEnabled":Z
    :goto_42
    if-eqz v6, :cond_93

    .line 2444
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_auto_turn_on"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_df

    const/4 v4, 0x1

    .line 2447
    .local v4, "powerSavingAutoModeEnabled":Z
    :goto_56
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "isLowLevel"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e2

    const/4 v2, 0x1

    .line 2449
    .local v2, "isLowLevelBattery":Z
    :goto_68
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_8e

    .line 2450
    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLowLevelBattery = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_8e
    if-eqz v4, :cond_e4

    .line 2455
    if-eqz v2, :cond_93

    .line 2456
    const/4 v1, 0x1

    .line 2464
    .end local v2    # "isLowLevelBattery":Z
    .end local v4    # "powerSavingAutoModeEnabled":Z
    .end local v6    # "turnOffHapticFeedbackEnabled":Z
    :cond_93
    :goto_93
    if-nez p3, :cond_e6

    if-eqz v5, :cond_99

    if-nez v1, :cond_a3

    :cond_99
    if-nez v0, :cond_a3

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 2467
    :cond_a3
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_d3

    .line 2468
    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PowerSavingModeEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_d3
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2432
    .end local v0    # "hapticsDisabled":Z
    .end local v5    # "powerSavingModeEnabled":Z
    :cond_d6
    const/4 v0, 0x0

    goto/16 :goto_1c

    .line 2435
    .restart local v0    # "hapticsDisabled":Z
    :cond_d9
    const/4 v5, 0x0

    goto/16 :goto_2e

    .line 2440
    .restart local v5    # "powerSavingModeEnabled":Z
    :cond_dc
    const/4 v6, 0x0

    goto/16 :goto_42

    .line 2444
    .restart local v6    # "turnOffHapticFeedbackEnabled":Z
    :cond_df
    const/4 v4, 0x0

    goto/16 :goto_56

    .line 2447
    .restart local v4    # "powerSavingAutoModeEnabled":Z
    :cond_e2
    const/4 v2, 0x0

    goto :goto_68

    .line 2459
    .restart local v2    # "isLowLevelBattery":Z
    :cond_e4
    const/4 v1, 0x1

    goto :goto_93

    .line 2475
    .end local v2    # "isLowLevelBattery":Z
    .end local v4    # "powerSavingAutoModeEnabled":Z
    .end local v6    # "turnOffHapticFeedbackEnabled":Z
    :cond_e6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v7

    if-eqz v7, :cond_110

    .line 2476
    sparse-switch p2, :sswitch_data_152

    .line 2487
    const/16 v7, 0x9

    if-lt p2, v7, :cond_10d

    const/16 v7, 0x16

    if-gt p2, v7, :cond_10d

    .line 2489
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v7, p2, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 2491
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 2482
    :sswitch_101
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v8, 0x9

    sget-object v9, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 2484
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 2494
    :cond_10d
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2496
    :cond_110
    const/4 v7, 0x1

    new-array v3, v7, [J

    .line 2497
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_168

    .line 2530
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2503
    :sswitch_119
    const/4 v7, 0x0

    const-wide/16 v8, 0x32

    aput-wide v8, v3, v7

    .line 2532
    :goto_11e
    array-length v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14b

    .line 2534
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 2540
    :goto_12a
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 2508
    :sswitch_12d
    const/4 v7, 0x0

    const-wide/16 v8, 0x32

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2512
    :sswitch_133
    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2516
    :sswitch_139
    const/4 v7, 0x0

    const-wide/16 v8, 0x1f4

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2523
    :sswitch_13f
    const/4 v7, 0x0

    const-wide/16 v8, 0x5dc

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2527
    :sswitch_145
    const/4 v7, 0x0

    const-wide/16 v8, 0x32

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2537
    :cond_14b
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v8, -0x1

    invoke-virtual {v7, v3, v8}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_12a

    .line 2476
    :sswitch_data_152
    .sparse-switch
        0x0 -> :sswitch_101
        0x1 -> :sswitch_101
        0x3 -> :sswitch_101
        0x2710 -> :sswitch_101
        0x2711 -> :sswitch_101
    .end sparse-switch

    .line 2497
    :sswitch_data_168
    .sparse-switch
        0x0 -> :sswitch_119
        0x1 -> :sswitch_119
        0x3 -> :sswitch_119
        0x9 -> :sswitch_12d
        0xa -> :sswitch_133
        0xc -> :sswitch_139
        0xd -> :sswitch_13f
        0xe -> :sswitch_145
        0x10 -> :sswitch_13f
        0x11 -> :sswitch_13f
        0x12 -> :sswitch_13f
        0x2710 -> :sswitch_119
        0x2711 -> :sswitch_119
    .end sparse-switch
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 2382
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2407
    :cond_29
    :goto_29
    return-void

    .line 2389
    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    goto :goto_29

    .line 2393
    :sswitch_32
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2394
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2396
    :cond_41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_29

    .line 2399
    :sswitch_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2400
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2401
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2403
    :cond_56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_29

    .line 2389
    :sswitch_data_5a
    .sparse-switch
        0x4 -> :sswitch_32
        0x52 -> :sswitch_32
        0x54 -> :sswitch_45
        0xbb -> :sswitch_32
    .end sparse-switch
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public sendBroadcastForAccessibility()V
    .registers 5

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1182
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1189
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1d
    return-void

    .line 1187
    :cond_1e
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3034
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_54

    .line 3036
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3039
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3040
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3041
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3042
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3043
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3044
    const/4 v1, 0x1

    .line 3046
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public setFingerPrintPending()V
    .registers 2

    .prologue
    .line 1227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1228
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 3186
    if-eqz p1, :cond_8

    .line 3187
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 3190
    :cond_8
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    if-eqz v1, :cond_25

    .line 3191
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "spengestureservice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 3192
    .local v0, "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    if-eqz p1, :cond_24

    .line 3193
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->setFocusWindow(I)V

    .line 3202
    .end local v0    # "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_24
    :goto_24
    return-void

    .line 3195
    :cond_25
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v1, :cond_24

    .line 3196
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-eqz v1, :cond_24

    .line 3197
    if-eqz p1, :cond_24

    .line 3198
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_24
.end method

.method public setOpenByNotification(ZZ)V
    .registers 4
    .param p1, "topIsFullscreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 3056
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    .line 3057
    return-void

    .line 3056
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setRotationLw(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 810
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_27

    .line 814
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    .line 817
    :cond_27
    return-void
.end method

.method public updateSettings()V
    .registers 24

    .prologue
    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 696
    .local v15, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 698
    :try_start_11
    const-string v20, "double_tab_launch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_205

    const/16 v18, 0x1

    :goto_21
    const/16 v21, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 702
    .local v4, "doubleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v4, :cond_3b

    .line 703
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 708
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v20, "direct_access"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 710
    .local v16, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_69

    .line 711
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 716
    :cond_69
    const-string v18, "lcd_curtain"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_209

    const-string v18, "accessibility_enabled"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_209

    const/16 v18, 0x1

    :goto_93
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 721
    const-string v18, "send_emergency_message"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_20d

    const/4 v11, 0x1

    .line 723
    .local v11, "isSafetyAssuranceEnabled":Z
    :goto_ac
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v11, :cond_ba

    .line 724
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 729
    :cond_ba
    const-string v18, "access_control_use"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_210

    const/4 v13, 0x1

    .line 731
    .local v13, "isUseAccessControl":Z
    :goto_cd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_db

    .line 732
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 735
    :cond_db
    const-string v18, "access_control_enabled"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_213

    const/4 v9, 0x1

    .line 737
    .local v9, "isEnabledAccessControl":Z
    :goto_ee
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v9, :cond_fc

    .line 738
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 743
    :cond_fc
    const-string v18, "kids_home_mode"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_216

    const/4 v10, 0x1

    .line 745
    .local v10, "isKidsMode":Z
    :goto_10f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v10, :cond_11d

    .line 746
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 751
    :cond_11d
    const-string v18, "easy_mode_switch"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-nez v18, :cond_219

    const/4 v8, 0x1

    .line 753
    .local v8, "isEasyMode":Z
    :goto_130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v8, :cond_13e

    .line 754
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 759
    :cond_13e
    const-string v18, "edit_after_screen_capture"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_21c

    const/4 v14, 0x1

    .line 761
    .local v14, "performEditAfterScreenCapture":Z
    :goto_151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v14, :cond_15f

    .line 762
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 767
    :cond_15f
    const-string v18, "desk_home_screen_display"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_21f

    const/4 v7, 0x1

    .line 769
    .local v7, "isDockHomeEnabled":Z
    :goto_172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v7, :cond_180

    .line 770
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 775
    :cond_180
    const-string v18, "multiverse_grip_to_lock_screen_rotation"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_222

    const/4 v5, 0x1

    .line 777
    .local v5, "gripRotationLock":Z
    :goto_18f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v5, :cond_19d

    .line 778
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGripRotationLocked:Z

    .line 783
    :cond_19d
    const-string v18, "driving_mode_on"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_225

    const/4 v6, 0x1

    .line 785
    .local v6, "isCheckDrivingMode":Z
    :goto_1ac
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v6, :cond_1ba

    .line 786
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 791
    :cond_1ba
    const-string v18, "sidesync_source_presentation"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_227

    const/4 v12, 0x1

    .line 794
    .local v12, "isSideSyncSourcePresentationActived":Z
    :goto_1c9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_1d7

    .line 795
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 800
    :cond_1d7
    const-string v18, "user_setup_complete"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_229

    const/16 v17, 0x1

    .line 802
    .local v17, "userSetupComplete":Z
    :goto_1f1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_203

    .line 803
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUserSetupComplete:Z

    .line 806
    :cond_203
    monitor-exit v19

    .line 807
    return-void

    .line 698
    .end local v4    # "doubleTapOnHomeBehavior":I
    .end local v5    # "gripRotationLock":Z
    .end local v6    # "isCheckDrivingMode":Z
    .end local v7    # "isDockHomeEnabled":Z
    .end local v8    # "isEasyMode":Z
    .end local v9    # "isEnabledAccessControl":Z
    .end local v10    # "isKidsMode":Z
    .end local v11    # "isSafetyAssuranceEnabled":Z
    .end local v12    # "isSideSyncSourcePresentationActived":Z
    .end local v13    # "isUseAccessControl":Z
    .end local v14    # "performEditAfterScreenCapture":Z
    .end local v16    # "tripleTapOnHomeBehavior":I
    .end local v17    # "userSetupComplete":Z
    :cond_205
    const/16 v18, 0x0

    goto/16 :goto_21

    .line 716
    .restart local v4    # "doubleTapOnHomeBehavior":I
    .restart local v16    # "tripleTapOnHomeBehavior":I
    :cond_209
    const/16 v18, 0x0

    goto/16 :goto_93

    .line 721
    :cond_20d
    const/4 v11, 0x0

    goto/16 :goto_ac

    .line 729
    .restart local v11    # "isSafetyAssuranceEnabled":Z
    :cond_210
    const/4 v13, 0x0

    goto/16 :goto_cd

    .line 735
    .restart local v13    # "isUseAccessControl":Z
    :cond_213
    const/4 v9, 0x0

    goto/16 :goto_ee

    .line 743
    .restart local v9    # "isEnabledAccessControl":Z
    :cond_216
    const/4 v10, 0x0

    goto/16 :goto_10f

    .line 751
    .restart local v10    # "isKidsMode":Z
    :cond_219
    const/4 v8, 0x0

    goto/16 :goto_130

    .line 759
    .restart local v8    # "isEasyMode":Z
    :cond_21c
    const/4 v14, 0x0

    goto/16 :goto_151

    .line 767
    .restart local v14    # "performEditAfterScreenCapture":Z
    :cond_21f
    const/4 v7, 0x0

    goto/16 :goto_172

    .line 775
    .restart local v7    # "isDockHomeEnabled":Z
    :cond_222
    const/4 v5, 0x0

    goto/16 :goto_18f

    .line 783
    .restart local v5    # "gripRotationLock":Z
    :cond_225
    const/4 v6, 0x0

    goto :goto_1ac

    .line 791
    .restart local v6    # "isCheckDrivingMode":Z
    :cond_227
    const/4 v12, 0x0

    goto :goto_1c9

    .line 800
    .restart local v12    # "isSideSyncSourcePresentationActived":Z
    :cond_229
    const/16 v17, 0x0

    goto :goto_1f1

    .line 806
    .end local v4    # "doubleTapOnHomeBehavior":I
    .end local v5    # "gripRotationLock":Z
    .end local v6    # "isCheckDrivingMode":Z
    .end local v7    # "isDockHomeEnabled":Z
    .end local v8    # "isEasyMode":Z
    .end local v9    # "isEnabledAccessControl":Z
    .end local v10    # "isKidsMode":Z
    .end local v11    # "isSafetyAssuranceEnabled":Z
    .end local v12    # "isSideSyncSourcePresentationActived":Z
    .end local v13    # "isUseAccessControl":Z
    .end local v14    # "performEditAfterScreenCapture":Z
    .end local v16    # "tripleTapOnHomeBehavior":I
    :catchall_22c
    move-exception v18

    monitor-exit v19
    :try_end_22e
    .catchall {:try_start_11 .. :try_end_22e} :catchall_22c

    throw v18
.end method
