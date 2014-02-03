.class Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "args"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->isWfcProvisioned()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isProvisioned"

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    const-string v2, "com.oem.smartwifisupport.WIFI_CALLING"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Z)Z

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v2, "Cannot find WfcStartupActivity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
