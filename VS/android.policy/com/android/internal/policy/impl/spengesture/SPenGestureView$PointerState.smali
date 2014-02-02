.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
.super Ljava/lang/Object;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private final ESTIMATE_TRACE_DEFAULT_SIZE:I

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x20

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->ESTIMATE_TRACE_DEFAULT_SIZE:I

    .line 234
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    .line 235
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    .line 238
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 242
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .param p1, "x1"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 232
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    return-object v0
.end method


# virtual methods
.method public addTrace(FF)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 249
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    array-length v2, v3

    .line 250
    .local v2, "traceCapacity":I
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    if-ne v3, v2, :cond_20

    .line 251
    mul-int/lit8 v2, v2, 0x2

    .line 252
    new-array v0, v2, [F

    .line 253
    .local v0, "newTraceX":[F
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    .line 256
    new-array v1, v2, [F

    .line 257
    .local v1, "newTraceY":[F
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    .line 261
    .end local v0    # "newTraceX":[F
    .end local v1    # "newTraceY":[F
    :cond_20
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    aput p1, v3, v4

    .line 262
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    aput p2, v3, v4

    .line 263
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    .line 264
    return-void
.end method

.method public clearTrace()V
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I

    .line 246
    return-void
.end method
