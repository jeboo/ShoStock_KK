.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;)V
    .registers 2

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1508
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1501
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1485
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    .line 1489
    .local v0, "state":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 1495
    :goto_b
    return-void

    .line 1492
    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    .line 1493
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto :goto_b
.end method
