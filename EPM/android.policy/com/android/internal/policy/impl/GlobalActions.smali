.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_SHOW:I = 0x2

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SVIEW_COVER_WIDTH:I = 0x14e

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsCoverOpen:Z

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field private mAccessiblityShortcut:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

.field private mSilentModeView:Landroid/view/View;

.field private mSleep:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mTalkBack:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mDownload:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRecovery:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mFlashlight:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_33

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    .line 181
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 182
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 194
    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    .line 200
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    .line 201
    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    .line 2626
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_33
    move v0, v2

    .line 139
    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 164
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 165
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 166
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
	
new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$30;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$30;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 167
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    .line 185
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 189
    iput-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 190
    iput-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 191
    iput v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    .line 195
    iput-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 197
    iput-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 375
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1290
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$16;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1307
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$17;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$17;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1324
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$18;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$18;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1892
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$19;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$19;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1917
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$20;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$20;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1939
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$21;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$21;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1949
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$22;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/GlobalActions$22;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1963
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$23;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$23;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 2641
    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    .line 209
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v6, 0x1030128

    invoke-direct {v3, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 215
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 216
    const-string v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v3, "com.android.settings.action.talkback_off"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    .line 230
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    .line 231
    const-string v3, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHasTelephony - test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 236
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 238
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 242
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_133

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_133

    move v3, v4

    :goto_110
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110057

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_135

    :goto_121
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    .line 248
    const-string v3, "TMO"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    .line 250
    :cond_12f
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    .line 251
    return-void

    :cond_133
    move v3, v5

    .line 242
    goto :goto_110

    :cond_135
    move v4, v5

    .line 244
    goto :goto_121
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 135
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1701(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isTalkbackAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isMtpRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 135
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500()Landroid/widget/ListView;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$3200()Z
    .registers 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 1230
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_74

    .line 1231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1232
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1233
    .local v5, "user":Landroid/content/pm/UserInfo;
    if-nez v6, :cond_62

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_60

    move v8, v10

    .line 1235
    .local v8, "isCurrentUser":Z
    :goto_31
    iget-object v0, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1237
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3b
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$15;

    const v2, 0x1080430

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_71

    const-string v1, " \u2714"

    :goto_53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    goto :goto_1e

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_60
    move v8, v11

    .line 1233
    goto :goto_31

    :cond_62
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_6a

    move v8, v10

    goto :goto_31

    :cond_6a
    move v8, v11

    goto :goto_31

    .line 1235
    .restart local v8    # "isCurrentUser":Z
    :cond_6c
    const/4 v3, 0x0

    goto :goto_3b

    .line 1237
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6e
    const-string v1, "Primary"

    goto :goto_4b

    :cond_71
    const-string v1, ""

    goto :goto_53

    .line 1263
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :cond_74
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_11

    .line 277
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 284
    :cond_11
    :goto_11
    return-void

    .line 280
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_42

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2030
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    if-eqz p1, :cond_44

    .line 2031
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2032
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2033
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2035
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$24;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$24;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2050
    :goto_37
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_41

    .line 2051
    if-eqz p1, :cond_5d

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_3f
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2053
    :cond_41
    return-void

    .line 2024
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    const/4 v1, 0x0

    goto :goto_b

    .line 2044
    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2045
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2046
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2047
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_37

    .line 2051
    :cond_5d
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_3f
.end method

.method private clearSCoverRequestStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2644
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2645
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2647
    :cond_e
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2648
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2649
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2650
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_14

    .line 2652
    .end local v1    # "sender":Ljava/lang/String;
    :cond_24
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2653
    return-void
.end method

.method private comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .registers 14
    .param p1, "action"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 1332
    const/4 v1, 0x0

    .line 1333
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 1334
    .local v4, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v3, 0x0

    .line 1335
    .local v3, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v2, 0x0

    .line 1337
    .local v2, "dialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-ne p1, v5, :cond_92

    .line 1338
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1344
    :goto_a
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_a6

    .line 1345
    new-instance v5, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v6

    iget-object v5, p1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v5, v7, :cond_a3

    move v5, p3

    :goto_20
    invoke-virtual {v6, v5}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    invoke-virtual {v5, v6, v4}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v3

    .line 1361
    :goto_38
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    .line 1363
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_d3

    .line 1365
    if-eqz v3, :cond_8a

    .line 1367
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x833

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1369
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_67

    .line 1371
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1374
    :cond_67
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1376
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x1

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1377
    const/4 v5, 0x0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1378
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1379
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 1380
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    .line 1381
    const-string v5, "GlobalActions$ConfirmDialog"

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 1382
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .line 1416
    .end local v0    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_8a
    :goto_8a
    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 1417
    const/4 v5, 0x1

    :try_start_8e
    sput-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 1418
    monitor-exit v6
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_17f

    .line 1419
    return-void

    .line 1339
    :cond_92
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-ne p1, v5, :cond_9a

    .line 1340
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_a

    .line 1342
    :cond_9a
    const-string v5, "GlobalActions"

    const-string v6, "Cannot find ClickListener."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_a3
    move v5, p4

    .line 1345
    goto/16 :goto_20

    .line 1353
    :cond_a6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v5, p1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v5, v7, :cond_d1

    move v5, p3

    :goto_b8
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_38

    :cond_d1
    move v5, p4

    goto :goto_b8

    .line 1386
    :cond_d3
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    iput-object v2, v5, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 1388
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1390
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v5, :cond_174

    .line 1391
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1396
    :goto_e9
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_100

    .line 1397
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1399
    :cond_100
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1400
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1401
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v5, :cond_170

    .line 1402
    const-string v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in comfirmDialog action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resON = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resOFF = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " config_sf_slowBlur = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resTitle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAirplaneModeOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataModeToggle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_170
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_8a

    .line 1393
    :cond_174
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_e9

    .line 1418
    :catchall_17f
    move-exception v5

    :try_start_180
    monitor-exit v6
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v5
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 16

    .prologue
    .line 411
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "current_plmn":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    .line 414
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v2, 0x10809b5

    const v3, 0x10809b4

    const v4, 0x10401f5

    const v5, 0x10401f6

    const v6, 0x10401f7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 521
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v2, 0x10809b2

    const v3, 0x10809b3

    const v4, 0x10401e8

    const v5, 0x10401ea

    const v6, 0x10401eb

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 612
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    .line 615
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v2, 0x10809c1

    const v3, 0x10809c2

    const v4, 0x1040aa2

    const v5, 0x1040aa0

    const v6, 0x1040aa1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 668
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v2, 0x10809e2

    const v3, 0x10809e2

    const v4, 0x1040a8d

    const v5, 0x10401db

    const v6, 0x10401dc

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTalkBack:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 814
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v1, 0x10809e2

    const v2, 0x1040785

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAccessiblityShortcut:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 853
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v1, 0x10809b7

    const v2, 0x10401d5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 891
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$8;

    const v1, 0x10809b8

    const v2, 0x10401d6

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$26;

    const v1, 0x1080fcc

    const v2, 0x1040b34

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$26;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRecovery:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$27;

    const v1, 0x1080fcd

    const v2, 0x1040b35

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$27;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDownload:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$28;

    const v1, 0x1080fce

    const v2, 0x1040b36

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$28;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlight:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$29;

    const v1, 0x1080fcf

    const v2, 0x1040b37

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$29;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 922
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$9;

    const v1, 0x10809e3

    const v2, 0x10401d7

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSleep:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 961
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$10;

    const v1, 0x1080760

    const v2, 0x10401df

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBugReport:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 1011
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

#    if-nez v0, :cond_207

    .line 1012
const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1
	
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRecovery:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDownload:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mFlashlight:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1079
    :goto_cd
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v0, :cond_dc

    .line 1080
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_dc

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_dc
    const-string v0, "fw.power_user_switcher"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1091
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    .line 1094
    :cond_ea
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1097
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1098
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v0, :cond_241

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1100
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1109
    :goto_10b
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v0, :cond_10f

    .line 1115
    :cond_10f
    new-instance v9, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v0, v12, v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1116
    .local v9, "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    const-string v0, "GlobalActions"

    const-string v1, "GlobalActionsDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_270

    .line 1118
    const-string v0, "GlobalActions"

    const-string v1, "mIsCoverOpen  is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1120
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x833

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1121
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1122
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 1123
    .local v10, "lf":Landroid/view/LayoutInflater;
    const v0, 0x1090062

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1125
    .local v14, "v":Landroid/view/View;
    const v0, 0x102030d

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 1126
    .local v8, "crossBtn":Landroid/widget/ImageButton;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 1127
    invoke-virtual {v8}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x5153

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1129
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    const v0, 0x10202ce

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 1145
    const v0, 0x1020325

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 1146
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1147
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1aa

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1148
    :cond_1aa
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$13;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1157
    const v0, 0x1020016

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1158
    .local v13, "titleView":Landroid/widget/TextView;
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    :goto_1d7
    invoke-virtual {v9, v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 1167
    .end local v8    # "crossBtn":Landroid/widget/ImageButton;
    .end local v10    # "lf":Landroid/view/LayoutInflater;
    .end local v13    # "titleView":Landroid/widget/TextView;
    .end local v14    # "v":Landroid/view/View;
    :goto_1da
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 1168
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1169
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 1170
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1194
    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1195
    invoke-virtual {v9, p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1197
    return-object v9

    .line 1021
    .end local v9    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .end local v12    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_207
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAccessiblityShortcut:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTalkBack:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSleep:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBugReport:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_cd

    .line 1103
    .restart local v12    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_241
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 1104
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1105
    .local v11, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_10b

    .line 1161
    .end local v11    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "crossBtn":Landroid/widget/ImageButton;
    .restart local v9    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .restart local v10    # "lf":Landroid/view/LayoutInflater;
    .restart local v13    # "titleView":Landroid/widget/TextView;
    .restart local v14    # "v":Landroid/view/View;
    :cond_25e
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d7

    .line 1165
    .end local v8    # "crossBtn":Landroid/widget/ImageButton;
    .end local v10    # "lf":Landroid/view/LayoutInflater;
    .end local v13    # "titleView":Landroid/widget/TextView;
    .end local v14    # "v":Landroid/view/View;
    :cond_270
    const v0, 0x10401d3

    invoke-virtual {v9, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_1da
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .registers 20
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 2534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 2537
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x1090057

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2540
    .local v8, "content":Landroid/view/View;
    const v14, 0x1020319

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2543
    .local v3, "capabilitiesHeaderView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040a8d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2544
    .local v1, "TalkbackTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040a98

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v1, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2546
    const v14, 0x102031a

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2549
    .local v4, "capabilitiesView":Landroid/widget/LinearLayout;
    const v14, 0x1090038

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2552
    .local v7, "capabilityView":Landroid/view/View;
    const v14, 0x10202ec

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2554
    .local v11, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080491

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2557
    const v14, 0x10202f0

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2559
    .local v13, "labelView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040a99

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2561
    const v14, 0x10202f1

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2563
    .local v9, "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040a9a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2565
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v2

    .line 2568
    .local v2, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2571
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 2572
    .local v6, "capabilityCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b8
    if-ge v10, v6, :cond_11d

    .line 2573
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 2575
    .local v5, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v14, 0x1090038

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2578
    const v14, 0x10202ec

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "imageView":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 2580
    .restart local v11    # "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080491

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2583
    const v14, 0x10202f0

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "labelView":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 2585
    .restart local v13    # "labelView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v5, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2587
    const v14, 0x10202f1

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "descriptionView":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 2589
    .restart local v9    # "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v5, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2591
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2572
    add-int/lit8 v10, v10, 0x1

    goto :goto_b8

    .line 2593
    .end local v5    # "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_11d
    return-object v8
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 9

    .prologue
    .line 2597
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v5

    .line 2599
    .local v5, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 2600
    .local v4, "serviceInfoCount":I
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.google.android.marvin.talkback"

    const-string v7, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    .local v1, "mComponentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v4, :cond_44

    .line 2603
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2604
    .local v3, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2605
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2610
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_40
    return-object v3

    .line 2602
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2610
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_44
    const/4 v3, 0x0

    goto :goto_40
.end method

.method private getBackgroundColor()I
    .registers 12

    .prologue
    const/16 v10, 0x77

    const/16 v9, 0x6b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "color":I
    const/4 v0, 0x0

    .line 353
    .local v0, "backgroundColor":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 355
    .local v2, "colorUseAll":I
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 357
    if-ne v2, v7, :cond_2f

    .line 358
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 359
    .local v3, "mColorRandom":I
    packed-switch v3, :pswitch_data_52

    .line 367
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 372
    .end local v3    # "mColorRandom":I
    :cond_2f
    :goto_2f
    return v0

    .line 361
    .restart local v3    # "mColorRandom":I
    :pswitch_30
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 362
    goto :goto_2f

    .line 364
    :pswitch_41
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 365
    goto :goto_2f

    .line 359
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_30
        :pswitch_41
    .end packed-switch
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .prologue
    .line 1202
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1204
    :goto_8
    return-object v1

    .line 1203
    :catch_9
    move-exception v0

    .line 1204
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getSCoverState()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_36

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 289
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_2e

    .line 290
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 298
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_2d
    return v1

    .line 293
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_2e
    const-string v2, "GlobalActions"

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 297
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_36
    const-string v2, "GlobalActions"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private handleShow()V
    .registers 6

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSCoverState()Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    .line 307
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_2d

    const-string v2, "americano"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "double"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 308
    :cond_21
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2c

    .line 309
    const-string v2, "GlobalActions"

    const-string v3, "Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2c
    :goto_2c
    return-void

    .line 313
    :cond_2d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 314
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 321
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 322
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_d6

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 327
    const-string v2, "GlobalActions"

    const-string v3, "WindowManager.LayoutParams LAstAttributes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->show()V

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 330
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_c9

    .line 331
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getBackgroundColor()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    if-eqz v2, :cond_ba

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 335
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_ce

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 341
    :cond_ba
    :goto_ba
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v3, v3

    mul-int/lit16 v3, v3, 0x14e

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 344
    :cond_c9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground()V

    goto/16 :goto_2c

    .line 338
    :cond_ce
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_ba

    .line 346
    :cond_d6
    const-string v2, "GlobalActions"

    const-string v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method private hideQuickpanelBackground()V
    .registers 2

    .prologue
    .line 2629
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .registers 6
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 2634
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 2639
    :cond_8
    :goto_8
    return-void

    .line 2636
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2637
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2638
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 396
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 397
    const-string v0, "GlobalActions"

    const-string v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_28

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 401
    const-string v0, "GlobalActions"

    const-string v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_28
    return-void
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1210
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isGlobalActionConfirming()Z
    .registers 3

    .prologue
    .line 2056
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2057
    :try_start_3
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 2058
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isMtpRunning()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1214
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1215
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1216
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1218
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.MtpApplication.MtpApplication"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1219
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v5, :cond_3a

    .line 1220
    const-string v5, "GlobalActions"

    const-string v6, "phone is in MTP screen"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3a
    :goto_3a
    return v4

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3a
.end method

.method private isSimReady()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2062
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2063
    .local v0, "SimState":I
    const-string v6, "ro.config.donot_nosim"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2065
    .local v3, "lSimValue":Z
    if-nez v3, :cond_69

    if-eqz v0, :cond_16

    if-ne v0, v5, :cond_69

    .line 2068
    :cond_16
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2069
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x10401fc

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2070
    const v6, 0x10401fd

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2071
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2072
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2074
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2075
    .local v1, "alert":Landroid/app/AlertDialog;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v6, :cond_5c

    .line 2076
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2081
    :goto_44
    new-instance v6, Lcom/android/internal/policy/impl/GlobalActions$25;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/GlobalActions$25;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2090
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2091
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2093
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 2094
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 2095
    const/4 v6, 0x1

    :try_start_58
    sput-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 2096
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_66

    .line 2099
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_5b
    return v4

    .line 2078
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5c
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_44

    .line 2096
    :catchall_66
    move-exception v4

    :try_start_67
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v4

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_69
    move v4, v5

    .line 2099
    goto :goto_5b
.end method

.method private isTalkbackAvailable()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2614
    const-string v0, "com.google.android.marvin.talkback"

    .line 2617
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_11

    .line 2623
    const/4 v2, 0x1

    :goto_10
    return v2

    .line 2618
    :catch_11
    move-exception v1

    .line 2619
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GlobalActions"

    const-string v4, "Screen reader does not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private onAirplaneModeChanged()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2010
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_7

    .line 2018
    :goto_6
    return-void

    .line 2012
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_23

    .line 2016
    .local v0, "airplaneModeOn":Z
    :goto_15
    if-eqz v0, :cond_25

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_19
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2017
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_6

    .end local v0    # "airplaneModeOn":Z
    :cond_23
    move v0, v1

    .line 2012
    goto :goto_15

    .line 2016
    .restart local v0    # "airplaneModeOn":Z
    :cond_25
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_19
.end method

.method private prepareDialog()Z
    .registers 5

    .prologue
    .line 1266
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 1267
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_55

    .line 1268
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1272
    :goto_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1273
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1274
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1275
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_5a

    .line 1276
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1280
    :goto_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_38
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1281
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1283
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_53

    .line 1284
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1287
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_53
    const/4 v2, 0x1

    return v2

    .line 1270
    :cond_55
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_c

    .line 1278
    :cond_5a
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_2e

    .line 1280
    :cond_66
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_38
.end method

.method private restoreQuickpanelBackground()V
    .registers 2

    .prologue
    .line 2657
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 2658
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2662
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 2670
    :cond_9
    :goto_9
    return-void

    .line 2664
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2665
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2666
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2667
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2668
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2669
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private virtualDismissInSCover()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2673
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 2693
    :cond_9
    :goto_9
    return-void

    .line 2675
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2676
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2677
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2678
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2679
    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2681
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2682
    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2684
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2685
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2687
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2688
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2691
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2692
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .registers 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2696
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 2705
    :cond_9
    :goto_9
    return-void

    .line 2698
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2699
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2701
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2702
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2703
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2704
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    if-nez v0, :cond_d

    .line 1443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1445
    :cond_d
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 1447
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 1423
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_c

    .line 1425
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_18

    .line 1431
    :cond_c
    :goto_c
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_22

    .line 1432
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1433
    const/4 v1, 0x0

    :try_start_14
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 1434
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1f

    .line 1438
    :goto_17
    return-void

    .line 1426
    :catch_18
    move-exception v0

    .line 1428
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 1434
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 1436
    :cond_22
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_17
.end method

.method public showDialog(ZZ)V
    .registers 5
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->canGlobalActionsShow()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 272
    :cond_e
    :goto_e
    return-void

    .line 262
    :cond_f
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 263
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_26

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 270
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_e
.end method

.method private takeScreenshot()V
    .registers 9

    .prologue
    .line 4888
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4889
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_9

    .line 4890
    monitor-exit v4

    .line 4939
    :goto_8
    return-void

    .line 4892
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4894
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4895
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4896
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$31;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$31;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 4933
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 4935
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4936
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4938
    :cond_35
    monitor-exit v4

    goto :goto_8

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v3
.end method