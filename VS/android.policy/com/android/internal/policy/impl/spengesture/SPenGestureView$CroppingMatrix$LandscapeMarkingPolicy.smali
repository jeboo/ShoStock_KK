.class final Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$LandscapeMarkingPolicy;
.super Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LandscapeMarkingPolicy"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;-><init>(II)V

    .line 373
    return-void
.end method


# virtual methods
.method public calulate(II)I
    .registers 4
    .param p1, "y"    # I
    .param p2, "x"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;->mHeight:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method
