.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;
.super Landroid/content/BroadcastReceiver;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .registers 2

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    .line 444
    :cond_11
    :goto_11
    return-void

    .line 440
    :cond_12
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    goto :goto_11
.end method