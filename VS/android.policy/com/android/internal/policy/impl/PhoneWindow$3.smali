.class Lcom/android/internal/policy/impl/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 3548
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3550
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_48

    .line 3551
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3a

    .line 3552
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->overflowMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setX(F)V

    .line 3553
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->overflowMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 3555
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->overflowMenuButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3556
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->setGONE_MenuButton(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/View;)V

    .line 3558
    :cond_48
    return v2
.end method
