.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;
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
    .line 424
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 427
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** InformativeScreen connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/IInformativeScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IInformativeScreenService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;-><init>(Lcom/android/internal/policy/IInformativeScreenService;)V

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    if-eqz v0, :cond_34

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onSystemReady()V

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 433
    :cond_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz v0, :cond_45

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;->onBootCompleted()V

    .line 436
    :cond_45
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 440
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "*** InformativeScreen disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mInformativeScreenService:Lcom/android/internal/policy/impl/keyguard/InformativeScreenServiceWrapper;

    .line 442
    return-void
.end method
