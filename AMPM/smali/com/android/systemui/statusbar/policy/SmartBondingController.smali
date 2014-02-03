.class public Lcom/android/systemui/statusbar/policy/SmartBondingController;
.super Landroid/content/BroadcastReceiver;
.source "SmartBondingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.SmartBondingController"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field private mFileSize:J

.field private mHandler:Landroid/os/Handler;

.field private mIsSelected:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

.field private mThreadID:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 59
    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    .line 200
    new-instance v1, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$5;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mRunnable:Ljava/lang/Runnable;

    .line 68
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    .line 74
    :goto_0
    const-string v1, "sb_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    .line 75
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void

    .line 71
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SmartBondingController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SmartBondingController;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/SmartBondingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private createSmartBondingUsageAlert()V
    .locals 15

    .prologue
    .line 109
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 110
    .local v6, usageLayout:Landroid/view/LayoutInflater;
    const v8, 0x7f04002b

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 112
    .local v7, usageView:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a018b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, message:Ljava/lang/String;
    const-string v8, "%s"

    const-string v9, "<img src=\"booster_icon\"/>"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 125
    const-string v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    long-to-double v11, v11

    const-wide/high16 v13, 0x4090

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4090

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, fileSize:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a018d

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, extMessage:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->isLandsacpe()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .end local v1           #extMessage:Ljava/lang/String;
    .end local v2           #fileSize:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v8, "\n"

    const-string v9, "<br/>"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 136
    const v8, 0x7f0700b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 137
    .local v4, textView:Landroid/widget/TextView;
    new-instance v8, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v8, 0x7f0700b7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    .line 141
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    const/4 v5, 0x0

    .line 158
    .local v5, theme:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0a018a

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 160
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    const v8, 0x104000a

    new-instance v9, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const/high16 v8, 0x104

    new-instance v9, Lcom/android/systemui/statusbar/policy/SmartBondingController$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$3;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v8, :cond_1

    .line 178
    const v8, 0x7f0700b6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :cond_1
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    .line 185
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    new-instance v9, Lcom/android/systemui/statusbar/policy/SmartBondingController$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$4;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 195
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 196
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 197
    const-string v8, "StatusBar.SmartBondingController"

    const-string v9, "createSmartBondingUsageAlert : done"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 130
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #textView:Landroid/widget/TextView;
    .end local v5           #theme:I
    .restart local v1       #extMessage:Ljava/lang/String;
    .restart local v2       #fileSize:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private isLandsacpe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_0
    return v0
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 232
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 233
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 239
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 236
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setSBUsageStatus(IJ)V
    .locals 4
    .parameter "status"
    .parameter "threadID"

    .prologue
    .line 210
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBUsageStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "StatusBar.SmartBondingController"

    const-string v2, "call setSBUsageStatus in ISmartBondingService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/smartbonding/ISmartBondingService;->setSBUsageStatus(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBUsageStatus Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "StatusBar.SmartBondingController"

    const-string v2, "onReceive : dialog is already exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    if-nez v1, :cond_0

    .line 93
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    .line 94
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding_notification"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_0
    const-string v1, "threadID"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 99
    const-string v1, "fileSize"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    .line 100
    const-string v1, "appName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mAppName:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "threadID"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
