.class public Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "VoWiFiQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;,
        Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;
    }
.end annotation


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-VoWiFiQuickSettingButton"


# instance fields
.field private mIsWfcProvisioned:Z

.field private mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v1, 0x7f0a00f8

    const/4 v5, 0x0

    .line 121
    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 32
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    .line 123
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v0, :cond_1

    .line 124
    const v2, 0x7f020220

    const v3, 0x7f02021f

    const v4, 0x7f02021e

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIII)V

    .line 132
    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 133
    const-string v0, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v1, "VoWiFi Quick Button create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    :cond_0
    move v0, v5

    .line 121
    goto :goto_0

    .line 129
    :cond_1
    const v0, 0x7f020221

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(II)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->queryWfcState()I

    move-result v0

    return v0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 89
    .local v7, isProvisioned:Ljava/lang/Boolean;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 97
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private queryWfcState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 104
    const/4 v7, 0x0

    .line 106
    .local v7, state:I
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 114
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    return v7
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mWfcStateObserver:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    const-string v0, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v1, "VoWiFi Quick Button initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z

    if-nez v1, :cond_1

    .line 157
    new-instance v1, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 163
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    const-string v1, "com.oem.smartwifi.WIFI_CALLING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
