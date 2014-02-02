.class Lcom/android/internal/policy/impl/GlobalActions$30;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2

    .prologue
    .line 4875
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4877
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4878
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1b

    .line 4879
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4880
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4882
    :cond_1b
    monitor-exit v1

    .line 4883
    return-void

    .line 4882
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v0
.end method
