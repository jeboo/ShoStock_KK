.class Lcom/android/internal/policy/impl/GlobalActions$31$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$31;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$31;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_3a

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$31$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$31;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$31;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3a
    monitor-exit v1

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v0
.end method
