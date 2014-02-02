.class public Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_LEFT_CENTER_LEFT:I = 0x65

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_RIGHT_CENTER_RIGHT:I = 0x64

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

.field private mCanStartEasyOneHand:Z

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFirstDownTime:J

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mMaxReachedTime:J

.field private mMaxX:F

.field private mMinX:F

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/16 v1, 0x20

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    .line 62
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 71
    const-string v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .line 72
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 77
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 171
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 172
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 175
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 182
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1b

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1b
    return-object p1
.end method

.method private detectEasyOneHandGesture(Landroid/view/MotionEvent;)I
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v6

    if-eqz v6, :cond_be

    .line 249
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v2, v6, 0x4

    .line 251
    .local v2, "triggerDistance":I
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    iget v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    sub-float/2addr v6, v7

    int-to-float v7, v2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_be

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_be

    .line 252
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v1, v6, 0x8

    .line 253
    .local v1, "startPosX":I
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v0, v6, 0x5

    .line 255
    .local v0, "endPosX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 256
    .local v5, "upX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 258
    .local v3, "upTime":J
    const-string v6, "SystemGestures"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detectEasyOneHandGesture() distance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timeDiff1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timeDiff2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    sub-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMaxReachedTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFirstDownX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", upX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-wide v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0x320

    cmp-long v6, v6, v8

    if-gez v6, :cond_be

    iget-wide v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-gez v6, :cond_be

    .line 261
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    int-to-float v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a9

    int-to-float v6, v0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_a9

    .line 262
    const/16 v6, 0x65

    .line 271
    .end local v0    # "endPosX":I
    .end local v1    # "startPosX":I
    .end local v2    # "triggerDistance":I
    .end local v3    # "upTime":J
    .end local v5    # "upX":F
    :goto_a8
    return v6

    .line 264
    .restart local v0    # "endPosX":I
    .restart local v1    # "startPosX":I
    .restart local v2    # "triggerDistance":I
    .restart local v3    # "upTime":J
    .restart local v5    # "upX":F
    :cond_a9
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    iget v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_be

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_be

    .line 265
    const/16 v6, 0x64

    goto :goto_a8

    .line 271
    .end local v0    # "endPosX":I
    .end local v1    # "startPosX":I
    .end local v2    # "triggerDistance":I
    .end local v3    # "upTime":J
    .end local v5    # "upX":F
    :cond_be
    const/4 v6, -0x1

    goto :goto_a8
.end method

.method private detectSwipe(IJFF)I
    .registers 14
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v6, 0x1f4

    .line 223
    iget-object v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v4, p1

    .line 224
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v4, p1

    .line 225
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v4, v4, p1

    sub-long v0, p2, v4

    .line 228
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_25

    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p5, v4

    if-lez v4, :cond_25

    cmp-long v4, v0, v6

    if-gez v4, :cond_25

    .line 231
    const/4 v4, 0x1

    .line 243
    :goto_24
    return v4

    .line 233
    :cond_25
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_3e

    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, p5, v4

    if-gez v4, :cond_3e

    cmp-long v4, v0, v6

    if-gez v4, :cond_3e

    .line 236
    const/4 v4, 0x2

    goto :goto_24

    .line 238
    :cond_3e
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_57

    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, p4, v4

    if-gez v4, :cond_57

    cmp-long v4, v0, v6

    if-gez v4, :cond_57

    .line 241
    const/4 v4, 0x3

    goto :goto_24

    .line 243
    :cond_57
    const/4 v4, 0x0

    goto :goto_24
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 22
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 199
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 200
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_a
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_68

    .line 201
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 202
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    .line 203
    .local v3, "i":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_65

    .line 204
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_24
    if-ge v14, v15, :cond_48

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 206
    .local v4, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 207
    .local v6, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, "y":F
    move-object/from16 v2, p0

    .line 208
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 209
    .local v19, "swipe":I
    if-eqz v19, :cond_45

    .line 219
    .end local v3    # "i":I
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v14    # "h":I
    .end local v18    # "pointerId":I
    .end local v19    # "swipe":I
    :cond_44
    :goto_44
    return v19

    .line 204
    .restart local v3    # "i":I
    .restart local v4    # "time":J
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    .restart local v14    # "h":I
    .restart local v18    # "pointerId":I
    .restart local v19    # "swipe":I
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 213
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 214
    .restart local v19    # "swipe":I
    if-nez v19, :cond_44

    .line 200
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_65
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 219
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_68
    const/16 v19, 0x0

    goto :goto_44
.end method

.method private findIndex(I)I
    .registers 6
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_10

    .line 186
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_d

    .line 194
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 185
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 190
    :cond_10
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_18

    if-ne p1, v1, :cond_1a

    :cond_18
    move v0, v1

    .line 191
    goto :goto_c

    .line 193
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 194
    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_c
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_114

    .line 168
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 91
    :pswitch_a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:F

    .line 94
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_35

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v7, v7, 0x8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_43

    .line 95
    :cond_35
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    .line 96
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    .line 102
    :cond_43
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 104
    iput v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 105
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_9

    .line 108
    :pswitch_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 109
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v5, :cond_9

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_6b

    :goto_5f
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 111
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v3, :cond_9

    .line 113
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_9

    :cond_6b
    move v3, v4

    .line 110
    goto :goto_5f

    .line 119
    :pswitch_6d
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v5, :cond_c1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 121
    .local v1, "pointX":F
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_d7

    move v5, v1

    :goto_7c
    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    .line 122
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_da

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    :goto_86
    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    .line 123
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c1

    .line 124
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v6, v6, 0x8

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a7

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:F

    cmpl-float v5, v1, v5

    if-gez v5, :cond_bb

    :cond_a7
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:F

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v7, v7, 0x8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c1

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_c1

    .line 125
    :cond_bb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    .line 131
    .end local v1    # "pointX":F
    :cond_c1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v5, :cond_9

    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v2

    .line 133
    .local v2, "swipe":I
    if-nez v2, :cond_cc

    move v4, v3

    :cond_cc
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 134
    if-ne v2, v3, :cond_dc

    .line 136
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto/16 :goto_9

    .line 121
    .end local v2    # "swipe":I
    .restart local v1    # "pointX":F
    :cond_d7
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:F

    goto :goto_7c

    :cond_da
    move v5, v1

    .line 122
    goto :goto_86

    .line 137
    .end local v1    # "pointX":F
    .restart local v2    # "swipe":I
    :cond_dc
    const/4 v3, 0x2

    if-ne v2, v3, :cond_e6

    .line 139
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto/16 :goto_9

    .line 140
    :cond_e6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 142
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto/16 :goto_9

    .line 149
    .end local v2    # "swipe":I
    :pswitch_f0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v3, :cond_101

    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectEasyOneHandGesture(Landroid/view/MotionEvent;)I

    move-result v0

    .line 151
    .local v0, "gesture":I
    const/16 v3, 0x65

    if-ne v0, v3, :cond_109

    .line 153
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeLeftCenterLeft()V

    .line 159
    .end local v0    # "gesture":I
    :cond_101
    :goto_101
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    goto/16 :goto_9

    .line 154
    .restart local v0    # "gesture":I
    :cond_109
    const/16 v3, 0x64

    if-ne v0, v3, :cond_101

    .line 156
    iget-object v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeRightCenterRight()V

    goto :goto_101

    .line 88
    nop

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f0
        :pswitch_6d
        :pswitch_f0
        :pswitch_9
        :pswitch_4d
    .end packed-switch
.end method
