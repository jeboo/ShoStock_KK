.class public Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "LocationQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-LocationQuickSettingButton"

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceType:Ljava/lang/String;

.field private mDisabledByUserRestrictions:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mGpsActivated:Z

.field private mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrefChecked:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f0a00dc

    const/4 v5, 0x0

    .line 127
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    .line 76
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    .line 89
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_1

    .line 130
    const v2, 0x7f0201cb

    const v3, 0x7f0201ca

    const v4, 0x7f0201c9

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIII)V

    .line 140
    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 141
    return-void

    :cond_0
    move v0, v5

    .line 127
    goto :goto_0

    .line 137
    :cond_1
    const v0, 0x7f0201cc

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(II)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isUserLocationRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V

    return-void
.end method

.method private isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    .line 306
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserLocationRestricted()Z
    .locals 4

    .prologue
    .line 415
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 416
    .local v0, currentUserId:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 417
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_share_location"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method private setGpsMode(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 403
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method private setVzwProviderAndMode(Landroid/content/Context;ZI)V
    .locals 0
    .parameter "context"
    .parameter "enabled"
    .parameter "locationMode"

    .prologue
    .line 300
    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x100

    .line 312
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 314
    .local v1, mGpsAlertLayoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040026

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 317
    .local v2, mGpsAlertView:Landroid/view/View;
    const v9, 0x7f0700af

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 320
    .local v3, mGpsCheckBox:Landroid/widget/CheckBox;
    const v9, 0x7f0700ab

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 321
    .local v7, mVzwText:Landroid/widget/TextView;
    const v9, 0x7f0700ac

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 322
    .local v6, mUsccTitle:Landroid/widget/TextView;
    const v9, 0x7f0700ad

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 323
    .local v4, mUsccBody:Landroid/widget/TextView;
    const v9, 0x7f0700ae

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 325
    .local v5, mUsccBottom:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    .line 327
    new-instance v9, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$5;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 337
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v9, :cond_0

    .line 338
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 346
    .local v8, value:Z
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v10, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_1

    const v9, 0x7f0a0173

    :goto_0
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0a0162

    new-instance v11, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$7;

    invoke-direct {v11, p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$6;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 370
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$8;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$8;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 378
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_2

    .line 379
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 382
    const/high16 v9, 0x4160

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 387
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 390
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 391
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 392
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 396
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 397
    return-void

    .line 346
    .end local v0           #kgm:Landroid/app/KeyguardManager;
    :cond_1
    const v9, 0x7f0a0160

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 394
    .restart local v0       #kgm:Landroid/app/KeyguardManager;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->isUserLocationRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 164
    :goto_0
    const-string v1, "STATUSBAR-LocationQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mGpsActivated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 159
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v2, :cond_1

    .line 175
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mDisabledByUserRestrictions:Z

    if-eqz v2, :cond_2

    .line 181
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): mDisabledByUserRestrictions..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mGpsActivated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): Location state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v1

    .line 195
    .local v1, lp:Landroid/app/enterprise/LocationPolicy;
    if-eqz v1, :cond_4

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): Location provider is blocked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v2, :cond_6

    .line 221
    if-eqz p1, :cond_5

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "gps_alert_pref"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 222
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->showConfirmPopup(Z)V

    goto/16 :goto_0

    .line 225
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V

    goto/16 :goto_0

    .line 229
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    if-eq p1, v2, :cond_0

    .line 231
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 233
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    const/4 v4, -0x2

    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS set("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public showVzwLocationConsentDialog(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 288
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;->onChange(Z)V

    .line 412
    return-void
.end method
