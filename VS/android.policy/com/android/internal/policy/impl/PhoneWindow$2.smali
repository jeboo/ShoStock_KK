.class Lcom/android/internal/policy/impl/PhoneWindow$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 2

    .prologue
    .line 3477
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3480
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v1, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 3481
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_1c

    .line 3482
    :cond_15
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    .line 3484
    :cond_1c
    return-void
.end method