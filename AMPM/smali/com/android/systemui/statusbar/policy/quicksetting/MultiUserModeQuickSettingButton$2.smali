.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 74
    .local v2, currentUser:I
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, changedUser:I
    if-ne v1, v2, :cond_1

    .line 77
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->reloadUserInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #changedUser:I
    .end local v2           #currentUser:I
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, e:Landroid/os/RemoteException;
    const-string v4, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v5, "Couldn\'t get current user id for profile change"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
