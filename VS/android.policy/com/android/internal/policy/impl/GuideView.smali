.class public Lcom/android/internal/policy/impl/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# static fields
.field static final INVALID:I = -0x1

.field static final NORMAL:I = 0x0

.field static final WARNING:I = 0x1


# instance fields
.field private mBorderView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mParent:Landroid/view/View;

.field private mShowing:Z

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 5
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    .line 28
    iput-object p1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    .line 33
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 85
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 89
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 91
    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 97
    return-object v0
.end method

.method private refreshBackground()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 115
    :goto_4
    return-void

    .line 104
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_4

    .line 106
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x1080560

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 111
    :pswitch_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x108055f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 104
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    .line 40
    :cond_c
    return-void
.end method

.method public setType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    if-ne v0, p1, :cond_5

    .line 80
    :goto_4
    return-void

    .line 78
    :cond_5
    iput p1, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    goto :goto_4
.end method

.method public show(IIII)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 43
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-nez v2, :cond_2e

    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 45
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v2, :cond_26

    .line 46
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    .line 49
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v1, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 52
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 54
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .end local v1    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_26
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    .line 61
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .restart local v1    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 64
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 69
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 71
    return-void
.end method
