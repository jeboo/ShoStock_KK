.class final Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenOrientationEventListenerImpl"
.end annotation


# static fields
.field private static mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;


# instance fields
.field private final mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mProposedRotation:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .registers 4
    .param p1, "orientationListener"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mPm:Landroid/os/PowerManager;

    .line 455
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private resetLocked()V
    .registers 2

    .prologue
    .line 458
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 459
    return-void
.end method


# virtual methods
.method public getProposedRotationLocked()I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 462
    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-lt v1, v0, :cond_a

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_b

    .line 465
    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    goto :goto_a
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 470
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 476
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v5, v4

    .line 478
    .local v2, "x":F
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rotation Sensor : x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    float-to-int v5, v2

    iput v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 481
    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_2a

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_2d

    .line 482
    :cond_2a
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 485
    :cond_2d
    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_a7

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    if-eq v5, v6, :cond_a7

    .line 486
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 487
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_5b
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "currentRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "intelligent_rotation_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_a8

    move v1, v3

    .line 494
    .local v1, "intelligent_rotation_enabled":Z
    :goto_99
    if-nez v1, :cond_aa

    .line 496
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 497
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 529
    .end local v1    # "intelligent_rotation_enabled":Z
    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    move v1, v4

    .line 492
    goto :goto_99

    .line 500
    .restart local v1    # "intelligent_rotation_enabled":Z
    :cond_aa
    const/4 v0, 0x0

    .line 501
    .local v0, "face_found":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v5

    if-ltz v5, :cond_f9

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_f9

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    if-eqz v5, :cond_f9

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    if-eq v5, v3, :cond_f9

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_f9

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f9

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_f9

    .line 508
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v5, :cond_e9

    .line 509
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 511
    :cond_e9
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v5, :cond_f9

    .line 513
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v0

    .line 517
    :cond_f9
    if-ne v0, v3, :cond_108

    .line 518
    const-string v4, "WindowOrientationListener"

    const-string v5, "SMARTFACESERVICE FEATURE, face detected"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    goto :goto_a7

    .line 522
    :cond_108
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 523
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_a7
.end method
