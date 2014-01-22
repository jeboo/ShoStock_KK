.class final Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 75.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28


# instance fields
.field private final TILT_TOLERANCE:[[I

.field private mAccelerationTimestampNanos:J

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field final synthetic this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .registers 7

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x2

    .line 572
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_46

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    .line 726
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 727
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    return-void

    .line 688
    nop

    :array_36
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_3e
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_46
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_4e
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .registers 8
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 1044
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 1046
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .registers 3

    .prologue
    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 1021
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 1022
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .registers 5

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 1038
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 1039
    return-void
.end method

.method private isAcceleratingLocked(F)Z
    .registers 3
    .param p1, "magnitude"    # F

    .prologue
    .line 1032
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isFlatLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .prologue
    .line 1049
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_12

    .line 1050
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42960000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 1058
    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1

    .line 1053
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 1055
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .registers 8
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .prologue
    const/4 v3, 0x0

    .line 935
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v0

    .line 936
    .local v0, "currentRotation":I
    if-ltz v0, :cond_3a

    .line 941
    if-eq p1, v0, :cond_11

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_24

    .line 943
    :cond_11
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 945
    .local v1, "lowerBound":I
    if-nez p1, :cond_22

    .line 946
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_24

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_24

    .line 975
    .end local v1    # "lowerBound":I
    :cond_21
    :goto_21
    return v3

    .line 950
    .restart local v1    # "lowerBound":I
    :cond_22
    if-lt p2, v1, :cond_21

    .line 960
    .end local v1    # "lowerBound":I
    :cond_24
    if-eq p1, v0, :cond_2c

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3a

    .line 962
    :cond_2c
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 964
    .local v2, "upperBound":I
    if-nez p1, :cond_3c

    .line 965
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_3a

    if-gt p2, v2, :cond_21

    .line 975
    .end local v2    # "upperBound":I
    :cond_3a
    const/4 v3, 0x1

    goto :goto_21

    .line 969
    .restart local v2    # "upperBound":I
    :cond_3c
    if-le p2, v2, :cond_3a

    goto :goto_21
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    const-wide/32 v5, 0x1dcd6500

    const/4 v0, 0x0

    .line 984
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v3, 0x2625a00

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_f

    .line 1006
    :cond_e
    :goto_e
    return v0

    .line 989
    :cond_f
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_e

    .line 995
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_e

    .line 1000
    iget-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_e

    .line 1006
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private isSwingingLocked(JF)Z
    .registers 9
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 1062
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_14

    .line 1063
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_16

    .line 1071
    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 1066
    :cond_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    .line 1068
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .registers 6
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 921
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 1075
    if-nez p1, :cond_4

    const/16 p1, 0x28

    .end local p1    # "index":I
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 1076
    .restart local p1    # "index":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .end local p1    # "index":I
    :goto_10
    return p1

    .restart local p1    # "index":I
    :cond_11
    const/4 p1, -0x1

    goto :goto_10
.end method

.method private remainingMS(JJ)F
    .registers 7
    .param p1, "now"    # J
    .param p3, "until"    # J

    .prologue
    .line 1080
    cmp-long v0, p1, p3

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    goto :goto_5
.end method

.method private resetLocked()V
    .registers 4

    .prologue
    const-wide/high16 v1, -0x8000000000000000L

    .line 1010
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 1011
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 1012
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 1013
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 1014
    iput-wide v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 1015
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 1016
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistoryLocked()V

    .line 1017
    return-void
.end method

.method private updatePredictedRotationLocked(JI)V
    .registers 5
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .prologue
    .line 1025
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 1026
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 1027
    iput-wide p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 1029
    :cond_8
    return-void
.end method


# virtual methods
.method public getProposedRotationLocked()I
    .registers 2

    .prologue
    .line 731
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 736
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 31
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v22, v0

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$900(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 747
    :try_start_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aget v19, v22, v24

    .line 748
    .local v19, "x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v24, 0x1

    aget v20, v22, v24

    .line 749
    .local v20, "y":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v24, 0x2

    aget v21, v22, v24

    .line 751
    .local v21, "z":F
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_83

    .line 752
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Raw acceleration vector: x="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", y="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", z="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", magnitude="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-float v25, v19, v19

    mul-float v26, v20, v20

    add-float v25, v25, v26

    mul-float v26, v21, v21

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_83
    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 762
    .local v9, "now":J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 763
    .local v15, "then":J
    sub-long v24, v9, v15

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v22, v0

    const v24, 0x358637bd

    mul-float v18, v22, v24

    .line 765
    .local v18, "timeDeltaMS":F
    cmp-long v22, v9, v15

    if-ltz v22, :cond_b6

    const-wide/32 v24, 0x3b9aca00

    add-long v24, v24, v15

    cmp-long v22, v9, v24

    if-gtz v22, :cond_b6

    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-nez v22, :cond_25d

    const/16 v22, 0x0

    cmpl-float v22, v20, v22

    if-nez v22, :cond_25d

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-nez v22, :cond_25d

    .line 768
    :cond_b6
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_c7

    .line 769
    const-string v22, "WindowOrientationListener"

    const-string v24, "Resetting orientation listener."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_c7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    .line 772
    const/4 v14, 0x1

    .line 785
    .local v14, "skipSample":Z
    :goto_cb
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 786
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 787
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 788
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 790
    const/4 v4, 0x0

    .line 791
    .local v4, "isAccelerating":Z
    const/4 v5, 0x0

    .line 792
    .local v5, "isFlat":Z
    const/4 v6, 0x0

    .line 793
    .local v6, "isSwinging":Z
    if-nez v14, :cond_10e

    .line 795
    mul-float v22, v19, v19

    mul-float v24, v20, v20

    add-float v22, v22, v24

    mul-float v24, v21, v21

    add-float v22, v22, v24

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 796
    .local v7, "magnitude":F
    const/high16 v22, 0x3f800000

    cmpg-float v22, v7, v22

    if-gez v22, :cond_2f6

    .line 797
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_10b

    .line 798
    const-string v22, "WindowOrientationListener"

    const-string v24, "Ignoring sensor data, magnitude too close to zero."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_10b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 881
    .end local v7    # "magnitude":F
    :cond_10e
    :goto_10e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 882
    .local v11, "oldProposedRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    if-ltz v22, :cond_122

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptableLocked(J)Z

    move-result v22

    if-eqz v22, :cond_12e

    .line 883
    :cond_122
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 885
    :cond_12e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 888
    .local v13, "proposedRotation":I
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_220

    .line 889
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Result: currentRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", proposedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", predictedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeDeltaMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isAccelerating="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isFlat="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", isSwinging="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilSettledMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x2625a00

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x1dcd6500

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x1dcd6500

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v25, v0

    const-wide/32 v27, 0x11e1a300

    add-long v25, v25, v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_220
    monitor-exit v23
    :try_end_221
    .catchall {:try_start_b .. :try_end_221} :catchall_382

    .line 908
    if-eq v13, v11, :cond_25c

    if-ltz v13, :cond_25c

    .line 909
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_251

    .line 910
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", oldProposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 915
    :cond_25c
    return-void

    .line 774
    .end local v4    # "isAccelerating":Z
    .end local v5    # "isFlat":Z
    .end local v6    # "isSwinging":Z
    .end local v11    # "oldProposedRotation":I
    .end local v13    # "proposedRotation":I
    .end local v14    # "skipSample":Z
    :cond_25d
    const/high16 v22, 0x43480000

    add-float v22, v22, v18

    div-float v3, v18, v22

    .line 775
    .local v3, "alpha":F
    :try_start_263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    mul-float v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v24, v0

    add-float v19, v22, v24

    .line 776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    mul-float v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v24, v0

    add-float v20, v22, v24

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    mul-float v22, v22, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v24, v0

    add-float v21, v22, v24

    .line 778
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_2f3

    .line 779
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Filtered acceleration vector: x="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", y="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", z="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", magnitude="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    mul-float v25, v19, v19

    mul-float v26, v20, v20

    add-float v25, v25, v26

    mul-float v26, v21, v21

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_2f3
    const/4 v14, 0x0

    .restart local v14    # "skipSample":Z
    goto/16 :goto_cb

    .line 804
    .end local v3    # "alpha":F
    .restart local v4    # "isAccelerating":Z
    .restart local v5    # "isFlat":Z
    .restart local v6    # "isSwinging":Z
    .restart local v7    # "magnitude":F
    :cond_2f6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isAcceleratingLocked(F)Z

    move-result v22

    if-eqz v22, :cond_303

    .line 805
    const/4 v4, 0x1

    .line 806
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 815
    :cond_303
    div-float v22, v21, v7

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    const-wide v26, 0x404ca5dc20000000L

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v17, v0

    .line 817
    .local v17, "tiltAngle":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v10, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntryLocked(JF)V

    .line 820
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isFlatLocked(J)Z

    move-result v22

    if-eqz v22, :cond_337

    .line 821
    const/4 v5, 0x1

    .line 822
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 824
    :cond_337
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v10, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isSwingingLocked(JF)Z

    move-result v22

    if-eqz v22, :cond_34b

    .line 825
    const/4 v6, 0x1

    .line 826
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 831
    :cond_34b
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v22

    const/16 v24, 0x4b

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_385

    .line 832
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_37d

    .line 833
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_37d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_10e

    .line 905
    .end local v4    # "isAccelerating":Z
    .end local v5    # "isFlat":Z
    .end local v6    # "isSwinging":Z
    .end local v7    # "magnitude":F
    .end local v9    # "now":J
    .end local v14    # "skipSample":Z
    .end local v15    # "then":J
    .end local v17    # "tiltAngle":I
    .end local v18    # "timeDeltaMS":F
    .end local v19    # "x":F
    .end local v20    # "y":F
    .end local v21    # "z":F
    :catchall_382
    move-exception v22

    monitor-exit v23
    :try_end_384
    .catchall {:try_start_263 .. :try_end_384} :catchall_382

    throw v22

    .line 841
    .restart local v4    # "isAccelerating":Z
    .restart local v5    # "isFlat":Z
    .restart local v6    # "isSwinging":Z
    .restart local v7    # "magnitude":F
    .restart local v9    # "now":J
    .restart local v14    # "skipSample":Z
    .restart local v15    # "then":J
    .restart local v17    # "tiltAngle":I
    .restart local v18    # "timeDeltaMS":F
    .restart local v19    # "x":F
    .restart local v20    # "y":F
    .restart local v21    # "z":F
    :cond_385
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v26, v0

    :try_start_394
    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x404ca5dc20000000L

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 843
    .local v12, "orientationAngle":I
    if-gez v12, :cond_3af

    .line 845
    add-int/lit16 v12, v12, 0x168

    .line 849
    :cond_3af
    add-int/lit8 v22, v12, 0x2d

    div-int/lit8 v8, v22, 0x5a

    .line 850
    .local v8, "nearestRotation":I
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v8, v0, :cond_3ba

    .line 851
    const/4 v8, 0x0

    .line 855
    :cond_3ba
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptableLocked(II)Z

    move-result v22

    if-eqz v22, :cond_431

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptableLocked(II)Z

    move-result v22

    if-eqz v22, :cond_431

    .line 858
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v8}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotationLocked(JI)V

    .line 859
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_10e

    .line 860
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Predicted: tiltAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", orientationAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", predictedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", predictedRotationAgeMS="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v25, v0

    sub-long v25, v9, v25

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x358637bd

    mul-float v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 869
    :cond_431
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_463

    .line 870
    const-string v22, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", orientationAngle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_463
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V
    :try_end_466
    .catchall {:try_start_394 .. :try_end_466} :catchall_382

    goto/16 :goto_10e
.end method
