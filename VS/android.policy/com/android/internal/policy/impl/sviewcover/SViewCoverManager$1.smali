.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/IPowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->goToSleep(JI)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 93
    :goto_e
    return-void

    .line 90
    :catch_f
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method
