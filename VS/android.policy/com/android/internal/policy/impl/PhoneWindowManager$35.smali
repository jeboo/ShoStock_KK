.class Lcom/android/internal/policy/impl/PhoneWindowManager$35;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$forceClose:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 3

    .prologue
    .line 7361
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->val$forceClose:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 7363
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 7364
    .local v0, "closeIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.multiwindow.close.traybar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7365
    const-string v1, "com.sec.android.multiwindow.extra.forceclose"

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->val$forceClose:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7366
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7367
    return-void
.end method
