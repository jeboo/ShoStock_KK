.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 134
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** Keyguard connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;-><init>(Lcom/android/internal/policy/IKeyguardService;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    if-eqz v0, :cond_34

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 143
    :cond_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz v0, :cond_45

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 146
    :cond_45
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 150
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** Keyguard disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .line 152
    return-void
.end method
